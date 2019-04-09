package com.baidu.tts.loopj;

import android.content.Context;
import android.os.Looper;
import android.support.v4.view.MotionEventCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.lang.reflect.Field;
import java.net.URI;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public class AsyncHttpClient {
    public static final int DEFAULT_MAX_CONNECTIONS = 10;
    public static final int DEFAULT_MAX_RETRIES = 5;
    public static final int DEFAULT_RETRY_SLEEP_TIME_MILLIS = 1500;
    public static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    public static final int DEFAULT_SOCKET_TIMEOUT = 10000;
    public static final String ENCODING_GZIP = "gzip";
    public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String HEADER_CONTENT_DISPOSITION = "Content-Disposition";
    public static final String HEADER_CONTENT_ENCODING = "Content-Encoding";
    public static final String HEADER_CONTENT_RANGE = "Content-Range";
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final String LOG_TAG = "AsyncHttpClient";
    public static LogInterface log = new LogHandler();
    private final Map<String, String> clientHeaderMap;
    private int connectTimeout;
    private final DefaultHttpClient httpClient;
    private final HttpContext httpContext;
    private boolean isUrlEncodingEnabled;
    private int maxConnections;
    private final Map<Context, List<RequestHandle>> requestMap;
    private int responseTimeout;
    private ExecutorService threadPool;

    class InflatingEntity extends HttpEntityWrapper {
        GZIPInputStream gzippedStream;
        PushbackInputStream pushbackStream;
        InputStream wrappedStream;

        public InflatingEntity(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public InputStream getContent() {
            this.wrappedStream = this.wrappedEntity.getContent();
            this.pushbackStream = new PushbackInputStream(this.wrappedStream, 2);
            if (!AsyncHttpClient.isInputStreamGZIPCompressed(this.pushbackStream)) {
                return this.pushbackStream;
            }
            this.gzippedStream = new GZIPInputStream(this.pushbackStream);
            return this.gzippedStream;
        }

        public long getContentLength() {
            return this.wrappedEntity == null ? 0 : this.wrappedEntity.getContentLength();
        }

        public void consumeContent() {
            AsyncHttpClient.silentCloseInputStream(this.wrappedStream);
            AsyncHttpClient.silentCloseInputStream(this.pushbackStream);
            AsyncHttpClient.silentCloseInputStream(this.gzippedStream);
            super.consumeContent();
        }
    }

    public AsyncHttpClient() {
        this(false, 80, 443);
    }

    public AsyncHttpClient(int i) {
        this(false, i, 443);
    }

    public AsyncHttpClient(int i, int i2) {
        this(false, i, i2);
    }

    public AsyncHttpClient(boolean z, int i, int i2) {
        this(getDefaultSchemeRegistry(z, i, i2));
    }

    private static SchemeRegistry getDefaultSchemeRegistry(boolean z, int i, int i2) {
        SocketFactory fixedSocketFactory;
        if (z) {
        }
        if (i < 1) {
            i = 80;
            log.d(LOG_TAG, "Invalid HTTP port number specified, defaulting to 80");
        }
        if (i2 < 1) {
            i2 = 443;
            log.d(LOG_TAG, "Invalid HTTPS port number specified, defaulting to 443");
        }
        if (z) {
            fixedSocketFactory = MySSLSocketFactory.getFixedSocketFactory();
        } else {
            fixedSocketFactory = SSLSocketFactory.getSocketFactory();
        }
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), i));
        schemeRegistry.register(new Scheme("https", fixedSocketFactory, i2));
        return schemeRegistry;
    }

    public AsyncHttpClient(SchemeRegistry schemeRegistry) {
        boolean z = true;
        this.maxConnections = 10;
        this.connectTimeout = 10000;
        this.responseTimeout = 10000;
        this.isUrlEncodingEnabled = true;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basicHttpParams, (long) this.connectTimeout);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(this.maxConnections));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 10);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.responseTimeout);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.connectTimeout);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        ClientConnectionManager createConnectionManager = createConnectionManager(schemeRegistry, basicHttpParams);
        if (createConnectionManager == null) {
            z = false;
        }
        Utils.asserts(z, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null");
        this.threadPool = getDefaultThreadPool();
        this.requestMap = Collections.synchronizedMap(new WeakHashMap());
        this.clientHeaderMap = new HashMap();
        this.httpContext = new SyncBasicHttpContext(new BasicHttpContext());
        this.httpClient = new DefaultHttpClient(createConnectionManager, basicHttpParams);
        this.httpClient.addRequestInterceptor(new HttpRequestInterceptor() {
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                if (!httpRequest.containsHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING)) {
                    httpRequest.addHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING, AsyncHttpClient.ENCODING_GZIP);
                }
                for (String str : AsyncHttpClient.this.clientHeaderMap.keySet()) {
                    if (httpRequest.containsHeader(str)) {
                        Header firstHeader = httpRequest.getFirstHeader(str);
                        AsyncHttpClient.log.d(AsyncHttpClient.LOG_TAG, String.format("Headers were overwritten! (%s | %s) overwrites (%s | %s)", new Object[]{str, AsyncHttpClient.this.clientHeaderMap.get(str), firstHeader.getName(), firstHeader.getValue()}));
                        httpRequest.removeHeader(firstHeader);
                    }
                    httpRequest.addHeader(str, (String) AsyncHttpClient.this.clientHeaderMap.get(str));
                }
            }
        });
        this.httpClient.addResponseInterceptor(new HttpResponseInterceptor() {
            public void process(HttpResponse httpResponse, HttpContext httpContext) {
                HttpEntity entity = httpResponse.getEntity();
                if (entity != null) {
                    Header contentEncoding = entity.getContentEncoding();
                    if (contentEncoding != null) {
                        for (HeaderElement name : contentEncoding.getElements()) {
                            if (name.getName().equalsIgnoreCase(AsyncHttpClient.ENCODING_GZIP)) {
                                httpResponse.setEntity(new InflatingEntity(entity));
                                return;
                            }
                        }
                    }
                }
            }
        });
        this.httpClient.addRequestInterceptor(new HttpRequestInterceptor() {
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                AuthState authState = (AuthState) httpContext.getAttribute(ClientContext.TARGET_AUTH_STATE);
                CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
                HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                if (authState.getAuthScheme() == null) {
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()));
                    if (credentials != null) {
                        authState.setAuthScheme(new BasicScheme());
                        authState.setCredentials(credentials);
                    }
                }
            }
        }, 0);
        this.httpClient.setHttpRequestRetryHandler(new RetryHandler(5, DEFAULT_RETRY_SLEEP_TIME_MILLIS));
    }

    public static void allowRetryExceptionClass(Class<?> cls) {
        if (cls != null) {
            RetryHandler.addClassToWhitelist(cls);
        }
    }

    public static void blockRetryExceptionClass(Class<?> cls) {
        if (cls != null) {
            RetryHandler.addClassToBlacklist(cls);
        }
    }

    public HttpClient getHttpClient() {
        return this.httpClient;
    }

    public HttpContext getHttpContext() {
        return this.httpContext;
    }

    public void setLoggingEnabled(boolean z) {
        log.setLoggingEnabled(z);
    }

    public boolean isLoggingEnabled() {
        return log.isLoggingEnabled();
    }

    public void setLoggingLevel(int i) {
        log.setLoggingLevel(i);
    }

    public int getLoggingLevel() {
        return log.getLoggingLevel();
    }

    public LogInterface getLogInterface() {
        return log;
    }

    public void setLogInterface(LogInterface logInterface) {
        if (logInterface != null) {
            log = logInterface;
        }
    }

    public void setCookieStore(CookieStore cookieStore) {
        this.httpContext.setAttribute(ClientContext.COOKIE_STORE, cookieStore);
    }

    public void setThreadPool(ExecutorService executorService) {
        this.threadPool = executorService;
    }

    public ExecutorService getThreadPool() {
        return this.threadPool;
    }

    /* Access modifiers changed, original: protected */
    public ExecutorService getDefaultThreadPool() {
        return Executors.newCachedThreadPool();
    }

    /* Access modifiers changed, original: protected */
    public ClientConnectionManager createConnectionManager(SchemeRegistry schemeRegistry, BasicHttpParams basicHttpParams) {
        return new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
    }

    public void setEnableRedirects(boolean z, boolean z2, boolean z3) {
        this.httpClient.getParams().setBooleanParameter(ClientPNames.REJECT_RELATIVE_REDIRECT, !z2);
        this.httpClient.getParams().setBooleanParameter(ClientPNames.ALLOW_CIRCULAR_REDIRECTS, z3);
        this.httpClient.setRedirectHandler(new MyRedirectHandler(z));
    }

    public void setEnableRedirects(boolean z, boolean z2) {
        setEnableRedirects(z, z2, true);
    }

    public void setEnableRedirects(boolean z) {
        setEnableRedirects(z, z, z);
    }

    public void setRedirectHandler(RedirectHandler redirectHandler) {
        this.httpClient.setRedirectHandler(redirectHandler);
    }

    public void setUserAgent(String str) {
        HttpProtocolParams.setUserAgent(this.httpClient.getParams(), str);
    }

    public int getMaxConnections() {
        return this.maxConnections;
    }

    public void setMaxConnections(int i) {
        if (i < 1) {
            i = 10;
        }
        this.maxConnections = i;
        ConnManagerParams.setMaxConnectionsPerRoute(this.httpClient.getParams(), new ConnPerRouteBean(this.maxConnections));
    }

    public void setTimeout(int i) {
        if (i < 1000) {
            i = 10000;
        }
        setConnectTimeout(i);
        setResponseTimeout(i);
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public void setConnectTimeout(int i) {
        if (i < 1000) {
            i = 10000;
        }
        this.connectTimeout = i;
        HttpParams params = this.httpClient.getParams();
        ConnManagerParams.setTimeout(params, (long) this.connectTimeout);
        HttpConnectionParams.setConnectionTimeout(params, this.connectTimeout);
    }

    public int getResponseTimeout() {
        return this.responseTimeout;
    }

    public void setResponseTimeout(int i) {
        if (i < 1000) {
            i = 10000;
        }
        this.responseTimeout = i;
        HttpConnectionParams.setSoTimeout(this.httpClient.getParams(), this.responseTimeout);
    }

    public void setProxy(String str, int i) {
        this.httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, new HttpHost(str, i));
    }

    public void setProxy(String str, int i, String str2, String str3) {
        this.httpClient.getCredentialsProvider().setCredentials(new AuthScope(str, i), new UsernamePasswordCredentials(str2, str3));
        this.httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, new HttpHost(str, i));
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", sSLSocketFactory, 443));
    }

    public void setMaxRetriesAndTimeout(int i, int i2) {
        this.httpClient.setHttpRequestRetryHandler(new RetryHandler(i, i2));
    }

    public void removeAllHeaders() {
        this.clientHeaderMap.clear();
    }

    public void addHeader(String str, String str2) {
        this.clientHeaderMap.put(str, str2);
    }

    public void removeHeader(String str) {
        this.clientHeaderMap.remove(str);
    }

    public void setBasicAuth(String str, String str2) {
        setBasicAuth(str, str2, false);
    }

    public void setBasicAuth(String str, String str2, boolean z) {
        setBasicAuth(str, str2, null, z);
    }

    public void setBasicAuth(String str, String str2, AuthScope authScope) {
        setBasicAuth(str, str2, authScope, false);
    }

    public void setBasicAuth(String str, String str2, AuthScope authScope, boolean z) {
        setCredentials(authScope, new UsernamePasswordCredentials(str, str2));
        setAuthenticationPreemptive(z);
    }

    public void setCredentials(AuthScope authScope, Credentials credentials) {
        if (credentials == null) {
            log.d(LOG_TAG, "Provided credentials are null, not setting");
            return;
        }
        CredentialsProvider credentialsProvider = this.httpClient.getCredentialsProvider();
        if (authScope == null) {
            authScope = AuthScope.ANY;
        }
        credentialsProvider.setCredentials(authScope, credentials);
    }

    public void setAuthenticationPreemptive(boolean z) {
        if (z) {
            this.httpClient.addRequestInterceptor(new PreemptiveAuthorizationHttpRequestInterceptor(), 0);
        } else {
            this.httpClient.removeRequestInterceptorByClass(PreemptiveAuthorizationHttpRequestInterceptor.class);
        }
    }

    public void clearCredentialsProvider() {
        this.httpClient.getCredentialsProvider().clear();
    }

    public void cancelRequests(Context context, final boolean z) {
        if (context == null) {
            log.e(LOG_TAG, "Passed null Context to cancelRequests");
            return;
        }
        final List list = (List) this.requestMap.get(context);
        this.requestMap.remove(context);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.threadPool.submit(new Runnable() {
                public void run() {
                    AsyncHttpClient.this.cancelRequests(list, z);
                }
            });
            return;
        }
        cancelRequests(list, z);
    }

    private void cancelRequests(List<RequestHandle> list, boolean z) {
        if (list != null) {
            for (RequestHandle cancel : list) {
                cancel.cancel(z);
            }
        }
    }

    public void cancelAllRequests(boolean z) {
        for (List<RequestHandle> list : this.requestMap.values()) {
            if (list != null) {
                for (RequestHandle cancel : list) {
                    cancel.cancel(z);
                }
            }
        }
        this.requestMap.clear();
    }

    public void cancelRequestsByTAG(Object obj, boolean z) {
        if (obj == null) {
            log.d(LOG_TAG, "cancelRequestsByTAG, passed TAG is null, cannot proceed");
            return;
        }
        for (List<RequestHandle> list : this.requestMap.values()) {
            if (list != null) {
                for (RequestHandle requestHandle : list) {
                    if (obj.equals(requestHandle.getTag())) {
                        requestHandle.cancel(z);
                    }
                }
            }
        }
    }

    public RequestHandle head(String str, ResponseHandlerInterface responseHandlerInterface) {
        return head(null, str, null, responseHandlerInterface);
    }

    public RequestHandle head(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return head(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle head(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return head(context, str, null, responseHandlerInterface);
    }

    public RequestHandle head(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, responseHandlerInterface, context);
    }

    public RequestHandle head(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpHead httpHead = new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpHead.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpHead, null, responseHandlerInterface, context);
    }

    public RequestHandle get(String str, ResponseHandlerInterface responseHandlerInterface) {
        return get(null, str, null, responseHandlerInterface);
    }

    public RequestHandle get(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return get(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle get(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return get(context, str, null, responseHandlerInterface);
    }

    public RequestHandle get(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, responseHandlerInterface, context);
    }

    public RequestHandle get(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpGet httpGet = new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpGet.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpGet, null, responseHandlerInterface, context);
    }

    public RequestHandle get(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpGet(URI.create(str).normalize()), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle post(String str, ResponseHandlerInterface responseHandlerInterface) {
        return post(null, str, null, responseHandlerInterface);
    }

    public RequestHandle post(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return post(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle post(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return post(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle post(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPost(getURI(str)), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, Header[] headerArr, RequestParams requestParams, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpPost httpPost = new HttpPost(getURI(str));
        if (requestParams != null) {
            httpPost.setEntity(paramsToEntity(requestParams, responseHandlerInterface));
        }
        if (headerArr != null) {
            httpPost.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpPost, str2, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntityEnclosingRequestBase addEntityToRequestBase = addEntityToRequestBase(new HttpPost(getURI(str)), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle put(String str, ResponseHandlerInterface responseHandlerInterface) {
        return put(null, str, null, responseHandlerInterface);
    }

    public RequestHandle put(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return put(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle put(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return put(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle put(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPut(getURI(str)), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle put(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntityEnclosingRequestBase addEntityToRequestBase = addEntityToRequestBase(new HttpPut(getURI(str)), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle patch(String str, ResponseHandlerInterface responseHandlerInterface) {
        return patch(null, str, null, responseHandlerInterface);
    }

    public RequestHandle patch(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return patch(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle patch(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return patch(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle patch(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPatch(getURI(str)), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle patch(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntityEnclosingRequestBase addEntityToRequestBase = addEntityToRequestBase(new HttpPatch(getURI(str)), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle delete(String str, ResponseHandlerInterface responseHandlerInterface) {
        return delete(null, str, responseHandlerInterface);
    }

    public RequestHandle delete(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpDelete(getURI(str)), null, responseHandlerInterface, context);
    }

    public RequestHandle delete(Context context, String str, Header[] headerArr, ResponseHandlerInterface responseHandlerInterface) {
        HttpDelete httpDelete = new HttpDelete(getURI(str));
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpDelete, null, responseHandlerInterface, context);
    }

    public void delete(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        sendRequest(this.httpClient, this.httpContext, new HttpDelete(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, asyncHttpResponseHandler, null);
    }

    public RequestHandle delete(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpDelete httpDelete = new HttpDelete(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpDelete, null, responseHandlerInterface, context);
    }

    public RequestHandle delete(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpDelete(URI.create(str).normalize()), httpEntity), str2, responseHandlerInterface, context);
    }

    /* Access modifiers changed, original: protected */
    public AsyncHttpRequest newAsyncHttpRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, ResponseHandlerInterface responseHandlerInterface, Context context) {
        return new AsyncHttpRequest(defaultHttpClient, httpContext, httpUriRequest, responseHandlerInterface);
    }

    /* Access modifiers changed, original: protected */
    public RequestHandle sendRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, ResponseHandlerInterface responseHandlerInterface, Context context) {
        if (httpUriRequest == null) {
            throw new IllegalArgumentException("HttpUriRequest must not be null");
        } else if (responseHandlerInterface == null) {
            throw new IllegalArgumentException("ResponseHandler must not be null");
        } else if (!responseHandlerInterface.getUseSynchronousMode() || responseHandlerInterface.getUsePoolThread()) {
            if (str != null) {
                if ((httpUriRequest instanceof HttpEntityEnclosingRequestBase) && ((HttpEntityEnclosingRequestBase) httpUriRequest).getEntity() != null && httpUriRequest.containsHeader("Content-Type")) {
                    log.w(LOG_TAG, "Passed contentType will be ignored because HttpEntity sets content type");
                } else {
                    httpUriRequest.setHeader("Content-Type", str);
                }
            }
            responseHandlerInterface.setRequestHeaders(httpUriRequest.getAllHeaders());
            responseHandlerInterface.setRequestURI(httpUriRequest.getURI());
            AsyncHttpRequest newAsyncHttpRequest = newAsyncHttpRequest(defaultHttpClient, httpContext, httpUriRequest, str, responseHandlerInterface, context);
            this.threadPool.submit(newAsyncHttpRequest);
            RequestHandle requestHandle = new RequestHandle(newAsyncHttpRequest);
            if (context != null) {
                List list;
                synchronized (this.requestMap) {
                    list = (List) this.requestMap.get(context);
                    if (list == null) {
                        list = Collections.synchronizedList(new LinkedList());
                        this.requestMap.put(context, list);
                    }
                }
                list.add(requestHandle);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((RequestHandle) it.next()).shouldBeGarbageCollected()) {
                        it.remove();
                    }
                }
            }
            return requestHandle;
        } else {
            throw new IllegalArgumentException("Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead.");
        }
    }

    /* Access modifiers changed, original: protected */
    public URI getURI(String str) {
        return URI.create(str).normalize();
    }

    public void setURLEncodingEnabled(boolean z) {
        this.isUrlEncodingEnabled = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0039  */
    public static java.lang.String getUrlWithQueryString(boolean r8, java.lang.String r9, com.baidu.tts.loopj.RequestParams r10) {
        /*
        if (r9 != 0) goto L_0x0004;
    L_0x0002:
        r0 = 0;
    L_0x0003:
        return r0;
    L_0x0004:
        if (r8 == 0) goto L_0x0088;
    L_0x0006:
        r0 = "UTF-8";
        r0 = java.net.URLDecoder.decode(r9, r0);	 Catch:{ Exception -> 0x007e }
        r7 = new java.net.URL;	 Catch:{ Exception -> 0x007e }
        r7.<init>(r0);	 Catch:{ Exception -> 0x007e }
        r0 = new java.net.URI;	 Catch:{ Exception -> 0x007e }
        r1 = r7.getProtocol();	 Catch:{ Exception -> 0x007e }
        r2 = r7.getUserInfo();	 Catch:{ Exception -> 0x007e }
        r3 = r7.getHost();	 Catch:{ Exception -> 0x007e }
        r4 = r7.getPort();	 Catch:{ Exception -> 0x007e }
        r5 = r7.getPath();	 Catch:{ Exception -> 0x007e }
        r6 = r7.getQuery();	 Catch:{ Exception -> 0x007e }
        r7 = r7.getRef();	 Catch:{ Exception -> 0x007e }
        r0.<init>(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x007e }
        r9 = r0.toASCIIString();	 Catch:{ Exception -> 0x007e }
        r0 = r9;
    L_0x0037:
        if (r10 == 0) goto L_0x0003;
    L_0x0039:
        r1 = r10.getParamString();
        r1 = r1.trim();
        r2 = "";
        r2 = r1.equals(r2);
        if (r2 != 0) goto L_0x0003;
    L_0x0049:
        r2 = "?";
        r2 = r1.equals(r2);
        if (r2 != 0) goto L_0x0003;
    L_0x0051:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r2 = r2.append(r0);
        r3 = "?";
        r0 = r0.contains(r3);
        if (r0 == 0) goto L_0x008a;
    L_0x0062:
        r0 = "&";
    L_0x0064:
        r0 = r2.append(r0);
        r0 = r0.toString();
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r0 = r2.append(r0);
        r0 = r0.append(r1);
        r0 = r0.toString();
        goto L_0x0003;
    L_0x007e:
        r0 = move-exception;
        r1 = log;
        r2 = "AsyncHttpClient";
        r3 = "getUrlWithQueryString encoding URL";
        r1.e(r2, r3, r0);
    L_0x0088:
        r0 = r9;
        goto L_0x0037;
    L_0x008a:
        r0 = "?";
        goto L_0x0064;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.AsyncHttpClient.getUrlWithQueryString(boolean, java.lang.String, com.baidu.tts.loopj.RequestParams):java.lang.String");
    }

    public static boolean isInputStreamGZIPCompressed(PushbackInputStream pushbackInputStream) {
        boolean z = true;
        if (pushbackInputStream == null) {
            return false;
        }
        byte[] bArr = new byte[2];
        int read = pushbackInputStream.read(bArr);
        pushbackInputStream.unread(bArr);
        int i = ((bArr[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[0] & 255);
        if (!(read == 2 && 35615 == i)) {
            z = false;
        }
        return z;
    }

    public static void silentCloseInputStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                log.w(LOG_TAG, "Cannot close input stream", e);
            }
        }
    }

    public static void silentCloseOutputStream(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
                log.w(LOG_TAG, "Cannot close output stream", e);
            }
        }
    }

    private HttpEntity paramsToEntity(RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntity httpEntity = null;
        if (requestParams == null) {
            return httpEntity;
        }
        try {
            return requestParams.getEntity(responseHandlerInterface);
        } catch (IOException e) {
            if (responseHandlerInterface != null) {
                responseHandlerInterface.sendFailureMessage(0, httpEntity, httpEntity, e);
                return httpEntity;
            }
            e.printStackTrace();
            return httpEntity;
        }
    }

    public boolean isUrlEncodingEnabled() {
        return this.isUrlEncodingEnabled;
    }

    private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, HttpEntity httpEntity) {
        if (httpEntity != null) {
            httpEntityEnclosingRequestBase.setEntity(httpEntity);
        }
        return httpEntityEnclosingRequestBase;
    }

    public static void endEntityViaReflection(HttpEntity httpEntity) {
        if (httpEntity instanceof HttpEntityWrapper) {
            try {
                for (Field field : HttpEntityWrapper.class.getDeclaredFields()) {
                    if (field.getName().equals("wrappedEntity")) {
                        break;
                    }
                }
                Field field2 = null;
                if (field2 != null) {
                    field2.setAccessible(true);
                    HttpEntity httpEntity2 = (HttpEntity) field2.get(httpEntity);
                    if (httpEntity2 != null) {
                        httpEntity2.consumeContent();
                    }
                }
            } catch (Throwable th) {
                log.e(LOG_TAG, "wrappedEntity consume", th);
            }
        }
    }
}
