package com.baidu.tts.f;

import com.mqunar.yvideo.BuildConfig;

public enum b {
    BV("0") {
        public c[] b() {
            return c.c();
        }
    },
    AMR(BuildConfig.VERSION_NAME) {
        public c[] b() {
            return c.d();
        }
    },
    OPUS("2") {
        public c[] b() {
            return c.e();
        }
    };
    
    private final String d;

    public abstract c[] b();

    private b(String str) {
        this.d = str;
    }

    public String a() {
        return this.d;
    }

    public static b a(String str) {
        for (b bVar : values()) {
            if (bVar.a().equals(str)) {
                return bVar;
            }
        }
        return null;
    }
}
