package com.baidu.tts.e;

import android.content.Context;

public class b extends Thread {
    private Context a;
    private String b;

    public b(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public void run() {
        a.a(this.a, this.b);
        this.a = null;
    }
}
