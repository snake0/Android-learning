package com.baidu.tts.o.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.i;

public class b extends a {
    public b(c cVar) {
        super(cVar);
    }

    public TtsError b() {
        return null;
    }

    public void c() {
        this.a.i();
    }

    public void d() {
        this.a.j();
    }

    public void e() {
        this.a.k();
    }

    public void f() {
        this.a.l();
        a(this.a.a());
    }

    public void speak(i iVar) {
        this.a.a(iVar);
    }

    public void synthesize(i iVar) {
        this.a.b(iVar);
    }

    public int loadCustomResource(e eVar) {
        return this.a.a(eVar);
    }

    public int freeCustomResource(e eVar) {
        return this.a.b(eVar);
    }

    public int loadModel(g gVar) {
        return this.a.a(gVar);
    }

    public int loadEnglishModel(f fVar) {
        return this.a.a(fVar);
    }

    public int setStereoVolume(float f, float f2) {
        return this.a.a(f, f2);
    }

    public int setAudioStreamType(int i) {
        return this.a.a(i);
    }
}
