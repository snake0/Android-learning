package com.mqunar.core;

import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mqunar.BuildConfig;
import com.mqunar.atomenv.OwnerConstant;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.core.res.ResourcesInfo;
import com.mqunar.core.res.ResourcesInfo.QResources;
import com.mqunar.core.res.compat.WebViewCompat;
import com.mqunar.dispatcher.DispatcherLogic;
import com.mqunar.exception.AtomFileNotFoundException;
import com.mqunar.module.ModuleInfo;
import com.mqunar.module.ModuleInfoController;
import com.mqunar.spider.ModuleMonitor;
import com.mqunar.storage.Storage;
import com.mqunar.tools.log.QLog;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.acra.ACRA;
import org.apache.http.cookie.ClientCookie;

public class QunarApkLoader {
    public static final boolean SIGNATURE_DEBUG = BuildConfig.SIGNATURE_DEBUG.booleanValue();
    private static ClassLoader a;
    private static ClassLoader b;
    private static Field c;
    private static Method d;
    private static Method e;
    private static Loaders f = new Loaders();
    private static Set<String> g;
    private static Object h = new Object();

    public static String getSourceDir(PackageManager packageManager, String str) {
        String str2 = null;
        try {
            return packageManager.getPackageInfo(str, 8192).applicationInfo.sourceDir;
        } catch (Throwable th) {
            return str2;
        }
    }

    public static String getLoaderLogStr() {
        Map mapCopy = f.mapCopy();
        ArrayList arrayList = new ArrayList(mapCopy.size());
        for (ModuleInfo moduleInfo : mapCopy.keySet()) {
            arrayList.add("[" + moduleInfo.fileName + "," + moduleInfo.application + "]");
        }
        return arrayList.toString();
    }

    public static boolean addWebViewRes(AssetManager assetManager, Method method, Set<String> set) {
        if (set.isEmpty()) {
            return false;
        }
        for (String a : set) {
            a(assetManager, method, a);
        }
        return true;
    }

    private static void a(AssetManager assetManager, Method method, String str) {
        if (VERSION.SDK_INT <= 23) {
            try {
                method.invoke(assetManager, new Object[]{str});
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        try {
            Method declaredMethod = AssetManager.class.getDeclaredMethod("addAssetPathAsSharedLibrary", new Class[]{String.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(assetManager, new Object[]{str});
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void addChromResources(Resources resources, AssetManager assetManager, Method method) {
        if (VERSION.SDK_INT >= 21 && !WebViewCompat.check(QApplication.getContext(), assetManager, method)) {
            if (g == null) {
                synchronized (h) {
                    if (g == null) {
                        String sourceDir;
                        WebViewCompat.append("<====================>");
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        PackageManager packageManager = QApplication.getContext().getPackageManager();
                        if (VERSION.SDK_INT >= 24) {
                            try {
                                Class loadClass = QApplication.getContext().getClassLoader().loadClass("android.webkit.WebViewFactory");
                                Method declaredMethod = loadClass.getDeclaredMethod("getWebViewContextAndSetProvider", new Class[0]);
                                declaredMethod.setAccessible(true);
                                declaredMethod.invoke(null, new Object[0]);
                                Method declaredMethod2 = loadClass.getDeclaredMethod("getLoadedPackageInfo", new Class[0]);
                                declaredMethod2.setAccessible(true);
                                sourceDir = getSourceDir(packageManager, ((PackageInfo) declaredMethod2.invoke(null, new Object[0])).packageName);
                                linkedHashSet.add(sourceDir);
                                WebViewCompat.append("getWebViewContextAndSetProvider:" + sourceDir);
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                        if (linkedHashSet.size() <= 0) {
                            sourceDir = getSourceDir(packageManager, "com.google.android.webview");
                            if (!TextUtils.isEmpty(sourceDir)) {
                                linkedHashSet.add(sourceDir);
                            }
                            WebViewCompat.append("com.google.android.webview:" + sourceDir);
                            String sourceDir2 = getSourceDir(packageManager, "com.android.webview");
                            WebViewCompat.append("com.android.webview:" + sourceDir2);
                            if (!(TextUtils.isEmpty(sourceDir) || TextUtils.isEmpty(sourceDir2))) {
                                String parent = new File(sourceDir).getParent();
                                String parent2 = new File(sourceDir2).getParent();
                                if (!(parent.startsWith(parent2) || parent2.startsWith(parent))) {
                                    LinkedHashSet linkedHashSet2;
                                    if (WebViewCompat.isCustomization && sourceDir.contains("WebViewGoogle_42") && sourceDir2.contains("com.google.android.webview")) {
                                        linkedHashSet2 = new LinkedHashSet();
                                        linkedHashSet2.add(sourceDir2);
                                        linkedHashSet2.addAll(linkedHashSet);
                                        linkedHashSet.clear();
                                        linkedHashSet.addAll(linkedHashSet2);
                                        WebViewCompat.append("add dir2");
                                    } else if (WebViewCompat.isC106) {
                                        if (!(sourceDir.contains("/system/app/WebViewGoogle/WebViewGoogle.apk") && sourceDir2.contains("/system/app/webview/webview.apk"))) {
                                        }
                                        if (sourceDir.contains("/data/app/com.google.android.webview-1/base.apk") && sourceDir2.contains("/data/app/com.android.webview-1/base.apk")) {
                                        }
                                    } else if (WebViewCompat.isCustomization2 && sourceDir.contains("com.google.android.webview") && sourceDir2.contains("WebViewGoogle_42")) {
                                        linkedHashSet2 = new LinkedHashSet();
                                        linkedHashSet2.add(sourceDir2);
                                        linkedHashSet2.addAll(linkedHashSet);
                                        linkedHashSet.clear();
                                        linkedHashSet.addAll(linkedHashSet2);
                                        WebViewCompat.append("add dir2");
                                    } else {
                                        linkedHashSet.add(sourceDir2);
                                    }
                                }
                            }
                            int identifier = resources.getIdentifier("android:string/config_webViewPackageName", "string", "android");
                            if (identifier != 0) {
                                sourceDir2 = resources.getString(identifier);
                                WebViewCompat.append("string/config_webViewPackageName:" + sourceDir2);
                                CharSequence sourceDir3 = getSourceDir(packageManager, sourceDir2);
                                if (TextUtils.isEmpty(sourceDir3)) {
                                    try {
                                        sourceDir3 = QApplication.getContext().createPackageContext(sourceDir2, 3).getApplicationInfo().sourceDir;
                                    } catch (Throwable th2) {
                                    }
                                }
                                if (!TextUtils.isEmpty(sourceDir3)) {
                                    linkedHashSet.add(sourceDir3);
                                    WebViewCompat.append("config_webViewPackageName:" + sourceDir3);
                                }
                            }
                            if (VERSION.SDK_INT >= 24) {
                                sourceDir = getSourceDir(packageManager, "com.android.chrome");
                                if (!TextUtils.isEmpty(sourceDir)) {
                                    linkedHashSet.add(sourceDir);
                                }
                                WebViewCompat.append("com.android.chrome:" + sourceDir);
                            }
                        }
                        g = linkedHashSet;
                        WebViewCompat.append("webviewRes:" + g);
                    }
                }
            }
            addWebViewRes(assetManager, method, g);
        }
    }

    public static List<String> getAllResPackageName() {
        Map mapCopy = f.mapCopy();
        ArrayList arrayList = new ArrayList(mapCopy.size());
        for (ModuleInfo moduleInfo : mapCopy.keySet()) {
            arrayList.add(moduleInfo.dependency.packageName);
        }
        return arrayList;
    }

    public static void addModulesAssetsPath(Resources resources, AssetManager assetManager) {
        try {
            Method declaredMethod = AssetManager.class.getDeclaredMethod("addAssetPath", new Class[]{String.class});
            declaredMethod.setAccessible(true);
            QLog.i("addAssetPath " + QApplication.getContext().getApplicationInfo().sourceDir + " return cookie is " + declaredMethod.invoke(assetManager, new Object[]{QApplication.getContext().getApplicationInfo().sourceDir}), new Object[0]);
            addChromResources(resources, assetManager, declaredMethod);
            for (ModuleInfo moduleInfo : f.mapCopy().keySet()) {
                if (moduleInfo.dependency.hasRes) {
                    declaredMethod.invoke(assetManager, new Object[]{((ModuleInfo) r2.next()).fileName});
                }
            }
        } catch (Throwable th) {
            QLog.e(th);
            ACRA.getErrorReporter().handleSilentException(th);
        }
    }

    static int a() {
        return f.size();
    }

    public static String getDexCachePath(Context context) {
        return context == null ? null : context.getDir("opt", 0).getAbsolutePath();
    }

    public static String getPackageName(String str) {
        ModuleInfo matchModule = ModuleInfoController.matchModule(str);
        if (matchModule == null || matchModule.type != (byte) 0) {
            return null;
        }
        return matchModule.dependency.packageName;
    }

    public static String getPkgName(String str) {
        ModuleInfo matchModule = ModuleInfoController.matchModule(str);
        return matchModule == null ? null : matchModule.dependency.packageName;
    }

    public static boolean isSpiderClass(String str) {
        try {
            ClassLoader classLoader = Class.forName(str).getClassLoader();
            if (QunarApkLoader.class.getClassLoader() == classLoader || (classLoader instanceof BaseApkLoader)) {
                return true;
            }
            return false;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static Resources checkResources(Resources resources, Context context) {
        if (resources instanceof QResources) {
            return resources;
        }
        loadResourceWithoutBroadcast(context);
        return ResourcesInfo.getCurrentResources();
    }

    public static Context getAppContext() {
        return QApplication.getContext();
    }

    public static void loadResourceWithoutBroadcast(Context context) {
        try {
            Context context2 = (Context) ReflectUtils.getField((Object) context, "mBase");
            if (context2 != null) {
                ReflectUtils.setField("mResources", context2, ResourcesInfo.getCurrentResources());
                ReflectUtils.setField("mTheme", context2, null);
            }
        } catch (Throwable th) {
            QLog.e(th);
        }
        try {
            ReflectUtils.setField("mResources", context, ResourcesInfo.getCurrentResources());
            ReflectUtils.setField("mTheme", context, null);
        } catch (Throwable th2) {
            QLog.e(th2);
        }
    }

    public static void loadResource(Context context) {
        try {
            checkClassLoader();
        } catch (Throwable th) {
            QLog.e(th);
        }
        loadResourceWithoutBroadcast(context);
        try {
            Object invokeMethod = ReflectUtils.invokeMethod("needOnCreateSendBroadcast", context, new Class[0], new Object[0]);
            if (invokeMethod != null && (invokeMethod instanceof Boolean) && ((Boolean) invokeMethod).booleanValue()) {
                Intent intent = new Intent();
                intent.setAction("com.mqunar.spider.MESSAGE_ACTIVITY_ONCREATE");
                LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
            }
        } catch (Throwable th2) {
            QLog.e(th2);
        }
    }

    public static void init() {
        try {
            if (b == null) {
                Class cls = ClassLoader.class;
                d = cls.getDeclaredMethod("findClass", new Class[]{String.class});
                d.setAccessible(true);
                e = cls.getDeclaredMethod("findLoadedClass", new Class[]{String.class});
                e.setAccessible(true);
                b = QApplication.getContext().getClassLoader().getParent();
                a = new b(b);
                try {
                    cls = Class.forName("android.app.ActivityThread");
                    Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                    declaredMethod.setAccessible(true);
                    Object invoke = declaredMethod.invoke(null, new Object[0]);
                    Field declaredField = cls.getDeclaredField("mInstrumentation");
                    declaredField.setAccessible(true);
                    declaredField.set(invoke, new QInstrumentation((Instrumentation) declaredField.get(invoke)));
                } catch (Throwable th) {
                    ACRA.getErrorReporter().handleSilentException(new RuntimeException("error int init Instrumentation!", th));
                }
                c = ClassLoader.class.getDeclaredField("parent");
                c.setAccessible(true);
            }
        } catch (Throwable th2) {
            RuntimeException runtimeException = new RuntimeException(th2);
        }
        checkClassLoader();
    }

    public static void checkClassLoader() {
        a(QApplication.getContext().getClassLoader());
        a(ClassLoader.getSystemClassLoader());
        try {
            a((ClassLoader) ReflectUtils.invokeMethod("getClassLoader", ReflectUtils.getField(((Application) QApplication.getContext()).getBaseContext(), "mPackageInfo"), new Class[0], new Object[0]));
        } catch (Throwable th) {
        }
        Thread.currentThread().setContextClassLoader(a);
    }

    static void a(ClassLoader classLoader) {
        if (classLoader != null && !(classLoader instanceof BaseApkLoader) && classLoader != a && classLoader.getParent() != a) {
            try {
                c.set(classLoader, a);
            } catch (IllegalAccessException e) {
            }
        }
    }

    public static void onRegisterOk() {
        String gv = DispatcherLogic.gv();
        QApplication.setVersionInfo(gv);
        Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_SYS).putString("sys_atom", gv);
    }

    public static boolean checkModuleIsLoaded(ModuleInfo moduleInfo) {
        return f.hasItem(moduleInfo);
    }

    public static Signature[] getApkSignatureByFilePath(String str) {
        JarFile jarFile = new JarFile(str);
        try {
            Certificate[] a;
            int i;
            Signature[] signatureArr;
            byte[] bArr = new byte[8192];
            try {
                a = a(jarFile, jarFile.getJarEntry("classes.dex"), bArr);
            } catch (Throwable th) {
                a = null;
            }
            if (a == null) {
                Enumeration entries = jarFile.entries();
                while (entries.hasMoreElements()) {
                    JarEntry jarEntry = (JarEntry) entries.nextElement();
                    if (!(jarEntry.isDirectory() || jarEntry.getName().startsWith("META-INF/"))) {
                        Certificate[] a2 = a(jarFile, jarEntry, bArr);
                        if (a2 == null) {
                            jarFile.close();
                            return null;
                        }
                        if (a != null) {
                            int i2 = 0;
                            while (i2 < a.length) {
                                Object obj;
                                i = 0;
                                while (i < a2.length) {
                                    if (a[i2] != null && a[i2].equals(a2[i])) {
                                        obj = 1;
                                        break;
                                    }
                                    i++;
                                }
                                obj = null;
                                if (obj == null || a.length != a2.length) {
                                    jarFile.close();
                                    return null;
                                }
                                i2++;
                            }
                            a2 = a;
                        }
                        a = a2;
                    }
                }
            }
            jarFile.close();
            if (a == null || a.length <= 0) {
                signatureArr = null;
            } else {
                i = a.length;
                signatureArr = new Signature[a.length];
                for (int i3 = 0; i3 < i; i3++) {
                    signatureArr[i3] = new Signature(a[i3].getEncoded());
                }
            }
            return signatureArr;
        } catch (Throwable th2) {
            jarFile.close();
        }
    }

    private static Certificate[] a(JarFile jarFile, JarEntry jarEntry, byte[] bArr) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(jarFile.getInputStream(jarEntry));
        do {
        } while (bufferedInputStream.read(bArr, 0, bArr.length) != -1);
        bufferedInputStream.close();
        return jarEntry != null ? jarEntry.getCertificates() : null;
    }

    public static boolean add(ModuleInfo moduleInfo) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        boolean addApk = addApk(moduleInfo);
        currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
        ModuleMonitor instance = ModuleMonitor.getInstance();
        if (ModuleMonitor.getInstance().readMonitorModule(moduleInfo)) {
            z = false;
        } else {
            z = true;
        }
        instance.monitorModule(moduleInfo, currentTimeMillis, z);
        QLog.i("QunarApkLoader-WASTE", "path (%s) add (%s) result (%s) waste (%d)ms", moduleInfo.fileName, moduleInfo.dependency.packageName, String.valueOf(addApk), Long.valueOf(currentTimeMillis));
        return addApk;
    }

    private static void b() {
        a(ResourcesInfo.genNewResources());
    }

    private static void a(Resources resources) {
        Object baseContext = ((Application) QApplication.getContext()).getBaseContext();
        ReflectUtils.setField("mResources", ReflectUtils.getField(baseContext, "mPackageInfo"), resources);
        ReflectUtils.setField("mResources", baseContext, resources);
        ReflectUtils.setField("mTheme", baseContext, null);
    }

    private static void a(ModuleInfo moduleInfo) {
        if (!TextUtils.isEmpty(moduleInfo.dependency.applicationClassName) && moduleInfo.application == null) {
            Context baseContext = ((Application) QApplication.getContext()).getBaseContext();
            Class loadFromDexs = loadFromDexs(null, moduleInfo.dependency.applicationClassName);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                long currentTimeMillis = System.currentTimeMillis();
                moduleInfo.application = Instrumentation.newApplication(loadFromDexs, baseContext);
                moduleInfo.application.onCreate();
                QLog.i("QunarApkLoader-WASTE", "application (%s) onCreate waste (%d)", loadFromDexs.getName(), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                return;
            }
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            c cVar = new c(moduleInfo, loadFromDexs, baseContext, atomicBoolean);
            Handler handler = new Handler(Looper.getMainLooper());
            if (!handler.postAtFrontOfQueue(cVar)) {
                handler.post(cVar);
            }
            synchronized (atomicBoolean) {
                if (!atomicBoolean.get()) {
                    atomicBoolean.wait(30000);
                }
            }
        }
    }

    public static boolean addApk(ModuleInfo moduleInfo) {
        QLog.i("QunarApkLoader-WASTE", "==============add apk for " + moduleInfo.fileName + " start ===============", new Object[0]);
        synchronized (moduleInfo.fileName.intern()) {
            if (f.hasItem(moduleInfo)) {
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                f.put(moduleInfo, new BaseApkLoader(moduleInfo, getDexCachePath(QApplication.getContext()), ModuleInfoController.getSystemLibPath() + File.pathSeparator + QApplication.getContext().getApplicationInfo().nativeLibraryDir, b));
                QLog.i("QunarApkLoader-WASTE", "loaders put cost " + (System.currentTimeMillis() - currentTimeMillis) + " ms", new Object[0]);
                currentTimeMillis = System.currentTimeMillis();
                if (moduleInfo.dependency.hasRes) {
                    if (VERSION.SDK_INT >= 21) {
                        a(ResourcesInfo.genNewResources(moduleInfo.fileName));
                    } else {
                        b();
                    }
                }
                QLog.i("QunarApkLoader-WASTE", "replace res cost " + (System.currentTimeMillis() - currentTimeMillis) + " ms", new Object[0]);
                currentTimeMillis = System.currentTimeMillis();
                List<ModuleInfo> copyKeys = f.copyKeys();
                JSONArray jSONArray = new JSONArray();
                for (ModuleInfo moduleInfo2 : copyKeys) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("packageName", moduleInfo2.dependency.packageName);
                    jSONObject.put(ClientCookie.VERSION_ATTR, Integer.valueOf(moduleInfo2.dependency.versionCode));
                    jSONObject.put("fileName", moduleInfo2.fileName);
                    jSONArray.add(jSONObject);
                }
                Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_SYS).putString("sys_loaded_atom", jSONArray.toJSONString());
                QLog.i("QunarApkLoader-WASTE", "put storage cost " + (System.currentTimeMillis() - currentTimeMillis) + " ms", new Object[0]);
                currentTimeMillis = System.currentTimeMillis();
                a(moduleInfo);
                QLog.i("QunarApkLoader-WASTE", "runApplicationOncreate cost " + (System.currentTimeMillis() - currentTimeMillis) + " ms", new Object[0]);
                long currentTimeMillis2 = System.currentTimeMillis();
                String downloadJson = ModuleInfoController.getDownloadJson(moduleInfo);
                if (!TextUtils.isEmpty(downloadJson)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("command", downloadJson);
                    Intent intent = new Intent("com.mqunar.spider.MESSAGE_INSTRUCTION_MINFO_SERVER");
                    intent.putExtras(bundle);
                    LocalBroadcastManager.getInstance(getAppContext()).sendBroadcast(intent);
                }
                QLog.i("QunarApkLoader-WASTE", "sendBroadcast cost " + (System.currentTimeMillis() - currentTimeMillis2) + " ms", new Object[0]);
            }
        }
        return true;
    }

    private static Class<?> a(String str) {
        try {
            return b.loadClass(str);
        } catch (ClassNotFoundException e) {
            throw e;
        }
    }

    private static Class<?> b(String str) {
        Class<?> cls;
        if (e != null) {
            try {
                cls = (Class) e.invoke(QApplication.getContext().getClassLoader(), new Object[]{str});
            } catch (Throwable th) {
                cls = null;
            }
        } else {
            cls = null;
        }
        if (cls != null || d == null) {
            return cls;
        }
        return (Class) d.invoke(QApplication.getContext().getClassLoader(), new Object[]{str});
    }

    public static boolean shouldRestartWhenResNotFound(int i) {
        CharSequence charSequence;
        if (i >= 805306368 && i <= 2130706431) {
            int i2 = i >> 24;
            for (ModuleInfo moduleInfo : f.mapCopy().keySet()) {
                if (i2 == moduleInfo.dependency.packageId) {
                    charSequence = moduleInfo.fileName;
                    break;
                }
            }
        }
        charSequence = null;
        if (TextUtils.isEmpty(charSequence) || new File(charSequence).exists()) {
            return false;
        }
        return true;
    }

    private static Class<?> a(BaseApkLoader baseApkLoader, String str) {
        Iterator it;
        BaseApkLoader baseApkLoader2;
        Class<?> cls;
        Class<?> cls2;
        ClassNotFoundException e = null;
        Map mapCopy = f.mapCopy();
        ClassNotFoundException classNotFoundException = null;
        for (BaseApkLoader baseApkLoader22 : mapCopy.values()) {
            Class cls3;
            if (baseApkLoader22 == null || baseApkLoader22 == baseApkLoader) {
                cls3 = classNotFoundException;
            } else {
                cls3 = baseApkLoader22.loadClassFromCurrentCache(str);
                if (cls3 != null) {
                    break;
                }
            }
            Object classNotFoundException2 = cls3;
        }
        Object obj = classNotFoundException2;
        Class<?> cls4;
        if (cls4 == null) {
            it = mapCopy.values().iterator();
            while (true) {
                cls = cls4;
                if (!it.hasNext()) {
                    cls2 = cls;
                    break;
                }
                baseApkLoader22 = (BaseApkLoader) it.next();
                if (!(baseApkLoader22 == null || baseApkLoader22 == baseApkLoader)) {
                    try {
                        cls = baseApkLoader22.findClass(str);
                    } catch (ClassNotFoundException e2) {
                    }
                    if (cls != null) {
                        cls2 = cls;
                        break;
                    }
                }
                cls4 = cls;
            }
        } else {
            cls2 = cls4;
        }
        if (cls2 == null) {
            String optimizedPathFor;
            ModuleInfo moduleInfo;
            int length;
            Map mapCopy2 = ModuleInfoController.modules.mapCopy();
            int i = -1;
            ModuleInfo moduleInfo2 = null;
            for (String optimizedPathFor2 : mapCopy2.keySet()) {
                if (str.startsWith(optimizedPathFor2 + ".")) {
                    moduleInfo = (ModuleInfo) mapCopy2.get(optimizedPathFor2);
                    if (!mapCopy.containsKey(moduleInfo) || moduleInfo.hasUnloadMultiDex()) {
                        length = optimizedPathFor2.length();
                        if (length > i) {
                            i = length;
                            moduleInfo2 = moduleInfo;
                        }
                    }
                }
                length = i;
                moduleInfo = moduleInfo2;
                i = length;
                moduleInfo2 = moduleInfo;
            }
            if (moduleInfo2 == null) {
                int i2 = i;
                ModuleInfo moduleInfo3 = moduleInfo2;
                BaseApkLoader baseApkLoader3 = null;
                for (String optimizedPathFor22 : mapCopy2.keySet()) {
                    if (str.startsWith(optimizedPathFor22 + ".")) {
                        moduleInfo = (ModuleInfo) mapCopy2.get(optimizedPathFor22);
                        if (mapCopy.containsKey(moduleInfo)) {
                            int length2 = optimizedPathFor22.length();
                            if (length2 > i2) {
                                baseApkLoader3 = (BaseApkLoader) mapCopy.get(moduleInfo);
                                moduleInfo3 = moduleInfo;
                                length = length2;
                                i2 = length;
                            }
                        }
                    }
                    length = i2;
                    i2 = length;
                }
                e = ErrorMsg.a(QApplication.getContext(), baseApkLoader, str, mapCopy2, moduleInfo3, baseApkLoader3);
                if (!(moduleInfo3 == null || new File(moduleInfo3.fileName).exists())) {
                    throw new AtomFileNotFoundException(moduleInfo3.fileName, e);
                }
            } else if (mapCopy.containsKey(moduleInfo2)) {
                try {
                    cls2 = moduleInfo2.loadFromMultiDex(str);
                } catch (IOException e3) {
                    throw new RuntimeException(e3);
                } catch (ClassNotFoundException e4) {
                    e = e4;
                }
            } else {
                ClassNotFoundException e5;
                try {
                    if (add(moduleInfo2)) {
                        try {
                            cls = moduleInfo2.loader.findClass(str);
                            e5 = null;
                        } catch (ClassNotFoundException e6) {
                            e5 = e6;
                            cls = cls2;
                        }
                        if (cls == null) {
                            if (moduleInfo2.hasUnloadMultiDex()) {
                                cls = moduleInfo2.loadFromMultiDex(str);
                            }
                        }
                    } else {
                        e5 = new ClassNotFoundException(str + " not found,isInstalled is false");
                        cls = cls2;
                    }
                } catch (IOException e32) {
                    throw new RuntimeException(e32);
                } catch (ClassNotFoundException e7) {
                    e5 = e7;
                } catch (Throwable th) {
                    RuntimeException runtimeException = new RuntimeException(th);
                    optimizedPathFor22 = DexPathList.optimizedPathFor(new File(moduleInfo2.fileName), new File(getDexCachePath(QApplication.getContext())));
                    if (!new File(optimizedPathFor22).exists()) {
                        AtomFileNotFoundException atomFileNotFoundException = new AtomFileNotFoundException(optimizedPathFor22, runtimeException);
                    }
                }
                e = e5;
                cls2 = cls;
            }
        }
        if (cls2 != null || e == null) {
            return cls2;
        }
        throw e;
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00ea A:{SKIP} */
    public static java.lang.Class<?> loadFromDexs(com.mqunar.core.BaseApkLoader r10, java.lang.String r11) {
        /*
        r5 = 0;
        r6 = 1;
        r2 = 0;
        if (r10 == 0) goto L_0x0125;
    L_0x0005:
        r4 = r10.loadClassFromCurrent(r11);	 Catch:{ ClassNotFoundException -> 0x0105 }
    L_0x0009:
        if (r4 != 0) goto L_0x000f;
    L_0x000b:
        r4 = a(r11);	 Catch:{ Throwable -> 0x0114 }
    L_0x000f:
        if (r4 != 0) goto L_0x0015;
    L_0x0011:
        r4 = b(r11);	 Catch:{ Throwable -> 0x0117 }
    L_0x0015:
        if (r4 != 0) goto L_0x0120;
    L_0x0017:
        r0 = "com.mqunar.";
        r0 = r11.startsWith(r0);
        if (r0 != 0) goto L_0x0122;
    L_0x001f:
        r1 = com.mqunar.module.ModuleInfoController.modules;
        r1 = r1.mapCopy();
        r1 = r1.values();
        r7 = r1.iterator();
        r1 = r2;
        r3 = r0;
    L_0x002f:
        r0 = r7.hasNext();
        if (r0 == 0) goto L_0x0088;
    L_0x0035:
        r0 = r7.next();
        r0 = (com.mqunar.module.ModuleInfo) r0;
        if (r0 == 0) goto L_0x010a;
    L_0x003d:
        r8 = r0.dependency;
        if (r8 == 0) goto L_0x010a;
    L_0x0041:
        r8 = r0.dependency;
        r8 = r8.atomPackages;
        if (r8 == 0) goto L_0x010a;
    L_0x0047:
        r8 = r0.dependency;
        r8 = r8.atomPackages;
        r8 = r8.isEmpty();
        if (r8 != 0) goto L_0x010a;
    L_0x0051:
        r0 = r0.dependency;
        r0 = r0.atomPackages;
        r8 = r0.iterator();
    L_0x0059:
        r0 = r8.hasNext();
        if (r0 == 0) goto L_0x0086;
    L_0x005f:
        r0 = r8.next();
        r0 = (java.lang.String) r0;
        r9 = android.text.TextUtils.isEmpty(r0);
        if (r9 != 0) goto L_0x0059;
    L_0x006b:
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r0 = r9.append(r0);
        r9 = ".";
        r0 = r0.append(r9);
        r0 = r0.toString();
        r0 = r11.startsWith(r0);
        if (r0 == 0) goto L_0x0059;
    L_0x0084:
        r1 = r6;
        r3 = r6;
    L_0x0086:
        if (r1 == 0) goto L_0x010a;
    L_0x0088:
        if (r3 == 0) goto L_0x0120;
    L_0x008a:
        r0 = "";
        if (r10 == 0) goto L_0x011d;
    L_0x008e:
        r1 = r10.getModuleInfo();
        if (r1 == 0) goto L_0x011d;
    L_0x0094:
        r0 = r10.getModuleInfo();
        r0 = r0.fileName;
        r3 = r0;
    L_0x009b:
        r1 = a(r10, r11);	 Catch:{ ClassNotFoundException -> 0x0110 }
        r0 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x011b }
        r0.<init>();	 Catch:{ ClassNotFoundException -> 0x011b }
        r4 = "loadFromSo className = ";
        r0 = r0.append(r4);	 Catch:{ ClassNotFoundException -> 0x011b }
        r0 = r0.append(r11);	 Catch:{ ClassNotFoundException -> 0x011b }
        r4 = " fileName = ";
        r0 = r0.append(r4);	 Catch:{ ClassNotFoundException -> 0x011b }
        r0 = r0.append(r3);	 Catch:{ ClassNotFoundException -> 0x011b }
        r0 = r0.toString();	 Catch:{ ClassNotFoundException -> 0x011b }
        r4 = 0;
        r4 = new java.lang.Object[r4];	 Catch:{ ClassNotFoundException -> 0x011b }
        com.mqunar.tools.log.QLog.i(r0, r4);	 Catch:{ ClassNotFoundException -> 0x011b }
        r0 = r5;
        r4 = r1;
    L_0x00c4:
        if (r4 != 0) goto L_0x00e8;
    L_0x00c6:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r5 = "after loadFromSo not search className = ";
        r1 = r1.append(r5);
        r1 = r1.append(r11);
        r5 = " fileName = ";
        r1 = r1.append(r5);
        r1 = r1.append(r3);
        r1 = r1.toString();
        r2 = new java.lang.Object[r2];
        com.mqunar.tools.log.QLog.i(r1, r2);
    L_0x00e8:
        if (r4 != 0) goto L_0x011a;
    L_0x00ea:
        if (r0 == 0) goto L_0x011a;
    L_0x00ec:
        r1 = new java.lang.ClassNotFoundException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "class not found : ";
        r2 = r2.append(r3);
        r2 = r2.append(r11);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x0105:
        r0 = move-exception;
        r4 = r5;
        r5 = r0;
        goto L_0x0009;
    L_0x010a:
        r0 = r1;
        r1 = r3;
        r3 = r1;
        r1 = r0;
        goto L_0x002f;
    L_0x0110:
        r0 = move-exception;
        r1 = r4;
    L_0x0112:
        r4 = r1;
        goto L_0x00c4;
    L_0x0114:
        r5 = move-exception;
        goto L_0x000f;
    L_0x0117:
        r5 = move-exception;
        goto L_0x0015;
    L_0x011a:
        return r4;
    L_0x011b:
        r0 = move-exception;
        goto L_0x0112;
    L_0x011d:
        r3 = r0;
        goto L_0x009b;
    L_0x0120:
        r0 = r5;
        goto L_0x00e8;
    L_0x0122:
        r3 = r0;
        goto L_0x0088;
    L_0x0125:
        r4 = r5;
        goto L_0x0009;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.core.QunarApkLoader.loadFromDexs(com.mqunar.core.BaseApkLoader, java.lang.String):java.lang.Class");
    }
}
