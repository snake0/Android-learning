package com.iflytek.cloud.thirdparty;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public class cz {
    protected Context a;
    private dg b;
    private String[] c = null;
    private String[] d = null;
    private HashMap<String, String> e = new HashMap();
    private HashMap<String, String> f = new HashMap();
    private List<dd> g = new ArrayList();
    private HashMap<String, String> h = new HashMap();

    public cz(Context context, dg dgVar) {
        this.b = dgVar;
        this.a = context;
    }

    private void b() {
        if (this.f.size() > 0) {
            this.f = null;
            this.f = new HashMap();
        }
        if (this.h.size() > 0) {
            this.h = null;
            this.h = new HashMap();
        }
        if (this.e.size() > 0) {
            this.e = null;
            this.e = new HashMap();
        }
        if (this.c != null && this.c.length > 0) {
            this.c = null;
        }
    }

    public String[] a() {
        b();
        ArrayList arrayList = new ArrayList();
        HashMap d = this.b.d();
        List<dd> e = this.b.e();
        for (String str : d.keySet()) {
            String str2 = (String) d.get(str);
            this.e.put(str + "p", str2);
            arrayList.add(str2);
            if (str2.contains("\u0000")) {
                this.h.put(str2.replace("\u0000", " "), str2);
            }
        }
        for (dd ddVar : e) {
            String a = ddVar.a();
            String c = ddVar.c();
            String b = ddVar.b();
            this.f.put(a + "s", c);
            this.e.put(a + "s", b);
            arrayList.add(b);
            if (b.contains("\u0000")) {
                this.h.put(b.replace("\u0000", " "), b);
            }
            this.g.add(ddVar);
        }
        HashSet hashSet = new HashSet(arrayList);
        this.c = (String[]) hashSet.toArray(new String[hashSet.size()]);
        return this.c;
    }
}
