package com.baidu.tts.o.a;

import android.content.Context;
import com.baidu.tts.aop.tts.ITts;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.b.a.a;
import com.baidu.tts.b.a.a.d;
import com.baidu.tts.f.g;
import com.baidu.tts.f.m;
import com.baidu.tts.f.n;
import com.baidu.tts.h.b.b;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;

public class c implements ITts {
    static final /* synthetic */ boolean a = (!c.class.desiredAssertionStatus());
    private j b = new j();
    private TtsListener c;
    private m d;
    private com.baidu.tts.a.c.c e;
    private volatile a f = this.g;
    private d g = new d(this);
    private b h = new b(this);

    public TtsError b() {
        return this.f.b();
    }

    public void c() {
        this.f.c();
    }

    public void d() {
        this.f.d();
    }

    public void e() {
        this.f.e();
    }

    public void f() {
        this.f.f();
    }

    public void setTtsListener(TtsListener ttsListener) {
        this.f.setTtsListener(ttsListener);
    }

    public TtsListener getTtsListener() {
        return this.f.getTtsListener();
    }

    public void setContext(Context context) {
        this.f.setContext(context);
    }

    public void setMode(m mVar) {
        this.f.setMode(mVar);
    }

    public m getMode() {
        return this.f.getMode();
    }

    public AuthInfo auth(m mVar) {
        return this.f.auth(mVar);
    }

    public int setParam(g gVar, String str) {
        return this.f.setParam(gVar, str);
    }

    public void speak(i iVar) {
        this.f.speak(iVar);
    }

    public void synthesize(i iVar) {
        this.f.synthesize(iVar);
    }

    public int loadCustomResource(e eVar) {
        return this.f.loadCustomResource(eVar);
    }

    public int freeCustomResource(e eVar) {
        return this.f.freeCustomResource(eVar);
    }

    public int loadModel(com.baidu.tts.m.g gVar) {
        return this.f.loadModel(gVar);
    }

    public int loadEnglishModel(f fVar) {
        return this.f.loadEnglishModel(fVar);
    }

    public int setStereoVolume(float f, float f2) {
        return this.f.setStereoVolume(f, f2);
    }

    public int setAudioStreamType(int i) {
        return this.f.setAudioStreamType(i);
    }

    public j getTtsParams() {
        return this.f.getTtsParams();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(a aVar) {
        this.f = aVar;
    }

    public d a() {
        return this.g;
    }

    public b g() {
        return this.h;
    }

    /* Access modifiers changed, original: 0000 */
    public TtsError h() {
        Object obj = null;
        if (this.d == null) {
            this.d = m.ONLINE;
        }
        if (this.b == null) {
            this.b = new j();
        }
        TtsError b = b.a().b();
        if (a || b == null) {
            d a;
            switch (this.d) {
                case ONLINE:
                    a = a.a().a(com.baidu.tts.f.f.ONLINE);
                    obj = this.b.c();
                    break;
                case OFFLINE:
                    a = a.a().a(com.baidu.tts.f.f.OFFLINE);
                    obj = this.b.d();
                    break;
                case MIX:
                    a = a.a().a(com.baidu.tts.f.f.MIX);
                    obj = this.b.a();
                    break;
                default:
                    a = null;
                    break;
            }
            if (a == null || obj == null) {
                return com.baidu.tts.h.a.c.a().b(n.TTS_UNINITIAL);
            }
            a.a(obj);
            com.baidu.tts.b.b.a.f fVar = new com.baidu.tts.b.b.a.f();
            fVar.a(this.b.b());
            this.e = new com.baidu.tts.a.c.c();
            this.e.a(new com.baidu.tts.a.c.b(a, fVar, this.b));
            if (this.c != null) {
                this.e.a(this.c);
            }
            return this.e.a();
        }
        throw new AssertionError();
    }

    /* Access modifiers changed, original: 0000 */
    public void i() {
        this.e.b();
    }

    /* Access modifiers changed, original: 0000 */
    public void j() {
        this.e.c();
    }

    /* Access modifiers changed, original: 0000 */
    public void k() {
        this.e.d();
    }

    /* Access modifiers changed, original: 0000 */
    public void l() {
        this.e.e();
        com.baidu.tts.auth.a.a().b();
        b.a().f();
        this.b = new j();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(TtsListener ttsListener) {
        if (ttsListener != null && ttsListener != this.c) {
            this.c = ttsListener;
            if (this.e != null) {
                this.e.a(this.c);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public TtsListener m() {
        return this.c;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Context context) {
        b.a().a(context);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(m mVar) {
        this.d = mVar;
    }

    /* Access modifiers changed, original: 0000 */
    public m n() {
        return this.d;
    }

    /* Access modifiers changed, original: 0000 */
    public AuthInfo b(m mVar) {
        return com.baidu.tts.auth.a.a().a(mVar, this.b);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(g gVar, String str) {
        if (this.b != null) {
            return this.b.a(gVar, str);
        }
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(i iVar) {
        this.e.a(iVar);
    }

    /* Access modifiers changed, original: 0000 */
    public void b(i iVar) {
        this.e.b(iVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(e eVar) {
        return this.e.a(eVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int b(e eVar) {
        return this.e.b(eVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(com.baidu.tts.m.g gVar) {
        return this.e.a(gVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(f fVar) {
        return this.e.a(fVar);
    }

    /* Access modifiers changed, original: 0000 */
    public j o() {
        return this.b;
    }

    /* Access modifiers changed, original: 0000 */
    public int a(float f, float f2) {
        return this.e.a(f, f2);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(int i) {
        try {
            return this.e.f().a().a(i);
        } catch (Exception e) {
            return -1;
        }
    }

    public int p() {
        if (this.c == null) {
            throw new IllegalStateException(n.TTS_UNINITIAL.c());
        }
        a(com.baidu.tts.h.a.c.a().b(n.TTS_UNINITIAL));
        return -1;
    }

    public void a(TtsError ttsError) {
        a(h.b(ttsError));
    }

    public void a(h hVar) {
        if (this.c != null) {
            this.c.onError(hVar);
        }
    }

    public boolean q() {
        return this.h == this.f;
    }
}
