package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.UnsupportedEncodingException;

public class bc extends bf {
    private MSCSessionInfo c = new MSCSessionInfo();
    private MSCSessionInfo d = new MSCSessionInfo();
    private byte[] e = null;

    private synchronized void a(String str, byte[] bArr, int i) {
        int QMFVDataWrite = MSC.QMFVDataWrite(this.a, str.getBytes(), bArr, i, this.d);
        this.c.sesstatus = this.d.sesstatus;
        cb.b("QISRAudioWrite length:" + i);
        if (QMFVDataWrite != 0) {
            throw new SpeechError(this.d.errorcode);
        }
    }

    public synchronized int a() {
        int QMFVGetParam;
        int i = 0;
        synchronized (this) {
            try {
                QMFVGetParam = MSC.QMFVGetParam(this.a, SpeechConstant.VOLUME.getBytes(), this.d);
                if (QMFVGetParam == 0) {
                    try {
                        i = Integer.parseInt(new String(new String(this.d.buffer)));
                    } catch (Exception e) {
                    }
                } else {
                    cb.b("VAD CHECK FALSE");
                }
            } catch (Exception e2) {
                QMFVGetParam = i;
            }
        }
        return i;
        cb.b("getAudioVolume Exception vadret = " + QMFVGetParam);
        return i;
    }

    public int a(Context context, String str, be beVar) {
        String b = cg.b(context, str, beVar);
        cb.d("sessionBegin Params:" + b);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        cc.a("MSCSessionBegin", null);
        synchronized (bc.class) {
            this.a = MSC.QMFVSessionBegin(b.getBytes(beVar.q()), this.c);
        }
        cc.a("SessionBeginEnd", null);
        cb.a("sessionBegin ErrCode:" + this.c.errorcode + " time:" + (SystemClock.elapsedRealtime() - elapsedRealtime));
        int i = this.c.errorcode;
        if (i == 0 || i == 10129 || i == 10113 || i == 10132) {
            return i;
        }
        throw new SpeechError(i);
    }

    public void a(String str) {
        if (this.a != null) {
            cb.a("sessionEnd enter ");
            cb.a("sessionEnd leavel:" + (MSC.QMFVSessionEnd(this.a, str.getBytes()) == 0) + " time:" + (System.currentTimeMillis() - System.currentTimeMillis()));
            this.a = null;
            this.b = null;
        }
    }

    public synchronized void a(StringBuffer stringBuffer, byte[] bArr, int i, boolean z) {
        StringBuffer stringBuffer2 = new StringBuffer(stringBuffer.toString());
        stringBuffer2.append(",data_status=");
        if (z) {
            stringBuffer2.append(1);
        } else {
            stringBuffer2.append(2);
        }
        cb.d("pushAudioData, param:" + stringBuffer2.toString());
        a(stringBuffer2.toString(), bArr, i);
    }

    public synchronized boolean a(String str, String str2) {
        boolean z = false;
        synchronized (this) {
            if (!(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || this.a == null)) {
                int QMFVSetParam;
                try {
                    QMFVSetParam = MSC.QMFVSetParam(this.a, str.getBytes("utf-8"), str2.getBytes("utf-8"));
                } catch (UnsupportedEncodingException e) {
                    cb.a(e);
                    QMFVSetParam = -1;
                }
                if (QMFVSetParam == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    public String b() {
        if (this.b == null) {
            this.b = d(SpeechConstant.IST_SESSION_ID);
        }
        return this.b;
    }

    public synchronized void b(String str) {
        cc.a("LastDataFlag", null);
        byte[] bArr = new byte[0];
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ssub=" + str);
        stringBuffer.append(",data_status=4");
        cb.a("mfv pushEndFlag, param:" + stringBuffer.toString());
        a(stringBuffer.toString(), bArr, 0);
    }

    public synchronized int c(String str) {
        int i = 0;
        synchronized (this) {
            if (this.a != null) {
                try {
                    String d = d(str);
                    if (!TextUtils.isEmpty(d)) {
                        i = Integer.parseInt(new String(d));
                    }
                } catch (Exception e) {
                    cb.a(e);
                }
            }
        }
        return i;
    }

    public synchronized String d(String str) {
        String str2 = null;
        synchronized (this) {
            if (this.a != null) {
                try {
                    if (MSC.QMFVGetParam(this.a, str.getBytes(), this.c) == 0) {
                        str2 = new String(this.c.buffer);
                    }
                } catch (Exception e) {
                }
            }
        }
        return str2;
    }
}
