package com.baidu.techain;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.techain.b.e;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class TechainActivity extends Activity {
    public static Field f;
    public static Field g;
    public static Field h;
    public static Method i;
    public static Method j;
    public static Method k;
    public static Method l;
    public static Method m;
    public static Method n;
    public static Method o;
    public static Method p;
    protected boolean a = false;
    protected a b = new a();
    protected Activity c = null;
    protected Configuration d = null;
    protected ActivityInfo e = null;
    private Resources q;

    public final class a {
        public boolean a = false;
        public String b;
        public String c;
        public String d;
        public Intent e;

        public final String toString() {
            try {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(getClass().getSimpleName()).append(": mode=").append(this.a).append(", activity=").append(this.b).append(", path=").append(this.c).append(",pkgName=").append(this.d);
                return stringBuilder.toString();
            } catch (Throwable th) {
                e.a();
                return "";
            }
        }
    }

    static {
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        Class cls = Activity.class;
        i = f.a(cls, "onCreate", Bundle.class);
        j = f.a(cls, "onPostCreate", Bundle.class);
        k = f.a(cls, "onStart", new Class[0]);
        l = f.a(cls, "onResume", new Class[0]);
        m = f.a(cls, "onPostResume", new Class[0]);
        n = f.a(cls, "onPause", new Class[0]);
        o = f.a(cls, "onStop", new Class[0]);
        p = f.a(cls, "onDestroy", new Class[0]);
        f = f.a(cls, "mCurrentConfig");
        g = f.a(cls, "mConfigChangeFlags");
        h = f.a(cls, "mCalled");
    }

    private static boolean a(a aVar, Intent intent) {
        try {
            String stringExtra = intent.getStringExtra("from_plugin_package");
            String stringExtra2 = intent.getStringExtra("target_class");
            if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2)) {
                return false;
            }
            aVar.a = true;
            aVar.d = stringExtra;
            aVar.b = stringExtra2;
            aVar.e = intent;
            return true;
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public void onCreate(android.os.Bundle r13) {
        /*
        r12 = this;
        r1 = 0;
        r4 = 0;
        r2 = r12.getIntent();	 Catch:{ Throwable -> 0x0055 }
        r3 = "t";
        r3 = r2.getStringExtra(r3);	 Catch:{ Throwable -> 0x0055 }
        r5 = "a";
        r3 = r5.equals(r3);	 Catch:{ Throwable -> 0x0055 }
        if (r3 == 0) goto L_0x0024;
    L_0x0014:
        r3 = r12.getApplicationContext();	 Catch:{ Throwable -> 0x0055 }
        r5 = com.baidu.techain.b.r.a();	 Catch:{ Throwable -> 0x0055 }
        r6 = new com.baidu.techain.TechainActivity$1;	 Catch:{ Throwable -> 0x0055 }
        r6.<init>(r2, r3);	 Catch:{ Throwable -> 0x0055 }
        r5.a(r6);	 Catch:{ Throwable -> 0x0055 }
    L_0x0024:
        r3 = com.baidu.techain.core.g.a();	 Catch:{ Throwable -> 0x0055 }
        if (r3 != 0) goto L_0x0034;
    L_0x002a:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0055 }
        super.onCreate(r13);	 Catch:{ Throwable -> 0x0055 }
        r12.finish();	 Catch:{ Throwable -> 0x0055 }
    L_0x0033:
        return;
    L_0x0034:
        r5 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        a(r5, r2);	 Catch:{ Throwable -> 0x0055 }
        r2 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        r2.toString();	 Catch:{ Throwable -> 0x0055 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0055 }
        r2 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        r2 = r2.d;	 Catch:{ Throwable -> 0x0055 }
        r2 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Throwable -> 0x0055 }
        if (r2 == 0) goto L_0x005a;
    L_0x004b:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0055 }
        super.onCreate(r13);	 Catch:{ Throwable -> 0x0055 }
        r12.finish();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0033;
    L_0x0055:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0033;
    L_0x005a:
        r2 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        r2 = r2.d;	 Catch:{ Throwable -> 0x0055 }
        r7 = r3.d(r2);	 Catch:{ Throwable -> 0x0055 }
        if (r7 == 0) goto L_0x0068;
    L_0x0064:
        r2 = r7.activities;	 Catch:{ Throwable -> 0x0055 }
        if (r2 != 0) goto L_0x0072;
    L_0x0068:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0055 }
        super.onCreate(r13);	 Catch:{ Throwable -> 0x0055 }
        r12.finish();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0033;
    L_0x0072:
        r3 = r7.activities;	 Catch:{ Throwable -> 0x0055 }
        r5 = r3.length;	 Catch:{ Throwable -> 0x0055 }
        r2 = r1;
    L_0x0076:
        if (r2 >= r5) goto L_0x02eb;
    L_0x0078:
        r1 = r3[r2];	 Catch:{ Throwable -> 0x0055 }
        r6 = r1.name;	 Catch:{ Throwable -> 0x0055 }
        r8 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        r8 = r8.b;	 Catch:{ Throwable -> 0x0055 }
        r6 = r6.equals(r8);	 Catch:{ Throwable -> 0x0055 }
        if (r6 == 0) goto L_0x0093;
    L_0x0086:
        r6 = r1;
    L_0x0087:
        if (r6 != 0) goto L_0x0097;
    L_0x0089:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0055 }
        super.onCreate(r13);	 Catch:{ Throwable -> 0x0055 }
        r12.finish();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0033;
    L_0x0093:
        r1 = r2 + 1;
        r2 = r1;
        goto L_0x0076;
    L_0x0097:
        r12.e = r6;	 Catch:{ Throwable -> 0x0055 }
        r1 = r6.theme;	 Catch:{ Throwable -> 0x0055 }
        if (r1 != 0) goto L_0x009f;
    L_0x009d:
        r1 = r7.applicationTheme;	 Catch:{ Throwable -> 0x0055 }
    L_0x009f:
        if (r1 != 0) goto L_0x00dd;
    L_0x00a1:
        r1 = 16973829; // 0x1030005 float:2.4060914E-38 double:8.386186E-317;
        r5 = r1;
    L_0x00a5:
        r12.setTheme(r5);	 Catch:{ Throwable -> 0x0055 }
        r1 = 1;
        r12.a = r1;	 Catch:{ Throwable -> 0x0055 }
        r1 = r7.classLoader;	 Catch:{ Throwable -> 0x00d1 }
        r2 = r12.b;	 Catch:{ Throwable -> 0x00d1 }
        r2 = r2.b;	 Catch:{ Throwable -> 0x00d1 }
        r1 = r1.loadClass(r2);	 Catch:{ Throwable -> 0x00d1 }
        r2 = r1.newInstance();	 Catch:{ Throwable -> 0x00d1 }
        r1 = r2 instanceof android.app.Activity;	 Catch:{ Throwable -> 0x00d1 }
        if (r1 != 0) goto L_0x00df;
    L_0x00bd:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00d1 }
        r1.<init>();	 Catch:{ Throwable -> 0x00d1 }
        r2 = r2.toString();	 Catch:{ Throwable -> 0x00d1 }
        r1.append(r2);	 Catch:{ Throwable -> 0x00d1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00d1 }
        r12.finish();	 Catch:{ Throwable -> 0x00d1 }
        goto L_0x0033;
    L_0x00d1:
        r1 = move-exception;
        r1.getMessage();	 Catch:{ Throwable -> 0x0055 }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x0055 }
        r12.finish();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0033;
    L_0x00dd:
        r5 = r1;
        goto L_0x00a5;
    L_0x00df:
        r0 = r2;
        r0 = (android.app.Activity) r0;	 Catch:{ Throwable -> 0x00d1 }
        r1 = r0;
        r12.c = r1;	 Catch:{ Throwable -> 0x00d1 }
        r0 = r2;
        r0 = (android.app.Activity) r0;	 Catch:{ Throwable -> 0x0055 }
        r1 = r0;
        com.baidu.techain.f.a(r12, r1);	 Catch:{ Throwable -> 0x0055 }
        r3 = android.view.ContextThemeWrapper.class;
        r8 = "mInflater";
        r8 = com.baidu.techain.f.a(r3, r8);	 Catch:{ Throwable -> 0x0241 }
        r9 = "mTheme";
        r9 = com.baidu.techain.f.a(r3, r9);	 Catch:{ Throwable -> 0x0241 }
        r10 = "mResources";
        r3 = com.baidu.techain.f.a(r3, r10);	 Catch:{ Throwable -> 0x0241 }
        if (r8 == 0) goto L_0x0106;
    L_0x0102:
        r10 = 0;
        r8.set(r1, r10);	 Catch:{ Throwable -> 0x0238 }
    L_0x0106:
        if (r9 == 0) goto L_0x010c;
    L_0x0108:
        r8 = 0;
        r9.set(r1, r8);	 Catch:{ Throwable -> 0x0238 }
    L_0x010c:
        if (r3 == 0) goto L_0x0171;
    L_0x010e:
        r8 = r12.getResources();	 Catch:{ Throwable -> 0x0238 }
        r9 = new android.content.res.AssetManager;	 Catch:{ Throwable -> 0x0238 }
        r9.<init>();	 Catch:{ Throwable -> 0x0238 }
        r10 = r7.pkgPath;	 Catch:{ Throwable -> 0x0238 }
        r9.addAssetPath(r10);	 Catch:{ Throwable -> 0x0238 }
        r10 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0238 }
        r11 = "p=";
        r10.<init>(r11);	 Catch:{ Throwable -> 0x0238 }
        r11 = r7.pkgPath;	 Catch:{ Throwable -> 0x0238 }
        r10.append(r11);	 Catch:{ Throwable -> 0x0238 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0238 }
        r10 = new android.content.res.Resources;	 Catch:{ Throwable -> 0x0238 }
        r11 = r8.getDisplayMetrics();	 Catch:{ Throwable -> 0x0238 }
        r8 = r8.getConfiguration();	 Catch:{ Throwable -> 0x0238 }
        r10.<init>(r9, r11, r8);	 Catch:{ Throwable -> 0x0238 }
        r12.q = r10;	 Catch:{ Throwable -> 0x0238 }
        r8 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0238 }
        r9 = "r=";
        r8.<init>(r9);	 Catch:{ Throwable -> 0x0238 }
        r9 = r12.q;	 Catch:{ Throwable -> 0x0238 }
        r8 = r8.append(r9);	 Catch:{ Throwable -> 0x0238 }
        r9 = ", l=";
        r8 = r8.append(r9);	 Catch:{ Throwable -> 0x0238 }
        r9 = r6.labelRes;	 Catch:{ Throwable -> 0x0238 }
        r8.append(r9);	 Catch:{ Throwable -> 0x0238 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0238 }
        r8 = r6.labelRes;	 Catch:{ Throwable -> 0x0238 }
        if (r8 <= 0) goto L_0x016c;
    L_0x0159:
        r8 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0238 }
        r8.<init>();	 Catch:{ Throwable -> 0x0238 }
        r9 = r12.q;	 Catch:{ Throwable -> 0x0238 }
        r10 = r6.labelRes;	 Catch:{ Throwable -> 0x0238 }
        r9 = r9.getString(r10);	 Catch:{ Throwable -> 0x0238 }
        r8.append(r9);	 Catch:{ Throwable -> 0x0238 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0238 }
    L_0x016c:
        r8 = r12.q;	 Catch:{ Throwable -> 0x0238 }
        r3.set(r1, r8);	 Catch:{ Throwable -> 0x0238 }
    L_0x0171:
        r1.setTheme(r5);	 Catch:{ Throwable -> 0x0241 }
        r3 = r1.getTheme();	 Catch:{ Throwable -> 0x0241 }
        r8 = 1;
        r3.applyStyle(r5, r8);	 Catch:{ Throwable -> 0x0241 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0241 }
        r3.<init>();	 Catch:{ Throwable -> 0x0241 }
        r3.append(r5);	 Catch:{ Throwable -> 0x0241 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0241 }
        r5 = r1.getWindow();	 Catch:{ Throwable -> 0x0241 }
        r3 = r5.getClass();	 Catch:{ Throwable -> 0x0241 }
        r8 = "mLayoutInflater";
        r8 = com.baidu.techain.f.a(r3, r8);	 Catch:{ Throwable -> 0x0241 }
        if (r8 == 0) goto L_0x01a8;
    L_0x0197:
        r3 = 1;
        r8.setAccessible(r3);	 Catch:{ Throwable -> 0x0241 }
        r3 = r8.get(r5);	 Catch:{ Throwable -> 0x0247 }
        r3 = (android.view.LayoutInflater) r3;	 Catch:{ Throwable -> 0x0247 }
        r3 = r3.cloneInContext(r1);	 Catch:{ Throwable -> 0x0247 }
        r8.set(r5, r3);	 Catch:{ Throwable -> 0x0247 }
    L_0x01a8:
        r3 = android.view.Window.class;
        r5 = "mCallback";
        r3 = com.baidu.techain.f.a(r3, r5);	 Catch:{ Throwable -> 0x025e }
        if (r3 != 0) goto L_0x0250;
    L_0x01b2:
        r3 = android.app.Activity.class;
        r5 = "mActivityInfo";
        r3 = com.baidu.techain.f.a(r3, r5);	 Catch:{ Throwable -> 0x026d }
        if (r3 == 0) goto L_0x01bf;
    L_0x01bc:
        r3.set(r1, r6);	 Catch:{ Throwable -> 0x0264 }
    L_0x01bf:
        r3 = android.app.Activity.class;
        r5 = "mComponent";
        r3 = com.baidu.techain.f.a(r3, r5);	 Catch:{ Throwable -> 0x026d }
        if (r3 == 0) goto L_0x01d5;
    L_0x01c9:
        r5 = new android.content.ComponentName;	 Catch:{ Throwable -> 0x0273 }
        r8 = r6.packageName;	 Catch:{ Throwable -> 0x0273 }
        r9 = r6.name;	 Catch:{ Throwable -> 0x0273 }
        r5.<init>(r8, r9);	 Catch:{ Throwable -> 0x0273 }
        r3.set(r1, r5);	 Catch:{ Throwable -> 0x0273 }
    L_0x01d5:
        r3 = android.app.Activity.class;
        r5 = "mTitle";
        r5 = com.baidu.techain.f.a(r3, r5);	 Catch:{ Throwable -> 0x026d }
        if (r5 == 0) goto L_0x01ec;
    L_0x01df:
        r3 = r6.nonLocalizedLabel;	 Catch:{ Throwable -> 0x026d }
        if (r3 == 0) goto L_0x027c;
    L_0x01e3:
        r3 = r6.nonLocalizedLabel;	 Catch:{ Throwable -> 0x026d }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x026d }
    L_0x01e9:
        r5.set(r1, r3);	 Catch:{ Throwable -> 0x02c4 }
    L_0x01ec:
        r3 = r1.getWindow();	 Catch:{ Throwable -> 0x02d6 }
        r4 = android.R.styleable.Window;	 Catch:{ Throwable -> 0x02d6 }
        r4 = r1.obtainStyledAttributes(r4);	 Catch:{ Throwable -> 0x02d6 }
        r5 = r1.getWindow();	 Catch:{ Throwable -> 0x02d6 }
        r5 = r5.getClass();	 Catch:{ Throwable -> 0x02d6 }
        r6 = "mWindowStyle";
        r5 = com.baidu.techain.f.a(r5, r6);	 Catch:{ Throwable -> 0x02d6 }
        if (r5 == 0) goto L_0x0209;
    L_0x0206:
        r5.set(r3, r4);	 Catch:{ Throwable -> 0x02cd }
    L_0x0209:
        r3 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        r3 = r3.e;	 Catch:{ Throwable -> 0x0055 }
        r4 = r7.classLoader;	 Catch:{ Throwable -> 0x0055 }
        r3.setExtrasClassLoader(r4);	 Catch:{ Throwable -> 0x0055 }
        r3 = r12.b;	 Catch:{ Throwable -> 0x0055 }
        r3 = r3.e;	 Catch:{ Throwable -> 0x0055 }
        r1.setIntent(r3);	 Catch:{ Throwable -> 0x0055 }
        r1 = r12.a;	 Catch:{ Throwable -> 0x0055 }
        if (r1 == 0) goto L_0x0230;
    L_0x021d:
        r1 = i;	 Catch:{ Throwable -> 0x0055 }
        if (r1 == 0) goto L_0x0230;
    L_0x0221:
        r1 = r12.c;	 Catch:{ Throwable -> 0x0055 }
        if (r1 == 0) goto L_0x0230;
    L_0x0225:
        r1 = i;	 Catch:{ Throwable -> 0x02dc }
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ Throwable -> 0x02dc }
        r4 = 0;
        r3[r4] = r13;	 Catch:{ Throwable -> 0x02dc }
        r1.invoke(r2, r3);	 Catch:{ Throwable -> 0x02dc }
    L_0x0230:
        super.onCreate(r13);	 Catch:{ Throwable -> 0x0055 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0033;
    L_0x0238:
        r3 = move-exception;
        r3.getMessage();	 Catch:{ Throwable -> 0x0241 }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x0241 }
        goto L_0x0171;
    L_0x0241:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x01a8;
    L_0x0247:
        r3 = move-exception;
        r3.getMessage();	 Catch:{ Throwable -> 0x0241 }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x0241 }
        goto L_0x01a8;
    L_0x0250:
        r5 = r1.getWindow();	 Catch:{ Throwable -> 0x025e }
        r8 = r12.c;	 Catch:{ IllegalAccessException | IllegalArgumentException -> 0x025b, IllegalAccessException -> 0x02e5 }
        r3.set(r5, r8);	 Catch:{ IllegalAccessException | IllegalArgumentException -> 0x025b, IllegalAccessException -> 0x02e5 }
        goto L_0x01b2;
    L_0x025b:
        r3 = move-exception;
        goto L_0x01b2;
    L_0x025e:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x01b2;
    L_0x0264:
        r3 = move-exception;
        r3.getMessage();	 Catch:{ Throwable -> 0x026d }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x026d }
        goto L_0x01bf;
    L_0x026d:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x01ec;
    L_0x0273:
        r3 = move-exception;
        r3.getMessage();	 Catch:{ Throwable -> 0x026d }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x026d }
        goto L_0x01d5;
    L_0x027c:
        r3 = r6.labelRes;	 Catch:{ Throwable -> 0x026d }
        if (r3 == 0) goto L_0x02b8;
    L_0x0280:
        r3 = r12.q;	 Catch:{ Throwable -> 0x026d }
        if (r3 == 0) goto L_0x02e8;
    L_0x0284:
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x026d }
        r4 = "p= ";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x026d }
        r4 = r7.pkgPath;	 Catch:{ Throwable -> 0x026d }
        r3.append(r4);	 Catch:{ Throwable -> 0x026d }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x026d }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x026d }
        r4 = "r=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x026d }
        r4 = r12.q;	 Catch:{ Throwable -> 0x026d }
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x026d }
        r4 = ", l=";
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x026d }
        r4 = r6.labelRes;	 Catch:{ Throwable -> 0x026d }
        r3.append(r4);	 Catch:{ Throwable -> 0x026d }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x026d }
        r3 = r12.q;	 Catch:{ Throwable -> 0x026d }
        r4 = r6.labelRes;	 Catch:{ Throwable -> 0x026d }
        r3 = r3.getString(r4);	 Catch:{ Throwable -> 0x026d }
        goto L_0x01e9;
    L_0x02b8:
        r3 = r6.name;	 Catch:{ Throwable -> 0x026d }
        if (r3 == 0) goto L_0x02c0;
    L_0x02bc:
        r3 = r6.name;	 Catch:{ Throwable -> 0x026d }
        goto L_0x01e9;
    L_0x02c0:
        r3 = r6.packageName;	 Catch:{ Throwable -> 0x026d }
        goto L_0x01e9;
    L_0x02c4:
        r3 = move-exception;
        r3.getMessage();	 Catch:{ Throwable -> 0x026d }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x026d }
        goto L_0x01ec;
    L_0x02cd:
        r3 = move-exception;
        r3.getMessage();	 Catch:{ Throwable -> 0x02d6 }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x02d6 }
        goto L_0x0209;
    L_0x02d6:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0209;
    L_0x02dc:
        r1 = move-exception;
        r1.getMessage();	 Catch:{ Throwable -> 0x0055 }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0230;
    L_0x02e5:
        r3 = move-exception;
        goto L_0x01b2;
    L_0x02e8:
        r3 = r4;
        goto L_0x01e9;
    L_0x02eb:
        r6 = r4;
        goto L_0x0087;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.TechainActivity.onCreate(android.os.Bundle):void");
    }

    /* Access modifiers changed, original: protected */
    public void onPostCreate(Bundle bundle) {
        try {
            super.onPostCreate(bundle);
            if (this.a && j != null && this.c != null) {
                j.invoke(this.c, new Object[]{bundle});
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        try {
            super.onDestroy();
            if (this.a && p != null && this.c != null) {
                p.invoke(this.c, new Object[0]);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        try {
            super.onPause();
            if (this.a && n != null && this.c != null) {
                n.invoke(this.c, new Object[0]);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        try {
            super.onResume();
            if (this.a && l != null && this.c != null) {
                l.invoke(this.c, new Object[0]);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onPostResume() {
        try {
            super.onPostResume();
            if (this.a && m != null && this.c != null) {
                m.invoke(this.c, new Object[0]);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onStart() {
        try {
            super.onStart();
            if (this.a && k != null && this.c != null) {
                k.invoke(this.c, new Object[0]);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onStop() {
        try {
            super.onStop();
            if (this.a && o != null && this.c != null) {
                o.invoke(this.c, new Object[0]);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
            if (this.a && this.c != null) {
                if (!a(configuration)) {
                    Object obj;
                    Object obj2;
                    try {
                        h.setBoolean(this.c, false);
                        obj = null;
                    } catch (Throwable th) {
                        e.a();
                    }
                    this.c.onConfigurationChanged(configuration);
                    boolean z;
                    try {
                        z = h.getBoolean(this.c);
                        obj2 = obj;
                    } catch (Throwable th2) {
                        th2.getMessage();
                        b.b();
                        z = false;
                        int obj22 = 1;
                    }
                    if (obj22 != null || z) {
                        try {
                            g.setInt(this.c, 0);
                        } catch (Throwable th22) {
                            th22.getMessage();
                            b.b();
                        }
                        try {
                            f.set(this.c, new Configuration(configuration));
                        } catch (Throwable th222) {
                            th222.getMessage();
                            b.b();
                        }
                    }
                }
                if (this.d != null) {
                    this.d.updateFrom(configuration);
                }
            }
        } catch (Throwable th3) {
            e.a();
        }
    }

    private boolean a(Configuration configuration) {
        try {
            if (this.d == null) {
                return false;
            }
            Configuration configuration2 = this.d;
            int i = this.e.configChanges;
            int diff = configuration2.diff(configuration);
            if (diff == 0 || (diff & i) != 0) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }
}
