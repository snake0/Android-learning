package com.mqunar.qapm.network.instrumentation;

import com.mqunar.necro.agent.instrumentation.Instrumented;
import com.mqunar.qapm.QAPM;
import com.mqunar.qapm.network.instrumentation.httpclient.ResponseHandlerImpl;
import com.mqunar.qapm.utils.AndroidUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

@Instrumented
public final class HttpInstrumentation {
    private HttpInstrumentation() {
    }

    @WrapReturn(className = "java/net/URL", methodDesc = "()Ljava/net/URLConnection;", methodName = "openConnection")
    public static URLConnection openConnection(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpsURLConnection) {
            return new HttpsURLConnectionExtension((HttpsURLConnection) uRLConnection);
        }
        return uRLConnection instanceof HttpURLConnection ? new HttpURLConnectionExtension((HttpURLConnection) uRLConnection) : uRLConnection;
    }

    @WrapReturn(className = "java.net.URL", methodDesc = "(Ljava/net/Proxy;)Ljava/net/URLConnection;", methodName = "openConnection")
    public static URLConnection openConnectionWithProxy(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpsURLConnection) {
            return new HttpsURLConnectionExtension((HttpsURLConnection) uRLConnection);
        }
        return uRLConnection instanceof HttpURLConnection ? new HttpURLConnectionExtension((HttpURLConnection) uRLConnection) : uRLConnection;
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpRequest a = a(httpHost, httpRequest, transactionState);
            return a(!(httpClient instanceof HttpClient) ? httpClient.execute(httpHost, a, httpContext) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, httpHost, a, httpContext), transactionState);
        } catch (IOException e) {
            a(transactionState, e);
            throw e;
        } catch (Exception e2) {
            a(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpRequest a = a(httpHost, httpRequest, transactionState);
            ResponseHandler a2 = a((ResponseHandler) responseHandler, transactionState);
            return !(httpClient instanceof HttpClient) ? httpClient.execute(httpHost, a, a2, httpContext) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, httpHost, a, a2, httpContext);
        } catch (ClientProtocolException e) {
            a(transactionState, e);
            throw e;
        } catch (IOException e2) {
            a(transactionState, e2);
            throw e2;
        } catch (Exception e22) {
            a(transactionState, e22);
            throw e22;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpRequest a = a(httpHost, httpRequest, transactionState);
            ResponseHandler a2 = a((ResponseHandler) responseHandler, transactionState);
            return !(httpClient instanceof HttpClient) ? httpClient.execute(httpHost, a, a2) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, httpHost, a, a2);
        } catch (ClientProtocolException e) {
            a(transactionState, e);
            throw e;
        } catch (IOException e2) {
            a(transactionState, e2);
            throw e2;
        } catch (Exception e22) {
            a(transactionState, e22);
            throw e22;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpRequest a = a(httpHost, httpRequest, transactionState);
            return a(!(httpClient instanceof HttpClient) ? httpClient.execute(httpHost, a) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, httpHost, a), transactionState);
        } catch (IOException e) {
            a(transactionState, e);
            throw e;
        } catch (Exception e2) {
            a(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpUriRequest a = a(httpUriRequest, transactionState);
            return a(!(httpClient instanceof HttpClient) ? httpClient.execute(a, httpContext) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, a, httpContext), transactionState);
        } catch (IOException e) {
            a(transactionState, e);
            throw e;
        } catch (Exception e2) {
            a(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpUriRequest a = a(httpUriRequest, transactionState);
            ResponseHandler a2 = a((ResponseHandler) responseHandler, transactionState);
            return !(httpClient instanceof HttpClient) ? httpClient.execute(a, a2, httpContext) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, a, a2, httpContext);
        } catch (ClientProtocolException e) {
            a(transactionState, e);
            throw e;
        } catch (IOException e2) {
            a(transactionState, e2);
            throw e2;
        } catch (Exception e22) {
            a(transactionState, e22);
            throw e22;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpUriRequest a = a(httpUriRequest, transactionState);
            ResponseHandler a2 = a((ResponseHandler) responseHandler, transactionState);
            return !(httpClient instanceof HttpClient) ? httpClient.execute(a, a2) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, a, a2);
        } catch (ClientProtocolException e) {
            a(transactionState, e);
            throw e;
        } catch (IOException e2) {
            a(transactionState, e2);
            throw e2;
        } catch (Exception e22) {
            a(transactionState, e22);
            throw e22;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        TransactionState transactionState = new TransactionState();
        try {
            HttpUriRequest a = a(httpUriRequest, transactionState);
            return a(!(httpClient instanceof HttpClient) ? httpClient.execute(a) : com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(httpClient, a), transactionState);
        } catch (IOException e) {
            a(transactionState, e);
            throw e;
        } catch (Exception e2) {
            a(transactionState, e2);
            throw e2;
        }
    }

    private static void a(TransactionState transactionState, Exception exception) {
        if (!transactionState.isComplete()) {
            TransactionStateUtil.setErrorCodeFromException(transactionState, exception);
            TransactionStateUtil.end(transactionState);
        }
    }

    private static HttpUriRequest a(HttpUriRequest httpUriRequest, TransactionState transactionState) {
        httpUriRequest.setHeader("L-Uuid", AndroidUtils.getTraceId(QAPM.mContext));
        return TransactionStateUtil.inspectAndInstrument(transactionState, httpUriRequest);
    }

    private static HttpRequest a(HttpHost httpHost, HttpRequest httpRequest, TransactionState transactionState) {
        httpRequest.setHeader("L-Uuid", AndroidUtils.getTraceId(QAPM.mContext));
        return TransactionStateUtil.inspectAndInstrument(transactionState, httpHost, httpRequest);
    }

    private static HttpResponse a(HttpResponse httpResponse, TransactionState transactionState) {
        return TransactionStateUtil.inspectAndInstrument(transactionState, httpResponse);
    }

    private static <T> ResponseHandler<? extends T> a(ResponseHandler<? extends T> responseHandler, TransactionState transactionState) {
        return ResponseHandlerImpl.wrap(responseHandler, transactionState);
    }
}
