package com.baidu.tts.loopj;

import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

@Instrumented
public class AsyncHttpRequest implements Runnable {
    private boolean cancelIsNotified;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private int executionCount;
    private final AtomicBoolean isCancelled = new AtomicBoolean();
    private volatile boolean isFinished;
    private boolean isRequestPreProcessed;
    private final HttpUriRequest request;
    private final ResponseHandlerInterface responseHandler;

    public AsyncHttpRequest(AbstractHttpClient abstractHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, ResponseHandlerInterface responseHandlerInterface) {
        this.client = (AbstractHttpClient) Utils.notNull(abstractHttpClient, "client");
        this.context = (HttpContext) Utils.notNull(httpContext, "context");
        this.request = (HttpUriRequest) Utils.notNull(httpUriRequest, "request");
        this.responseHandler = (ResponseHandlerInterface) Utils.notNull(responseHandlerInterface, "responseHandler");
    }

    public void onPreProcessRequest(AsyncHttpRequest asyncHttpRequest) {
    }

    public void onPostProcessRequest(AsyncHttpRequest asyncHttpRequest) {
    }

    public void run() {
        if (!isCancelled()) {
            if (!this.isRequestPreProcessed) {
                this.isRequestPreProcessed = true;
                onPreProcessRequest(this);
            }
            if (!isCancelled()) {
                this.responseHandler.sendStartMessage();
                if (!isCancelled()) {
                    try {
                        makeRequestWithRetries();
                    } catch (IOException e) {
                        if (isCancelled()) {
                            AsyncHttpClient.log.e("AsyncHttpRequest", "makeRequestWithRetries returned error", e);
                        } else {
                            this.responseHandler.sendFailureMessage(0, null, null, e);
                        }
                    }
                    if (!isCancelled()) {
                        this.responseHandler.sendFinishMessage();
                        if (!isCancelled()) {
                            onPostProcessRequest(this);
                            this.isFinished = true;
                        }
                    }
                }
            }
        }
    }

    private void makeRequest() {
        if (!isCancelled()) {
            if (this.request.getURI().getScheme() == null) {
                throw new MalformedURLException("No valid URI scheme was provided");
            }
            if (this.responseHandler instanceof RangeFileAsyncHttpResponseHandler) {
                ((RangeFileAsyncHttpResponseHandler) this.responseHandler).updateRequestHeaders(this.request);
            }
            AbstractHttpClient abstractHttpClient = this.client;
            HttpUriRequest httpUriRequest = this.request;
            HttpContext httpContext = this.context;
            HttpResponse execute = !(abstractHttpClient instanceof HttpClient) ? abstractHttpClient.execute(httpUriRequest, httpContext) : HttpInstrumentation.execute((HttpClient) abstractHttpClient, httpUriRequest, httpContext);
            if (!isCancelled()) {
                this.responseHandler.onPreProcessResponse(this.responseHandler, execute);
                if (!isCancelled()) {
                    this.responseHandler.sendResponseMessage(execute);
                    if (!isCancelled()) {
                        this.responseHandler.onPostProcessResponse(this.responseHandler, execute);
                    }
                }
            }
        }
    }

    private void makeRequestWithRetries() {
        int i;
        IOException e = null;
        HttpRequestRetryHandler httpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
        boolean z = true;
        while (z) {
            try {
                makeRequest();
                return;
            } catch (UnknownHostException e2) {
                try {
                    boolean z2;
                    IOException iOException;
                    IOException iOException2 = new IOException("UnknownHostException exception: " + e2.getMessage());
                    if (this.executionCount >= 0) {
                        int i2 = this.executionCount + 1;
                        this.executionCount = i2;
                        if (httpRequestRetryHandler.retryRequest(e2, i2, this.context)) {
                            z2 = true;
                            iOException = iOException2;
                            z = z2;
                            e = iOException;
                        }
                    }
                    z2 = false;
                    iOException = iOException2;
                    z = z2;
                    e = iOException;
                } catch (Exception e3) {
                    Throwable th = e3;
                    AsyncHttpClient.log.e("AsyncHttpRequest", "Unhandled exception origin cause", th);
                    e = new IOException("Unhandled exception: " + th.getMessage());
                }
            } catch (NullPointerException e4) {
                e = new IOException("NPE in HttpClient: " + e4.getMessage());
                i = this.executionCount + 1;
                this.executionCount = i;
                z = httpRequestRetryHandler.retryRequest(e, i, this.context);
            } catch (IOException e5) {
                e = e5;
                if (!isCancelled()) {
                    i = this.executionCount + 1;
                    this.executionCount = i;
                    z = httpRequestRetryHandler.retryRequest(e, i, this.context);
                } else {
                    return;
                }
            }
        }
        throw e;
        if (z) {
            this.responseHandler.sendRetryMessage(this.executionCount);
        }
    }

    public boolean isCancelled() {
        boolean z = this.isCancelled.get();
        if (z) {
            sendCancelNotification();
        }
        return z;
    }

    private synchronized void sendCancelNotification() {
        if (!(this.isFinished || !this.isCancelled.get() || this.cancelIsNotified)) {
            this.cancelIsNotified = true;
            this.responseHandler.sendCancelMessage();
        }
    }

    public boolean isDone() {
        return isCancelled() || this.isFinished;
    }

    public boolean cancel(boolean z) {
        this.isCancelled.set(true);
        this.request.abort();
        return isCancelled();
    }

    public AsyncHttpRequest setRequestTag(Object obj) {
        this.responseHandler.setTag(obj);
        return this;
    }

    public Object getTag() {
        return this.responseHandler.getTag();
    }
}
