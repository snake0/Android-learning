package com.mqunar.qutui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.util.Map;

class k {
    private static HandlerThread d;
    private static Handler e;
    private SharedPreferences a = null;
    private Context b;
    private SharedPreferences c = null;

    private k(Context context, String str) {
        this.b = context;
        String str2 = "_QUTUI_LOG_";
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        this.a = context.getSharedPreferences(str, 0);
        this.c = context.getSharedPreferences("data_qutui", 0);
    }

    public static k a(Context context) {
        return a(context, null);
    }

    public static k a(Context context, String str) {
        return new k(context, str);
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Editor edit = this.a.edit();
            edit.putString(str, str2);
            a(edit);
        }
    }

    private void a(Editor editor) {
        a(new l(this, editor));
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Editor edit = this.a.edit();
            edit.remove(str);
            a(edit);
        }
    }

    public Map<String, Object> a() {
        return this.a.getAll();
    }

    private HandlerThread b() {
        if (d == null || d.getLooper() == null) {
            d = new HandlerThread("qutuiStorage");
            d.start();
        }
        return d;
    }

    private Handler c() {
        if (e == null) {
            synchronized (k.class) {
                if (e == null) {
                    e = new Handler(b().getLooper());
                }
            }
        }
        return e;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Map<String, Boolean> map, Map<String, Boolean> map2) {
        if ((map != null && map.size() != 0) || (map2 != null && map2.size() != 0)) {
            a(new m(this, map, map2));
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            a(new n(this, str, z));
        }
    }

    private void d() {
        a(new o(this));
    }

    private void a(Runnable runnable) {
        c().post(runnable);
    }
}
