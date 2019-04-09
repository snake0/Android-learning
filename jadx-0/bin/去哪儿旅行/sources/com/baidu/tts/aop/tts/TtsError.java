package com.baidu.tts.aop.tts;

import com.baidu.tts.f.n;
import com.baidu.tts.h.a.b;

public class TtsError {
    private Throwable a;
    private int b;
    private String c;
    private b d;

    public b getTtsErrorFlyweight() {
        return this.d;
    }

    public void setTtsErrorFlyweight(b bVar) {
        this.d = bVar;
    }

    public n getErrorEnum() {
        return this.d == null ? null : this.d.a();
    }

    public Throwable getThrowable() {
        return this.a;
    }

    public void setThrowable(Throwable th) {
        this.a = th;
    }

    public int getCode() {
        return this.b;
    }

    public void setCode(int i) {
        this.b = i;
    }

    public String getMessage() {
        return this.c;
    }

    public void setMessage(String str) {
        this.c = str;
    }

    public int getDetailCode() {
        return this.d != null ? this.d.a(this) : this.b;
    }

    public String getDetailMessage() {
        if (this.d != null) {
            return this.d.b(this);
        }
        return this.c != null ? this.c : "TtsErrorFlyweight is null";
    }
}
