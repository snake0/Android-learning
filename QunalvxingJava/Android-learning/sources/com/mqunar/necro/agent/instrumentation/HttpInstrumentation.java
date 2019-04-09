package com.mqunar.necro.agent.instrumentation;

import com.mqunar.necro.agent.NecroUtils;
import com.mqunar.necro.agent.instrumentation.httpclient.ResponseHandlerImpl;
import com.mqunar.necro.agent.util.AndroidUtils;
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
            return _(httpClient.execute(httpHost, _(httpHost, httpRequest, transactionState), httpContext), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (Exception e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            return httpClient.execute(httpHost, _(httpHost, httpRequest, transactionState), _((ResponseHandler) responseHandler, transactionState), httpContext);
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        } catch (Exception e3) {
            httpClientError(transactionState, e3);
            throw e3;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        TransactionState transactionState = new TransactionState();
        try {
            return httpClient.execute(httpHost, _(httpHost, httpRequest, transactionState), _((ResponseHandler) responseHandler, transactionState));
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        } catch (Exception e3) {
            httpClientError(transactionState, e3);
            throw e3;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        TransactionState transactionState = new TransactionState();
        try {
            return _(httpClient.execute(httpHost, _(httpHost, httpRequest, transactionState)), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (Exception e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            return _(httpClient.execute(_(httpUriRequest, transactionState), httpContext), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (Exception e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        TransactionState transactionState = new TransactionState();
        try {
            return httpClient.execute(_(httpUriRequest, transactionState), _((ResponseHandler) responseHandler, transactionState), httpContext);
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        } catch (Exception e3) {
            httpClientError(transactionState, e3);
            throw e3;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) {
        TransactionState transactionState = new TransactionState();
        try {
            return httpClient.execute(_(httpUriRequest, transactionState), _((ResponseHandler) responseHandler, transactionState));
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        } catch (Exception e3) {
            httpClientError(transactionState, e3);
            throw e3;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        TransactionState transactionState = new TransactionState();
        try {
            return _(httpClient.execute(_(httpUriRequest, transactionState)), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (Exception e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    private static void httpClientError(TransactionState transactionState, Exception exception) {
        if (!transactionState.isComplete()) {
            TransactionStateUtil.setErrorCodeFromException(transactionState, exception);
            TransactionStateUtil.end(transactionState);
        }
    }

    private static HttpUriRequest _(HttpUriRequest httpUriRequest, TransactionState transactionState) {
        httpUriRequest.setHeader("L-Uuid", AndroidUtils.getTraceId(NecroUtils.mContext));
        return TransactionStateUtil.inspectAndInstrument(transactionState, httpUriRequest);
    }

    private static HttpRequest _(HttpHost httpHost, HttpRequest httpRequest, TransactionState transactionState) {
        httpRequest.setHeader("L-Uuid", AndroidUtils.getTraceId(NecroUtils.mContext));
        return TransactionStateUtil.inspectAndInstrument(transactionState, httpHost, httpRequest);
    }

    private static HttpResponse _(HttpResponse httpResponse, TransactionState transactionState) {
        return TransactionStateUtil.inspectAndInstrument(transactionState, httpResponse);
    }

    private static <T> ResponseHandler<? extends T> _(ResponseHandler<? extends T> responseHandler, TransactionState transactionState) {
        return ResponseHandlerImpl.wrap(responseHandler, transactionState);
    }
}
