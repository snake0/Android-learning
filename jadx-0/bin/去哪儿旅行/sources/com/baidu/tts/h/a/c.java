package com.baidu.tts.h.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.n;
import java.util.Hashtable;

public class c {
    private static volatile c a = null;
    private Hashtable<n, b> b = new Hashtable();

    private c() {
    }

    public static c a() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        return a;
    }

    public b a(n nVar) {
        b bVar = (b) this.b.get(nVar);
        if (bVar != null) {
            return bVar;
        }
        bVar = new b(nVar);
        this.b.put(nVar, bVar);
        return bVar;
    }

    public TtsError b(n nVar) {
        b a = a(nVar);
        TtsError ttsError = new TtsError();
        ttsError.setTtsErrorFlyweight(a);
        return ttsError;
    }

    public TtsError a(n nVar, Throwable th) {
        TtsError b = b(nVar);
        b.setThrowable(th);
        return b;
    }

    public TtsError a(n nVar, int i) {
        return a(nVar, i, null);
    }

    public TtsError a(n nVar, String str) {
        return a(nVar, 0, str);
    }

    public TtsError a(n nVar, int i, String str) {
        return a(nVar, i, str, null);
    }

    public TtsError a(n nVar, int i, String str, Throwable th) {
        TtsError b = b(nVar);
        b.setCode(i);
        b.setMessage(str);
        b.setThrowable(th);
        return b;
    }
}
