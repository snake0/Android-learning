package com.taobao.android.runtime;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.taobao.android.dex.interpret.ARTUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class a {
    private static volatile a g;
    private static Class<?> h;
    private static boolean i;
    private static Method j;
    private static boolean k;
    private static Method l;
    private static boolean m;
    private boolean a;
    private String b;
    private String c;
    private Context d;
    private SharedPreferences e;
    private IMonitor f;

    private a() {
    }

    public static a a() {
        if (g == null) {
            synchronized (a.class) {
                if (g == null) {
                    g = new a();
                }
            }
        }
        return g;
    }

    public void a(Context context, boolean z) {
        boolean z2 = true;
        this.d = context.getApplicationContext();
        this.e = context.getSharedPreferences("runtime", 0);
        this.a = this.e.getBoolean("enabled", true);
        if (this.a) {
            this.b = this.e.getString("excludeVersions", null);
            if (this.b != null) {
                if (this.b.contains(String.valueOf(VERSION.SDK_INT))) {
                    z2 = false;
                }
                this.a = z2;
                if (!this.a) {
                    Log.e("RuntimeUtils", "- RuntimeUtils init: mEnabled=" + this.a + ", excludeVersions=" + this.b + ", version=" + VERSION.SDK_INT);
                    return;
                }
            }
            if ((context.getApplicationInfo().flags & 2) == 0 && "OPPO".equalsIgnoreCase(Build.BRAND) && VERSION.SDK_INT == 23) {
                Log.e("RuntimeUtils", "- AndroidRuntime init: Build.VERSION.SDK_INT=23, BRAND=OPPO, is disabled");
                this.a = false;
                return;
            }
            Boolean valueOf;
            Log.e("RuntimeUtils", "- RuntimeUtils init: mEnabled=" + this.a);
            this.c = this.e.getString("excludeDexes", null);
            if (d.a) {
                valueOf = Boolean.valueOf(ARTUtils.a(context, z));
            } else {
                valueOf = Boolean.valueOf(DalvikUtils.a());
            }
            a("init", valueOf);
            Log.e("RuntimeUtils", "- RuntimeUtils init: success=" + valueOf);
            return;
        }
        Log.e("RuntimeUtils", "- RuntimeUtils init: mEnabled=" + this.a);
    }

    public void a(boolean z) {
        if (this.a) {
            Boolean b;
            if (d.a) {
                b = ARTUtils.b(z);
            } else {
                b = DalvikUtils.a(z ? 3 : 1);
            }
            Log.e("RuntimeUtils", "- RuntimeUtils setVerificationEnabled: enabled=" + z + ", success=" + b);
            a("setVerificationEnabled", b);
            return;
        }
        Log.e("RuntimeUtils", "- RuntimeUtils setVerificationEnabled disabled.");
    }

    public DexFile a(Context context, String str, String str2, int i, boolean z) {
        return a(context, str, str2, i, null, z);
    }

    public DexFile a(Context context, String str, String str2, int i, ClassLoader classLoader, boolean z) {
        String a = a(str, str2);
        if (!this.a) {
            Log.e("RuntimeUtils", "- RuntimeUtils loadDex disabled.");
            return a(str, a, i, classLoader);
        } else if (this.c != null && this.c.contains(new File(str).getName())) {
            Log.e("RuntimeUtils", "- RuntimeUtils loadDex disabled: sourcePathName=" + str + ", mExcludeDexes=" + this.c);
            return a(str, a, i, classLoader);
        } else if (!d.a) {
            return DalvikUtils.a(str, a, i);
        } else {
            if (z) {
                new File(a).delete();
            }
            Object obj = null;
            if (!a(a, true)) {
                Boolean a2 = ARTUtils.a(false);
                a("setIsDex2oatEnabled", a2);
                Log.d("RuntimeUtils", "- RuntimeUtils setIsDex2oatEnabled: enabled=false, success=" + a2 + ", outputPathName=" + a);
                obj = ARTUtils.a();
            }
            long currentTimeMillis = System.currentTimeMillis();
            DexFile a3 = a(str, a, i, classLoader);
            Log.d("RuntimeUtils", "- RuntimeUtils loadDex: dex2oatEnabled=" + obj + ", IsVerificationEnabled=" + ARTUtils.b() + ", sourcePathName=" + str + ", outputPathName=" + a + ", elapsed=" + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            if (!(z || obj == null || obj.booleanValue())) {
                Dex2OatService.a(context, str, a);
            }
            ARTUtils.a(true);
            return a3;
        }
    }

    public static String b() {
        d();
        if (j != null) {
            try {
                return (String) j.invoke(null, new Object[0]);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return null;
    }

    private static void c() {
        if (!i) {
            try {
                h = Class.forName("dalvik.system.VMRuntime");
            } catch (ClassNotFoundException e) {
                Log.i("RuntimeUtils", "Failed to retrieve VMRuntime class", e);
            }
            i = true;
        }
    }

    private static void d() {
        if (!k) {
            try {
                c();
                j = h.getDeclaredMethod("getCurrentInstructionSet", new Class[0]);
                j.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("RuntimeUtils", "Failed to retrieve getCurrentInstructionSet method", e);
            }
            k = true;
        }
    }

    static String a(String str, String str2) {
        if (VERSION.SDK_INT < 26) {
            return str2;
        }
        try {
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf == -1) {
                Log.e("RuntimeUtils", "Dex location " + str + " has no directory.");
                return str2;
            }
            String str3 = (str.substring(0, lastIndexOf + 1) + "oat") + "/" + b();
            String substring = str.substring(lastIndexOf + 1);
            int lastIndexOf2 = substring.lastIndexOf(46);
            if (lastIndexOf2 == -1) {
                Log.e("RuntimeUtils", "Dex location " + str + " has no extension.");
                return str2;
            }
            return str3 + "/" + substring.substring(0, lastIndexOf2) + ".odex";
        } catch (Exception e) {
            Log.e("RuntimeUtils", "Failed to get current instruction set", e);
            return str2;
        }
    }

    public DexFile a(String str, String str2, int i, ClassLoader classLoader) {
        if (VERSION.SDK_INT >= 26) {
            e();
            if (l != null) {
                try {
                    return (DexFile) l.invoke(null, new Object[]{str, str2, Integer.valueOf(i), classLoader, Array.newInstance(Class.forName("dalvik.system.DexPathList$Element"), 0)});
                } catch (IllegalAccessException e) {
                } catch (InvocationTargetException e2) {
                    e2.printStackTrace();
                } catch (ClassNotFoundException e3) {
                    e3.printStackTrace();
                }
            }
        }
        return DexFile.loadDex(str, str2, i);
    }

    private void e() {
        if (!m) {
            try {
                l = DexFile.class.getDeclaredMethod("loadDex", new Class[]{String.class, String.class, Integer.TYPE, ClassLoader.class, Class.forName("[Ldalvik.system.DexPathList$Element;")});
                l.setAccessible(true);
            } catch (ClassNotFoundException e) {
                Log.i("RuntimeUtils", "Failed to retrieve dalvik.system.DexPathList.Element class", e);
            } catch (NoSuchMethodException e2) {
                Log.i("RuntimeUtils", "Failed to retrieve loadDex method", e2);
            }
            m = true;
        }
    }

    public boolean a(String str, boolean z) {
        if (!d.a) {
            return true;
        }
        File file = new File(str);
        if (file.exists() && file.length() > 0) {
            try {
                OatFile.a(file);
                Log.i("RuntimeUtils", "- odexFile is valid: odexFile=" + str);
                return true;
            } catch (Exception e) {
                if (z) {
                    file.delete();
                }
                a("loadDex", Boolean.valueOf(false));
                Log.e("RuntimeUtils", "- odexFile is invalid: odexFile=" + str, e);
            }
        }
        return false;
    }

    private void a(String str, Boolean bool) {
        if (this.f != null) {
            this.f.trace(str, "typeID=" + str + ", success=" + bool + ", model=" + Build.MODEL + ", version=" + VERSION.RELEASE, bool == null ? false : bool.booleanValue());
        }
    }
}
