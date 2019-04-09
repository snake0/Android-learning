package com.baidu.tts.o.a;

import android.content.Context;
import com.baidu.tts.aop.tts.ITts;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.f.g;
import com.baidu.tts.f.m;
import com.baidu.tts.m.j;

public abstract class a implements ITts {
    protected c a;

    public a(c cVar) {
        this.a = cVar;
    }

    public void setTtsListener(TtsListener ttsListener) {
        this.a.a(ttsListener);
    }

    public TtsListener getTtsListener() {
        return this.a.m();
    }

    public void setContext(Context context) {
        this.a.a(context);
    }

    public void setMode(m mVar) {
        this.a.a(mVar);
    }

    public m getMode() {
        return this.a.n();
    }

    public AuthInfo auth(m mVar) {
        return this.a.b(mVar);
    }

    public int setParam(g gVar, String str) {
        return this.a.a(gVar, str);
    }

    public j getTtsParams() {
        return this.a.o();
    }

    public void a(a aVar) {
        this.a.a(aVar);
    }
}
