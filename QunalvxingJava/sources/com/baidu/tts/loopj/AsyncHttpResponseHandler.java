package com.baidu.tts.loopj;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;

public abstract class AsyncHttpResponseHandler implements ResponseHandlerInterface {
    protected static final int BUFFER_SIZE = 4096;
    protected static final int CANCEL_MESSAGE = 6;
    public static final String DEFAULT_CHARSET = "UTF-8";
    protected static final int FAILURE_MESSAGE = 1;
    protected static final int FINISH_MESSAGE = 3;
    private static final String LOG_TAG = "AsyncHttpRH";
    protected static final int PROGRESS_MESSAGE = 4;
    protected static final int RETRY_MESSAGE = 5;
    protected static final int START_MESSAGE = 2;
    protected static final int SUCCESS_MESSAGE = 0;
    public static final String UTF8_BOM = "﻿";
    private WeakReference<Object> TAG;
    private Handler handler;
    private Looper looper;
    private Header[] requestHeaders;
    private URI requestURI;
    private String responseCharset;
    private boolean usePoolThread;
    private boolean useSynchronousMode;

    class ResponderHandler extends Handler {
        private final AsyncHttpResponseHandler mResponder;

        ResponderHandler(AsyncHttpResponseHandler asyncHttpResponseHandler, Looper looper) {
            super(looper);
            this.mResponder = asyncHttpResponseHandler;
        }

        public void handleMessage(Message message) {
            this.mResponder.handleMessage(message);
        }
    }

    public abstract void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, byte[] bArr);

    public AsyncHttpResponseHandler() {
        this(null);
    }

    public AsyncHttpResponseHandler(Looper looper) {
        this.responseCharset = "UTF-8";
        this.requestURI = null;
        this.requestHeaders = null;
        this.looper = null;
        this.TAG = new WeakReference(null);
        if (looper == null) {
            looper = Looper.myLooper();
        }
        this.looper = looper;
        setUseSynchronousMode(false);
        setUsePoolThread(false);
    }

    public AsyncHttpResponseHandler(boolean z) {
        this.responseCharset = "UTF-8";
        this.requestURI = null;
        this.requestHeaders = null;
        this.looper = null;
        this.TAG = new WeakReference(null);
        setUsePoolThread(z);
        if (!getUsePoolThread()) {
            this.looper = Looper.myLooper();
            setUseSynchronousMode(false);
        }
    }

    public void setTag(Object obj) {
        this.TAG = new WeakReference(obj);
    }

    public Object getTag() {
        return this.TAG.get();
    }

    public URI getRequestURI() {
        return this.requestURI;
    }

    public Header[] getRequestHeaders() {
        return this.requestHeaders;
    }

    public void setRequestURI(URI uri) {
        this.requestURI = uri;
    }

    public void setRequestHeaders(Header[] headerArr) {
        this.requestHeaders = headerArr;
    }

    public boolean getUseSynchronousMode() {
        return this.useSynchronousMode;
    }

    public void setUseSynchronousMode(boolean z) {
        if (!z && this.looper == null) {
            z = true;
            AsyncHttpClient.log.w(LOG_TAG, "Current thread has not called Looper.prepare(). Forcing synchronous mode.");
        }
        if (!z && this.handler == null) {
            this.handler = new ResponderHandler(this, this.looper);
        } else if (z && this.handler != null) {
            this.handler = null;
        }
        this.useSynchronousMode = z;
    }

    public boolean getUsePoolThread() {
        return this.usePoolThread;
    }

    public void setUsePoolThread(boolean z) {
        if (z) {
            this.looper = null;
            this.handler = null;
        }
        this.usePoolThread = z;
    }

    public void setCharset(String str) {
        this.responseCharset = str;
    }

    public String getCharset() {
        return this.responseCharset == null ? "UTF-8" : this.responseCharset;
    }

    public void onProgress(long j, long j2) {
        LogInterface logInterface = AsyncHttpClient.log;
        String str = LOG_TAG;
        String str2 = "Progress %d from %d (%2.0f%%)";
        Object[] objArr = new Object[3];
        objArr[0] = Long.valueOf(j);
        objArr[1] = Long.valueOf(j2);
        objArr[2] = Double.valueOf(j2 > 0 ? ((((double) j) * 1.0d) / ((double) j2)) * 100.0d : -1.0d);
        logInterface.v(str, String.format(str2, objArr));
    }

    public void onStart() {
    }

    public void onFinish() {
    }

    public void onPreProcessResponse(ResponseHandlerInterface responseHandlerInterface, HttpResponse httpResponse) {
    }

    public void onPostProcessResponse(ResponseHandlerInterface responseHandlerInterface, HttpResponse httpResponse) {
    }

    public void onRetry(int i) {
        AsyncHttpClient.log.d(LOG_TAG, String.format("Request retry no. %d", new Object[]{Integer.valueOf(i)}));
    }

    public void onCancel() {
        AsyncHttpClient.log.d(LOG_TAG, "Request got cancelled");
    }

    public void onUserException(Throwable th) {
        AsyncHttpClient.log.e(LOG_TAG, "User-space exception detected!", th);
        throw new RuntimeException(th);
    }

    public final void sendProgressMessage(long j, long j2) {
        sendMessage(obtainMessage(4, new Object[]{Long.valueOf(j), Long.valueOf(j2)}));
    }

    public final void sendSuccessMessage(int i, Header[] headerArr, byte[] bArr) {
        sendMessage(obtainMessage(0, new Object[]{Integer.valueOf(i), headerArr, bArr}));
    }

    public final void sendFailureMessage(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        sendMessage(obtainMessage(1, new Object[]{Integer.valueOf(i), headerArr, bArr, th}));
    }

    public final void sendStartMessage() {
        sendMessage(obtainMessage(2, null));
    }

    public final void sendFinishMessage() {
        sendMessage(obtainMessage(3, null));
    }

    public final void sendRetryMessage(int i) {
        sendMessage(obtainMessage(5, new Object[]{Integer.valueOf(i)}));
    }

    public final void sendCancelMessage() {
        sendMessage(obtainMessage(6, null));
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public void handleMessage(android.os.Message r6) {
        /*
        r5 = this;
        r4 = 3;
        r3 = 2;
        r2 = 1;
        r0 = r6.what;	 Catch:{ Throwable -> 0x002f }
        switch(r0) {
            case 0: goto L_0x0009;
            case 1: goto L_0x003e;
            case 2: goto L_0x0074;
            case 3: goto L_0x0078;
            case 4: goto L_0x007c;
            case 5: goto L_0x00b5;
            case 6: goto L_0x00d9;
            default: goto L_0x0008;
        };	 Catch:{ Throwable -> 0x002f }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r6.obj;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        if (r0 == 0) goto L_0x0034;
    L_0x0011:
        r1 = r0.length;	 Catch:{ Throwable -> 0x002f }
        if (r1 < r4) goto L_0x0034;
    L_0x0014:
        r1 = 0;
        r1 = r0[r1];	 Catch:{ Throwable -> 0x002f }
        r1 = (java.lang.Integer) r1;	 Catch:{ Throwable -> 0x002f }
        r2 = r1.intValue();	 Catch:{ Throwable -> 0x002f }
        r1 = 1;
        r1 = r0[r1];	 Catch:{ Throwable -> 0x002f }
        r1 = (org.apache.http.Header[]) r1;	 Catch:{ Throwable -> 0x002f }
        r1 = (org.apache.http.Header[]) r1;	 Catch:{ Throwable -> 0x002f }
        r3 = 2;
        r0 = r0[r3];	 Catch:{ Throwable -> 0x002f }
        r0 = (byte[]) r0;	 Catch:{ Throwable -> 0x002f }
        r0 = (byte[]) r0;	 Catch:{ Throwable -> 0x002f }
        r5.onSuccess(r2, r1, r0);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x002f:
        r0 = move-exception;
        r5.onUserException(r0);
        goto L_0x0008;
    L_0x0034:
        r0 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ Throwable -> 0x002f }
        r1 = "AsyncHttpRH";
        r2 = "SUCCESS_MESSAGE didn't got enough params";
        r0.e(r1, r2);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x003e:
        r0 = r6.obj;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        if (r0 == 0) goto L_0x006a;
    L_0x0046:
        r1 = r0.length;	 Catch:{ Throwable -> 0x002f }
        r2 = 4;
        if (r1 < r2) goto L_0x006a;
    L_0x004a:
        r1 = 0;
        r1 = r0[r1];	 Catch:{ Throwable -> 0x002f }
        r1 = (java.lang.Integer) r1;	 Catch:{ Throwable -> 0x002f }
        r3 = r1.intValue();	 Catch:{ Throwable -> 0x002f }
        r1 = 1;
        r1 = r0[r1];	 Catch:{ Throwable -> 0x002f }
        r1 = (org.apache.http.Header[]) r1;	 Catch:{ Throwable -> 0x002f }
        r1 = (org.apache.http.Header[]) r1;	 Catch:{ Throwable -> 0x002f }
        r2 = 2;
        r2 = r0[r2];	 Catch:{ Throwable -> 0x002f }
        r2 = (byte[]) r2;	 Catch:{ Throwable -> 0x002f }
        r2 = (byte[]) r2;	 Catch:{ Throwable -> 0x002f }
        r4 = 3;
        r0 = r0[r4];	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Throwable) r0;	 Catch:{ Throwable -> 0x002f }
        r5.onFailure(r3, r1, r2, r0);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x006a:
        r0 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ Throwable -> 0x002f }
        r1 = "AsyncHttpRH";
        r2 = "FAILURE_MESSAGE didn't got enough params";
        r0.e(r1, r2);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x0074:
        r5.onStart();	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x0078:
        r5.onFinish();	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x007c:
        r0 = r6.obj;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        if (r0 == 0) goto L_0x00aa;
    L_0x0084:
        r1 = r0.length;	 Catch:{ Throwable -> 0x002f }
        if (r1 < r3) goto L_0x00aa;
    L_0x0087:
        r1 = 0;
        r1 = r0[r1];	 Catch:{ Throwable -> 0x009e }
        r1 = (java.lang.Long) r1;	 Catch:{ Throwable -> 0x009e }
        r1 = r1.longValue();	 Catch:{ Throwable -> 0x009e }
        r3 = 1;
        r0 = r0[r3];	 Catch:{ Throwable -> 0x009e }
        r0 = (java.lang.Long) r0;	 Catch:{ Throwable -> 0x009e }
        r3 = r0.longValue();	 Catch:{ Throwable -> 0x009e }
        r5.onProgress(r1, r3);	 Catch:{ Throwable -> 0x009e }
        goto L_0x0008;
    L_0x009e:
        r0 = move-exception;
        r1 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ Throwable -> 0x002f }
        r2 = "AsyncHttpRH";
        r3 = "custom onProgress contains an error";
        r1.e(r2, r3, r0);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x00aa:
        r0 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ Throwable -> 0x002f }
        r1 = "AsyncHttpRH";
        r2 = "PROGRESS_MESSAGE didn't got enough params";
        r0.e(r1, r2);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x00b5:
        r0 = r6.obj;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Object[]) r0;	 Catch:{ Throwable -> 0x002f }
        if (r0 == 0) goto L_0x00ce;
    L_0x00bd:
        r1 = r0.length;	 Catch:{ Throwable -> 0x002f }
        if (r1 != r2) goto L_0x00ce;
    L_0x00c0:
        r1 = 0;
        r0 = r0[r1];	 Catch:{ Throwable -> 0x002f }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x002f }
        r0 = r0.intValue();	 Catch:{ Throwable -> 0x002f }
        r5.onRetry(r0);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x00ce:
        r0 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ Throwable -> 0x002f }
        r1 = "AsyncHttpRH";
        r2 = "RETRY_MESSAGE didn't get enough params";
        r0.e(r1, r2);	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
    L_0x00d9:
        r5.onCancel();	 Catch:{ Throwable -> 0x002f }
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.AsyncHttpResponseHandler.handleMessage(android.os.Message):void");
    }

    /* Access modifiers changed, original: protected */
    public void sendMessage(Message message) {
        if (getUseSynchronousMode() || this.handler == null) {
            handleMessage(message);
        } else if (!Thread.currentThread().isInterrupted()) {
            Utils.asserts(this.handler != null, "handler should not be null!");
            this.handler.sendMessage(message);
        }
    }

    /* Access modifiers changed, original: protected */
    public void postRunnable(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (getUseSynchronousMode() || this.handler == null) {
            runnable.run();
        } else {
            this.handler.post(runnable);
        }
    }

    /* Access modifiers changed, original: protected */
    public Message obtainMessage(int i, Object obj) {
        return Message.obtain(this.handler, i, obj);
    }

    public void sendResponseMessage(HttpResponse httpResponse) {
        if (!Thread.currentThread().isInterrupted()) {
            StatusLine statusLine = httpResponse.getStatusLine();
            byte[] responseData = getResponseData(httpResponse.getEntity());
            if (!Thread.currentThread().isInterrupted()) {
                if (statusLine.getStatusCode() >= 300) {
                    sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
                } else {
                    sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData);
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Missing block: B:27:?, code skipped:
            com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r8);
            com.baidu.tts.loopj.AsyncHttpClient.endEntityViaReflection(r13);
     */
    /* JADX WARNING: Missing block: B:35:?, code skipped:
            return r9.toByteArray();
     */
    public byte[] getResponseData(org.apache.http.HttpEntity r13) {
        /*
        r12 = this;
        r0 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r4 = 0;
        r1 = 0;
        if (r13 == 0) goto L_0x0073;
    L_0x0007:
        r8 = r13.getContent();
        if (r8 == 0) goto L_0x0073;
    L_0x000d:
        r2 = r13.getContentLength();
        r6 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r1 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
        if (r1 <= 0) goto L_0x0020;
    L_0x0018:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "HTTP entity too large to be buffered in memory";
        r0.<init>(r1);
        throw r0;
    L_0x0020:
        r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r1 > 0) goto L_0x0050;
    L_0x0024:
        r9 = new org.apache.http.util.ByteArrayBuffer;	 Catch:{ OutOfMemoryError -> 0x0067 }
        r9.<init>(r0);	 Catch:{ OutOfMemoryError -> 0x0067 }
        r0 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r10 = new byte[r0];	 Catch:{ all -> 0x005f }
        r0 = r4;
    L_0x002e:
        r11 = r8.read(r10);	 Catch:{ all -> 0x005f }
        r6 = -1;
        if (r11 == r6) goto L_0x0054;
    L_0x0035:
        r6 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x005f }
        r6 = r6.isInterrupted();	 Catch:{ all -> 0x005f }
        if (r6 != 0) goto L_0x0054;
    L_0x003f:
        r6 = (long) r11;	 Catch:{ all -> 0x005f }
        r6 = r6 + r0;
        r0 = 0;
        r9.append(r10, r0, r11);	 Catch:{ all -> 0x005f }
        r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r0 > 0) goto L_0x0052;
    L_0x0049:
        r0 = 1;
    L_0x004b:
        r12.sendProgressMessage(r6, r0);	 Catch:{ all -> 0x005f }
        r0 = r6;
        goto L_0x002e;
    L_0x0050:
        r0 = (int) r2;
        goto L_0x0024;
    L_0x0052:
        r0 = r2;
        goto L_0x004b;
    L_0x0054:
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r8);	 Catch:{ OutOfMemoryError -> 0x0067 }
        com.baidu.tts.loopj.AsyncHttpClient.endEntityViaReflection(r13);	 Catch:{ OutOfMemoryError -> 0x0067 }
        r0 = r9.toByteArray();	 Catch:{ OutOfMemoryError -> 0x0067 }
    L_0x005e:
        return r0;
    L_0x005f:
        r0 = move-exception;
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r8);	 Catch:{ OutOfMemoryError -> 0x0067 }
        com.baidu.tts.loopj.AsyncHttpClient.endEntityViaReflection(r13);	 Catch:{ OutOfMemoryError -> 0x0067 }
        throw r0;	 Catch:{ OutOfMemoryError -> 0x0067 }
    L_0x0067:
        r0 = move-exception;
        java.lang.System.gc();
        r0 = new java.io.IOException;
        r1 = "File too large to fit into available memory";
        r0.<init>(r1);
        throw r0;
    L_0x0073:
        r0 = r1;
        goto L_0x005e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.AsyncHttpResponseHandler.getResponseData(org.apache.http.HttpEntity):byte[]");
    }
}
