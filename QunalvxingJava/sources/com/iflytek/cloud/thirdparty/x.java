package com.iflytek.cloud.thirdparty;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.aiui.AIUIEvent;
import com.iflytek.cloud.LexiconListener;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechRecognizer;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class x extends u {
    private ah d;
    private aj e;
    private String f = "";
    private LexiconListener g = new LexiconListener() {
        public void onLexiconUpdated(String str, SpeechError speechError) {
            if (speechError != null) {
                x.this.a(speechError.getErrorCode(), speechError.getErrorDescription());
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(AIUIConstant.KEY_LEXICON_ID, str);
                x.this.a(Message.obtain(x.this.c.b(), 8, new AIUIEvent(8, 11, 0, jSONObject.toString(), null)));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    };
    private ae h;
    private a i;
    private HandlerThread j;

    class a extends Handler {
        private boolean b = false;

        public a(Looper looper) {
            super(looper);
            x.this.e.e();
        }

        private boolean a(y yVar) {
            return yVar != null && 4 == yVar.d;
        }

        private void b(y yVar) {
            boolean z = true;
            String e = yVar.e.e("stream_id");
            ce b = ac.b(yVar.e);
            String b2 = yVar.e.b(AIUIConstant.KEY_INTENT_ENGINE_TYPE, "cloud");
            yVar.e.d(AIUIConstant.KEY_INTENT_ENGINE_TYPE);
            if (a(yVar)) {
                try {
                    if (this.b && x.this.d != null) {
                        if (!"local".equals(b2)) {
                            x.this.d.a(b);
                        }
                        x.this.h.a(x.this.f, System.currentTimeMillis());
                        String b3 = yVar.e.b("confidence", "0");
                        cb.a("IatUnit", "stmid=" + x.this.f + ", confidence=" + b3);
                        try {
                            x.this.h.a(x.this.f, Float.parseFloat(b3));
                        } catch (NumberFormatException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (n e3) {
                    x.this.a(e3);
                }
                this.b = false;
                x.this.e.d();
                return;
            }
            if (this.b) {
                z = false;
            } else {
                this.b = true;
                x.this.f = e;
                x.this.h.a(x.this.f, new com.iflytek.cloud.thirdparty.ae.a(Long.valueOf(System.currentTimeMillis()), null, "", new HashMap()));
                String b4 = yVar.e.b(AIUIConstant.KEY_TAG, "");
                if (!TextUtils.isEmpty(b4)) {
                    x.this.h.d(x.this.f, b4);
                }
                x.this.e.a(e, ".pcm", false);
            }
            try {
                if (!(x.this.d == null || "local".equals(b2))) {
                    x.this.d.a(b, yVar.c, yVar.a(), z);
                }
            } catch (n e32) {
                x.this.a(e32);
            }
            x.this.e.a(yVar.c, false);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    b((y) message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    public x(t tVar) {
        super("IatUnit", tVar);
        f();
        this.e = new aj();
        this.j = new HandlerThread("AIUI:IAT-WriteAudioThread");
        this.j.start();
        this.h = ae.a();
    }

    private void a(n nVar) {
        af b = this.c.b();
        if (nVar != null && b != null) {
            b.sendMessage(b.obtainMessage(7, new AIUIEvent(2, nVar.b(), 0, nVar.a(), null)));
        }
    }

    public void a(y yVar) {
        synchronized (this) {
            if (this.i != null) {
                this.i.obtainMessage(1, yVar).sendToTarget();
            }
        }
    }

    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(AIUIConstant.KEY_NAME);
            String string2 = jSONObject.getString(AIUIConstant.KEY_CONTENT);
            SpeechRecognizer createRecognizer = SpeechRecognizer.createRecognizer(this.c.a(), null);
            createRecognizer.setParameter(AIUIConstant.KEY_SERVER_URL, "http://open.xf-yun.com/index.htm");
            createRecognizer.setParameter("engine_type", "cloud");
            createRecognizer.setParameter(SpeechConstant.TEXT_ENCODING, "utf-8");
            createRecognizer.setParameter("ent", "aiui-smsfar");
            createRecognizer.updateLexicon(string, string2, this.g);
        } catch (JSONException e) {
            e.printStackTrace();
            a(20012, "Invalid upload lexicon json!");
        }
    }

    public int c() {
        if (this.a) {
            cb.a("IatUnit", "IatUnit is already started.");
        } else {
            this.d = this.c.b().c();
            this.i = new a(this.j.getLooper());
            this.a = true;
            cb.a("IatUnit", "IatUnit started.");
        }
        return 0;
    }

    public void d() {
        synchronized (this) {
            y yVar = new y(new byte[0], "");
            yVar.d = 4;
            yVar.a("stream_id", this.f, true);
            a(yVar);
            this.i = null;
            this.a = false;
        }
        cb.a("IatUnit", "IatUnit stopped.");
    }

    public void e() {
        d();
        if (this.j != null) {
            this.j.quit();
        }
    }

    public void f() {
    }
}
