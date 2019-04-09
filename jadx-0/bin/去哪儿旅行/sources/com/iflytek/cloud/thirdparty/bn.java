package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.SynthesizerListener;
import com.iflytek.cloud.record.b;
import com.iflytek.cloud.record.c;
import java.io.IOException;
import java.util.ArrayList;

public class bn extends bi {
    public boolean g = false;
    public boolean h = false;
    public String i = null;
    public SpeechError j = null;
    final Handler k = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            try {
                if (bn.this.o != null) {
                    switch (message.what) {
                        case 2:
                            Bundle bundle = (Bundle) message.obj;
                            bn.this.o.onBufferProgress(bundle.getInt("percent"), bundle.getInt("begpos"), bundle.getInt("endpos"), bundle.getString("spellinfo"));
                            return;
                        case 6:
                            bn.this.o.onCompleted((SpeechError) message.obj);
                            return;
                        case 7:
                            Message message2 = (Message) message.obj;
                            if (message2 != null) {
                                bn.this.o.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                    cb.c("SpeakSession mUiHandler error:" + e);
                }
            } catch (Exception e) {
                cb.c("SpeakSession mUiHandler error:" + e);
            }
        }
    };
    private c l = null;
    private b m = null;
    private SynthesizerListener n = null;
    private SynthesizerListener o = null;
    private a p = null;
    private int q = 0;
    private boolean r = false;
    private bm s = new bm() {
        public void a(SpeechError speechError) {
            String str = null;
            bn.this.j = speechError;
            if (speechError == null) {
                bn.this.h = true;
                if (bn.this.e != null) {
                    str = bn.this.e.x().b(SpeechConstant.AUDIO_FORMAT, null);
                }
                bn.this.m.a(str);
                if (bn.this.p != null) {
                    bn.this.p.a();
                    cb.a("onCompleted NextSession pause");
                }
            }
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, bn.this.e.f());
            Message.obtain(bn.this.u, 7, bundle).sendToTarget();
            if (bn.this.n != null && speechError != null) {
                Message.obtain(bn.this.u, 6, speechError).sendToTarget();
                if (bn.this.l != null) {
                    bn.this.l.e();
                }
            }
        }

        public void a(ArrayList<byte[]> arrayList, int i, int i2, int i3, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("percent", i);
            bundle.putInt("begpos", i2);
            bundle.putInt("endpos", i3);
            bundle.putString("spellinfo", str);
            if (bn.this.n != null) {
                Message.obtain(bn.this.u, 2, bundle).sendToTarget();
            }
            try {
                bn.this.m.a(arrayList, i, i2, i3);
                bn.this.j();
            } catch (IOException e) {
                cb.a(e);
                bn.this.j = new SpeechError(20010);
                Message.obtain(bn.this.u, 6, bn.this.j).sendToTarget();
                bn.this.cancel(false);
            }
        }
    };
    private com.iflytek.cloud.record.c.a t = new com.iflytek.cloud.record.c.a() {
        public void a() {
            if (bn.this.n != null) {
                Message.obtain(bn.this.u, 3).sendToTarget();
            }
        }

        public void a(int i, int i2, int i3) {
            Message.obtain(bn.this.u, 5, i, i2, Integer.valueOf(i3)).sendToTarget();
        }

        public void a(SpeechError speechError) {
            Message.obtain(bn.this.u, 6, speechError).sendToTarget();
            if (bn.this.l != null) {
                bn.this.l.e();
            }
            bn.this.cancel(false);
        }

        public void b() {
            if (bn.this.n != null) {
                Message.obtain(bn.this.u, 4).sendToTarget();
            }
        }

        public void c() {
            Message.obtain(bn.this.u, 6, null).sendToTarget();
        }
    };
    private Handler u = new Handler(Looper.getMainLooper()) {
        private int b = 0;

        public void handleMessage(Message message) {
            try {
                if (bn.this.n != null) {
                    switch (message.what) {
                        case 1:
                            cb.a("tts-onSpeakBegin");
                            bn.this.n.onSpeakBegin();
                            return;
                        case 2:
                            Bundle bundle = (Bundle) message.obj;
                            int i = bundle.getInt("percent");
                            int i2 = bundle.getInt("begpos");
                            int i3 = bundle.getInt("endpos");
                            String string = bundle.getString("spellinfo");
                            if (bn.this.n != null) {
                                cb.b("tts-onBufferProgress percent: " + i + ", beg: " + i2 + ", endpos: " + i3 + ", spell: " + string);
                                bn.this.n.onBufferProgress(i, i2, i3, string);
                                return;
                            }
                            return;
                        case 3:
                            cb.a("tts-onSpeakPaused");
                            bn.this.n.onSpeakPaused();
                            return;
                        case 4:
                            cb.a("tts-onSpeakResumed");
                            bn.this.n.onSpeakResumed();
                            return;
                        case 5:
                            int intValue = ((Integer) message.obj).intValue();
                            if (bn.this.n != null) {
                                if (this.b != intValue) {
                                    cb.a("tts-onSpeakProgress percent: " + message.arg1 + ", begpos: " + message.arg2 + ", endpos: " + intValue);
                                    this.b = intValue;
                                }
                                bn.this.n.onSpeakProgress(message.arg1, message.arg2, intValue);
                                return;
                            }
                            return;
                        case 6:
                            cb.a("tts-onCompleted");
                            bn.this.n.onCompleted((SpeechError) message.obj);
                            return;
                        case 7:
                            bn.this.n.onEvent(20001, 0, 0, (Bundle) message.obj);
                            return;
                        default:
                            return;
                    }
                    cb.c("SpeakSession mUiHandler error:" + e);
                }
            } catch (Exception e) {
                cb.c("SpeakSession mUiHandler error:" + e);
            }
        }
    };
    private boolean v = true;

    public interface a {
        void a();
    }

    public bn(Context context) {
        super(context);
    }

    private void j() {
        if (!this.r && this.l != null && this.m.a(this.q)) {
            this.r = true;
            this.l.a(this.m, this.t);
            if (this.n != null) {
                Message.obtain(this.u, 1).sendToTarget();
            }
        }
    }

    public synchronized int a(String str, ce ceVar, SynthesizerListener synthesizerListener, boolean z, String str2) {
        int i;
        Throwable th;
        try {
            cb.a("tts start:" + System.currentTimeMillis());
            this.n = synthesizerListener;
            this.i = str;
            setParameter(ceVar);
            int a = ceVar.a(SpeechConstant.STREAM_TYPE, 3);
            boolean a2 = ceVar.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
            if (z) {
                this.l = new c(this.a, a, a2, ce.b(this.c.d(SpeechConstant.TTS_FADING), false), ce.b(this.c.d("tts_buf_fading"), false));
            }
            this.e = new bl(this.a, ceVar, a("tts"));
            int max = Math.max(1, ceVar.a("tts_min_audio_len", 0) / 1000);
            this.m = new b(this.a, this.e.t(), (str != null ? str.length() : 0) + max, str2, ceVar.a("tts_proc_scale", 100));
            this.m.a(ce.b(this.c.d("end_with_null"), true));
            this.q = ceVar.a(SpeechConstant.TTS_BUFFER_TIME, 0);
            cb.a("minPlaySec:" + this.q);
            this.r = false;
            ((bl) this.e).a(str, this.s);
            this.g = true;
            i = 0;
        } catch (SpeechError e) {
            th = e;
            i = th.getErrorCode();
            cb.a(th);
        } catch (Throwable e2) {
            th = e2;
            i = 20999;
            cb.a(th);
        }
        return i;
    }

    public int a(String str, final String str2, ce ceVar, SynthesizerListener synthesizerListener) {
        try {
            this.v = ceVar.a("message_main_thread", true);
            this.o = synthesizerListener;
            this.e = new bl(this.a, ceVar, a("tts"));
            int max = Math.max(1, ceVar.a("tts_min_audio_len", 0) / 1000);
            this.m = new b(this.a, this.e.t(), (str != null ? str.length() : 0) + max, str2, ceVar.a("tts_proc_scale", 100));
            ((bl) this.e).a(str, new bm() {
                public void a(SpeechError speechError) {
                    if (bn.this.o != null && speechError != null) {
                        if (bn.this.v) {
                            Message.obtain(bn.this.k, 6, speechError).sendToTarget();
                        } else {
                            bn.this.o.onCompleted(speechError);
                        }
                    }
                }

                public void a(ArrayList<byte[]> arrayList, int i, int i2, int i3, String str) {
                    if (!(bn.this.e == null || !bn.this.e.x().a(SpeechConstant.TTS_DATA_NOTIFY, false) || bn.this.o == null || arrayList == null)) {
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            byte[] bArr = (byte[]) arrayList.get(i4);
                            Bundle bundle = new Bundle();
                            bundle.putByteArray(SpeechEvent.KEY_EVENT_TTS_BUFFER, bArr);
                            if (bn.this.v) {
                                Message obtain = Message.obtain();
                                obtain.what = 21001;
                                obtain.arg1 = 0;
                                obtain.arg2 = 0;
                                obtain.obj = bundle;
                                Message.obtain(bn.this.k, 7, 0, 0, obtain).sendToTarget();
                            } else {
                                bn.this.o.onEvent(21001, 0, 0, bundle);
                            }
                        }
                    }
                    try {
                        bn.this.m.a(arrayList, i, i2, i3);
                        if (bn.this.o != null) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putInt("percent", i);
                            bundle2.putInt("begpos", i2);
                            bundle2.putInt("endpos", i3);
                            bundle2.putString("spellinfo", str);
                            if (bn.this.v) {
                                Message.obtain(bn.this.k, 2, bundle2).sendToTarget();
                            } else {
                                bn.this.o.onBufferProgress(i, i2, i3, str);
                            }
                        }
                        if (i >= 100) {
                            String b;
                            if (bn.this.e == null || !bn.this.e.x().a(SpeechConstant.TTS_DATA_NOTIFY, false)) {
                                b = bn.this.e != null ? bn.this.e.x().b(SpeechConstant.AUDIO_FORMAT, null) : null;
                                if (bn.this.m.b() == 0) {
                                    throw new SpeechError(10118);
                                } else if (!bn.this.m.a(b)) {
                                    throw new IOException();
                                }
                            }
                            b = bn.this.e.x().b(SpeechConstant.AUDIO_FORMAT, null);
                            if (!(TextUtils.isEmpty(str2) || bn.this.m.a(b))) {
                                throw new IOException();
                            }
                            if (bn.this.o == null) {
                                return;
                            }
                            if (bn.this.v) {
                                Message.obtain(bn.this.k, 6, null).sendToTarget();
                            } else {
                                bn.this.o.onCompleted(null);
                            }
                        }
                    } catch (IOException e) {
                        cb.a(e);
                        if (bn.this.o != null) {
                            if (bn.this.v) {
                                Message.obtain(bn.this.k, 6, new SpeechError(20010)).sendToTarget();
                            } else {
                                try {
                                    bn.this.o.onCompleted(new SpeechError(20010));
                                } catch (Exception e2) {
                                }
                            }
                        }
                        if (bn.this.e != null) {
                            bn.this.e.b(false);
                        }
                    }
                }
            });
            return 0;
        } catch (SpeechError e) {
            Throwable th = e;
            int errorCode = th.getErrorCode();
            cb.a(th);
            return errorCode;
        } catch (Throwable e2) {
            cb.a(e2);
            return 20999;
        }
    }

    public void a(SynthesizerListener synthesizerListener) {
        this.n = synthesizerListener;
    }

    public void a(a aVar) {
        this.p = aVar;
    }

    public void a(String str, ce ceVar) {
        setParameter(ceVar);
        this.i = str;
    }

    public void cancel(boolean z) {
        cb.a("SpeakSession cancel notifyError:" + z);
        if (h()) {
            if (this.n != null) {
                this.n.onEvent(21002, 0, 0, null);
            }
            if (this.o != null) {
                this.o.onEvent(21002, 0, 0, null);
            }
            if (z) {
                SpeechError speechError = new SpeechError(20017);
                if (this.n != null) {
                    cb.a("tts-onCompleted-cancel");
                    Message.obtain(this.u, 6, speechError).sendToTarget();
                }
                if (this.o != null) {
                    if (this.v) {
                        Message.obtain(this.k, 6, speechError).sendToTarget();
                    } else {
                        this.o.onCompleted(speechError);
                    }
                }
            }
        }
        this.n = null;
        this.o = null;
        super.cancel(false);
        if (this.l != null) {
            this.l.e();
        }
    }

    public boolean d() {
        return super.d();
    }

    public boolean destroy() {
        synchronized (this.d) {
            cancel(false);
        }
        return true;
    }

    public void e() {
        if (!this.h) {
            a(this.i, this.c, null, false, this.c.e("tts_next_audio_path"));
        }
    }

    public int f() {
        return (this.m == null || this.l == null) ? 4 : this.l.a();
    }

    public void g() {
        if (this.m != null && this.l != null) {
            this.l.c();
        }
    }

    public boolean h() {
        return d() ? true : (f() == 4 || f() == 0) ? false : true;
    }

    public void i() {
        if (this.m == null || this.l == null) {
            this.l = new c(this.a);
            j();
            return;
        }
        this.l.d();
    }
}
