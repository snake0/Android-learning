package com.baidu.tts.b.b.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.m.h;

public abstract class a extends com.baidu.tts.j.a implements c {
    protected com.baidu.tts.b.b.a a;
    protected volatile b b;

    public b a() {
        return this.b;
    }

    public void a(b bVar) {
        this.b = bVar;
    }

    /* Access modifiers changed, original: protected */
    public TtsError g() {
        return this.b.b();
    }

    /* Access modifiers changed, original: protected */
    public void h() {
        this.b.a();
    }

    /* Access modifiers changed, original: protected */
    public void i() {
        this.b.c();
    }

    /* Access modifiers changed, original: protected */
    public void j() {
        this.b.d();
    }

    /* Access modifiers changed, original: protected */
    public void k() {
        this.b.e();
    }

    /* Access modifiers changed, original: protected */
    public void l() {
        this.b.f();
    }

    public <T> void a(T t) {
        this.b.a((Object) t);
    }

    public void a(com.baidu.tts.b.b.a aVar) {
        this.b.a(aVar);
    }

    public void o() {
        this.b.o();
    }

    public void a(h hVar) {
        this.b.a(hVar);
    }

    public int a(float f, float f2) {
        return this.b.a(f, f2);
    }

    public int a(int i) {
        return this.b.a(i);
    }

    /* Access modifiers changed, original: protected */
    public void b(h hVar) {
        if (C() && this.a != null) {
            this.a.a(hVar);
        }
    }

    /* Access modifiers changed, original: protected */
    public void c(h hVar) {
        if (C() && this.a != null) {
            this.a.b(hVar);
        }
    }

    /* Access modifiers changed, original: protected */
    public void d(h hVar) {
        if (C() && this.a != null) {
            this.a.c(hVar);
        }
    }
}
