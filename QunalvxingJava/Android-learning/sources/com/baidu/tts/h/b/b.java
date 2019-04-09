package com.baidu.tts.h.b;

import android.content.Context;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.g;
import java.lang.ref.WeakReference;
import java.util.Hashtable;

public class b implements com.baidu.tts.j.b {
    private static volatile b a = null;
    private Hashtable<WeakReference<Context>, a> b = new Hashtable();
    private WeakReference<Context> c;
    private Hashtable<String, Object> d = new Hashtable();

    private b() {
        this.d.put(g.CTP.a(), "10");
        this.d.put(g.VERSION.a(), "V2.3.1");
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

    public TtsError b() {
        return null;
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
        if (this.b != null) {
            this.b.clear();
        }
        this.c = null;
    }

    public a a(WeakReference<Context> weakReference) {
        if (weakReference == null) {
            return null;
        }
        a aVar = (a) this.b.get(weakReference);
        if (aVar != null) {
            return aVar;
        }
        aVar = new a(weakReference);
        this.b.put(weakReference, aVar);
        return aVar;
    }

    public a g() {
        return a(this.c);
    }

    public Context h() {
        return (Context) this.c.get();
    }

    public void a(Context context) {
        this.c = new WeakReference(context);
    }

    public String a(String str) {
        try {
            return (String) this.d.get(str);
        } catch (Exception e) {
            return null;
        }
    }

    public String i() {
        try {
            a g = g();
            if (g == null) {
                return null;
            }
            return g.a();
        } catch (Exception e) {
            return null;
        }
    }

    public String j() {
        return a(g.VERSION.a());
    }
}
