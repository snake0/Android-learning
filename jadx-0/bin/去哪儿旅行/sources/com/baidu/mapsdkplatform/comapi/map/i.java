package com.baidu.mapsdkplatform.comapi.map;

import android.content.Context;
import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.NetworkUtil;
import com.baidu.mapapi.VersionInfo;
import com.baidu.mapapi.common.BaiduMapSDKException;
import com.baidu.mapsdkplatform.comapi.NativeLoader;
import com.baidu.mapsdkplatform.comapi.commonutils.SysUpdateUtil;
import com.baidu.mapsdkplatform.comapi.util.SysUpdateObservable;
import com.baidu.mapsdkplatform.comjni.engine.AppEngine;
import com.baidu.mapsdkvi.VMsg;

public class i {
    private static int a;
    private static Context b = BMapManager.getContext();

    static {
        if (VersionInfo.getApiVersion().equals(VersionInfo.getApiVersion())) {
            NativeLoader.getInstance().loadLibrary(VersionInfo.getKitName());
            VMsg.InitClass(VMsg.getInstance());
            AppEngine.InitClass();
            a(BMapManager.getContext());
            SysUpdateObservable.getInstance().addObserver(new SysUpdateUtil());
            SysUpdateObservable.getInstance().init();
            return;
        }
        throw new BaiduMapSDKException("the version of map is not match with base");
    }

    public static void a() {
        if (a == 0) {
            if (b == null) {
                throw new IllegalStateException("you have not supplyed the global app context info from SDKInitializer.initialize(Context) function.");
            }
            VMsg.init();
            AppEngine.InitEngine(b);
            AppEngine.StartSocketProc();
            NetworkUtil.updateNetworkProxy(b);
        }
        a++;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0139 A:{Catch:{ Exception -> 0x01ae }} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x019e A:{LOOP_END, LOOP:0: B:29:0x019b->B:31:0x019e} */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x01b6 A:{LOOP_START, LOOP:1: B:37:0x01b6->B:39:0x01b9, PHI: r1 } */
    private static void a(android.content.Context r13) {
        /*
        r8 = 3;
        r6 = 2;
        r7 = 6;
        r0 = 1;
        r1 = 0;
        if (r13 != 0) goto L_0x0008;
    L_0x0007:
        return;
    L_0x0008:
        r2 = com.baidu.mapapi.common.SysOSUtil.getModuleFileName();
        r3 = new java.io.File;	 Catch:{ Exception -> 0x01a8 }
        r3.<init>(r2);	 Catch:{ Exception -> 0x01a8 }
        r2 = r3.exists();	 Catch:{ Exception -> 0x01a8 }
        if (r2 != 0) goto L_0x001a;
    L_0x0017:
        r3.mkdirs();	 Catch:{ Exception -> 0x01a8 }
    L_0x001a:
        r13.getAssets();
        r2 = 15;
        r3 = new java.lang.String[r2];
        r2 = "cfg/a/mode_1/map.sdkrs";
        r3[r1] = r2;
        r2 = "cfg/a/mode_1/reduct.sdkrs";
        r3[r0] = r2;
        r2 = "cfg/a/mode_1/traffic.sdkrs";
        r3[r6] = r2;
        r2 = "cfg/a/mode_1/map.sty";
        r3[r8] = r2;
        r2 = 4;
        r4 = "cfg/a/mode_1/reduct.sty";
        r3[r2] = r4;
        r2 = 5;
        r4 = "cfg/a/mode_1/traffic.sty";
        r3[r2] = r4;
        r2 = "cfg/idrres/ResPackIndoorMap.sdkrs";
        r3[r7] = r2;
        r2 = 7;
        r4 = "cfg/idrres/DVIndoor.cfg";
        r3[r2] = r4;
        r2 = 8;
        r4 = "cfg/idrres/baseindoormap.sty";
        r3[r2] = r4;
        r2 = 9;
        r4 = "cfg/a/DVDirectory.cfg";
        r3[r2] = r4;
        r2 = 10;
        r4 = "cfg/a/DVHotcity.cfg";
        r3[r2] = r4;
        r2 = 11;
        r4 = "cfg/a/DVHotMap.cfg";
        r3[r2] = r4;
        r2 = 12;
        r4 = "cfg/a/DVSDirectory.cfg";
        r3[r2] = r4;
        r2 = 13;
        r4 = "cfg/a/DVVersion.cfg";
        r3[r2] = r4;
        r2 = 14;
        r4 = "cfg/a/CustomIndex";
        r3[r2] = r4;
        r4 = new java.lang.String[r0];
        r2 = "cfg/a/CustomIndex";
        r4[r1] = r2;
        r2 = 15;
        r5 = new java.lang.String[r2];
        r2 = "cfg/a/mode_1/map.rs";
        r5[r1] = r2;
        r2 = "cfg/a/mode_1/reduct.rs";
        r5[r0] = r2;
        r2 = "cfg/a/mode_1/traffic.rs";
        r5[r6] = r2;
        r2 = "cfg/a/mode_1/map.sty";
        r5[r8] = r2;
        r2 = 4;
        r6 = "cfg/a/mode_1/reduct.sty";
        r5[r2] = r6;
        r2 = 5;
        r6 = "cfg/a/mode_1/traffic.sty";
        r5[r2] = r6;
        r2 = "cfg/idrres/ResPackIndoorMap.sdkrs";
        r5[r7] = r2;
        r2 = 7;
        r6 = "cfg/idrres/DVIndoor.cfg";
        r5[r2] = r6;
        r2 = 8;
        r6 = "cfg/idrres/baseindoormap.sty";
        r5[r2] = r6;
        r2 = 9;
        r6 = "cfg/a/DVDirectory.cfg";
        r5[r2] = r6;
        r2 = 10;
        r6 = "cfg/a/DVHotcity.cfg";
        r5[r2] = r6;
        r2 = 11;
        r6 = "cfg/a/DVHotMap.cfg";
        r5[r2] = r6;
        r2 = 12;
        r6 = "cfg/a/DVSDirectory.cfg";
        r5[r2] = r6;
        r2 = 13;
        r6 = "cfg/a/DVVersion.cfg";
        r5[r2] = r6;
        r2 = 14;
        r6 = "cfg/a/CustomIndex";
        r5[r2] = r6;
        r6 = new java.lang.String[r0];
        r2 = "cfg/a/CustomIndex";
        r6[r1] = r2;
        r7 = new java.io.File;	 Catch:{ Exception -> 0x01ae }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01ae }
        r2.<init>();	 Catch:{ Exception -> 0x01ae }
        r8 = com.baidu.mapapi.common.SysOSUtil.getModuleFileName();	 Catch:{ Exception -> 0x01ae }
        r2 = r2.append(r8);	 Catch:{ Exception -> 0x01ae }
        r8 = "/ver.dat";
        r2 = r2.append(r8);	 Catch:{ Exception -> 0x01ae }
        r2 = r2.toString();	 Catch:{ Exception -> 0x01ae }
        r7.<init>(r2);	 Catch:{ Exception -> 0x01ae }
        r2 = 6;
        r8 = new byte[r2];	 Catch:{ Exception -> 0x01ae }
        r8 = {4, 0, 3, 0, 0, 0};	 Catch:{ Exception -> 0x01ae }
        r2 = r7.exists();	 Catch:{ Exception -> 0x01ae }
        if (r2 == 0) goto L_0x01c3;
    L_0x00f3:
        r2 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x01ae }
        r2.<init>(r7);	 Catch:{ Exception -> 0x01ae }
        r9 = r2.available();	 Catch:{ Exception -> 0x01ae }
        r9 = new byte[r9];	 Catch:{ Exception -> 0x01ae }
        r2.read(r9);	 Catch:{ Exception -> 0x01ae }
        r2.close();	 Catch:{ Exception -> 0x01ae }
        r2 = java.util.Arrays.equals(r9, r8);	 Catch:{ Exception -> 0x01ae }
        if (r2 == 0) goto L_0x01c3;
    L_0x010a:
        r2 = new java.io.File;	 Catch:{ Exception -> 0x01ae }
        r9 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01ae }
        r9.<init>();	 Catch:{ Exception -> 0x01ae }
        r10 = com.baidu.mapapi.common.SysOSUtil.getModuleFileName();	 Catch:{ Exception -> 0x01ae }
        r9 = r9.append(r10);	 Catch:{ Exception -> 0x01ae }
        r10 = "/cfg/a/mode_1/map.sty";
        r9 = r9.append(r10);	 Catch:{ Exception -> 0x01ae }
        r9 = r9.toString();	 Catch:{ Exception -> 0x01ae }
        r2.<init>(r9);	 Catch:{ Exception -> 0x01ae }
        r9 = r2.exists();	 Catch:{ Exception -> 0x01ae }
        if (r9 == 0) goto L_0x01c3;
    L_0x012c:
        r9 = r2.length();	 Catch:{ Exception -> 0x01ae }
        r11 = 0;
        r2 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
        if (r2 <= 0) goto L_0x01c3;
    L_0x0136:
        r2 = r1;
    L_0x0137:
        if (r2 == 0) goto L_0x019a;
    L_0x0139:
        r0 = r7.exists();	 Catch:{ Exception -> 0x01ae }
        if (r0 == 0) goto L_0x0142;
    L_0x013f:
        r7.delete();	 Catch:{ Exception -> 0x01ae }
    L_0x0142:
        r7.createNewFile();	 Catch:{ Exception -> 0x01ae }
        r0 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x01ae }
        r0.<init>(r7);	 Catch:{ Exception -> 0x01ae }
        r0.write(r8);	 Catch:{ Exception -> 0x01ae }
        r0.close();	 Catch:{ Exception -> 0x01ae }
        r0 = new java.io.File;	 Catch:{ Exception -> 0x01ae }
        r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01ae }
        r7.<init>();	 Catch:{ Exception -> 0x01ae }
        r8 = com.baidu.mapapi.common.SysOSUtil.getModuleFileName();	 Catch:{ Exception -> 0x01ae }
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x01ae }
        r8 = "/cfg/a/mode_1";
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x01ae }
        r7 = r7.toString();	 Catch:{ Exception -> 0x01ae }
        r0.<init>(r7);	 Catch:{ Exception -> 0x01ae }
        r7 = r0.exists();	 Catch:{ Exception -> 0x01ae }
        if (r7 != 0) goto L_0x0175;
    L_0x0172:
        r0.mkdirs();	 Catch:{ Exception -> 0x01ae }
    L_0x0175:
        r0 = new java.io.File;	 Catch:{ Exception -> 0x01ae }
        r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01ae }
        r7.<init>();	 Catch:{ Exception -> 0x01ae }
        r8 = com.baidu.mapapi.common.SysOSUtil.getModuleFileName();	 Catch:{ Exception -> 0x01ae }
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x01ae }
        r8 = "/cfg/idrres";
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x01ae }
        r7 = r7.toString();	 Catch:{ Exception -> 0x01ae }
        r0.<init>(r7);	 Catch:{ Exception -> 0x01ae }
        r7 = r0.exists();	 Catch:{ Exception -> 0x01ae }
        if (r7 != 0) goto L_0x019a;
    L_0x0197:
        r0.mkdirs();	 Catch:{ Exception -> 0x01ae }
    L_0x019a:
        r0 = r1;
    L_0x019b:
        r7 = r6.length;
        if (r0 >= r7) goto L_0x01b4;
    L_0x019e:
        r7 = r4[r0];
        r8 = r6[r0];
        com.baidu.mapsdkplatform.comapi.commonutils.a.a(r7, r8, r13);
        r0 = r0 + 1;
        goto L_0x019b;
    L_0x01a8:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0007;
    L_0x01ae:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0007;
    L_0x01b4:
        if (r2 == 0) goto L_0x0007;
    L_0x01b6:
        r0 = r5.length;
        if (r1 >= r0) goto L_0x0007;
    L_0x01b9:
        r0 = r3[r1];
        r2 = r5[r1];
        com.baidu.mapsdkplatform.comapi.commonutils.a.a(r0, r2, r13);
        r1 = r1 + 1;
        goto L_0x01b6;
    L_0x01c3:
        r2 = r0;
        goto L_0x0137;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.map.i.a(android.content.Context):void");
    }

    public static void a(boolean z) {
        e.l(z);
    }

    public static void b() {
        a--;
        if (a == 0) {
            AppEngine.UnInitEngine();
            VMsg.destroy();
        }
    }
}
