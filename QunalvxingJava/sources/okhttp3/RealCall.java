package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.connection.ConnectInterceptor;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;

final class RealCall implements Call {
    final OkHttpClient client;
    private boolean executed;
    final boolean forWebSocket;
    final Request originalRequest;
    final RetryAndFollowUpInterceptor retryAndFollowUpInterceptor;

    final class AsyncCall extends NamedRunnable {
        private final Callback responseCallback;

        AsyncCall(Callback callback) {
            super("OkHttp %s", r5.redactedUrl());
            this.responseCallback = callback;
        }

        /* Access modifiers changed, original: 0000 */
        public String host() {
            return RealCall.this.originalRequest.url().host();
        }

        /* Access modifiers changed, original: 0000 */
        public Request request() {
            return RealCall.this.originalRequest;
        }

        /* Access modifiers changed, original: 0000 */
        public RealCall get() {
            return RealCall.this;
        }

        /* Access modifiers changed, original: protected */
        public void execute() {
            Throwable e;
            Object obj = 1;
            Object obj2 = null;
            try {
                Response responseWithInterceptorChain = RealCall.this.getResponseWithInterceptorChain();
                if (RealCall.this.retryAndFollowUpInterceptor.isCanceled()) {
                    try {
                        this.responseCallback.onFailure(RealCall.this, new IOException("Canceled"));
                    } catch (IOException e2) {
                        e = e2;
                    }
                } else {
                    this.responseCallback.onResponse(RealCall.this, responseWithInterceptorChain);
                }
                RealCall.this.client.dispatcher().finished(this);
                return;
            } catch (IOException e3) {
                e = e3;
                obj = obj2;
            }
            if (obj != null) {
                try {
                    Platform.get().log(4, "Callback failure for " + RealCall.this.toLoggableString(), e);
                } catch (Throwable th) {
                    RealCall.this.client.dispatcher().finished(this);
                }
            } else {
                this.responseCallback.onFailure(RealCall.this, e);
            }
            RealCall.this.client.dispatcher().finished(this);
        }
    }

    RealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        this.client = okHttpClient;
        this.originalRequest = request;
        this.forWebSocket = z;
        this.retryAndFollowUpInterceptor = new RetryAndFollowUpInterceptor(okHttpClient, z);
    }

    public Request request() {
        return this.originalRequest;
    }

    public Response execute() {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        captureCallStackTrace();
        try {
            this.client.dispatcher().executed(this);
            Response responseWithInterceptorChain = getResponseWithInterceptorChain();
            if (responseWithInterceptorChain != null) {
                return responseWithInterceptorChain;
            }
            throw new IOException("Canceled");
        } finally {
            this.client.dispatcher().finished(this);
        }
    }

    private void captureCallStackTrace() {
        this.retryAndFollowUpInterceptor.setCallStackTrace(Platform.get().getStackTraceForCloseable("response.body().close()"));
    }

    public void enqueue(Callback callback) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        captureCallStackTrace();
        this.client.dispatcher().enqueue(new AsyncCall(callback));
    }

    public void cancel() {
        this.retryAndFollowUpInterceptor.cancel();
    }

    public synchronized boolean isExecuted() {
        return this.executed;
    }

    public boolean isCanceled() {
        return this.retryAndFollowUpInterceptor.isCanceled();
    }

    public RealCall clone() {
        return new RealCall(this.client, this.originalRequest, this.forWebSocket);
    }

    /* Access modifiers changed, original: 0000 */
    public StreamAllocation streamAllocation() {
        return this.retryAndFollowUpInterceptor.streamAllocation();
    }

    /* Access modifiers changed, original: 0000 */
    public String toLoggableString() {
        return (isCanceled() ? "canceled " : "") + (this.forWebSocket ? "web socket" : "call") + " to " + redactedUrl();
    }

    /* Access modifiers changed, original: 0000 */
    public String redactedUrl() {
        return this.originalRequest.url().redact();
    }

    /* Access modifiers changed, original: 0000 */
    public Response getResponseWithInterceptorChain() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.client.interceptors());
        arrayList.add(this.retryAndFollowUpInterceptor);
        arrayList.add(new BridgeInterceptor(this.client.cookieJar()));
        arrayList.add(new CacheInterceptor(this.client.internalCache()));
        arrayList.add(new ConnectInterceptor(this.client));
        if (!this.forWebSocket) {
            arrayList.addAll(this.client.networkInterceptors());
        }
        arrayList.add(new CallServerInterceptor(this.forWebSocket));
        return new RealInterceptorChain(arrayList, null, null, null, 0, this.originalRequest).proceed(this.originalRequest);
    }
}
