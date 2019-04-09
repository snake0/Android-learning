package com.baidu.tts.m;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.e;
import com.baidu.tts.n.a;

public class h extends a<h> {
    public int a;
    private e b;
    private int c;
    private int d;
    private String e;
    private int f;
    private int g;
    private byte[] h;
    private com.baidu.tts.f.a i;
    private i j;
    private TtsError k;

    public int a() {
        return this.d;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(String str) {
        this.e = str;
    }

    public int b() {
        return this.f;
    }

    public void b(int i) {
        this.f = i;
    }

    public void c(int i) {
        this.a = i;
    }

    public int c() {
        return this.g;
    }

    public void d(int i) {
        this.g = i;
    }

    public byte[] d() {
        return this.h;
    }

    public void a(byte[] bArr) {
        this.h = bArr;
    }

    public void e(int i) {
        this.c = i;
    }

    public void a(com.baidu.tts.f.a aVar) {
        this.i = aVar;
    }

    public i e() {
        return this.j;
    }

    public void a(i iVar) {
        this.j = iVar;
    }

    public TtsError f() {
        return this.k;
    }

    public void a(TtsError ttsError) {
        this.k = ttsError;
    }

    public e g() {
        return this.b;
    }

    public void a(e eVar) {
        this.b = eVar;
    }

    public static h b(i iVar) {
        h hVar = new h();
        hVar.a(iVar);
        return hVar;
    }

    public static h b(TtsError ttsError) {
        h hVar = new h();
        hVar.a(ttsError);
        return hVar;
    }

    public static h a(i iVar, TtsError ttsError) {
        h b = b(iVar);
        b.a(ttsError);
        return b;
    }
}
