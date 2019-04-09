package com.baidu.tts.m;

import com.baidu.tts.f.h;
import com.baidu.tts.n.a;

public class d<T> extends a<T> {
    private String a = "5";
    private String b = "5";
    private String c = "5";
    private String d = h.a.a();
    private com.baidu.tts.f.d e = com.baidu.tts.f.d.UTF8;
    private String f = "0";

    public String q() {
        return this.e.a();
    }

    public String r() {
        return this.e.b();
    }

    public void a(com.baidu.tts.f.d dVar) {
        this.e = dVar;
    }

    public String s() {
        return this.d;
    }

    public void i(String str) {
        this.d = str;
    }

    public void j(String str) {
        this.f = str;
    }

    public String t() {
        return this.f;
    }

    public long u() {
        long j = 0;
        try {
            return Long.parseLong(this.f);
        } catch (Exception e) {
            return j;
        }
    }

    public String v() {
        return this.a;
    }

    public void k(String str) {
        this.a = str;
    }

    public String w() {
        return this.b;
    }

    public void l(String str) {
        this.b = str;
    }

    public String x() {
        return this.c;
    }

    public void m(String str) {
        this.c = str;
    }
}
