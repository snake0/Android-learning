package com.baidu.tts.m;

import android.text.TextUtils;
import com.baidu.tts.n.a;
import java.io.UnsupportedEncodingException;

public class i extends a<i> {
    private String a;
    private String b;
    private String c = "0";
    private com.baidu.tts.f.i d;
    private String e;

    public i(String str, String str2) {
        b(str);
        d(str2);
    }

    public void a() {
        if (!TextUtils.isEmpty(this.e)) {
            this.a = this.e + this.a;
        }
    }

    public String b() {
        return this.e;
    }

    public void a(String str) {
        this.e = str;
    }

    public String c() {
        return this.a;
    }

    public void b(String str) {
        this.a = str;
    }

    public String d() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public byte[] e() {
        byte[] bArr = null;
        try {
            return this.a.getBytes(this.b);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return bArr;
        }
    }

    public String f() {
        return this.c;
    }

    public void d(String str) {
        if (str == null) {
            str = "0";
        }
        this.c = str;
    }

    public com.baidu.tts.f.i g() {
        return this.d;
    }

    public void a(com.baidu.tts.f.i iVar) {
        this.d = iVar;
    }
}
