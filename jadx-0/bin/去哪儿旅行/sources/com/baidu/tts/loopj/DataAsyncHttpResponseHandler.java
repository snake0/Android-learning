package com.baidu.tts.loopj;

import android.os.Message;

public abstract class DataAsyncHttpResponseHandler extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "DataAsyncHttpRH";
    protected static final int PROGRESS_DATA_MESSAGE = 7;

    public void onProgressData(byte[] bArr) {
        AsyncHttpClient.log.d(LOG_TAG, "onProgressData(byte[]) was not overriden, but callback was received");
    }

    public final void sendProgressDataMessage(byte[] bArr) {
        sendMessage(obtainMessage(7, new Object[]{bArr}));
    }

    /* Access modifiers changed, original: protected */
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 7:
                Object[] objArr = (Object[]) message.obj;
                if (objArr == null || objArr.length < 1) {
                    AsyncHttpClient.log.e(LOG_TAG, "PROGRESS_DATA_MESSAGE didn't got enough params");
                    return;
                }
                try {
                    onProgressData((byte[]) objArr[0]);
                    return;
                } catch (Throwable th) {
                    AsyncHttpClient.log.e(LOG_TAG, "custom onProgressData contains an error", th);
                    return;
                }
            default:
                return;
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Missing block: B:30:?, code skipped:
            com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r2);
     */
    /* JADX WARNING: Missing block: B:33:?, code skipped:
            return r3.toByteArray();
     */
    public byte[] getResponseData(org.apache.http.HttpEntity r9) {
        /*
        r8 = this;
        r7 = 0;
        r0 = 0;
        if (r9 == 0) goto L_0x0069;
    L_0x0004:
        r2 = r9.getContent();
        if (r2 == 0) goto L_0x0069;
    L_0x000a:
        r0 = r9.getContentLength();
        r3 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1));
        if (r3 <= 0) goto L_0x001d;
    L_0x0015:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "HTTP entity too large to be buffered in memory";
        r0.<init>(r1);
        throw r0;
    L_0x001d:
        r3 = 0;
        r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1));
        if (r3 >= 0) goto L_0x0025;
    L_0x0023:
        r0 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
    L_0x0025:
        r3 = new org.apache.http.util.ByteArrayBuffer;	 Catch:{ OutOfMemoryError -> 0x0056 }
        r4 = (int) r0;	 Catch:{ OutOfMemoryError -> 0x0056 }
        r3.<init>(r4);	 Catch:{ OutOfMemoryError -> 0x0056 }
        r4 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r4 = new byte[r4];	 Catch:{ all -> 0x0051 }
    L_0x002f:
        r5 = r2.read(r4);	 Catch:{ all -> 0x0051 }
        r6 = -1;
        if (r5 == r6) goto L_0x0062;
    L_0x0036:
        r6 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0051 }
        r6 = r6.isInterrupted();	 Catch:{ all -> 0x0051 }
        if (r6 != 0) goto L_0x0062;
    L_0x0040:
        r6 = 0;
        r3.append(r4, r6, r5);	 Catch:{ all -> 0x0051 }
        r6 = 0;
        r5 = copyOfRange(r4, r6, r5);	 Catch:{ all -> 0x0051 }
        r8.sendProgressDataMessage(r5);	 Catch:{ all -> 0x0051 }
        r5 = (long) r7;	 Catch:{ all -> 0x0051 }
        r8.sendProgressMessage(r5, r0);	 Catch:{ all -> 0x0051 }
        goto L_0x002f;
    L_0x0051:
        r0 = move-exception;
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r2);	 Catch:{ OutOfMemoryError -> 0x0056 }
        throw r0;	 Catch:{ OutOfMemoryError -> 0x0056 }
    L_0x0056:
        r0 = move-exception;
        java.lang.System.gc();
        r0 = new java.io.IOException;
        r1 = "File too large to fit into available memory";
        r0.<init>(r1);
        throw r0;
    L_0x0062:
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r2);	 Catch:{ OutOfMemoryError -> 0x0056 }
        r0 = r3.toByteArray();	 Catch:{ OutOfMemoryError -> 0x0056 }
    L_0x0069:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.DataAsyncHttpResponseHandler.getResponseData(org.apache.http.HttpEntity):byte[]");
    }

    public static byte[] copyOfRange(byte[] bArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = bArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        length = Math.min(i3, length - i);
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, length);
        return bArr2;
    }
}
