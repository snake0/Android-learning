package com.baidu.tts.b.b;

import com.baidu.tts.b.b.b.c;

public class b {
    private static volatile b a = null;

    private b() {
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b();
                }
            }
        }
        return a;
    }

    public c b() {
        return c();
    }

    private com.baidu.tts.b.b.b.b c() {
        return new com.baidu.tts.b.b.b.b();
    }
}
