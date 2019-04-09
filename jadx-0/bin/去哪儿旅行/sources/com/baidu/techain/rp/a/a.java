package com.baidu.techain.rp.a;

import com.baidu.techain.b.e;
import com.mqunar.yvideo.BuildConfig;
import org.json.JSONObject;

public final class a {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;

    public static String a(a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0", aVar.a);
            jSONObject.put(BuildConfig.VERSION_NAME, aVar.c);
            jSONObject.put("2", aVar.d);
            jSONObject.put("3", aVar.e);
            jSONObject.put("4", aVar.b);
        } catch (Throwable th) {
            e.a();
        }
        return jSONObject.toString();
    }

    public static a a(String str) {
        a aVar = new a();
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar.a = jSONObject.optString("0");
            aVar.c = jSONObject.optString(BuildConfig.VERSION_NAME);
            aVar.d = jSONObject.optString("2");
            aVar.e = jSONObject.optString("3");
            aVar.b = jSONObject.optString("4");
            return aVar;
        } catch (Exception e) {
            e.a();
            return null;
        }
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((this.e == null ? 0 : this.e.hashCode()) + (((this.d == null ? 0 : this.d.hashCode()) + 31) * 31)) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.d == null) {
            if (aVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(aVar.d)) {
            return false;
        }
        if (this.e == null) {
            if (aVar.e != null) {
                return false;
            }
        } else if (!this.e.equals(aVar.e)) {
            return false;
        }
        if (this.b == null) {
            if (aVar.b != null) {
                return false;
            }
            return true;
        } else if (this.b.equals(aVar.b)) {
            return true;
        } else {
            return false;
        }
    }
}
