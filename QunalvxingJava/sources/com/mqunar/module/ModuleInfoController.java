package com.mqunar.module;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mqunar.BuildConfig;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.core.DexPathList;
import com.mqunar.core.ModuleParser;
import com.mqunar.core.QunarApkLoader;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.core.dependency.Atom;
import com.mqunar.core.dependency.AtomNode;
import com.mqunar.core.dependency.Dependency;
import com.mqunar.core.dependency.Dependency.Component;
import com.mqunar.core.dependency.Dependency.Component.IntentFilter;
import com.mqunar.core.dependency.Dependency.Component.IntentFilter.Data;
import com.mqunar.dispatcher.SchemeManager;
import com.mqunar.json.JsonUtils;
import com.mqunar.module.ModuleInfo.DexInfo;
import com.mqunar.storage.Storage;
import com.mqunar.tools.ArrayUtils;
import com.mqunar.tools.log.QLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ModuleInfoController {
    public static String LIB_PATH;
    private static List<MInfo> a;
    private static String b;
    private static String c;
    private static String d;
    private static String e;
    private static BroadcastReceiver f;
    private static String[] g = BuildConfig.SPIDER_DEPENDENCIES;
    private static boolean h;
    public static Modules modules = new Modules();
    public static String[] preLoad;

    public static List<MInfo> getMInfoList() {
        if (!h) {
            h = true;
            if (ArrayUtils.isEmpty(a)) {
                Storage newStorage = Storage.newStorage(QApplication.getContext(), "spider_minfo");
                if (newStorage != null) {
                    String string = newStorage.getString("minfo_json", "");
                    if (!TextUtils.isEmpty(string) && ArrayUtils.isEmpty(a)) {
                        try {
                            a = JsonUtils.parseArray(string, MInfo.class);
                        } catch (Exception e) {
                            QLog.crash(e, "parse minfo json error!");
                        }
                    }
                    b = newStorage.getString("minfo_vid", "");
                }
            }
        }
        return a;
    }

    public static boolean isWifi(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo == null) {
            return false;
        }
        if (activeNetworkInfo.getType() == 1) {
            return true;
        }
        return false;
    }

    public static MInfo getMInfo(ModuleInfo moduleInfo) {
        if (moduleInfo != null) {
            return getMInfo(moduleInfo.dependency.packageName);
        }
        return null;
    }

    public static MInfo getMInfo(String str) {
        List<MInfo> mInfoList = getMInfoList();
        if (!(mInfoList == null || str == null)) {
            for (MInfo mInfo : mInfoList) {
                if (str.equals(mInfo.packageName)) {
                    return mInfo;
                }
            }
        }
        return null;
    }

    public static String updateModuleInfo(String str) {
        Storage newStorage = Storage.newStorage(QApplication.getContext(), "spider_minfo");
        newStorage.putString("minfo_json", str);
        newStorage.putString("minfo_vid", GlobalEnv.getInstance().getVid());
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a = JsonUtils.parseArray(str, MInfo.class);
        b = GlobalEnv.getInstance().getVid();
        boolean isWifi = isWifi(QApplication.getContext());
        HashSet hashSet = new HashSet();
        if (a != null) {
            for (MInfo mInfo : a) {
                ModuleInfo moduleInfo = (ModuleInfo) modules.get(mInfo.packageName);
                if (moduleInfo != null) {
                    mInfo.fileName = moduleInfo.fileName;
                    if (moduleInfo.dependency.versionCode < mInfo.version) {
                        if (isWifi) {
                            mInfo.downloadFlag = (byte) -1;
                            hashSet.add(mInfo);
                        } else if (mInfo.restart == (byte) 1) {
                            mInfo.downloadFlag = (byte) -1;
                            hashSet.add(mInfo);
                        } else if (!TextUtils.isEmpty(mInfo.patchUrl) && !TextUtils.isEmpty(mInfo.md5)) {
                            mInfo.downloadFlag = (byte) -1;
                            hashSet.add(mInfo);
                        } else if (preLoad != null) {
                            for (String equals : preLoad) {
                                if (equals.equals(moduleInfo.dependency.packageName)) {
                                    mInfo.downloadFlag = (byte) -1;
                                    hashSet.add(mInfo);
                                    break;
                                }
                            }
                        }
                    }
                } else if (isWifi) {
                    mInfo.downloadFlag = (byte) -1;
                    hashSet.add(mInfo);
                }
            }
        }
        return JsonUtils.toJsonString(hashSet);
    }

    public static String getDownloadJson(ModuleInfo moduleInfo) {
        Collection<MInfo> mInfoList = getMInfoList();
        if (ArrayUtils.isEmpty((Collection) mInfoList)) {
            return null;
        }
        boolean isWifi = isWifi(QApplication.getContext());
        ArrayList arrayList = new ArrayList();
        for (MInfo mInfo : mInfoList) {
            if (mInfo.downloadFlag != (byte) -1) {
                if (!moduleInfo.dependency.packageName.equals(mInfo.packageName)) {
                    ModuleInfo moduleInfo2 = (ModuleInfo) modules.get(mInfo.packageName);
                    if (moduleInfo2 != null) {
                        if (moduleInfo2.dependency.versionCode < mInfo.version) {
                            mInfo.fileName = moduleInfo2.fileName;
                            if (!TextUtils.isEmpty(mInfo.patchUrl) && !TextUtils.isEmpty(mInfo.md5)) {
                                mInfo.downloadFlag = (byte) -1;
                                arrayList.add(mInfo);
                            } else if (isWifi) {
                                mInfo.downloadFlag = (byte) -1;
                                arrayList.add(mInfo);
                            }
                        }
                    } else if (isWifi) {
                        mInfo.downloadFlag = (byte) -1;
                        arrayList.add(mInfo);
                    }
                } else if (moduleInfo.dependency.versionCode < mInfo.version) {
                    mInfo.fileName = moduleInfo.fileName;
                    mInfo.downloadFlag = (byte) -1;
                    arrayList.add(mInfo);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return JsonUtils.toJsonString(arrayList);
    }

    private ModuleInfoController() {
    }

    private static void b(ModuleInfo moduleInfo) {
        moduleInfo.initDexList();
        if (ArrayUtils.isEmpty(moduleInfo.dependency.components)) {
            QLog.i("COMPONENTS", moduleInfo.fileName + "components size = 0", new Object[0]);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Component component : moduleInfo.dependency.components) {
            com.mqunar.core.Component component2 = new com.mqunar.core.Component();
            component2.name = component.name;
            component2.intentFilters = new ArrayList();
            for (IntentFilter intentFilter : component.intentFilters) {
                android.content.IntentFilter intentFilter2 = new android.content.IntentFilter();
                if (!ArrayUtils.isEmpty(intentFilter.action)) {
                    for (String addAction : intentFilter.action) {
                        intentFilter2.addAction(addAction);
                    }
                }
                if (!ArrayUtils.isEmpty(intentFilter.category)) {
                    for (String addAction2 : intentFilter.category) {
                        intentFilter2.addCategory(addAction2);
                    }
                }
                if (!ArrayUtils.isEmpty(intentFilter.data)) {
                    for (Data data : intentFilter.data) {
                        if (!TextUtils.isEmpty(data.schema)) {
                            intentFilter2.addDataScheme(data.schema);
                            if (!TextUtils.isEmpty(data.mimeType)) {
                                intentFilter2.addDataType(data.mimeType);
                            }
                            if (!TextUtils.isEmpty(data.host)) {
                                intentFilter2.addDataAuthority(data.host, data.port);
                            }
                            if (!TextUtils.isEmpty(data.path)) {
                                intentFilter2.addDataPath(data.path, 0);
                            }
                            if (!TextUtils.isEmpty(data.pathPrefix)) {
                                intentFilter2.addDataPath(data.pathPrefix, 1);
                            }
                            if (!TextUtils.isEmpty(data.pathPattern)) {
                                intentFilter2.addDataPath(data.pathPattern, 2);
                            }
                        }
                    }
                }
                if (intentFilter2.matchAction("android.intent.action.MAIN")) {
                    Iterator categoriesIterator = intentFilter2.categoriesIterator();
                    if (categoriesIterator != null) {
                        while (categoriesIterator.hasNext()) {
                            if ("android.intent.category.LAUNCHER".equals(categoriesIterator.next())) {
                                moduleInfo.launcherClassName = component.name;
                                break;
                            }
                        }
                    }
                }
                component2.intentFilters.add(intentFilter2);
            }
            arrayList.add(component2);
        }
        SchemeManager.addScheme(moduleInfo.dependency.packageName, moduleInfo.dependency.versionCode, arrayList);
    }

    public static void registModules(Context context) {
        if (modules.size() == 0) {
            File file;
            if (TextUtils.isEmpty(LIB_PATH)) {
                LIB_PATH = context.getApplicationInfo().nativeLibraryDir;
                if (!new File(LIB_PATH).exists()) {
                    LIB_PATH = context.getApplicationInfo().dataDir + "/lib/";
                }
            }
            if (d == null) {
                file = new File(context.getFilesDir(), "/sys_qlib/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                d = file.getAbsolutePath();
            }
            if (c == null) {
                c = Storage.getAppFileDir(context) + "/qlib/";
                file = new File(c);
                if (!file.exists()) {
                    file.mkdirs();
                }
            }
            if (TextUtils.isEmpty(e)) {
                e = Storage.getAppFileDir(context) + "/data/";
                file = new File(e);
                if (!(file.exists() || file.mkdirs())) {
                    QLog.crash(new RuntimeException("Fatal error! can not create " + e + ",versionName is " + context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName), "");
                }
            }
            f = new a();
            long currentTimeMillis = System.currentTimeMillis();
            b(context);
            QLog.i("ModuleInfoController-WASTE", "registLocalModules " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("com.mqunar.spider.module.download");
            LocalBroadcastManager.getInstance(context).registerReceiver(f, intentFilter);
            if (modules.size() == 0) {
                throw new Exception("Fatal error, no module found!");
            }
        }
    }

    private static List<AtomNode> b(List<ModuleInfo> list) {
        ArrayList<AtomNode> arrayList = new ArrayList(list.size());
        for (ModuleInfo moduleInfo : list) {
            AtomNode atomNode;
            for (AtomNode atomNode2 : arrayList) {
                Object obj;
                for (ModuleInfo moduleInfo2 : atomNode2.versionList) {
                    if (moduleInfo2.dependency.packageName.equals(moduleInfo.dependency.packageName)) {
                        obj = 1;
                        continue;
                        break;
                    }
                }
                obj = null;
                continue;
                if (obj != null) {
                    break;
                }
            }
            AtomNode atomNode22 = null;
            if (atomNode22 == null) {
                atomNode22 = new AtomNode();
                atomNode22.versionList = new ArrayList(2);
                arrayList.add(atomNode22);
                atomNode = atomNode22;
            } else {
                atomNode = atomNode22;
            }
            int size = atomNode.versionList.size();
            int i = 0;
            while (i < atomNode.versionList.size()) {
                if (((ModuleInfo) atomNode.versionList.get(i)).dependency.versionCode <= moduleInfo.dependency.versionCode) {
                    break;
                }
                i++;
            }
            i = size;
            atomNode.versionList.add(i, moduleInfo);
        }
        return arrayList;
    }

    public static void deleteSo(Context context, ModuleInfo moduleInfo) {
        moduleInfo.freeZipFile();
        File file = new File(moduleInfo.fileName);
        String dexCachePath = QunarApkLoader.getDexCachePath(context);
        if (!TextUtils.isEmpty(dexCachePath)) {
            ArrayList<File> arrayList = new ArrayList();
            File file2 = new File(dexCachePath);
            dexCachePath = DexPathList.optimizedPathFor(file, file2);
            if (!TextUtils.isEmpty(dexCachePath)) {
                arrayList.add(new File(dexCachePath));
            }
            if (moduleInfo.dexList != null) {
                for (DexInfo dexInfo : moduleInfo.dexList) {
                    dexCachePath = DexPathList.optimizedPathFor(dexInfo.dexOutPath, file2);
                    if (!TextUtils.isEmpty(dexCachePath)) {
                        arrayList.add(new File(dexCachePath));
                    }
                }
            }
            for (File file3 : arrayList) {
                if (file3.exists()) {
                    file3.delete();
                }
            }
        }
        file.delete();
    }

    private static Set<ModuleInfo> a(Context context, List<ModuleInfo> list, List<ModuleInfo> list2) {
        AtomNode atomNode;
        ModuleInfo moduleInfo;
        Object obj;
        ModuleInfo canLoadDependency;
        HashSet<ModuleInfo> hashSet = new HashSet(list.size() * 2);
        List<AtomNode> b = b((List) list2);
        int i = 0;
        while (i < b.size()) {
            atomNode = (AtomNode) b.get(i);
            int i2 = 0;
            while (i2 < atomNode.versionList.size()) {
                moduleInfo = (ModuleInfo) atomNode.versionList.get(i2);
                for (ModuleInfo moduleInfo2 : list) {
                    if (moduleInfo.dependency.packageName.equals(moduleInfo2.dependency.packageName)) {
                        break;
                    }
                }
                ModuleInfo moduleInfo22 = null;
                if (moduleInfo22 == null) {
                    break;
                }
                if (moduleInfo.dependency.versionCode <= moduleInfo22.dependency.versionCode) {
                    atomNode.versionList.remove(moduleInfo);
                    deleteSo(context, moduleInfo);
                    i2--;
                }
                i2++;
            }
            if (atomNode.versionList.isEmpty()) {
                b.remove(atomNode);
                i--;
            }
            i++;
        }
        d dVar = new d(context);
        do {
            obj = 1;
            for (AtomNode atomNode2 : b) {
                Object obj2;
                if (atomNode2.needCheck()) {
                    atomNode2.getCanLoadDependency(g, list, b, null);
                    obj2 = null;
                } else {
                    obj2 = obj;
                }
                obj = obj2;
            }
        } while (obj == null);
        for (AtomNode atomNode22 : b) {
            canLoadDependency = atomNode22.getCanLoadDependency(g, list, b, dVar);
            if (canLoadDependency != null) {
                hashSet.add(canLoadDependency);
            }
        }
        for (ModuleInfo canLoadDependency2 : list) {
            for (ModuleInfo moduleInfo3 : hashSet) {
                if (moduleInfo3.dependency.packageName.equals(canLoadDependency2.dependency.packageName)) {
                    obj = 1;
                    break;
                }
            }
            obj = null;
            if (obj == null) {
                hashSet.add(canLoadDependency2);
            }
        }
        return hashSet;
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x007d A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0058 A:{SYNTHETIC, Splitter:B:30:0x0058} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x005d A:{SYNTHETIC, Splitter:B:33:0x005d} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x007d A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x006c A:{SYNTHETIC, Splitter:B:41:0x006c} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0071 A:{SYNTHETIC, Splitter:B:44:0x0071} */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x006c A:{SYNTHETIC, Splitter:B:41:0x006c} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0071 A:{SYNTHETIC, Splitter:B:44:0x0071} */
    public static void copyFile(java.util.zip.ZipFile r11, java.util.zip.ZipEntry r12, java.io.File r13) {
        /*
        r2 = 0;
        r4 = 0;
        r0 = 1;
        r1 = r11.getInputStream(r12);	 Catch:{ Throwable -> 0x0054, all -> 0x0067 }
        r3 = r13.getParentFile();	 Catch:{ Throwable -> 0x0083, all -> 0x007e }
        r3.mkdirs();	 Catch:{ Throwable -> 0x0083, all -> 0x007e }
        r3 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x0083, all -> 0x007e }
        r3.<init>(r13);	 Catch:{ Throwable -> 0x0083, all -> 0x007e }
        r6 = r12.getSize();	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r5 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r8 = new byte[r5];	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r5 = r4;
    L_0x001c:
        r9 = r1.read(r8);	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r10 = -1;
        if (r9 == r10) goto L_0x0029;
    L_0x0023:
        r10 = 0;
        r3.write(r8, r10, r9);	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r5 = r5 + r9;
        goto L_0x001c;
    L_0x0029:
        r8 = (long) r5;	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r5 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
        if (r5 == 0) goto L_0x0036;
    L_0x002e:
        r2 = new java.lang.RuntimeException;	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r0 = "文件未读完!";
        r2.<init>(r0);	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
        r0 = r4;
    L_0x0036:
        if (r0 == 0) goto L_0x003b;
    L_0x0038:
        r3.flush();	 Catch:{ Throwable -> 0x0085, all -> 0x0081 }
    L_0x003b:
        if (r3 == 0) goto L_0x0040;
    L_0x003d:
        r3.close();	 Catch:{ IOException -> 0x0075 }
    L_0x0040:
        if (r1 == 0) goto L_0x008b;
    L_0x0042:
        r1.close();	 Catch:{ IOException -> 0x0051 }
        r1 = r2;
    L_0x0046:
        if (r0 != 0) goto L_0x007d;
    L_0x0048:
        r13.delete();
        r0 = new java.lang.RuntimeException;
        r0.<init>(r1);
        throw r0;
    L_0x0051:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0046;
    L_0x0054:
        r0 = move-exception;
        r1 = r2;
    L_0x0056:
        if (r2 == 0) goto L_0x005b;
    L_0x0058:
        r2.close();	 Catch:{ IOException -> 0x0077 }
    L_0x005b:
        if (r1 == 0) goto L_0x0088;
    L_0x005d:
        r1.close();	 Catch:{ IOException -> 0x0063 }
        r1 = r0;
        r0 = r4;
        goto L_0x0046;
    L_0x0063:
        r1 = move-exception;
        r1 = r0;
        r0 = r4;
        goto L_0x0046;
    L_0x0067:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
    L_0x006a:
        if (r3 == 0) goto L_0x006f;
    L_0x006c:
        r3.close();	 Catch:{ IOException -> 0x0079 }
    L_0x006f:
        if (r1 == 0) goto L_0x0074;
    L_0x0071:
        r1.close();	 Catch:{ IOException -> 0x007b }
    L_0x0074:
        throw r0;
    L_0x0075:
        r3 = move-exception;
        goto L_0x0040;
    L_0x0077:
        r2 = move-exception;
        goto L_0x005b;
    L_0x0079:
        r2 = move-exception;
        goto L_0x006f;
    L_0x007b:
        r1 = move-exception;
        goto L_0x0074;
    L_0x007d:
        return;
    L_0x007e:
        r0 = move-exception;
        r3 = r2;
        goto L_0x006a;
    L_0x0081:
        r0 = move-exception;
        goto L_0x006a;
    L_0x0083:
        r0 = move-exception;
        goto L_0x0056;
    L_0x0085:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0056;
    L_0x0088:
        r1 = r0;
        r0 = r4;
        goto L_0x0046;
    L_0x008b:
        r1 = r2;
        goto L_0x0046;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfoController.copyFile(java.util.zip.ZipFile, java.util.zip.ZipEntry, java.io.File):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0036 A:{SYNTHETIC, Splitter:B:19:0x0036} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0052 A:{SYNTHETIC, Splitter:B:31:0x0052} */
    private static java.lang.String a(java.io.File r6) {
        /*
        r1 = 0;
        if (r6 == 0) goto L_0x0039;
    L_0x0003:
        r0 = r6.exists();
        if (r0 == 0) goto L_0x0039;
    L_0x0009:
        r2 = r6.length();
        r4 = 0;
        r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r0 <= 0) goto L_0x0039;
    L_0x0013:
        r3 = new java.io.ByteArrayOutputStream;
        r4 = r6.length();
        r0 = (int) r4;
        r3.<init>(r0);
        r2 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x005c, all -> 0x004e }
        r2.<init>(r6);	 Catch:{ Throwable -> 0x005c, all -> 0x004e }
        r0 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r0 = new byte[r0];	 Catch:{ Throwable -> 0x0032, all -> 0x005a }
    L_0x0026:
        r4 = r2.read(r0);	 Catch:{ Throwable -> 0x0032, all -> 0x005a }
        r5 = -1;
        if (r4 == r5) goto L_0x003b;
    L_0x002d:
        r5 = 0;
        r3.write(r0, r5, r4);	 Catch:{ Throwable -> 0x0032, all -> 0x005a }
        goto L_0x0026;
    L_0x0032:
        r0 = move-exception;
        r0 = r2;
    L_0x0034:
        if (r0 == 0) goto L_0x0039;
    L_0x0036:
        r0.close();	 Catch:{ IOException -> 0x0056 }
    L_0x0039:
        r0 = r1;
    L_0x003a:
        return r0;
    L_0x003b:
        r0 = new java.lang.String;	 Catch:{ Throwable -> 0x0032, all -> 0x005a }
        r3 = r3.toByteArray();	 Catch:{ Throwable -> 0x0032, all -> 0x005a }
        r4 = "UTF-8";
        r0.<init>(r3, r4);	 Catch:{ Throwable -> 0x0032, all -> 0x005a }
        if (r2 == 0) goto L_0x003a;
    L_0x0048:
        r2.close();	 Catch:{ IOException -> 0x004c }
        goto L_0x003a;
    L_0x004c:
        r1 = move-exception;
        goto L_0x003a;
    L_0x004e:
        r0 = move-exception;
        r2 = r1;
    L_0x0050:
        if (r2 == 0) goto L_0x0055;
    L_0x0052:
        r2.close();	 Catch:{ IOException -> 0x0058 }
    L_0x0055:
        throw r0;
    L_0x0056:
        r0 = move-exception;
        goto L_0x0039;
    L_0x0058:
        r1 = move-exception;
        goto L_0x0055;
    L_0x005a:
        r0 = move-exception;
        goto L_0x0050;
    L_0x005c:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0034;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfoController.a(java.io.File):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0020 A:{SYNTHETIC, Splitter:B:11:0x0020} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0029 A:{SYNTHETIC, Splitter:B:16:0x0029} */
    private static void a(java.io.File r3, java.lang.String r4) {
        /*
        r1 = 0;
        r0 = r3.getParentFile();	 Catch:{ Throwable -> 0x001c, all -> 0x0026 }
        r0.mkdirs();	 Catch:{ Throwable -> 0x001c, all -> 0x0026 }
        r0 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x001c, all -> 0x0026 }
        r0.<init>(r3);	 Catch:{ Throwable -> 0x001c, all -> 0x0026 }
        r1 = "UTF-8";
        r1 = r4.getBytes(r1);	 Catch:{ Throwable -> 0x0036, all -> 0x0031 }
        r0.write(r1);	 Catch:{ Throwable -> 0x0036, all -> 0x0031 }
        if (r0 == 0) goto L_0x001b;
    L_0x0018:
        r0.close();	 Catch:{ IOException -> 0x002d }
    L_0x001b:
        return;
    L_0x001c:
        r0 = move-exception;
        r0 = r1;
    L_0x001e:
        if (r0 == 0) goto L_0x001b;
    L_0x0020:
        r0.close();	 Catch:{ IOException -> 0x0024 }
        goto L_0x001b;
    L_0x0024:
        r0 = move-exception;
        goto L_0x001b;
    L_0x0026:
        r0 = move-exception;
    L_0x0027:
        if (r1 == 0) goto L_0x002c;
    L_0x0029:
        r1.close();	 Catch:{ IOException -> 0x002f }
    L_0x002c:
        throw r0;
    L_0x002d:
        r0 = move-exception;
        goto L_0x001b;
    L_0x002f:
        r1 = move-exception;
        goto L_0x002c;
    L_0x0031:
        r1 = move-exception;
        r2 = r1;
        r1 = r0;
        r0 = r2;
        goto L_0x0027;
    L_0x0036:
        r1 = move-exception;
        goto L_0x001e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfoController.a(java.io.File, java.lang.String):void");
    }

    private static List<String> a(Context context) {
        JSONObject jSONObject;
        List list;
        JSONObject jSONObject2 = null;
        Object vid = GlobalEnv.getInstance().getVid();
        Object rCid = GlobalEnv.getInstance().getRCid();
        File file = new File(context.getFilesDir(), "spider_entries.json");
        String a = a(file);
        if (TextUtils.isEmpty(a)) {
            jSONObject = null;
        } else {
            jSONObject = JSON.parseObject(a);
            String string = jSONObject.getString("rcid");
            String string2 = jSONObject.getString("v");
            if (!rCid.equals(string) || vid.compareTo(string2) > 0) {
                file.delete();
                jSONObject = null;
            }
        }
        ArrayList arrayList = new ArrayList();
        if (jSONObject != null) {
            List a2 = a(jSONObject.getJSONArray("list"));
            if (a2 == null) {
                list = a2;
            } else {
                jSONObject2 = jSONObject;
                list = a2;
            }
        } else {
            jSONObject2 = jSONObject;
            Object list2 = arrayList;
        }
        if (jSONObject2 == null) {
            jSONObject2 = a(context, list2);
            jSONObject2.put("rcid", rCid);
            jSONObject2.put("v", vid);
            a(file, jSONObject2.toJSONString());
        }
        return list2;
    }

    private static List<String> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.size(); i++) {
            String str;
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String string = jSONObject.getString("n");
            boolean z = true;
            if (jSONObject.containsKey("r")) {
                z = jSONObject.getBoolean("r").booleanValue();
            }
            if (string.startsWith("libq_lib_") || string.startsWith("libq_atom_")) {
                str = c;
                if (Build.HARDWARE.toLowerCase().contains("mt6592")) {
                    string = string + ".jar";
                } else {
                    string = string + ".so";
                }
            } else {
                str = d;
                string = string + ".so";
            }
            File file = new File(str, string);
            if (z) {
                arrayList.add(new File(LIB_PATH, string).getAbsolutePath());
            } else {
                int intValue = jSONObject.getIntValue("s");
                if (!file.exists() || file.length() != ((long) intValue)) {
                    return null;
                }
                arrayList.add(file.getAbsolutePath());
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:60:0x0148 A:{ExcHandler: all (th java.lang.Throwable), Catch:{ Throwable -> 0x014d, all -> 0x0148, Throwable -> 0x0100, all -> 0x0148 }, Splitter:B:3:0x001c} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x010e A:{SYNTHETIC, Splitter:B:47:0x010e} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x010e A:{SYNTHETIC, Splitter:B:47:0x010e} */
    /* JADX WARNING: Missing block: B:48:?, code skipped:
            r2.close();
     */
    /* JADX WARNING: Missing block: B:60:0x0148, code skipped:
            r0 = th;
     */
    private static com.alibaba.fastjson.JSONObject a(android.content.Context r14, java.util.List<java.lang.String> r15) {
        /*
        r5 = new com.alibaba.fastjson.JSONObject;
        r5.<init>();
        r6 = new com.alibaba.fastjson.JSONArray;
        r6.<init>();
        r0 = "lib/armeabi/";
        r7 = r0.length();
        r1 = 0;
        r2 = new java.util.zip.ZipFile;	 Catch:{ Throwable -> 0x01a4, all -> 0x01a0 }
        r0 = r14.getApplicationInfo();	 Catch:{ Throwable -> 0x01a4, all -> 0x01a0 }
        r0 = r0.sourceDir;	 Catch:{ Throwable -> 0x01a4, all -> 0x01a0 }
        r2.<init>(r0);	 Catch:{ Throwable -> 0x01a4, all -> 0x01a0 }
        r8 = r2.entries();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
    L_0x0020:
        r0 = r8.hasMoreElements();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r0 == 0) goto L_0x0190;
    L_0x0026:
        r0 = r8.nextElement();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r0 = (java.util.zip.ZipEntry) r0;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = r0.getName();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r3 = "lib/armeabi/";
        r1 = r1.startsWith(r3);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r1 == 0) goto L_0x0020;
    L_0x0038:
        r3 = r0.getSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r9 = 0;
        r1 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1));
        if (r1 <= 0) goto L_0x0020;
    L_0x0042:
        r3 = r0.getCompressedSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r9 = 0;
        r1 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1));
        if (r1 <= 0) goto L_0x0020;
    L_0x004c:
        r9 = new com.alibaba.fastjson.JSONObject;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r9.<init>();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = r0.getName();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r3 = r1.substring(r7);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = "n";
        r4 = 0;
        r10 = ".";
        r10 = r3.lastIndexOf(r10);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4 = r3.substring(r4, r10);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r9.put(r1, r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = 0;
        r4 = "libq_lib_";
        r4 = r3.startsWith(r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r4 != 0) goto L_0x007a;
    L_0x0072:
        r4 = "libq_atom_";
        r4 = r3.startsWith(r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r4 == 0) goto L_0x0112;
    L_0x007a:
        r4 = 1;
    L_0x007b:
        r10 = android.os.Build.HARDWARE;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r10 = r10.toLowerCase();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r11 = "mt6592";
        r10 = r10.contains(r11);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r10 == 0) goto L_0x0115;
    L_0x0089:
        if (r4 == 0) goto L_0x0115;
    L_0x008b:
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4.<init>();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r10 = 0;
        r11 = ".";
        r11 = r3.lastIndexOf(r11);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r3 = r3.substring(r10, r11);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r3 = r4.append(r3);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4 = ".jar";
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
    L_0x00a9:
        if (r1 != 0) goto L_0x00fb;
    L_0x00ab:
        r1 = "r";
        r4 = 0;
        r4 = java.lang.Boolean.valueOf(r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r9.put(r1, r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = "s";
        r10 = r0.getSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4 = java.lang.Long.valueOf(r10);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r9.put(r1, r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = "libq_lib_";
        r1 = r3.startsWith(r1);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r1 != 0) goto L_0x00d2;
    L_0x00ca:
        r1 = "libq_atom_";
        r1 = r3.startsWith(r1);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r1 == 0) goto L_0x014a;
    L_0x00d2:
        r1 = c;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
    L_0x00d4:
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4.<init>(r1, r3);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = r4.exists();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r1 == 0) goto L_0x00f1;
    L_0x00df:
        r10 = r4.length();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r12 = r0.getSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r1 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r1 != 0) goto L_0x00f1;
    L_0x00eb:
        r1 = com.mqunar.core.ModuleParser.checkEquals(r2, r0, r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r1 != 0) goto L_0x0187;
    L_0x00f1:
        copyFile(r2, r0, r4);	 Catch:{ Throwable -> 0x014d, all -> 0x0148 }
        r1 = r4.getAbsolutePath();	 Catch:{ Throwable -> 0x014d, all -> 0x0148 }
        r15.add(r1);	 Catch:{ Throwable -> 0x014d, all -> 0x0148 }
    L_0x00fb:
        r6.add(r9);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        goto L_0x0020;
    L_0x0100:
        r0 = move-exception;
        r1 = r2;
    L_0x0102:
        r2 = new java.lang.RuntimeException;	 Catch:{ all -> 0x010a }
        r3 = "copy file error on init!!";
        r2.<init>(r3, r0);	 Catch:{ all -> 0x010a }
        throw r2;	 Catch:{ all -> 0x010a }
    L_0x010a:
        r0 = move-exception;
        r2 = r1;
    L_0x010c:
        if (r2 == 0) goto L_0x0111;
    L_0x010e:
        r2.close();	 Catch:{ IOException -> 0x019d }
    L_0x0111:
        throw r0;
    L_0x0112:
        r4 = 0;
        goto L_0x007b;
    L_0x0115:
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r10 = LIB_PATH;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4.<init>(r10, r3);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r10 = r4.exists();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r10 == 0) goto L_0x00a9;
    L_0x0122:
        r10 = r4.length();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r12 = r0.getSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r10 != 0) goto L_0x00a9;
    L_0x012e:
        r1 = 1;
        r10 = c;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r11 = new java.io.File;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r11.<init>(r10, r3);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r10 = r11.exists();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        if (r10 == 0) goto L_0x013f;
    L_0x013c:
        r11.delete();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
    L_0x013f:
        r4 = r4.getAbsolutePath();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r15.add(r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        goto L_0x00a9;
    L_0x0148:
        r0 = move-exception;
        goto L_0x010c;
    L_0x014a:
        r1 = d;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        goto L_0x00d4;
    L_0x014d:
        r1 = move-exception;
        r3 = new java.lang.RuntimeException;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r5.<init>();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r6 = "file name is : ";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4 = r4.getAbsolutePath();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4 = r5.append(r4);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r5 = ",zipEntry.getSize() = ";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r5 = r0.getSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r5 = ",zipEntry.getCompressedSize() = ";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r5 = r0.getCompressedSize();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r0 = r4.append(r5);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r3.<init>(r0, r1);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        throw r3;	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
    L_0x0187:
        r0 = r4.getAbsolutePath();	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        r15.add(r0);	 Catch:{ Throwable -> 0x0100, all -> 0x0148 }
        goto L_0x00fb;
    L_0x0190:
        if (r2 == 0) goto L_0x0195;
    L_0x0192:
        r2.close();	 Catch:{ IOException -> 0x019b }
    L_0x0195:
        r0 = "list";
        r5.put(r0, r6);
        return r5;
    L_0x019b:
        r0 = move-exception;
        goto L_0x0195;
    L_0x019d:
        r1 = move-exception;
        goto L_0x0111;
    L_0x01a0:
        r0 = move-exception;
        r2 = r1;
        goto L_0x010c;
    L_0x01a4:
        r0 = move-exception;
        goto L_0x0102;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfoController.a(android.content.Context, java.util.List):com.alibaba.fastjson.JSONObject");
    }

    private static List<String> c() {
        getMInfoList();
        if (!(ArrayUtils.isEmpty(a) || TextUtils.isEmpty(b))) {
            if (b.compareTo(GlobalEnv.getInstance().getVid()) >= 0) {
                ArrayList arrayList = new ArrayList(a.size());
                for (MInfo mInfo : a) {
                    arrayList.add(mInfo.packageName);
                }
                return arrayList;
            }
        }
        return new ArrayList(SchemeManager.getMappingInAsset().keySet());
    }

    public static String getSystemLibPath() {
        return d;
    }

    /* JADX WARNING: Removed duplicated region for block: B:70:0x02d5  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0284  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x02bb  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0334  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x03d9  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0284  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x02d5  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x02bb  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0334  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x03d9  */
    private static void b(android.content.Context r14) {
        /*
        r3 = 0;
        r0 = java.lang.System.currentTimeMillis();
        r2 = a(r14);
        r4 = "ModuleInfoController-WASTE";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "checkinstall cost ";
        r5 = r5.append(r6);
        r6 = java.lang.System.currentTimeMillis();
        r0 = r6 - r0;
        r0 = r5.append(r0);
        r1 = "ms";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r1 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r4, r0, r1);
        r4 = java.lang.System.currentTimeMillis();
        r0 = new java.io.File;
        r1 = c;
        r0.<init>(r1);
        r1 = r0.listFiles();
        if (r1 == 0) goto L_0x0059;
    L_0x0040:
        r0 = r1.length;
        if (r0 <= 0) goto L_0x0059;
    L_0x0043:
        r6 = r1.length;
        r0 = r3;
    L_0x0045:
        if (r0 >= r6) goto L_0x0059;
    L_0x0047:
        r7 = r1[r0];
        r8 = r7.getAbsolutePath();
        r8 = r2.contains(r8);
        if (r8 != 0) goto L_0x0056;
    L_0x0053:
        r7.delete();
    L_0x0056:
        r0 = r0 + 1;
        goto L_0x0045;
    L_0x0059:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r6 = "qlibFile delete cost ";
        r1 = r1.append(r6);
        r6 = java.lang.System.currentTimeMillis();
        r4 = r6 - r4;
        r1 = r1.append(r4);
        r4 = "ms";
        r1 = r1.append(r4);
        r1 = r1.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r1, r4);
        r4 = java.lang.System.currentTimeMillis();
        r0 = r2.size();
        r0 = r0 + -1;
        r1 = r0;
    L_0x008a:
        if (r1 < 0) goto L_0x00b2;
    L_0x008c:
        r6 = new java.io.File;
        r0 = r2.get(r1);
        r0 = (java.lang.String) r0;
        r6.<init>(r0);
        r0 = r6.getName();
        r6 = "libq_lib_";
        r6 = r0.startsWith(r6);
        if (r6 != 0) goto L_0x00ae;
    L_0x00a3:
        r6 = "libq_atom_";
        r0 = r0.startsWith(r6);
        if (r0 != 0) goto L_0x00ae;
    L_0x00ab:
        r2.remove(r1);
    L_0x00ae:
        r0 = r1 + -1;
        r1 = r0;
        goto L_0x008a;
    L_0x00b2:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r6 = "lidSoList remove cost ";
        r1 = r1.append(r6);
        r6 = java.lang.System.currentTimeMillis();
        r4 = r6 - r4;
        r1 = r1.append(r4);
        r4 = "ms";
        r1 = r1.append(r4);
        r1 = r1.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r1, r4);
        r4 = java.lang.System.currentTimeMillis();
        r6 = new java.util.ArrayList;
        r6.<init>();
        r1 = r2.iterator();
    L_0x00e5:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x013e;
    L_0x00eb:
        r0 = r1.next();
        r0 = (java.lang.String) r0;
        r7 = java.lang.System.currentTimeMillis();
        r2 = com.mqunar.core.ModuleParser.parseModuleDependency(r0);
        r9 = "ModuleInfoController-WASTE";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r10 = r10.append(r0);
        r11 = " parseModuleDependency ";
        r10 = r10.append(r11);
        r11 = java.lang.System.currentTimeMillis();
        r7 = r11 - r7;
        r7 = r10.append(r7);
        r7 = r7.toString();
        r8 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r9, r7, r8);
        if (r2 == 0) goto L_0x0125;
    L_0x011f:
        r2.isDataFile = r3;
        r6.add(r2);
        goto L_0x00e5;
    L_0x0125:
        r1 = new java.lang.RuntimeException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "解析lib失败,filename is : ";
        r2 = r2.append(r3);
        r0 = r2.append(r0);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
    L_0x013e:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "total ";
        r1 = r1.append(r2);
        r7 = java.lang.System.currentTimeMillis();
        r4 = r7 - r4;
        r1 = r1.append(r4);
        r1 = r1.toString();
        r2 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r1, r2);
        r7 = java.lang.System.currentTimeMillis();
        r2 = new java.util.HashSet;
        r2.<init>();
        r5 = new java.util.ArrayList;
        r5.<init>();
        r0 = new java.io.File;	 Catch:{ Throwable -> 0x02cb }
        r1 = e;	 Catch:{ Throwable -> 0x02cb }
        r0.<init>(r1);	 Catch:{ Throwable -> 0x02cb }
        r9 = r0.listFiles();	 Catch:{ Throwable -> 0x02cb }
        if (r9 == 0) goto L_0x01d8;
    L_0x0179:
        r4 = r3;
    L_0x017a:
        r0 = r9.length;	 Catch:{ Throwable -> 0x02cb }
        if (r4 >= r0) goto L_0x01d8;
    L_0x017d:
        r0 = r9[r4];	 Catch:{ Throwable -> 0x02cb }
        r0 = r0.isFile();	 Catch:{ Throwable -> 0x02cb }
        if (r0 == 0) goto L_0x01c7;
    L_0x0185:
        r10 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x02cb }
        r1 = 0;
        r0 = r9[r4];	 Catch:{ Throwable -> 0x01cb }
        r0 = r0.getAbsolutePath();	 Catch:{ Throwable -> 0x01cb }
        r0 = com.mqunar.core.ModuleParser.parseModuleDependency(r0);	 Catch:{ Throwable -> 0x01cb }
    L_0x0194:
        if (r0 == 0) goto L_0x019c;
    L_0x0196:
        r1 = 1;
        r0.isDataFile = r1;	 Catch:{ Throwable -> 0x02cb }
        r5.add(r0);	 Catch:{ Throwable -> 0x02cb }
    L_0x019c:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x02cb }
        r1.<init>();	 Catch:{ Throwable -> 0x02cb }
        r12 = r9[r4];	 Catch:{ Throwable -> 0x02cb }
        r12 = r12.getName();	 Catch:{ Throwable -> 0x02cb }
        r1 = r1.append(r12);	 Catch:{ Throwable -> 0x02cb }
        r12 = " parseModuleDependency ";
        r1 = r1.append(r12);	 Catch:{ Throwable -> 0x02cb }
        r12 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x02cb }
        r10 = r12 - r10;
        r1 = r1.append(r10);	 Catch:{ Throwable -> 0x02cb }
        r1 = r1.toString();	 Catch:{ Throwable -> 0x02cb }
        r10 = 0;
        r10 = new java.lang.Object[r10];	 Catch:{ Throwable -> 0x02cb }
        com.mqunar.tools.log.QLog.i(r0, r1, r10);	 Catch:{ Throwable -> 0x02cb }
    L_0x01c7:
        r0 = r4 + 1;
        r4 = r0;
        goto L_0x017a;
    L_0x01cb:
        r0 = move-exception;
        r12 = "";
        com.mqunar.tools.log.QLog.crash(r0, r12);	 Catch:{ Throwable -> 0x02cb }
        r0 = r9[r4];	 Catch:{ Throwable -> 0x02cb }
        r0.delete();	 Catch:{ Throwable -> 0x02cb }
        r0 = r1;
        goto L_0x0194;
    L_0x01d8:
        r0 = "scanData-WASTE";
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x02cb }
        r1.<init>();	 Catch:{ Throwable -> 0x02cb }
        r4 = " ";
        r1 = r1.append(r4);	 Catch:{ Throwable -> 0x02cb }
        r9 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x02cb }
        r7 = r9 - r7;
        r1 = r1.append(r7);	 Catch:{ Throwable -> 0x02cb }
        r1 = r1.toString();	 Catch:{ Throwable -> 0x02cb }
        r4 = 0;
        r4 = new java.lang.Object[r4];	 Catch:{ Throwable -> 0x02cb }
        com.mqunar.tools.log.QLog.i(r0, r1, r4);	 Catch:{ Throwable -> 0x02cb }
        r7 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x02cb }
        r4 = c();	 Catch:{ Throwable -> 0x02cb }
        r1 = r3;
    L_0x0202:
        r0 = r5.size();	 Catch:{ Throwable -> 0x02cb }
        if (r1 >= r0) goto L_0x0223;
    L_0x0208:
        r0 = r5.get(r1);	 Catch:{ Throwable -> 0x02cb }
        r0 = (com.mqunar.module.ModuleInfo) r0;	 Catch:{ Throwable -> 0x02cb }
        r9 = r0.dependency;	 Catch:{ Throwable -> 0x02cb }
        r9 = r9.packageName;	 Catch:{ Throwable -> 0x02cb }
        r9 = r4.contains(r9);	 Catch:{ Throwable -> 0x02cb }
        if (r9 != 0) goto L_0x0442;
    L_0x0218:
        deleteSo(r14, r0);	 Catch:{ Throwable -> 0x02cb }
        r5.remove(r1);	 Catch:{ Throwable -> 0x02cb }
        r0 = r1 + -1;
    L_0x0220:
        r1 = r0 + 1;
        goto L_0x0202;
    L_0x0223:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x02cb }
        r1.<init>();	 Catch:{ Throwable -> 0x02cb }
        r4 = "处理下线 cost ";
        r1 = r1.append(r4);	 Catch:{ Throwable -> 0x02cb }
        r9 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x02cb }
        r7 = r9 - r7;
        r1 = r1.append(r7);	 Catch:{ Throwable -> 0x02cb }
        r4 = "ms";
        r1 = r1.append(r4);	 Catch:{ Throwable -> 0x02cb }
        r1 = r1.toString();	 Catch:{ Throwable -> 0x02cb }
        r4 = 0;
        r4 = new java.lang.Object[r4];	 Catch:{ Throwable -> 0x02cb }
        com.mqunar.tools.log.QLog.i(r0, r1, r4);	 Catch:{ Throwable -> 0x02cb }
        r7 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x02cb }
        r0 = a(r14, r6, r5);	 Catch:{ Throwable -> 0x02cb }
        r1 = "ModuleInfoController-WASTE";
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x043f }
        r2.<init>();	 Catch:{ Throwable -> 0x043f }
        r4 = "mergeDependency cost ";
        r2 = r2.append(r4);	 Catch:{ Throwable -> 0x043f }
        r9 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x043f }
        r7 = r9 - r7;
        r2 = r2.append(r7);	 Catch:{ Throwable -> 0x043f }
        r4 = "ms";
        r2 = r2.append(r4);	 Catch:{ Throwable -> 0x043f }
        r2 = r2.toString();	 Catch:{ Throwable -> 0x043f }
        r4 = 0;
        r4 = new java.lang.Object[r4];	 Catch:{ Throwable -> 0x043f }
        com.mqunar.tools.log.QLog.i(r1, r2, r4);	 Catch:{ Throwable -> 0x043f }
        r1 = r0;
    L_0x027a:
        r7 = java.lang.System.currentTimeMillis();
        r0 = r1.isEmpty();
        if (r0 == 0) goto L_0x02d5;
    L_0x0284:
        r1.addAll(r6);
    L_0x0287:
        r0 = "ModuleInfoController-WASTE";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "libApkDependencyList dependency cost ";
        r2 = r2.append(r4);
        r9 = java.lang.System.currentTimeMillis();
        r6 = r9 - r7;
        r2 = r2.append(r6);
        r4 = "ms";
        r2 = r2.append(r4);
        r2 = r2.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r2, r4);
        r6 = java.lang.System.currentTimeMillis();
        r2 = r5.iterator();
    L_0x02b5:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x02ef;
    L_0x02bb:
        r0 = r2.next();
        r0 = (com.mqunar.module.ModuleInfo) r0;
        r4 = r1.contains(r0);
        if (r4 != 0) goto L_0x02b5;
    L_0x02c7:
        r0.freeZipFile();
        goto L_0x02b5;
    L_0x02cb:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x02ce:
        r2 = "解析data目录失败!";
        com.mqunar.tools.log.QLog.crash(r1, r2);
        r1 = r0;
        goto L_0x027a;
    L_0x02d5:
        r2 = r6.iterator();
    L_0x02d9:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x0287;
    L_0x02df:
        r0 = r2.next();
        r0 = (com.mqunar.module.ModuleInfo) r0;
        r4 = r1.contains(r0);
        if (r4 != 0) goto L_0x02d9;
    L_0x02eb:
        r0.freeZipFile();
        goto L_0x02d9;
    L_0x02ef:
        r0 = "ModuleInfoController-WASTE";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "dataApkDependencyList dependency cost ";
        r2 = r2.append(r4);
        r4 = java.lang.System.currentTimeMillis();
        r4 = r4 - r6;
        r2 = r2.append(r4);
        r4 = "ms";
        r2 = r2.append(r4);
        r2 = r2.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r2, r4);
        r4 = java.lang.System.currentTimeMillis();
        r2 = new java.util.ArrayList;
        r0 = r1.size();
        r2.<init>(r0);
        r0 = com.mqunar.core.QunarApkLoader.getDexCachePath(r14);
        r6 = new java.io.File;
        r6.<init>(r0);
        r7 = r1.iterator();
    L_0x032e:
        r0 = r7.hasNext();
        if (r0 == 0) goto L_0x03a2;
    L_0x0334:
        r0 = r7.next();
        r0 = (com.mqunar.module.ModuleInfo) r0;
        b(r0);
        r1 = r0.dependency;
        r1 = r1.atomDependenciesList;
        r1 = com.mqunar.tools.ArrayUtils.isEmpty(r1);
        if (r1 != 0) goto L_0x036f;
    L_0x0347:
        r1 = r0.dependency;
        r1 = r1.atomDependenciesList;
        r8 = r1.iterator();
    L_0x034f:
        r1 = r8.hasNext();
        if (r1 == 0) goto L_0x036f;
    L_0x0355:
        r1 = r8.next();
        r1 = (com.mqunar.core.dependency.Atom) r1;
        r1 = r1.packageName;
        r9 = "com.mqunar.atom.order";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x034f;
    L_0x0365:
        r1 = "Atom";
        r9 = r0.fileName;
        r10 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r1, r9, r10);
        goto L_0x034f;
    L_0x036f:
        r1 = modules;
        r1.put(r0);
        r1 = new java.io.File;
        r8 = r0.fileName;
        r1.<init>(r8);
        r1 = com.mqunar.core.DexPathList.optimizedPathFor(r1, r6);
        r2.add(r1);
        r1 = r0.dexList;
        if (r1 == 0) goto L_0x032e;
    L_0x0386:
        r0 = r0.dexList;
        r1 = r0.iterator();
    L_0x038c:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x032e;
    L_0x0392:
        r0 = r1.next();
        r0 = (com.mqunar.module.ModuleInfo.DexInfo) r0;
        r0 = r0.dexOutPath;
        r0 = com.mqunar.core.DexPathList.optimizedPathFor(r0, r6);
        r2.add(r0);
        goto L_0x038c;
    L_0x03a2:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r7 = "loadedDexPath cost ";
        r1 = r1.append(r7);
        r7 = java.lang.System.currentTimeMillis();
        r4 = r7 - r4;
        r1 = r1.append(r4);
        r4 = "ms";
        r1 = r1.append(r4);
        r1 = r1.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r1, r4);
        r4 = java.lang.System.currentTimeMillis();
        r1 = r6.listFiles();
        if (r1 == 0) goto L_0x03eb;
    L_0x03d2:
        r0 = r1.length;
        if (r0 <= 0) goto L_0x03eb;
    L_0x03d5:
        r6 = r1.length;
        r0 = r3;
    L_0x03d7:
        if (r0 >= r6) goto L_0x03eb;
    L_0x03d9:
        r7 = r1[r0];
        r8 = r7.getAbsolutePath();
        r8 = r2.contains(r8);
        if (r8 != 0) goto L_0x03e8;
    L_0x03e5:
        r7.delete();
    L_0x03e8:
        r0 = r0 + 1;
        goto L_0x03d7;
    L_0x03eb:
        r0 = "ModuleInfoController-WASTE";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "dexDir cost delete ";
        r1 = r1.append(r2);
        r6 = java.lang.System.currentTimeMillis();
        r4 = r6 - r4;
        r1 = r1.append(r4);
        r2 = "ms";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r2 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r0, r1, r2);
        r0 = java.lang.System.currentTimeMillis();
        com.mqunar.core.QunarApkLoader.onRegisterOk();
        r2 = "ModuleInfoController-WASTE";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "onRegisterOk cost delete ";
        r4 = r4.append(r5);
        r5 = java.lang.System.currentTimeMillis();
        r0 = r5 - r0;
        r0 = r4.append(r0);
        r1 = "ms";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r1 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r2, r0, r1);
        return;
    L_0x043f:
        r1 = move-exception;
        goto L_0x02ce;
    L_0x0442:
        r0 = r1;
        goto L_0x0220;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfoController.b(android.content.Context):void");
    }

    public static void loadApk(Context context) {
        ModuleInfo moduleInfo;
        int i = 0;
        for (Entry value : modules.mapCopy().entrySet()) {
            moduleInfo = (ModuleInfo) value.getValue();
            if (moduleInfo.type == (byte) 1) {
                try {
                    if (!("com.mqunar.ochatsdk".equals(moduleInfo.dependency.packageName) || "com.mqunar.imsdk".equals(moduleInfo.dependency.packageName))) {
                        long currentTimeMillis = System.currentTimeMillis();
                        boolean add = QunarApkLoader.add(moduleInfo);
                        QLog.i("ModuleInfoController-WASTE", "PreLoad Library LOAD so filename(%s) name(%s) time(%d)", moduleInfo.fileName, moduleInfo.dependency.packageName, Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                        if (!add) {
                            throw new Exception("signature failed:" + moduleInfo.fileName + ",len:" + new File(moduleInfo.fileName).length() + ",md5:" + ModuleParser.getMd5(moduleInfo.fileName));
                        }
                    }
                } catch (Throwable th) {
                    Exception exception = new Exception("Fatal error:" + moduleInfo.fileName + ",len:" + new File(moduleInfo.fileName).length() + ",md5:" + ModuleParser.getMd5(moduleInfo.fileName), th);
                }
            }
        }
        String metaData = ModuleParser.getMetaData(context, "PRELOAD_MODULE");
        if (TextUtils.isEmpty(metaData)) {
            preLoad = new String[0];
        } else {
            preLoad = metaData.split(",");
        }
        String[] strArr = preLoad;
        int length = strArr.length;
        while (i < length) {
            Object obj = strArr[i];
            moduleInfo = (ModuleInfo) modules.get(obj);
            if (moduleInfo == null) {
                throw new RuntimeException("Fatal error,can not found:" + obj);
            }
            try {
                long currentTimeMillis2 = System.currentTimeMillis();
                boolean add2 = QunarApkLoader.add(moduleInfo);
                QLog.i("ModuleInfoController-WASTE", "PreLoad LOAD so filename(%s) name(%s) time(%d)", moduleInfo.fileName, moduleInfo.dependency.packageName, Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                if (add2) {
                    i++;
                } else {
                    throw new RuntimeException("signature failed:" + moduleInfo.fileName + ",len:" + new File(moduleInfo.fileName).length() + ",md5:" + ModuleParser.getMd5(moduleInfo.fileName));
                }
            } catch (Throwable th2) {
                RuntimeException runtimeException = new RuntimeException("Fatal error:" + moduleInfo.fileName + ",len:" + new File(moduleInfo.fileName).length() + ",md5:" + ModuleParser.getMd5(moduleInfo.fileName), th2);
            }
        }
    }

    public static ModuleInfo matchModule(String str) {
        ModuleInfo moduleInfo = null;
        Map mapCopy = modules.mapCopy();
        int i = -1;
        for (String str2 : mapCopy.keySet()) {
            ModuleInfo moduleInfo2;
            int i2;
            if (str.startsWith(str2)) {
                int length = str2.length();
                if (length > i) {
                    int i3 = length;
                    moduleInfo2 = (ModuleInfo) mapCopy.get(str2);
                    i2 = i3;
                    i = i2;
                    moduleInfo = moduleInfo2;
                }
            }
            i2 = i;
            moduleInfo2 = moduleInfo;
            i = i2;
            moduleInfo = moduleInfo2;
        }
        return moduleInfo;
    }

    public static void clearLocalModules(Context context) {
        if (e == null) {
            e = Storage.getAppFileDir(context) + "/data/";
        }
        File file = new File(e);
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (int i = 0; i < listFiles.length; i++) {
                    if (listFiles[i].isFile()) {
                        listFiles[i].delete();
                    }
                }
            }
        }
    }

    public static void checkAndInstallModuleDependency(ModuleInfo moduleInfo) {
        if (moduleInfo.dependency != null) {
            a(new ArrayList(), moduleInfo);
        }
        QunarApkLoader.add(moduleInfo);
    }

    private static void a(List<ModuleInfo> list, ModuleInfo moduleInfo) {
        Dependency dependency = moduleInfo.dependency;
        list.add(moduleInfo);
        HashSet<ModuleInfo> hashSet = new HashSet();
        if (!(dependency.atomDependenciesList == null || dependency.atomDependenciesList.isEmpty())) {
            for (Atom atom : dependency.atomDependenciesList) {
                ModuleInfo moduleInfo2 = (ModuleInfo) modules.get(atom.packageName);
                if (!QunarApkLoader.checkModuleIsLoaded((ModuleInfo) modules.get(atom.packageName))) {
                    hashSet.add(moduleInfo2);
                }
            }
        }
        for (ModuleInfo moduleInfo3 : hashSet) {
            if (!(moduleInfo3.dependency == null || list.contains(moduleInfo3))) {
                a((List) list, moduleInfo3);
            }
        }
        for (ModuleInfo moduleInfo32 : hashSet) {
            QunarApkLoader.add(moduleInfo32);
        }
        list.remove(moduleInfo);
    }
}
