package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.GrammarListener;
import com.iflytek.cloud.LexiconListener;
import com.iflytek.cloud.RecognizerListener;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.util.AudioDetector;

public class cm extends bi {
    private boolean g = false;

    final class a implements GrammarListener {
        private GrammarListener b = null;
        private Handler c = new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message message) {
                if (a.this.b != null) {
                    switch (message.what) {
                        case 0:
                            a.this.b.onBuildFinish(null, (SpeechError) message.obj);
                            break;
                        case 1:
                            a.this.b.onBuildFinish((String) message.obj, null);
                            break;
                    }
                    super.handleMessage(message);
                }
            }
        };

        public a(GrammarListener grammarListener) {
            this.b = grammarListener;
        }

        public void onBuildFinish(String str, SpeechError speechError) {
            if (speechError != null) {
                this.c.sendMessage(this.c.obtainMessage(0, speechError));
                return;
            }
            this.c.sendMessage(this.c.obtainMessage(1, str));
        }
    }

    final class b implements LexiconListener {
        private LexiconListener b = null;
        private Handler c = new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message message) {
                if (b.this.b != null) {
                    switch (message.what) {
                        case 0:
                            b.this.b.onLexiconUpdated(null, (SpeechError) message.obj);
                            break;
                        case 1:
                            b.this.b.onLexiconUpdated((String) message.obj, null);
                            break;
                    }
                    super.handleMessage(message);
                }
            }
        };

        public b(LexiconListener lexiconListener) {
            this.b = lexiconListener;
        }

        public void onLexiconUpdated(String str, SpeechError speechError) {
            if (speechError != null) {
                this.c.sendMessage(this.c.obtainMessage(0, speechError));
                return;
            }
            this.c.sendMessage(this.c.obtainMessage(1, str));
        }
    }

    final class c implements RecognizerListener {
        private RecognizerListener b = null;
        private boolean c = false;
        private Handler d = new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message message) {
                if (c.this.b != null) {
                    switch (message.what) {
                        case 0:
                            c.this.b.onError((SpeechError) message.obj);
                            break;
                        case 1:
                            c.this.b.onVolumeChanged(message.arg1, (byte[]) message.obj);
                            break;
                        case 2:
                            c.this.b.onBeginOfSpeech();
                            break;
                        case 3:
                            c.this.b.onEndOfSpeech();
                            break;
                        case 4:
                            c.this.b.onResult((RecognizerResult) message.obj, message.arg1 == 1);
                            if (!c.this.c) {
                                cm.this.b("ui_frs");
                                c.this.c = true;
                            }
                            if (1 == message.arg1) {
                                cm.this.b("ui_lrs");
                                break;
                            }
                            break;
                        case 6:
                            Message message2 = (Message) message.obj;
                            c.this.b.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                            break;
                    }
                    super.handleMessage(message);
                }
            }
        };

        public c(RecognizerListener recognizerListener) {
            this.b = recognizerListener;
        }

        public void onBeginOfSpeech() {
            cb.a("onBeginOfSpeech");
            this.d.sendMessage(this.d.obtainMessage(2, 0, 0, null));
        }

        public void onEndOfSpeech() {
            this.d.sendMessage(this.d.obtainMessage(3, 0, 0, null));
        }

        public void onError(SpeechError speechError) {
            cm.this.f();
            this.d.sendMessage(this.d.obtainMessage(0, speechError));
        }

        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message message = new Message();
            message.what = i;
            message.arg1 = i2;
            message.arg2 = i3;
            message.obj = bundle;
            this.d.sendMessage(this.d.obtainMessage(6, 0, 0, message));
        }

        public void onResult(RecognizerResult recognizerResult, boolean z) {
            int i = 1;
            if (z) {
                cm.this.f();
            }
            Handler handler = this.d;
            if (!z) {
                i = 0;
            }
            this.d.sendMessage(handler.obtainMessage(4, i, 0, recognizerResult));
        }

        public void onVolumeChanged(int i, byte[] bArr) {
            this.d.sendMessage(this.d.obtainMessage(1, i, 0, bArr));
        }
    }

    public cm(Context context) {
        super(context);
    }

    public int a(RecognizerListener recognizerListener) {
        int i;
        synchronized (this.d) {
            try {
                this.g = this.c.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (this.e != null && this.e.v()) {
                    this.e.b(this.c.a(SpeechConstant.ASR_INTERRUPT_ERROR, false));
                }
                if (h()) {
                    this.e = new ay(this.a, this.c, a("iat"));
                } else {
                    this.e = new ax(this.a, this.c, a("iat"));
                }
                bw.a(this.a, Boolean.valueOf(this.g), null);
                ((ax) this.e).a(new c(recognizerListener));
                i = 0;
            } catch (SpeechError e) {
                int errorCode = e.getErrorCode();
                cb.a(e);
                i = errorCode;
            } catch (Throwable e2) {
                cb.a(e2);
                i = 20999;
            }
        }
        return i;
    }

    public int a(String str, String str2, GrammarListener grammarListener) {
        if (TextUtils.isEmpty(str2)) {
            return 20009;
        }
        if (TextUtils.isEmpty(str) || grammarListener == null) {
            return 20012;
        }
        new aw().a(str, str2, new a(grammarListener), this.c);
        return 0;
    }

    public int a(String str, String str2, LexiconListener lexiconListener) {
        if (TextUtils.isEmpty(str2)) {
            return 20009;
        }
        if (TextUtils.isEmpty(str) || lexiconListener == null) {
            return 20012;
        }
        aw awVar = new aw();
        this.c.a(SpeechConstant.SUBJECT, "uup", false);
        String parameter = getParameter(SpeechConstant.LEXICON_TYPE);
        if (TextUtils.isEmpty(parameter)) {
            parameter = str;
        }
        this.c.a("data_type", parameter, false);
        awVar.a(str, str2, new b(lexiconListener), this.c);
        return 0;
    }

    public int a(byte[] bArr, int i, int i2) {
        int i3 = 10109;
        synchronized (this.d) {
            if (this.e == null) {
                cb.a("writeAudio error, no active session.");
                i3 = 21004;
            } else if (bArr == null || bArr.length <= 0) {
                cb.a("writeAudio error,buffer is null.");
            } else if (bArr.length < i2 + i) {
                cb.a("writeAudio error,buffer length < length.");
            } else if (((ax) this.e).a() != -1) {
                i3 = 10106;
            } else {
                i3 = ((ax) this.e).a(bArr, i, i2);
            }
        }
        return i3;
    }

    public void b(String str) {
        synchronized (this.d) {
            if (this.e != null) {
                ((ax) this.e).o().a(str);
            }
        }
    }

    public void cancel(boolean z) {
        synchronized (this.d) {
            f();
            super.cancel(z);
        }
    }

    public void e() {
        synchronized (this.d) {
            if (this.e != null) {
                ((ax) this.e).a(true);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void f() {
        if (this.e != null) {
            String e = this.e.x().e(SpeechConstant.ASR_AUDIO_PATH);
            if (!TextUtils.isEmpty(e) && bv.a(((ax) this.e).b(), e)) {
                bv.a(this.e.x().b(SpeechConstant.AUDIO_FORMAT, null), e, this.e.x().a("sample_rate", this.e.s));
            }
        }
        bw.b(this.a, Boolean.valueOf(this.g), null);
    }

    public boolean g() {
        return d();
    }

    /* Access modifiers changed, original: protected */
    public boolean h() {
        return TextUtils.isEmpty(this.c.e("bos_dispose")) ? AudioDetector.TYPE_META.equalsIgnoreCase(this.c.e(AudioDetector.VAD_ENGINE)) : this.c.a("bos_dispose", false);
    }
}
