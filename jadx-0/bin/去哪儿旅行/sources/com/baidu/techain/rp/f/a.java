package com.baidu.techain.rp.f;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.baidu.techain.b;
import com.baidu.techain.b.f;
import com.baidu.techain.b.l;
import com.baidu.techain.b.o;
import com.baidu.techain.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class a {
    e a = new e(this.b);
    public Context b;
    com.baidu.techain.rp.d.a.a c = new com.baidu.techain.rp.d.a.a(this.b);
    public com.baidu.techain.rp.e.a d;
    private a e = new a(l.a());

    final class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            try {
                Message message2;
                String valueOf;
                switch (message.what) {
                    case 0:
                        a.b(a.this);
                        return;
                    case 1:
                        com.baidu.techain.rp.b.a.a(a.this.b).a((com.baidu.techain.rp.c.a) message.obj);
                        b.a();
                        message2 = new Message();
                        message2.what = 10;
                        sendMessage(message2);
                        return;
                    case 2:
                        b.a();
                        a.a(a.this);
                        a.b(a.this);
                        a.a(a.this, 0, com.baidu.techain.b.e.n(a.this.b));
                        return;
                    case 3:
                        com.baidu.techain.rp.a.a aVar = (com.baidu.techain.rp.a.a) message.obj;
                        if (aVar != null) {
                            a aVar2 = a.this;
                            String b = aVar2.a.b(aVar.e);
                            com.baidu.techain.rp.c.a aVar3 = new com.baidu.techain.rp.c.a();
                            aVar3.b = aVar.e;
                            aVar3.g = 0;
                            aVar3.c = 1;
                            aVar3.e = System.currentTimeMillis();
                            aVar3.f = 1;
                            aVar3.d = com.baidu.techain.b.e.a(aVar2.b, aVar, b, false).toString();
                            com.baidu.techain.rp.b.a.a(aVar2.b).a(aVar3);
                            e eVar = aVar2.a;
                            eVar.f.putBoolean("re_net_ins_" + aVar.e, true);
                            eVar.f.commit();
                            b = o.a(com.baidu.techain.b.e.m(aVar2.b).toString());
                            if (com.baidu.techain.rp.b.a.a(aVar2.b).b(b)) {
                                aVar3.b = "1001001";
                                aVar3.d = com.baidu.techain.b.e.a(aVar2.b, aVar.a, aVar.c, aVar3.b, com.baidu.techain.b.e.m(aVar2.b).toString()).toString();
                                com.baidu.techain.rp.b.a.a(aVar2.b).a(aVar3);
                                com.baidu.techain.rp.b.a.a(aVar2.b).a(b);
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        valueOf = String.valueOf(message.obj);
                        if (!TextUtils.isEmpty(valueOf)) {
                            com.baidu.techain.rp.b.a.a(a.this.b).a(o.a(valueOf));
                            return;
                        }
                        return;
                    case 5:
                        a.a(a.this);
                        a aVar4 = a.this;
                        e eVar2 = new e(aVar4.b);
                        int x = eVar2.x();
                        new StringBuilder(" 2").append(Integer.toString(x));
                        b.a();
                        long currentTimeMillis = System.currentTimeMillis() - eVar2.e.getLong("re_last_ofline_time", 0);
                        if (currentTimeMillis >= ((long) (x * 3600000))) {
                            f.a(aVar4.b).c();
                            com.baidu.techain.b.e.a(aVar4.b, (long) (x * 3600000));
                            eVar2.d(System.currentTimeMillis());
                        } else {
                            com.baidu.techain.b.e.a(aVar4.b, ((long) (x * 3600000)) - currentTimeMillis);
                        }
                        message2 = new Message();
                        message2.what = 10;
                        sendMessage(message2);
                        return;
                    case 6:
                        a.a(a.this, 1, com.baidu.techain.b.e.n(a.this.b));
                        return;
                    case 7:
                        a.b(a.this);
                        a.a(a.this, 1, com.baidu.techain.b.e.n(a.this.b));
                        return;
                    case 8:
                        a.a(a.this, 3, com.baidu.techain.b.e.n(a.this.b));
                        return;
                    case 9:
                        a.a(a.this, 0, 2);
                        return;
                    case 10:
                        int n = com.baidu.techain.b.e.n(a.this.b);
                        if (2 == n) {
                            b.a();
                            if (com.baidu.techain.rp.b.a.a(a.this.b).b() >= new e(a.this.b).e.getInt("up_nu_co", 50)) {
                                b.a();
                                a.a(a.this, 0, n);
                                return;
                            }
                            List a = com.baidu.techain.rp.b.a.a(a.this.b).a(true, n);
                            new StringBuilder(" Dela ").append(a.size());
                            b.a();
                            if (a.size() > 0) {
                                b.a();
                                a.a(a.this, 0, n);
                                return;
                            }
                            return;
                        } else if (1 == n) {
                            b.a();
                            a.a(a.this, 4, n);
                            return;
                        } else {
                            return;
                        }
                    case 11:
                        valueOf = String.valueOf(message.obj);
                        if (!a.this.c.a(new JSONArray().put(com.baidu.techain.b.e.a(a.this.b, new JSONObject(valueOf))).toString(), a.a(new JSONObject(valueOf)))) {
                            com.baidu.techain.b.e.b(a.this.b, valueOf);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
                com.baidu.techain.b.e.a();
            }
            com.baidu.techain.b.e.a();
        }
    }

    static /* synthetic */ void b(a aVar) {
        List<com.baidu.techain.rp.a.a> w = aVar.a.w();
        if (w != null) {
            for (com.baidu.techain.rp.a.a aVar2 : w) {
                if (aVar.a(aVar.a.e.getString("li_pk_s", ""), aVar2.b)) {
                    String string = aVar.a.e.getString("re_net_ali2_" + aVar2.d, "");
                    String c = com.baidu.techain.b.e.c();
                    if (!string.equals(c)) {
                        string = aVar.a.b(aVar2.d);
                        com.baidu.techain.rp.c.a aVar3 = new com.baidu.techain.rp.c.a();
                        aVar3.b = aVar2.d;
                        aVar3.g = 0;
                        aVar3.c = 2;
                        aVar3.e = System.currentTimeMillis();
                        aVar3.f = 1;
                        aVar3.i = 5;
                        aVar3.d = com.baidu.techain.b.e.a(aVar.b, aVar2, string, true).toString();
                        com.baidu.techain.rp.b.a.a(aVar.b).a(aVar3);
                        string = o.a(com.baidu.techain.b.e.m(aVar.b).toString());
                        if (com.baidu.techain.rp.b.a.a(aVar.b).b(string)) {
                            aVar3.b = "1001001";
                            aVar3.i = 0;
                            aVar3.d = com.baidu.techain.b.e.a(aVar.b, aVar2.a, aVar2.c, aVar3.b, com.baidu.techain.b.e.m(aVar.b).toString()).toString();
                            com.baidu.techain.rp.b.a.a(aVar.b).a(aVar3);
                            com.baidu.techain.rp.b.a.a(aVar.b).a(string);
                        }
                        e eVar = aVar.a;
                        eVar.f.putString("re_net_ali2_" + aVar2.d, c);
                        eVar.f.commit();
                    }
                }
            }
        }
    }

    public a(Context context) {
        this.b = context.getApplicationContext();
    }

    public final void a(Message message) {
        this.e.sendMessage(message);
    }

    static String a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("Common_section");
            if (jSONObject2 == null || !jSONObject2.has("12")) {
                return null;
            }
            return jSONObject2.optString("12", "");
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return null;
        }
    }

    private void a(List<com.baidu.techain.rp.c.a> list, int i, long j) {
        int i2 = 0;
        int i3 = this.a.e.getInt("re_net_one_lt", 5);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i4 = 0;
        for (com.baidu.techain.rp.c.a aVar : list) {
            try {
                String jSONObject = com.baidu.techain.b.e.a(this.b, new JSONObject(aVar.d)).toString();
                try {
                    JSONObject jSONObject2 = new JSONObject(jSONObject);
                    int length = jSONObject.length();
                    if (i4 + length >= 1048576 * i3) {
                        new StringBuilder().append(i3).append(" : ").append(i4 + length);
                        b.a();
                        break;
                    }
                    i4 += length;
                    arrayList.add(Integer.valueOf(aVar.a));
                    arrayList2.add(new com.baidu.techain.rp.c.b(jSONObject2, aVar.j, aVar.a));
                } catch (Exception e) {
                    com.baidu.techain.b.e.a();
                }
            } catch (Exception e2) {
                com.baidu.techain.b.e.a();
            }
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        JSONArray jSONArray = new JSONArray();
        List arrayList3 = new ArrayList();
        while (true) {
            i3 = i2;
            if (i3 >= arrayList2.size()) {
                break;
            }
            com.baidu.techain.rp.c.b bVar = (com.baidu.techain.rp.c.b) arrayList2.get(i3);
            if (bVar != null) {
                String str = bVar.b;
                if (TextUtils.isEmpty(str)) {
                    jSONArray.put(bVar.a);
                    arrayList3.add(Integer.valueOf(bVar.c));
                } else {
                    JSONArray jSONArray2;
                    if (hashMap.containsKey(str)) {
                        jSONArray2 = (JSONArray) hashMap.get(str);
                        if (jSONArray2 == null) {
                            jSONArray2 = new JSONArray();
                        }
                        jSONArray2.put(bVar.a);
                        hashMap.put(str, jSONArray2);
                    } else {
                        jSONArray2 = new JSONArray();
                        jSONArray2.put(bVar.a);
                        hashMap.put(str, jSONArray2);
                    }
                    ArrayList arrayList4 = (ArrayList) hashMap2.get(str);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(Integer.valueOf(bVar.c));
                    hashMap2.put(str, arrayList4);
                }
            }
            i2 = i3 + 1;
        }
        if (jSONArray.length() > 0 && this.c.a(jSONArray.toString(), null)) {
            com.baidu.techain.rp.b.a.a(this.b).a(arrayList3);
        }
        if (hashMap.size() > 0) {
            for (String str2 : hashMap.keySet()) {
                JSONArray jSONArray3 = (JSONArray) hashMap.get(str2);
                if (jSONArray3 != null && jSONArray3.length() > 0 && this.c.a(jSONArray3.toString(), str2)) {
                    com.baidu.techain.rp.b.a.a(this.b).a((List) hashMap2.get(str2));
                }
            }
        }
        com.baidu.techain.rp.b.a.a(this.b).c();
        if (2 != i) {
            this.a.e(((long) i4) + j);
        }
    }

    private boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (str2.equals(this.b.getPackageName())) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                if (str2.equals(jSONArray.get(i))) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
