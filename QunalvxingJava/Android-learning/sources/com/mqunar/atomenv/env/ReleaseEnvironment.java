package com.mqunar.atomenv.env;

import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.mqunar.BuildConfig;
import com.mqunar.atomenv.AndroidUtils;
import com.mqunar.atomenv.AtomEnvConstants;
import com.mqunar.atomenv.IEnvironment;
import com.mqunar.atomenv.OwnerConstant;
import com.mqunar.atomenv.jni.CidInfo;
import com.mqunar.atomenv.model.Config;
import com.mqunar.atomenv.model.ServerTime;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.json.JsonUtils;
import com.mqunar.storage.Storage;
import com.mqunar.tools.log.QLog;
import qunar.lego.utils.Goblin;

public class ReleaseEnvironment implements IEnvironment {
    public static final String FILE_NAME = ".unique";
    public static final String FILE_NAME_SID = ".sunique";
    private Storage a = Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_SW);
    private Storage b = Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_AD);
    private Storage c = Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_GLOBAL);
    protected String gid = "";
    protected String sid = "";
    protected Storage storage_sys = Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_SYS);

    public String getUid() {
        String string = this.storage_sys.getString(AtomEnvConstants.SYS_UID, "");
        if (TextUtils.isEmpty(string) || "000000000000000".equals(string) || "0".equals(string) || "1111".equals(string) || "baidu".equals(string) || "00000000".equals(string)) {
            string = AndroidUtils.getIMEI();
            if (TextUtils.isEmpty(string)) {
                string = "";
            }
            if (ContextCompat.checkSelfPermission(QApplication.getContext(), "android.permission.READ_PHONE_STATE") != -1) {
                QLog.i("has READ_PHONE_STATE permission, cache uid", new Object[0]);
                this.storage_sys.putString(AtomEnvConstants.SYS_UID, string);
            }
        }
        return string;
    }

    public String getPid() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_PID, "_10010");
    }

    public String getVid() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_VID, "");
    }

    public String getCidForXiaomi() {
        boolean booleanValue;
        try {
            booleanValue = ((Boolean) Class.forName("miui.os.MiuiInit").getMethod("isPreinstalledPackage", new Class[]{String.class}).invoke(null, new Object[]{BuildConfig.APPLICATION_ID})).booleanValue();
        } catch (Exception e) {
            booleanValue = false;
        }
        if (booleanValue) {
            return "C3065";
        }
        return "";
    }

    public String getCid() {
        if (BuildConfig.APPLICATION_ID.equals(QApplication.getContext().getPackageName())) {
            String stringFromJNI;
            try {
                stringFromJNI = new CidInfo().stringFromJNI();
                if (!TextUtils.isEmpty(stringFromJNI)) {
                    return new String(Goblin.da(stringFromJNI.getBytes()));
                }
            } catch (Throwable th) {
            }
            try {
                stringFromJNI = getCidFromFile();
                if (!TextUtils.isEmpty(stringFromJNI)) {
                    return new String(Goblin.da(stringFromJNI.getBytes()));
                }
            } catch (Throwable th2) {
            }
        }
        return this.storage_sys.getString(AtomEnvConstants.SYS_CID, "");
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c9 A:{SYNTHETIC, Splitter:B:50:0x00c9} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00d2 A:{SYNTHETIC, Splitter:B:55:0x00d2} */
    public java.lang.String getCidFromFile() {
        /*
        r6 = this;
        r0 = com.mqunar.core.basectx.application.QApplication.getContext();
        r1 = "ro.cid.path.qunar";
        r0 = com.mqunar.atomenv.SystemPropertyProxy.get(r0, r1);
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 == 0) goto L_0x0012;
    L_0x0010:
        r0 = "/system/etc/";
    L_0x0012:
        r1 = new java.io.File;
        r2 = "QunarCid.conf";
        r1.<init>(r0, r2);
        r2 = r1.exists();
        if (r2 == 0) goto L_0x0025;
    L_0x001f:
        r2 = r1.isFile();
        if (r2 != 0) goto L_0x00e9;
    L_0x0025:
        r1 = new java.io.File;
        r2 = "Cinfo.conf";
        r1.<init>(r0, r2);
        r0 = r1.exists();
        if (r0 == 0) goto L_0x0038;
    L_0x0032:
        r0 = r1.isFile();
        if (r0 != 0) goto L_0x00e6;
    L_0x0038:
        r0 = new java.io.File;
        r1 = "/data/etc/appchannel/";
        r2 = "Cinfo.conf";
        r0.<init>(r1, r2);
    L_0x0041:
        r1 = r0.exists();
        if (r1 == 0) goto L_0x004d;
    L_0x0047:
        r1 = r0.isFile();
        if (r1 != 0) goto L_0x0056;
    L_0x004d:
        r0 = new java.io.File;
        r1 = "/system/etc/appchannel/";
        r2 = "Cinfo.conf";
        r0.<init>(r1, r2);
    L_0x0056:
        r1 = r0.exists();
        if (r1 == 0) goto L_0x0062;
    L_0x005c:
        r1 = r0.isFile();
        if (r1 != 0) goto L_0x0099;
    L_0x0062:
        r0 = com.mqunar.core.basectx.application.QApplication.getContext();
        r1 = "ro.preinstall.path";
        r1 = com.mqunar.atomenv.SystemPropertyProxy.get(r0, r1);
        r0 = new java.io.File;
        r2 = "QunarCid.conf";
        r0.<init>(r1, r2);
        r2 = r0.exists();
        if (r2 == 0) goto L_0x007f;
    L_0x0079:
        r2 = r0.isFile();
        if (r2 != 0) goto L_0x0086;
    L_0x007f:
        r0 = new java.io.File;
        r2 = "Cinfo.conf";
        r0.<init>(r1, r2);
    L_0x0086:
        r2 = r0.exists();
        if (r2 == 0) goto L_0x0092;
    L_0x008c:
        r2 = r0.isFile();
        if (r2 != 0) goto L_0x0099;
    L_0x0092:
        r0 = new java.io.File;
        r2 = "QunarCid";
        r0.<init>(r1, r2);
    L_0x0099:
        r1 = "";
        r2 = r0.exists();
        if (r2 == 0) goto L_0x00e4;
    L_0x00a1:
        r2 = r0.isFile();
        if (r2 == 0) goto L_0x00e4;
    L_0x00a7:
        r3 = 0;
        r2 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x00bf, all -> 0x00cf }
        r4 = new java.io.FileReader;	 Catch:{ Exception -> 0x00bf, all -> 0x00cf }
        r4.<init>(r0);	 Catch:{ Exception -> 0x00bf, all -> 0x00cf }
        r2.<init>(r4);	 Catch:{ Exception -> 0x00bf, all -> 0x00cf }
        r0 = r2.readLine();	 Catch:{ Exception -> 0x00dd }
        r2.close();	 Catch:{ Exception -> 0x00e2 }
        if (r2 == 0) goto L_0x00be;
    L_0x00bb:
        r2.close();	 Catch:{ Exception -> 0x00d6 }
    L_0x00be:
        return r0;
    L_0x00bf:
        r0 = move-exception;
        r2 = r3;
        r5 = r0;
        r0 = r1;
        r1 = r5;
    L_0x00c4:
        r1.printStackTrace();	 Catch:{ all -> 0x00da }
        if (r2 == 0) goto L_0x00be;
    L_0x00c9:
        r2.close();	 Catch:{ Exception -> 0x00cd }
        goto L_0x00be;
    L_0x00cd:
        r1 = move-exception;
        goto L_0x00be;
    L_0x00cf:
        r0 = move-exception;
    L_0x00d0:
        if (r3 == 0) goto L_0x00d5;
    L_0x00d2:
        r3.close();	 Catch:{ Exception -> 0x00d8 }
    L_0x00d5:
        throw r0;
    L_0x00d6:
        r1 = move-exception;
        goto L_0x00be;
    L_0x00d8:
        r1 = move-exception;
        goto L_0x00d5;
    L_0x00da:
        r0 = move-exception;
        r3 = r2;
        goto L_0x00d0;
    L_0x00dd:
        r0 = move-exception;
        r5 = r0;
        r0 = r1;
        r1 = r5;
        goto L_0x00c4;
    L_0x00e2:
        r1 = move-exception;
        goto L_0x00c4;
    L_0x00e4:
        r0 = r1;
        goto L_0x00be;
    L_0x00e6:
        r0 = r1;
        goto L_0x0041;
    L_0x00e9:
        r0 = r1;
        goto L_0x0099;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.atomenv.env.ReleaseEnvironment.getCidFromFile():java.lang.String");
    }

    public String getSid() {
        try {
            if (TextUtils.isEmpty(this.sid)) {
                b();
            }
            return this.sid;
        } catch (Throwable th) {
            QLog.e(th);
            return "";
        }
    }

    public String getGid() {
        try {
            if (TextUtils.isEmpty(this.gid)) {
                a();
            }
            return this.gid;
        } catch (Throwable th) {
            QLog.e(th);
            return "";
        }
    }

    public boolean isAutoSwapImage() {
        return this.a.getBoolean(AtomEnvConstants.SW_AUTOSWAPIMAGE, false);
    }

    public void putAutoSwapImage(boolean z) {
        this.a.putBoolean(AtomEnvConstants.SW_AUTOSWAPIMAGE, z);
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ae  */
    private void a() {
        /*
        r7 = this;
        r0 = 0;
        r1 = r7.storage_sys;
        r2 = "sys_gid";
        r3 = "";
        r3 = r1.getString(r2, r3);
        r1 = "mounted";
        r2 = android.os.Environment.getExternalStorageState();	 Catch:{ Exception -> 0x009e }
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x009e }
        if (r1 == 0) goto L_0x0063;
    L_0x0017:
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x009e }
        r1.<init>();	 Catch:{ Exception -> 0x009e }
        r2 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x009e }
        r2 = r2.getPath();	 Catch:{ Exception -> 0x009e }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x009e }
        r2 = "/Android/";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x009e }
        r2 = r1.toString();	 Catch:{ Exception -> 0x009e }
        r4 = new java.io.File;	 Catch:{ Exception -> 0x009e }
        r1 = "10010";
        r5 = r7.getPid();	 Catch:{ Exception -> 0x009e }
        r1 = r1.equals(r5);	 Catch:{ Exception -> 0x009e }
        if (r1 == 0) goto L_0x0070;
    L_0x0040:
        r1 = ".unique";
    L_0x0042:
        r4.<init>(r2, r1);	 Catch:{ Exception -> 0x009e }
        r1 = r4.exists();	 Catch:{ Exception -> 0x009e }
        if (r1 == 0) goto L_0x0063;
    L_0x004b:
        r2 = new java.io.BufferedReader;	 Catch:{ all -> 0x0096 }
        r1 = new java.io.InputStreamReader;	 Catch:{ all -> 0x0096 }
        r5 = new java.io.FileInputStream;	 Catch:{ all -> 0x0096 }
        r5.<init>(r4);	 Catch:{ all -> 0x0096 }
        r1.<init>(r5);	 Catch:{ all -> 0x0096 }
        r2.<init>(r1);	 Catch:{ all -> 0x0096 }
        r0 = r2.readLine();	 Catch:{ all -> 0x00c4 }
        if (r2 == 0) goto L_0x0063;
    L_0x0060:
        r2.close();	 Catch:{ IOException -> 0x0088 }
    L_0x0063:
        if (r0 == 0) goto L_0x00a8;
    L_0x0065:
        if (r3 == 0) goto L_0x00a8;
    L_0x0067:
        r1 = r3.equals(r0);
        if (r1 == 0) goto L_0x00a8;
    L_0x006d:
        r7.gid = r3;
    L_0x006f:
        return;
    L_0x0070:
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x009e }
        r1.<init>();	 Catch:{ Exception -> 0x009e }
        r5 = ".unique";
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x009e }
        r5 = r7.getPid();	 Catch:{ Exception -> 0x009e }
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x009e }
        r1 = r1.toString();	 Catch:{ Exception -> 0x009e }
        goto L_0x0042;
    L_0x0088:
        r1 = move-exception;
        r1.printStackTrace();	 Catch:{ Exception -> 0x008d }
        goto L_0x0063;
    L_0x008d:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0091:
        com.mqunar.tools.log.QLog.e(r0);
        r0 = r1;
        goto L_0x0063;
    L_0x0096:
        r1 = move-exception;
        r2 = r0;
    L_0x0098:
        if (r2 == 0) goto L_0x009d;
    L_0x009a:
        r2.close();	 Catch:{ IOException -> 0x00a3 }
    L_0x009d:
        throw r1;	 Catch:{ Exception -> 0x009e }
    L_0x009e:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0091;
    L_0x00a3:
        r2 = move-exception;
        r2.printStackTrace();	 Catch:{ Exception -> 0x009e }
        goto L_0x009d;
    L_0x00a8:
        r1 = android.text.TextUtils.isEmpty(r3);
        if (r1 != 0) goto L_0x00b6;
    L_0x00ae:
        r7.gid = r3;
        r0 = r7.gid;
        r7.a(r0);
        goto L_0x006f;
    L_0x00b6:
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x006f;
    L_0x00bc:
        r7.gid = r0;
        r0 = r7.gid;
        r7.a(r0);
        goto L_0x006f;
    L_0x00c4:
        r1 = move-exception;
        goto L_0x0098;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.atomenv.env.ReleaseEnvironment.a():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x008b A:{SYNTHETIC, Splitter:B:24:0x008b} */
    private void a(java.lang.String r7) {
        /*
        r6 = this;
        r0 = 0;
        r0 = new java.lang.Object[r0];
        com.mqunar.tools.log.QLog.d(r7, r0);
        r0 = r6.storage_sys;
        r1 = "sys_gid";
        r0.putString(r1, r7);
        r1 = 0;
        r0 = "mounted";
        r2 = android.os.Environment.getExternalStorageState();	 Catch:{ Exception -> 0x007c }
        r0 = r0.equals(r2);	 Catch:{ Exception -> 0x007c }
        if (r0 == 0) goto L_0x0099;
    L_0x001a:
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x007c }
        r0.<init>();	 Catch:{ Exception -> 0x007c }
        r2 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x007c }
        r2 = r2.getPath();	 Catch:{ Exception -> 0x007c }
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x007c }
        r2 = "/Android/";
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x007c }
        r2 = r0.toString();	 Catch:{ Exception -> 0x007c }
        r3 = new java.io.File;	 Catch:{ Exception -> 0x007c }
        r0 = "10010";
        r4 = r6.getPid();	 Catch:{ Exception -> 0x007c }
        r0 = r0.equals(r4);	 Catch:{ Exception -> 0x007c }
        if (r0 == 0) goto L_0x0064;
    L_0x0043:
        r0 = ".unique";
    L_0x0045:
        r3.<init>(r2, r0);	 Catch:{ Exception -> 0x007c }
        r2 = new java.io.BufferedWriter;	 Catch:{ Exception -> 0x007c }
        r0 = new java.io.OutputStreamWriter;	 Catch:{ Exception -> 0x007c }
        r4 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x007c }
        r5 = 0;
        r4.<init>(r3, r5);	 Catch:{ Exception -> 0x007c }
        r0.<init>(r4);	 Catch:{ Exception -> 0x007c }
        r2.<init>(r0);	 Catch:{ Exception -> 0x007c }
        r2.write(r7);	 Catch:{ Exception -> 0x0096, all -> 0x0093 }
        r2.flush();	 Catch:{ Exception -> 0x0096, all -> 0x0093 }
    L_0x005e:
        if (r2 == 0) goto L_0x0063;
    L_0x0060:
        r2.close();	 Catch:{ IOException -> 0x008f }
    L_0x0063:
        return;
    L_0x0064:
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x007c }
        r0.<init>();	 Catch:{ Exception -> 0x007c }
        r4 = ".unique";
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007c }
        r4 = r6.getPid();	 Catch:{ Exception -> 0x007c }
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007c }
        r0 = r0.toString();	 Catch:{ Exception -> 0x007c }
        goto L_0x0045;
    L_0x007c:
        r0 = move-exception;
    L_0x007d:
        com.mqunar.tools.log.QLog.e(r0);	 Catch:{ all -> 0x0088 }
        if (r1 == 0) goto L_0x0063;
    L_0x0082:
        r1.close();	 Catch:{ IOException -> 0x0086 }
        goto L_0x0063;
    L_0x0086:
        r0 = move-exception;
        goto L_0x0063;
    L_0x0088:
        r0 = move-exception;
    L_0x0089:
        if (r1 == 0) goto L_0x008e;
    L_0x008b:
        r1.close();	 Catch:{ IOException -> 0x0091 }
    L_0x008e:
        throw r0;
    L_0x008f:
        r0 = move-exception;
        goto L_0x0063;
    L_0x0091:
        r1 = move-exception;
        goto L_0x008e;
    L_0x0093:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0089;
    L_0x0096:
        r0 = move-exception;
        r1 = r2;
        goto L_0x007d;
    L_0x0099:
        r2 = r1;
        goto L_0x005e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.atomenv.env.ReleaseEnvironment.a(java.lang.String):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ae  */
    private void b() {
        /*
        r7 = this;
        r0 = 0;
        r1 = r7.storage_sys;
        r2 = "sys_sid";
        r3 = "";
        r3 = r1.getString(r2, r3);
        r1 = "mounted";
        r2 = android.os.Environment.getExternalStorageState();	 Catch:{ Exception -> 0x009e }
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x009e }
        if (r1 == 0) goto L_0x0063;
    L_0x0017:
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x009e }
        r1.<init>();	 Catch:{ Exception -> 0x009e }
        r2 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x009e }
        r2 = r2.getPath();	 Catch:{ Exception -> 0x009e }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x009e }
        r2 = "/Android/";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x009e }
        r2 = r1.toString();	 Catch:{ Exception -> 0x009e }
        r4 = new java.io.File;	 Catch:{ Exception -> 0x009e }
        r1 = "10010";
        r5 = r7.getPid();	 Catch:{ Exception -> 0x009e }
        r1 = r1.equals(r5);	 Catch:{ Exception -> 0x009e }
        if (r1 == 0) goto L_0x0070;
    L_0x0040:
        r1 = ".sunique";
    L_0x0042:
        r4.<init>(r2, r1);	 Catch:{ Exception -> 0x009e }
        r1 = r4.exists();	 Catch:{ Exception -> 0x009e }
        if (r1 == 0) goto L_0x0063;
    L_0x004b:
        r2 = new java.io.BufferedReader;	 Catch:{ all -> 0x0096 }
        r1 = new java.io.InputStreamReader;	 Catch:{ all -> 0x0096 }
        r5 = new java.io.FileInputStream;	 Catch:{ all -> 0x0096 }
        r5.<init>(r4);	 Catch:{ all -> 0x0096 }
        r1.<init>(r5);	 Catch:{ all -> 0x0096 }
        r2.<init>(r1);	 Catch:{ all -> 0x0096 }
        r0 = r2.readLine();	 Catch:{ all -> 0x00c4 }
        if (r2 == 0) goto L_0x0063;
    L_0x0060:
        r2.close();	 Catch:{ IOException -> 0x0088 }
    L_0x0063:
        if (r0 == 0) goto L_0x00a8;
    L_0x0065:
        if (r3 == 0) goto L_0x00a8;
    L_0x0067:
        r1 = r3.equals(r0);
        if (r1 == 0) goto L_0x00a8;
    L_0x006d:
        r7.sid = r3;
    L_0x006f:
        return;
    L_0x0070:
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x009e }
        r1.<init>();	 Catch:{ Exception -> 0x009e }
        r5 = ".sunique";
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x009e }
        r5 = r7.getPid();	 Catch:{ Exception -> 0x009e }
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x009e }
        r1 = r1.toString();	 Catch:{ Exception -> 0x009e }
        goto L_0x0042;
    L_0x0088:
        r1 = move-exception;
        r1.printStackTrace();	 Catch:{ Exception -> 0x008d }
        goto L_0x0063;
    L_0x008d:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0091:
        com.mqunar.tools.log.QLog.e(r0);
        r0 = r1;
        goto L_0x0063;
    L_0x0096:
        r1 = move-exception;
        r2 = r0;
    L_0x0098:
        if (r2 == 0) goto L_0x009d;
    L_0x009a:
        r2.close();	 Catch:{ IOException -> 0x00a3 }
    L_0x009d:
        throw r1;	 Catch:{ Exception -> 0x009e }
    L_0x009e:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0091;
    L_0x00a3:
        r2 = move-exception;
        r2.printStackTrace();	 Catch:{ Exception -> 0x009e }
        goto L_0x009d;
    L_0x00a8:
        r1 = android.text.TextUtils.isEmpty(r3);
        if (r1 != 0) goto L_0x00b6;
    L_0x00ae:
        r7.sid = r3;
        r0 = r7.sid;
        r7.b(r0);
        goto L_0x006f;
    L_0x00b6:
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x006f;
    L_0x00bc:
        r7.sid = r0;
        r0 = r7.sid;
        r7.b(r0);
        goto L_0x006f;
    L_0x00c4:
        r1 = move-exception;
        goto L_0x0098;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.atomenv.env.ReleaseEnvironment.b():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x008b A:{SYNTHETIC, Splitter:B:24:0x008b} */
    private void b(java.lang.String r7) {
        /*
        r6 = this;
        r0 = 0;
        r0 = new java.lang.Object[r0];
        com.mqunar.tools.log.QLog.d(r7, r0);
        r0 = r6.storage_sys;
        r1 = "sys_sid";
        r0.putString(r1, r7);
        r1 = 0;
        r0 = "mounted";
        r2 = android.os.Environment.getExternalStorageState();	 Catch:{ Exception -> 0x007c }
        r0 = r0.equals(r2);	 Catch:{ Exception -> 0x007c }
        if (r0 == 0) goto L_0x0099;
    L_0x001a:
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x007c }
        r0.<init>();	 Catch:{ Exception -> 0x007c }
        r2 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x007c }
        r2 = r2.getPath();	 Catch:{ Exception -> 0x007c }
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x007c }
        r2 = "/Android/";
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x007c }
        r2 = r0.toString();	 Catch:{ Exception -> 0x007c }
        r3 = new java.io.File;	 Catch:{ Exception -> 0x007c }
        r0 = "10010";
        r4 = r6.getPid();	 Catch:{ Exception -> 0x007c }
        r0 = r0.equals(r4);	 Catch:{ Exception -> 0x007c }
        if (r0 == 0) goto L_0x0064;
    L_0x0043:
        r0 = ".sunique";
    L_0x0045:
        r3.<init>(r2, r0);	 Catch:{ Exception -> 0x007c }
        r2 = new java.io.BufferedWriter;	 Catch:{ Exception -> 0x007c }
        r0 = new java.io.OutputStreamWriter;	 Catch:{ Exception -> 0x007c }
        r4 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x007c }
        r5 = 0;
        r4.<init>(r3, r5);	 Catch:{ Exception -> 0x007c }
        r0.<init>(r4);	 Catch:{ Exception -> 0x007c }
        r2.<init>(r0);	 Catch:{ Exception -> 0x007c }
        r2.write(r7);	 Catch:{ Exception -> 0x0096, all -> 0x0093 }
        r2.flush();	 Catch:{ Exception -> 0x0096, all -> 0x0093 }
    L_0x005e:
        if (r2 == 0) goto L_0x0063;
    L_0x0060:
        r2.close();	 Catch:{ IOException -> 0x008f }
    L_0x0063:
        return;
    L_0x0064:
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x007c }
        r0.<init>();	 Catch:{ Exception -> 0x007c }
        r4 = ".sunique";
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007c }
        r4 = r6.getPid();	 Catch:{ Exception -> 0x007c }
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007c }
        r0 = r0.toString();	 Catch:{ Exception -> 0x007c }
        goto L_0x0045;
    L_0x007c:
        r0 = move-exception;
    L_0x007d:
        com.mqunar.tools.log.QLog.e(r0);	 Catch:{ all -> 0x0088 }
        if (r1 == 0) goto L_0x0063;
    L_0x0082:
        r1.close();	 Catch:{ IOException -> 0x0086 }
        goto L_0x0063;
    L_0x0086:
        r0 = move-exception;
        goto L_0x0063;
    L_0x0088:
        r0 = move-exception;
    L_0x0089:
        if (r1 == 0) goto L_0x008e;
    L_0x008b:
        r1.close();	 Catch:{ IOException -> 0x0091 }
    L_0x008e:
        throw r0;
    L_0x008f:
        r0 = move-exception;
        goto L_0x0063;
    L_0x0091:
        r1 = move-exception;
        goto L_0x008e;
    L_0x0093:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0089;
    L_0x0096:
        r0 = move-exception;
        r1 = r2;
        goto L_0x007d;
    L_0x0099:
        r2 = r1;
        goto L_0x005e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.atomenv.env.ReleaseEnvironment.b(java.lang.String):void");
    }

    public ServerTime getServerTime() {
        ServerTime serverTime;
        Throwable th;
        try {
            serverTime = new ServerTime();
            try {
                serverTime.tint = this.c.getLong(AtomEnvConstants.GLOBAL_TINT, 0);
                serverTime.tstr = this.c.getString(AtomEnvConstants.GLOBAL_TSTR, "");
            } catch (Throwable th2) {
                th = th2;
                QLog.e(th);
                return serverTime;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            serverTime = null;
            th = th4;
            QLog.e(th);
            return serverTime;
        }
        return serverTime;
    }

    public void putTint(long j) {
        this.c.putLong(AtomEnvConstants.GLOBAL_TINT, j);
    }

    public void putTstr(String str) {
        this.c.putString(AtomEnvConstants.GLOBAL_TSTR, str);
    }

    public String getSplashAdUrl() {
        return this.b.getString(AtomEnvConstants.AD_SPLASH, "");
    }

    public void putSplashAdUrl(String str) {
        this.b.putString(AtomEnvConstants.AD_SPLASH, str);
    }

    public String getSplashWebUrl() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_WELCOMEURL, "");
    }

    public String getHotDogUrl() {
        return "http://pitcher.corp.qunar.com/fca";
    }

    public String getCarPullUrl() {
        return "http://capi.qunar.com/crypt/orderdetail";
    }

    public String getBaiduVoiceUrl() {
        return "http://vse.baidu.com/echo.fcgi";
    }

    public String getHotelUploadPicUrl() {
        return "http://ud.client.qunar.com/ud";
    }

    public String getLocalLifeUrl() {
        return "http://live.qunar.com";
    }

    public String getCarAboutTouchUrl() {
        return "http://car.qunar.com/CharteredCar/about.jsp";
    }

    public String getPayUrl() {
        return "https://mpkq.qunar.com";
    }

    public String getOuterCarUrl() {
        return "http://intercar.qunar.com";
    }

    public String getScheme() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_SCHEME, "");
    }

    public String getSchemeWap() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_SCHEMEWAP, "");
    }

    public String getMac() {
        if (!this.storage_sys.contains(AtomEnvConstants.SYS_MAC)) {
            initMac();
        }
        return this.storage_sys.getString(AtomEnvConstants.SYS_MAC, "");
    }

    public void initMac() {
        try {
            c(AndroidUtils.getMac());
        } catch (Throwable th) {
        }
    }

    private void c(String str) {
        this.storage_sys.putString(AtomEnvConstants.SYS_MAC, str);
    }

    public boolean isRelease() {
        return true;
    }

    public boolean isBeta() {
        return false;
    }

    public boolean isDev() {
        return false;
    }

    public String getDBPath() {
        return this.c.getString(AtomEnvConstants.GLOBAL_DBPATH, "");
    }

    public void putDBPath(String str) {
        this.c.putString(AtomEnvConstants.GLOBAL_DBPATH, str);
    }

    public String getWXAppId() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_WXAPPID, "");
    }

    public Config getConfig() {
        String string = this.storage_sys.getString(AtomEnvConstants.SYS_CONFIG, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (Config) JsonUtils.parseObject(string, Config.class);
    }

    public String getBetaLongitude() {
        return "";
    }

    public String getBetaLatitude() {
        return "";
    }

    public String getBetaString() {
        return "";
    }

    public String getConfigJson() {
        return this.storage_sys.getString(AtomEnvConstants.SYS_CONFIG, "");
    }

    static {
        try {
            System.loadLibrary("cid-info");
        } catch (Throwable th) {
        }
    }
}
