package com.iflytek.cloud.record;

import android.media.AudioRecord;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.thirdparty.cb;
import org.apache.commons.io.IOUtils;

public class PcmRecorder extends Thread {
    public static final int RATE16K = 16000;
    public static final int READ_INTERVAL40MS = 40;
    private final short a;
    private byte[] b;
    private AudioRecord c;
    private PcmRecordListener d;
    private PcmRecordListener e;
    private volatile boolean f;
    private double g;
    private double h;
    private int i;
    private int j;
    private int k;
    private int l;

    public interface PcmRecordListener {
        void onError(SpeechError speechError);

        void onRecordBuffer(byte[] bArr, int i, int i2);

        void onRecordReleased();

        void onRecordStarted(boolean z);
    }

    public PcmRecorder(int i, int i2) {
        this(i, i2, 1);
    }

    public PcmRecorder(int i, int i2, int i3) {
        this.a = (short) 16;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = false;
        this.g = 0.0d;
        this.h = 0.0d;
        this.i = 16000;
        this.j = 40;
        this.k = 40;
        this.l = i3;
        this.i = i;
        this.j = i2;
        if (this.j < 40 || this.j > 100) {
            this.j = 40;
        }
        this.k = 10;
    }

    private double a(byte[] bArr, int i) {
        if (bArr == null || i <= 0) {
            return 0.0d;
        }
        double d = 0.0d;
        for (byte b : bArr) {
            d += (double) b;
        }
        double length = d / ((double) bArr.length);
        double d2 = 0.0d;
        for (byte b2 : bArr) {
            d2 += Math.pow(((double) b2) - length, 2.0d);
        }
        return Math.sqrt(d2 / ((double) (bArr.length - 1)));
    }

    private int a() {
        if (this.c == null || this.d == null) {
            return 0;
        }
        int read = this.c.read(this.b, 0, this.b.length);
        if (read > 0 && this.d != null) {
            this.d.onRecordBuffer(this.b, 0, read);
            return read;
        } else if (read >= 0) {
            return read;
        } else {
            cb.c("Record read data error: " + read);
            throw new SpeechError(20006);
        }
    }

    private void b() {
        synchronized (this) {
            try {
                if (this.c != null) {
                    cb.a("release record begin");
                    this.c.release();
                    this.c = null;
                    if (this.e != null) {
                        this.e.onRecordReleased();
                        this.e = null;
                    }
                    cb.a("release record over");
                }
            } catch (Exception e) {
                cb.c(e.toString());
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(short s, int i, int i2) {
        if (this.c != null) {
            b();
        }
        int i3 = (i * i2) / 1000;
        int i4 = (((i3 * 4) * 16) * s) / 8;
        int i5 = s == (short) 1 ? 2 : 3;
        int minBufferSize = AudioRecord.getMinBufferSize(i, i5, 2);
        if (i4 < minBufferSize) {
            i4 = minBufferSize;
        }
        this.c = new AudioRecord(this.l, i, i5, 2, i4);
        this.b = new byte[(((i3 * s) * 16) / 8)];
        cb.a("\nSampleRate:" + i + "\nChannel:" + i5 + "\nFormat:" + 2 + "\nFramePeriod:" + i3 + "\nBufferSize:" + i4 + "\nMinBufferSize:" + minBufferSize + "\nActualBufferSize:" + this.b.length + IOUtils.LINE_SEPARATOR_UNIX);
        if (this.c.getState() != 1) {
            cb.a("create AudioRecord error");
            throw new SpeechError(20006);
        }
    }

    /* Access modifiers changed, original: protected */
    public void finalize() {
        b();
        super.finalize();
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0070 A:{Catch:{ Exception -> 0x0051, Exception -> 0x0030, Exception -> 0x003b }} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x007e A:{Catch:{ Exception -> 0x0051, Exception -> 0x0030, Exception -> 0x003b }} */
    public void run() {
        /*
        r12 = this;
        r6 = 10;
        r10 = 0;
        r0 = 1;
        r1 = 0;
        r9 = 20006; // 0x4e26 float:2.8034E-41 double:9.8843E-320;
        r2 = r1;
    L_0x0009:
        r3 = r12.f;	 Catch:{ Exception -> 0x003b }
        if (r3 != 0) goto L_0x0015;
    L_0x000d:
        r3 = 1;
        r4 = r12.i;	 Catch:{ Exception -> 0x0051 }
        r5 = r12.j;	 Catch:{ Exception -> 0x0051 }
        r12.a(r3, r4, r5);	 Catch:{ Exception -> 0x0051 }
    L_0x0015:
        r2 = r1;
    L_0x0016:
        r3 = r12.f;	 Catch:{ Exception -> 0x003b }
        if (r3 != 0) goto L_0x006c;
    L_0x001a:
        r3 = r12.c;	 Catch:{ Exception -> 0x0030 }
        r3.startRecording();	 Catch:{ Exception -> 0x0030 }
        r3 = r12.c;	 Catch:{ Exception -> 0x0030 }
        r3 = r3.getRecordingState();	 Catch:{ Exception -> 0x0030 }
        r4 = 3;
        if (r3 == r4) goto L_0x006c;
    L_0x0028:
        r3 = new com.iflytek.cloud.SpeechError;	 Catch:{ Exception -> 0x0030 }
        r4 = 20006; // 0x4e26 float:2.8034E-41 double:9.8843E-320;
        r3.<init>(r4);	 Catch:{ Exception -> 0x0030 }
        throw r3;	 Catch:{ Exception -> 0x0030 }
    L_0x0030:
        r3 = move-exception;
        r2 = r2 + 1;
        if (r2 >= r6) goto L_0x0064;
    L_0x0035:
        r3 = 40;
        sleep(r3);	 Catch:{ Exception -> 0x003b }
        goto L_0x0016;
    L_0x003b:
        r0 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r0);
        r0 = r12.d;
        if (r0 == 0) goto L_0x004d;
    L_0x0043:
        r0 = r12.d;
        r1 = new com.iflytek.cloud.SpeechError;
        r1.<init>(r9);
        r0.onError(r1);
    L_0x004d:
        r12.b();
        return;
    L_0x0051:
        r3 = move-exception;
        r2 = r2 + 1;
        if (r2 >= r6) goto L_0x005c;
    L_0x0056:
        r3 = 40;
        sleep(r3);	 Catch:{ Exception -> 0x003b }
        goto L_0x0009;
    L_0x005c:
        r0 = new com.iflytek.cloud.SpeechError;	 Catch:{ Exception -> 0x003b }
        r1 = 20006; // 0x4e26 float:2.8034E-41 double:9.8843E-320;
        r0.<init>(r1);	 Catch:{ Exception -> 0x003b }
        throw r0;	 Catch:{ Exception -> 0x003b }
    L_0x0064:
        r0 = new com.iflytek.cloud.SpeechError;	 Catch:{ Exception -> 0x003b }
        r1 = 20006; // 0x4e26 float:2.8034E-41 double:9.8843E-320;
        r0.<init>(r1);	 Catch:{ Exception -> 0x003b }
        throw r0;	 Catch:{ Exception -> 0x003b }
    L_0x006c:
        r2 = r12.d;	 Catch:{ Exception -> 0x003b }
        if (r2 == 0) goto L_0x0076;
    L_0x0070:
        r2 = r12.d;	 Catch:{ Exception -> 0x003b }
        r3 = 1;
        r2.onRecordStarted(r3);	 Catch:{ Exception -> 0x003b }
    L_0x0076:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x003b }
    L_0x007a:
        r4 = r12.f;	 Catch:{ Exception -> 0x003b }
        if (r4 != 0) goto L_0x004d;
    L_0x007e:
        r4 = r12.a();	 Catch:{ Exception -> 0x003b }
        if (r0 == 0) goto L_0x00bd;
    L_0x0084:
        r5 = r12.g;	 Catch:{ Exception -> 0x003b }
        r7 = (double) r4;	 Catch:{ Exception -> 0x003b }
        r5 = r5 + r7;
        r12.g = r5;	 Catch:{ Exception -> 0x003b }
        r5 = r12.h;	 Catch:{ Exception -> 0x003b }
        r7 = r12.b;	 Catch:{ Exception -> 0x003b }
        r8 = r12.b;	 Catch:{ Exception -> 0x003b }
        r8 = r8.length;	 Catch:{ Exception -> 0x003b }
        r7 = r12.a(r7, r8);	 Catch:{ Exception -> 0x003b }
        r5 = r5 + r7;
        r12.h = r5;	 Catch:{ Exception -> 0x003b }
        r5 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x003b }
        r5 = r5 - r2;
        r7 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r5 < 0) goto L_0x00bd;
    L_0x00a3:
        r5 = r12.g;	 Catch:{ Exception -> 0x003b }
        r0 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1));
        if (r0 == 0) goto L_0x00af;
    L_0x00a9:
        r5 = r12.h;	 Catch:{ Exception -> 0x003b }
        r0 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1));
        if (r0 != 0) goto L_0x00bc;
    L_0x00af:
        r0 = "cannot get record permission, get invalid audio data.";
        com.iflytek.cloud.thirdparty.cb.c(r0);	 Catch:{ Exception -> 0x003b }
        r0 = new com.iflytek.cloud.SpeechError;	 Catch:{ Exception -> 0x003b }
        r1 = 20006; // 0x4e26 float:2.8034E-41 double:9.8843E-320;
        r0.<init>(r1);	 Catch:{ Exception -> 0x003b }
        throw r0;	 Catch:{ Exception -> 0x003b }
    L_0x00bc:
        r0 = r1;
    L_0x00bd:
        r5 = r12.b;	 Catch:{ Exception -> 0x003b }
        r5 = r5.length;	 Catch:{ Exception -> 0x003b }
        if (r5 <= r4) goto L_0x007a;
    L_0x00c2:
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x003b }
        r5.<init>();	 Catch:{ Exception -> 0x003b }
        r6 = "current record read size is less than buffer size: ";
        r5 = r5.append(r6);	 Catch:{ Exception -> 0x003b }
        r4 = r5.append(r4);	 Catch:{ Exception -> 0x003b }
        r4 = r4.toString();	 Catch:{ Exception -> 0x003b }
        com.iflytek.cloud.thirdparty.cb.b(r4);	 Catch:{ Exception -> 0x003b }
        r4 = r12.k;	 Catch:{ Exception -> 0x003b }
        r4 = (long) r4;	 Catch:{ Exception -> 0x003b }
        sleep(r4);	 Catch:{ Exception -> 0x003b }
        goto L_0x007a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.record.PcmRecorder.run():void");
    }

    public void startRecording(PcmRecordListener pcmRecordListener) {
        this.d = pcmRecordListener;
        setPriority(10);
        start();
    }

    public void stopRecord(boolean z) {
        this.f = true;
        if (this.e == null) {
            this.e = this.d;
        }
        this.d = null;
        if (z) {
            synchronized (this) {
                try {
                    cb.a("stopRecord...release");
                    if (this.c != null) {
                        if (3 == this.c.getRecordingState() && 1 == this.c.getState()) {
                            cb.a("stopRecord releaseRecording ing...");
                            this.c.release();
                            cb.a("stopRecord releaseRecording end...");
                            this.c = null;
                        }
                        if (this.e != null) {
                            this.e.onRecordReleased();
                            this.e = null;
                        }
                    }
                } catch (Exception e) {
                    cb.c(e.toString());
                }
            }
        }
        cb.a("stop record");
    }
}
