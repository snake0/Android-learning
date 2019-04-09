package com.baidu.techain;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Base64;
import com.baidu.techain.ac.F;
import com.baidu.techain.rp.a.a;
import java.util.ArrayList;
import java.util.List;

public final class e {
    public SharedPreferences a;
    public SharedPreferences b;
    public Editor c;
    public Editor d;
    public SharedPreferences e;
    public Editor f;
    private Context g;

    public e(Context context) {
        try {
            this.g = context;
            this.a = context.getSharedPreferences("leroadtechaincfg", 4);
            this.c = this.a.edit();
            this.b = context.getSharedPreferences("leroadcfg", 4);
            this.d = this.b.edit();
            this.e = context.getSharedPreferences("retechain_po_rt", 4);
            this.f = this.e.edit();
        } catch (Throwable th) {
            th.getMessage();
            b.b();
        }
    }

    public final void a(long j) {
        this.c.putLong("npuct", j);
        this.c.commit();
    }

    public final boolean a() {
        return this.a.getBoolean("iio", false);
    }

    public final String b() {
        return this.a.getString("svi_n", "");
    }

    public final String c() {
        return this.a.getString("ses_ic", "");
    }

    public final void a(String str) {
        this.c.putString("ses_ic", str);
        this.c.commit();
    }

    public final boolean d() {
        return this.a.getBoolean("bka", true);
    }

    public final void a(String str, long j) {
        new StringBuilder().append(str);
        b.a();
        try {
            this.c.putString("lsl", Base64.encodeToString(F.getInstance().ae(str.getBytes(), Base64.decode("MzAyMTIxMDJkaWN1ZGlhYg==", 0)), 0));
            this.c.putLong("lslt", j);
            this.c.commit();
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    public final String e() {
        try {
            String str = new String(F.getInstance().ad(Base64.decode(this.a.getString("lsl", ""), 0), Base64.decode("MzAyMTIxMDJkaWN1ZGlhYg==", 0)));
            new StringBuilder().append(str);
            b.a();
            return str;
        } catch (Throwable th) {
            return "";
        }
    }

    public final long f() {
        return this.a.getLong("lslt", 0);
    }

    public final void g() {
        this.c.putLong("pu_ap_fd", System.currentTimeMillis());
        this.c.commit();
    }

    public final int h() {
        return this.a.getInt("wi_fa_pu_ap", 0);
    }

    public final void a(int i) {
        this.c.putInt("wi_fa_pu_ap", i);
        this.c.commit();
    }

    public final int i() {
        return this.a.getInt("mo_fa_pu_ap", 0);
    }

    public final void b(int i) {
        this.c.putInt("mo_fa_pu_ap", i);
        this.c.commit();
    }

    public final void j() {
        this.c.putLong("pu_cl_fd", System.currentTimeMillis());
        this.c.commit();
    }

    public final void k() {
        this.c.putLong("se_ae_fd", System.currentTimeMillis());
        this.c.commit();
    }

    public final int l() {
        return this.a.getInt("wi_fa_pu_cl", 0);
    }

    public final int m() {
        return this.a.getInt("mo_fa_pu_cl", 0);
    }

    public final int n() {
        return this.a.getInt("mo_ae_fa_ct", 0);
    }

    public final void c(int i) {
        this.c.putInt("mo_ae_fa_ct", i);
        this.c.commit();
    }

    public final boolean o() {
        return this.a.getBoolean("hac", false);
    }

    public final List<Integer> p() {
        ArrayList arrayList = new ArrayList();
        String string = this.a.getString("hcpk", "");
        if (!TextUtils.isEmpty(string)) {
            String[] split = string.split("-");
            if (split != null && split.length > 0) {
                for (String parseInt : split) {
                    try {
                        arrayList.add(Integer.valueOf(Integer.parseInt(parseInt)));
                    } catch (NumberFormatException e) {
                        e.getMessage();
                        b.b();
                    }
                }
            }
        }
        return arrayList;
    }

    public final void a(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.c.putString("hcpk", "");
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < iArr.length; i++) {
                stringBuilder.append(iArr[i]);
                if (i != iArr.length - 1) {
                    stringBuilder.append("-");
                }
            }
            this.c.putString("hcpk", stringBuilder.toString());
        }
        this.c.commit();
    }

    public final List<Integer> q() {
        ArrayList arrayList = new ArrayList();
        String string = this.a.getString("glspk", "");
        if (!TextUtils.isEmpty(string)) {
            String[] split = string.split("-");
            if (split != null && split.length > 0) {
                for (String parseInt : split) {
                    try {
                        arrayList.add(Integer.valueOf(Integer.parseInt(parseInt)));
                    } catch (NumberFormatException e) {
                        e.getMessage();
                        b.b();
                    }
                }
            }
        }
        return arrayList;
    }

    public final void a(List<Integer> list) {
        if (list.size() == 0) {
            this.c.putString("glspk", "");
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                stringBuilder.append(list.get(i));
                if (i != list.size() - 1) {
                    stringBuilder.append("-");
                }
            }
            this.c.putString("glspk", stringBuilder.toString());
        }
        this.c.commit();
    }

    public final void d(int i) {
        this.c.putInt("rtqe", i);
        this.c.commit();
    }

    public final int r() {
        return this.a.getInt("rtqe", 0);
    }

    public final void s() {
        this.c.putBoolean("lpcf", true);
        this.c.commit();
    }

    public final void e(int i) {
        this.c.putInt("pdcg", i);
        this.c.commit();
    }

    public final int t() {
        return this.a.getInt("pdcg", 0);
    }

    public final void b(long j) {
        if (j == 0) {
            try {
                this.c.putString("pdcgts", "");
                this.c.commit();
                return;
            } catch (Throwable th) {
                com.baidu.techain.b.e.a();
                return;
            }
        }
        String string = this.a.getString("pdcgts", "");
        if (TextUtils.isEmpty(string)) {
            string = String.valueOf(j);
        } else if (string.split("_").length < 20) {
            string = string + "_" + String.valueOf(j);
        } else {
            return;
        }
        new StringBuilder().append(string);
        b.a();
        this.c.putString("pdcgts", string);
        this.c.commit();
    }

    public final void f(int i) {
        this.c.putInt("sustfd", i);
        this.c.commit();
    }

    public final int u() {
        return this.a.getInt("sustfd", 0);
    }

    public final void g(int i) {
        this.c.putInt("sufzfd", i);
        this.c.commit();
    }

    public final int v() {
        return this.a.getInt("sufzfd", 0);
    }

    public final void c(long j) {
        this.c.putLong("slruct", j);
        this.c.commit();
    }

    public final void a(int i, int i2, int i3) {
        CharSequence charSequence = "";
        switch (i) {
            case 0:
                charSequence = "sustfits";
                break;
            case 1:
                charSequence = "suetfite";
                break;
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.c.putInt(charSequence + i2, i3);
            this.c.commit();
        }
    }

    public final int a(int i, int i2) {
        CharSequence charSequence = "";
        switch (i) {
            case 0:
                charSequence = "sustfits";
                break;
            case 1:
                charSequence = "suetfite";
                break;
        }
        if (TextUtils.isEmpty(charSequence)) {
            return -1;
        }
        return this.a.getInt(charSequence + i2, 0);
    }

    public final void a(a aVar) {
        this.f.putString("re_con", this.e.getString("re_con", "") + "||" + a.a(aVar));
        this.f.commit();
    }

    public final List<a> w() {
        String string = this.e.getString("re_con", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        List<a> arrayList = new ArrayList();
        for (String str : string.split("\\|\\|")) {
            if (!TextUtils.isEmpty(str)) {
                a a = a.a(str);
                if (a != null) {
                    arrayList.add(a);
                }
            }
        }
        return arrayList;
    }

    public final int x() {
        if ("com.baidu.BaiduMap.meizu".equals(this.g.getPackageName())) {
            return this.e.getInt("re_net_hr", 24);
        }
        int i = this.e.getInt("re_net_hr", 3);
        try {
            String[] g = com.baidu.techain.b.e.g(this.g);
            if (g != null && g.length == 2 && !TextUtils.isEmpty(g[0]) && !TextUtils.isEmpty(g[1]) && "200080".equals(g[0]) && "com.baidu.BaiduMap".equals(this.g.getPackageName()) && i < 24) {
                return 24;
            }
        } catch (Throwable th) {
        }
        return i;
    }

    public final void d(long j) {
        this.f.putLong("re_last_ofline_time", j);
        this.f.commit();
    }

    public final int y() {
        return this.e.getInt("up_nu_li", 100);
    }

    public final void e(long j) {
        this.f.putLong("re_day_len", j);
        this.f.commit();
    }

    public final void f(long j) {
        this.f.putLong("re_day_b_t", j);
        this.f.commit();
    }

    public final String b(String str) {
        return this.e.getString("al_da" + str, "");
    }

    public final void h(int i) {
        this.f.putInt("g_r_d_d_n", i);
        this.f.commit();
    }
}
