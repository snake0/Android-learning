package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.webkit.WebView;
import java.lang.reflect.Field;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

public class bp {
    public static String[][] a;
    public static String[][] b;
    private static String[][] c;
    private static ce d = new ce();
    private static boolean e = false;
    private static String f = null;
    private static String g = null;

    static {
        r0 = new String[2][];
        r0[0] = new String[]{"=", ":"};
        r0[1] = new String[]{",", "_"};
        a = r0;
        r0 = new String[11][];
        r0[0] = new String[]{"os.manufact", Build.MANUFACTURER};
        r0[1] = new String[]{"os.model", Build.MODEL};
        r0[2] = new String[]{"os.product", Build.PRODUCT};
        r0[3] = new String[]{"os.display", Build.DISPLAY};
        r0[4] = new String[]{"os.host", Build.HOST};
        r0[5] = new String[]{"os.id", Build.ID};
        r0[6] = new String[]{"os.device", Build.DEVICE};
        r0[7] = new String[]{"os.board", Build.BOARD};
        r0[8] = new String[]{"os.brand", Build.BRAND};
        r0[9] = new String[]{"os.user", Build.USER};
        r0[10] = new String[]{"os.type", Build.TYPE};
        b = r0;
        r0 = new String[6][];
        r0[0] = new String[]{"os.cpu", "CPU_ABI"};
        r0[1] = new String[]{"os.cpu2", "CPU_ABI2"};
        r0[2] = new String[]{"os.serial", "SERIAL"};
        r0[3] = new String[]{"os.hardware", "HARDWARE"};
        r0[4] = new String[]{"os.bootloader", "BOOTLOADER"};
        r0[5] = new String[]{"os.radio", "RADIO"};
        c = r0;
    }

    public static synchronized ce a(Context context) {
        ce ceVar;
        synchronized (bp.class) {
            if (e) {
                ceVar = d;
            } else {
                g(context);
                ceVar = d;
            }
        }
        return ceVar;
    }

    public static String a(String str) {
        cb.d("check and replace src: " + str);
        if (str != null) {
            for (int i = 0; i < a.length; i++) {
                str = str.replace(a[i][0], a[i][1]);
            }
        } else {
            str = null;
        }
        cb.d("check and replace result: " + str);
        return str;
    }

    public static void a(ce ceVar, Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            ceVar.a("app.ver.name", packageInfo.versionName);
            ceVar.a("app.ver.code", "" + packageInfo.versionCode);
            ceVar.a("app.pkg", applicationInfo.packageName);
            ceVar.a("app.path", applicationInfo.dataDir);
            ceVar.a("app.name", applicationInfo.loadLabel(context.getPackageManager()).toString());
        } catch (Exception e) {
        }
    }

    public static ce b(Context context) {
        ce a = a(context);
        ce ceVar = new ce();
        ceVar.a(a, "app.name");
        ceVar.a(a, "app.path");
        ceVar.a(a, "app.pkg");
        ceVar.a(a, "app.ver.name");
        ceVar.a(a, "app.ver.code");
        ceVar.a(a, "os.system");
        ceVar.a(a, "os.resolution");
        ceVar.a(a, "os.density");
        ceVar.a(a, "net.mac");
        ceVar.a(a, "os.imei");
        ceVar.a(a, "os.imsi");
        ceVar.a(a, "os.version");
        ceVar.a(a, "os.release");
        ceVar.a(a, "os.incremental");
        ceVar.a(a, "os.android_id");
        ceVar.a(a, "carrier");
        ceVar.a(a, b[0][0]);
        ceVar.a(a, b[1][0]);
        ceVar.a(a, b[2][0]);
        ceVar.a(a, b[3][0]);
        return ceVar;
    }

    public static String c(Context context) {
        String str = "";
        try {
            String networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            return !TextUtils.isEmpty(networkOperatorName) ? networkOperatorName : str;
        } catch (Throwable th) {
            return str;
        }
    }

    private static String c(String str) {
        try {
            Field field = Build.class.getField(str);
            return field != null ? field.get(new Build()).toString() : EnvironmentCompat.MEDIA_UNKNOWN;
        } catch (Exception e) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static String d(Context context) {
        String str = "";
        if (VERSION.SDK_INT >= 23) {
            try {
                Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    byte[] hardwareAddress = ((NetworkInterface) networkInterfaces.nextElement()).getHardwareAddress();
                    if (!(hardwareAddress == null || hardwareAddress.length == 0)) {
                        StringBuilder stringBuilder = new StringBuilder();
                        int length = hardwareAddress.length;
                        for (int i = 0; i < length; i++) {
                            stringBuilder.append(String.format("%02X:", new Object[]{Byte.valueOf(hardwareAddress[i])}));
                        }
                        if (stringBuilder.length() > 0) {
                            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
                        }
                        String stringBuilder2 = stringBuilder.toString();
                        if (stringBuilder2 != null && stringBuilder2.length() > 0) {
                            return stringBuilder2;
                        }
                    }
                }
                return str;
            } catch (SocketException e) {
                cb.e(e + "");
                return str;
            }
        }
        try {
            return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        } catch (Throwable th) {
            cb.a("Failed to get mac Info");
            return str;
        }
    }

    public static String e(final Context context) {
        if (TextUtils.isEmpty(f)) {
            try {
                new Handler(context.getMainLooper(), new Callback() {
                    public boolean handleMessage(Message message) {
                        switch (message.what) {
                            case 1:
                                bp.f = new WebView(context).getSettings().getUserAgentString();
                                cb.d("user agent: " + bp.f);
                                break;
                        }
                        return false;
                    }
                }).sendEmptyMessage(1);
            } catch (Throwable th) {
                cb.a(th);
            }
        }
        cb.d("get user agent: " + f);
        return f;
    }

    public static String f(Context context) {
        if (TextUtils.isEmpty(g)) {
            try {
                int i = context.getResources().getConfiguration().screenLayout;
                if ((i & 15) >= 3) {
                    g = "tablet";
                } else if ((i & 15) >= 1) {
                    g = "handset";
                } else {
                    g = "unknow";
                }
            } catch (Throwable th) {
                cb.a(th);
            }
        }
        cb.d("get device type: " + g);
        return g;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x00cd A:{ExcHandler: Exception (e java.lang.Exception), Splitter:B:5:0x006d} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x00cd A:{ExcHandler: Exception (e java.lang.Exception), Splitter:B:5:0x006d} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x00cd A:{ExcHandler: Exception (e java.lang.Exception), Splitter:B:5:0x006d} */
    /* JADX WARNING: Missing block: B:18:0x00ce, code skipped:
            com.iflytek.cloud.thirdparty.cb.a("Failed to get prop Info");
            e = false;
     */
    /* JADX WARNING: Missing block: B:32:?, code skipped:
            return;
     */
    private static void g(android.content.Context r6) {
        /*
        r1 = 0;
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.a();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "os.system";
        r3 = "Android";
        r0.a(r2, r3);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        a(r0, r6);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r6.getResources();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r0.getDisplayMetrics();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = "os.resolution";
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4.<init>();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r5 = r0.widthPixels;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r5 = "*";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r5 = r0.heightPixels;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = r4.toString();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2.a(r3, r4);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = "os.density";
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4.<init>();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r5 = "";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r0.density;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r4.append(r0);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r0.toString();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2.a(r3, r0);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = "phone";
        r0 = r6.getSystemService(r0);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = (android.telephony.TelephonyManager) r0;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = d;	 Catch:{ Throwable -> 0x00c6, Exception -> 0x00cd }
        r3 = "os.imei";
        r4 = r0.getDeviceId();	 Catch:{ Throwable -> 0x00c6, Exception -> 0x00cd }
        r2.a(r3, r4);	 Catch:{ Throwable -> 0x00c6, Exception -> 0x00cd }
    L_0x006d:
        r2 = d;	 Catch:{ Throwable -> 0x00d6, Exception -> 0x00cd }
        r3 = "os.imsi";
        r0 = r0.getSubscriberId();	 Catch:{ Throwable -> 0x00d6, Exception -> 0x00cd }
        r2.a(r3, r0);	 Catch:{ Throwable -> 0x00d6, Exception -> 0x00cd }
    L_0x0078:
        r0 = r6.getContentResolver();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "android_id";
        r0 = android.provider.Settings.Secure.getString(r0, r2);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        if (r2 != 0) goto L_0x008f;
    L_0x0088:
        r2 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = "os.android_id";
        r2.a(r3, r0);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
    L_0x008f:
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "os.version";
        r3 = android.os.Build.VERSION.SDK;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.a(r2, r3);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "os.release";
        r3 = android.os.Build.VERSION.RELEASE;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.a(r2, r3);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "os.incremental";
        r3 = android.os.Build.VERSION.INCREMENTAL;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.a(r2, r3);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r1;
    L_0x00ab:
        r2 = b;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = r2.length;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        if (r0 >= r2) goto L_0x00e6;
    L_0x00b0:
        r2 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = b;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = r3[r0];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = 0;
        r3 = r3[r4];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = b;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = r4[r0];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r5 = 1;
        r4 = r4[r5];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2.a(r3, r4);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r0 + 1;
        goto L_0x00ab;
    L_0x00c6:
        r2 = move-exception;
        r2 = "Failed to get did Info";
        com.iflytek.cloud.thirdparty.cb.a(r2);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        goto L_0x006d;
    L_0x00cd:
        r0 = move-exception;
        r0 = "Failed to get prop Info";
        com.iflytek.cloud.thirdparty.cb.a(r0);
        e = r1;
    L_0x00d5:
        return;
    L_0x00d6:
        r0 = move-exception;
        r0 = "Failed to get sbid Info";
        com.iflytek.cloud.thirdparty.cb.a(r0);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        goto L_0x0078;
    L_0x00dd:
        r0 = move-exception;
        r0 = "Failed to get property Info";
        com.iflytek.cloud.thirdparty.cb.a(r0);
        e = r1;
        goto L_0x00d5;
    L_0x00e6:
        r0 = r1;
    L_0x00e7:
        r2 = c;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = r2.length;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        if (r0 >= r2) goto L_0x0106;
    L_0x00ec:
        r2 = c;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = r2[r0];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = 1;
        r2 = r2[r3];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = c(r2);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = c;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r4 = r4[r0];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r5 = 0;
        r4 = r4[r5];	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r3.a(r4, r2);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = r0 + 1;
        goto L_0x00e7;
    L_0x0106:
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "net.mac";
        r3 = d(r6);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.a(r2, r3);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r2 = "carrier";
        r3 = c(r6);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.a(r2, r3);	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = d;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0.d();	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        r0 = 1;
        e = r0;	 Catch:{ Exception -> 0x00cd, Throwable -> 0x00dd }
        goto L_0x00d5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.bp.g(android.content.Context):void");
    }
}
