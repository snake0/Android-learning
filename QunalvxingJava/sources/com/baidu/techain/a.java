package com.baidu.techain;

import android.content.Context;
import android.content.Intent;
import com.baidu.techain.ac.Callback;
import com.baidu.techain.b.e;
import com.baidu.techain.core.g;
import com.mqunar.yvideo.BuildConfig;
import java.util.HashMap;
import java.util.Map;

public final class a {
    public static void a(Context context, Intent intent) {
        int i = 0;
        try {
            String[] g = e.g(context);
            new StringBuilder().append(g[0]).append(" : ").append(g[1]);
            b.a();
            com.baidu.techain.core.e.a(context, 0, g[0], g[1], 100028);
            while (true) {
                Thread.sleep(500);
                i++;
                new StringBuilder().append(i);
                b.a();
                if (i > 60) {
                    Map hashMap = new HashMap();
                    hashMap.put("0", "152");
                    hashMap.put(BuildConfig.VERSION_NAME, g[0]);
                    e.a(context.getApplicationContext(), "1014115", hashMap);
                    new StringBuilder().append(hashMap.toString());
                    b.a();
                    break;
                }
                g a = g.a();
                if (a == null) {
                    b.a();
                } else if (a.d("com.baidu.techain.x24") != null) {
                    break;
                }
            }
            b.a();
            com.baidu.techain.core.e.a(100028, "onReceiveAwakeMessage", new Callback() {
                public final Object onEnd(Object... objArr) {
                    return super.onEnd(objArr);
                }
            }, new Class[]{Context.class, Intent.class}, context, intent);
        } catch (Throwable th) {
            b.a();
            e.a();
        }
    }
}
