package com.baidu.tts.chainofresponsibility.logger;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class e {
    private List<String> a = new ArrayList();
    private List<String> b = new ArrayList();

    public void a() {
        if (this.a != null) {
            this.a.clear();
        }
        if (this.b != null) {
            this.b.clear();
        }
    }

    public void a(String str) {
        if (this.a != null && !this.a.contains(str)) {
            this.a.add(str);
        }
    }

    public void a(List<String> list) {
        if (this.a != null) {
            this.a.addAll(list);
        }
    }

    public void b(String str) {
        if (this.b != null && !this.b.contains(str)) {
            this.b.add(str);
        }
    }

    public void a(c cVar, Void voidR, d dVar) {
        Object obj;
        String b = cVar.b();
        String c = cVar.c();
        String d = cVar.d();
        if (d != null) {
            d = "(" + d + ")" + c;
        } else {
            d = c;
        }
        if (this.b == null || this.b.isEmpty()) {
            int obj2 = 1;
        } else if (this.b.contains(b)) {
            obj2 = null;
        } else {
            obj2 = 1;
            for (String c2 : this.b) {
                Object obj3;
                if (c2 == null || d == null || !d.contains(c2)) {
                    obj3 = obj2;
                } else {
                    obj3 = null;
                }
                obj2 = obj3;
            }
        }
        if (!(this.a == null || this.a.isEmpty())) {
            if (this.a.contains(b)) {
                obj2 = 1;
            } else {
                for (String c22 : this.a) {
                    if (!(c22 == null || d == null)) {
                        if (d.contains(c22)) {
                            obj2 = 1;
                        } else {
                            obj2 = null;
                        }
                    }
                }
            }
        }
        if (obj2 != null) {
            Log.println(cVar.a(), "bdtts-" + b, d);
        }
    }
}
