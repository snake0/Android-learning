package com.baidu.tts.d.b;

import com.baidu.tts.client.model.DownloadHandler;
import java.util.concurrent.ConcurrentHashMap;

public class e {
    private static volatile e a = null;
    private ConcurrentHashMap<String, d> b = new ConcurrentHashMap();
    private ConcurrentHashMap<String, c> c = new ConcurrentHashMap();
    private ConcurrentHashMap<String, b> d = new ConcurrentHashMap();

    private e() {
    }

    public static e a() {
        if (a == null) {
            synchronized (e.class) {
                if (a == null) {
                    a = new e();
                }
            }
        }
        return a;
    }

    public d a(String str) {
        try {
            d dVar = new d(str);
            d dVar2 = (d) this.b.putIfAbsent(str, dVar);
            if (dVar2 == null) {
                return dVar;
            }
            return dVar2;
        } catch (Exception e) {
            return null;
        }
    }

    public c b(String str) {
        try {
            c cVar = new c(str);
            c cVar2 = (c) this.c.putIfAbsent(str, cVar);
            if (cVar2 == null) {
                return cVar;
            }
            return cVar2;
        } catch (Exception e) {
            return null;
        }
    }

    public b c(String str) {
        try {
            b bVar = new b(str);
            b bVar2 = (b) this.d.putIfAbsent(str, bVar);
            if (bVar2 == null) {
                return bVar;
            }
            return bVar2;
        } catch (Exception e) {
            return null;
        }
    }

    public b d(String str) {
        c b = b(str);
        if (b != null) {
            return c(b.a());
        }
        return null;
    }

    public long e(String str) {
        return d(str).a();
    }

    public int f(String str) {
        return d(str).d();
    }

    public void a(DownloadHandler downloadHandler) {
        a(downloadHandler.getModelId()).b(downloadHandler);
    }

    public void a(String str, String str2) {
        b d = d(str);
        if (d != null) {
            d.b(str2);
        }
    }

    public void b() {
        for (d a : this.b.values()) {
            a.a();
        }
    }
}
