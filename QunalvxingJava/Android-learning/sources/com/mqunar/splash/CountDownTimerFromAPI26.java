package com.mqunar.splash;

import android.os.Handler;
import android.os.SystemClock;

public abstract class CountDownTimerFromAPI26 {
    private static final int MSG = 1;
    private boolean mCancelled = false;
    private final long mCountdownInterval;
    private Handler mHandler = new Handler() {
        /* JADX WARNING: Missing block: B:18:0x0044, code skipped:
            if (r2 < 0) goto L_0x0046;
     */
        /* JADX WARNING: Missing block: B:28:?, code skipped:
            return;
     */
        public void handleMessage(android.os.Message r10) {
            /*
            r9 = this;
            r0 = 0;
            r4 = com.mqunar.splash.CountDownTimerFromAPI26.this;
            monitor-enter(r4);
            r2 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r2 = r2.mCancelled;	 Catch:{ all -> 0x0025 }
            if (r2 == 0) goto L_0x000f;
        L_0x000d:
            monitor-exit(r4);	 Catch:{ all -> 0x0025 }
        L_0x000e:
            return;
        L_0x000f:
            r2 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r2 = r2.mStopTimeInFuture;	 Catch:{ all -> 0x0025 }
            r5 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0025 }
            r2 = r2 - r5;
            r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
            if (r5 > 0) goto L_0x0028;
        L_0x001e:
            r0 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r0.onFinish();	 Catch:{ all -> 0x0025 }
        L_0x0023:
            monitor-exit(r4);	 Catch:{ all -> 0x0025 }
            goto L_0x000e;
        L_0x0025:
            r0 = move-exception;
            monitor-exit(r4);	 Catch:{ all -> 0x0025 }
            throw r0;
        L_0x0028:
            r5 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0025 }
            r7 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r7.onTick(r2);	 Catch:{ all -> 0x0025 }
            r7 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0025 }
            r5 = r7 - r5;
            r7 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r7 = r7.mCountdownInterval;	 Catch:{ all -> 0x0025 }
            r7 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1));
            if (r7 >= 0) goto L_0x004f;
        L_0x0041:
            r2 = r2 - r5;
            r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
            if (r5 >= 0) goto L_0x0062;
        L_0x0046:
            r2 = 1;
            r2 = r9.obtainMessage(r2);	 Catch:{ all -> 0x0025 }
            r9.sendMessageDelayed(r2, r0);	 Catch:{ all -> 0x0025 }
            goto L_0x0023;
        L_0x004f:
            r2 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r2 = r2.mCountdownInterval;	 Catch:{ all -> 0x0025 }
            r2 = r2 - r5;
        L_0x0056:
            r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
            if (r5 >= 0) goto L_0x0062;
        L_0x005a:
            r5 = com.mqunar.splash.CountDownTimerFromAPI26.this;	 Catch:{ all -> 0x0025 }
            r5 = r5.mCountdownInterval;	 Catch:{ all -> 0x0025 }
            r2 = r2 + r5;
            goto L_0x0056;
        L_0x0062:
            r0 = r2;
            goto L_0x0046;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mqunar.splash.CountDownTimerFromAPI26$AnonymousClass1.handleMessage(android.os.Message):void");
        }
    };
    private final long mMillisInFuture;
    private long mStopTimeInFuture;

    public abstract void onFinish();

    public abstract void onTick(long j);

    public CountDownTimerFromAPI26(long j, long j2) {
        this.mMillisInFuture = j;
        this.mCountdownInterval = j2;
    }

    public final synchronized void cancel() {
        this.mCancelled = true;
        this.mHandler.removeMessages(1);
    }

    public final synchronized CountDownTimerFromAPI26 start() {
        CountDownTimerFromAPI26 countDownTimerFromAPI26;
        this.mCancelled = false;
        if (this.mMillisInFuture <= 0) {
            onFinish();
            countDownTimerFromAPI26 = this;
        } else {
            this.mStopTimeInFuture = SystemClock.elapsedRealtime() + this.mMillisInFuture;
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1));
            countDownTimerFromAPI26 = this;
        }
        return countDownTimerFromAPI26;
    }
}
