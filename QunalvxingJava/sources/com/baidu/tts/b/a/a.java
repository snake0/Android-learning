package com.baidu.tts.b.a;

import com.baidu.tts.b.a.a.c;
import com.baidu.tts.b.a.a.d;
import com.baidu.tts.b.a.b.b;
import com.baidu.tts.b.a.b.e;
import com.baidu.tts.f.f;

public class a {
    private static volatile a a = null;

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    public d a(f fVar) {
        switch (fVar) {
            case ONLINE:
                return b();
            case OFFLINE:
                return c();
            case MIX:
                return d();
            default:
                return null;
        }
    }

    private d b() {
        return a(new com.baidu.tts.b.a.b.f());
    }

    private d c() {
        return a(new e());
    }

    private d d() {
        return a(new com.baidu.tts.b.a.b.d());
    }

    private d a(b bVar) {
        c cVar = new c();
        cVar.a(bVar);
        return cVar;
    }
}
