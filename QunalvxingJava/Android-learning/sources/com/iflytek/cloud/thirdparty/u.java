package com.iflytek.cloud.thirdparty;

import android.os.Message;

public abstract class u {
    protected boolean a;
    protected String b = "";
    protected t c;

    public u(String str, t tVar) {
        this.b = str;
        this.c = tVar;
    }

    /* Access modifiers changed, original: protected */
    public void a(int i, String str) {
        af b = this.c.b();
        if (b != null) {
            b.a(i, str);
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(Message message) {
        af b = this.c.b();
        if (b != null) {
            b.sendMessage(message);
        }
    }

    public void a(y yVar) {
    }

    public void a(byte[] bArr, String str, int i, int i2, int i3) {
    }

    public boolean a() {
        return false;
    }

    public void b() {
    }

    public int c() {
        return 0;
    }

    public void d() {
    }
}
