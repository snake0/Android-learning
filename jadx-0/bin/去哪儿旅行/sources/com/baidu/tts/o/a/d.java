package com.baidu.tts.o.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.b.b.b.b;
import com.baidu.tts.f.n;
import com.baidu.tts.f.n.a;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.i;

public class d extends a {
    public d(c cVar) {
        super(cVar);
    }

    public TtsError b() {
        TtsError h = this.a.h();
        if (h != null) {
            n errorEnum = h.getErrorEnum();
            if (errorEnum != null) {
                if (a.a.equals(errorEnum.a())) {
                    a(this.a.g());
                }
            }
        } else {
            a(this.a.g());
        }
        return h;
    }

    public void c() {
        this.a.p();
    }

    public void d() {
        this.a.p();
    }

    public void e() {
        this.a.p();
    }

    public void f() {
    }

    public void speak(i iVar) {
        this.a.p();
    }

    public void synthesize(i iVar) {
        this.a.p();
    }

    public int loadCustomResource(e eVar) {
        return this.a.p();
    }

    public int freeCustomResource(e eVar) {
        return this.a.p();
    }

    public int loadModel(g gVar) {
        return this.a.p();
    }

    public int loadEnglishModel(f fVar) {
        return this.a.p();
    }

    public int setStereoVolume(float f, float f2) {
        b.a e = this.a.getTtsParams().e();
        e.a(f);
        e.b(f2);
        return 0;
    }

    public int setAudioStreamType(int i) {
        this.a.getTtsParams().e().a(i);
        return 0;
    }
}
