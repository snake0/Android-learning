package com.baidu.techain.b;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.techain.e;
import com.mqunar.contacts.basis.model.Contact;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

public final class g {
    public static String a(Context context) {
        try {
            e eVar = new e(context);
            String string = eVar.b.getString("xyus", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String n = n(context);
            string = e(context);
            if (TextUtils.isEmpty(string)) {
                string = "0";
            }
            string = n + "|" + new StringBuffer(string).reverse().toString();
            eVar.d.putString("xyus", string);
            eVar.d.commit();
            return string;
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    public static String b(Context context) {
        try {
            e eVar = new e(context);
            String string = eVar.b.getString("sgud", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            if (VERSION.SDK_INT > 25) {
                return "";
            }
            string = e(context);
            String f = f(context);
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(f)) {
                return "";
            }
            byte[] bytes = (string + ":" + f).getBytes();
            for (int i = 0; i < bytes.length; i++) {
                bytes[i] = (byte) (bytes[i] ^ 246);
            }
            string = o.a(bytes);
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            eVar.d.putString("sgud", string);
            eVar.d.commit();
            return string;
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    public static String c(Context context) {
        try {
            return "5|" + p.a(context);
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static java.lang.String d(android.content.Context r4) {
        /*
        r0 = "";
        r2 = f(r4);	 Catch:{ Throwable -> 0x005a }
        r1 = r4.getContentResolver();	 Catch:{ Throwable -> 0x0054 }
        r3 = "bd_setting_i";
        r0 = android.provider.Settings.System.getString(r1, r3);	 Catch:{ Throwable -> 0x0054 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0054 }
        if (r1 == 0) goto L_0x001a;
    L_0x0016:
        r0 = e(r4);	 Catch:{ Throwable -> 0x0054 }
    L_0x001a:
        r1 = r0;
    L_0x001b:
        r0 = r4.getContentResolver();	 Catch:{ Throwable -> 0x005a }
        r3 = "com.baidu.deviceid";
        r0 = android.provider.Settings.System.getString(r0, r3);	 Catch:{ Throwable -> 0x005a }
        r3 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x005a }
        if (r3 == 0) goto L_0x008f;
    L_0x002b:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x005a }
        r3 = "com.baidu";
        r0.<init>(r3);	 Catch:{ Throwable -> 0x005a }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x005a }
        r0 = r0.append(r2);	 Catch:{ Throwable -> 0x005a }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x005a }
        r0 = r0.getBytes();	 Catch:{ Throwable -> 0x005a }
        r0 = a(r0);	 Catch:{ Throwable -> 0x005a }
        r1 = r4.getContentResolver();	 Catch:{ Throwable -> 0x005a }
        r0 = android.provider.Settings.System.getString(r1, r0);	 Catch:{ Throwable -> 0x005a }
        r1 = r0;
    L_0x004f:
        if (r1 != 0) goto L_0x005e;
    L_0x0051:
        r0 = "";
    L_0x0053:
        return r0;
    L_0x0054:
        r1 = move-exception;
        r1 = r0;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x005a }
        goto L_0x001b;
    L_0x005a:
        r0 = move-exception;
        r0 = "";
        goto L_0x0053;
    L_0x005e:
        r0 = e(r4);	 Catch:{ Throwable -> 0x005a }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x005a }
        if (r2 == 0) goto L_0x006a;
    L_0x0068:
        r0 = "0";
    L_0x006a:
        r2 = new java.lang.StringBuffer;	 Catch:{ Throwable -> 0x005a }
        r2.<init>(r0);	 Catch:{ Throwable -> 0x005a }
        r0 = r2.reverse();	 Catch:{ Throwable -> 0x005a }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x005a }
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x005a }
        r2.<init>();	 Catch:{ Throwable -> 0x005a }
        r1 = r2.append(r1);	 Catch:{ Throwable -> 0x005a }
        r2 = "|";
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x005a }
        r0 = r1.append(r0);	 Catch:{ Throwable -> 0x005a }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x005a }
        goto L_0x0053;
    L_0x008f:
        r1 = r0;
        goto L_0x004f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.g.d(android.content.Context):java.lang.String");
    }

    private static String n(Context context) {
        String str = "";
        String str2 = "";
        try {
            str = e(context);
            str2 = f(context);
        } catch (Throwable th) {
            e.a();
        }
        return a((str + str2 + UUID.randomUUID().toString()).getBytes());
    }

    public static String e(Context context) {
        if (!q.a(context)) {
            return "";
        }
        String str = "";
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return str;
        }
        String deviceId = telephonyManager.getDeviceId();
        if (TextUtils.isEmpty(deviceId)) {
            return "";
        }
        return deviceId;
    }

    public static String f(Context context) {
        String string = Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        return string;
    }

    private static String a(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(bArr);
            byte[] digest = instance.digest();
            String str = "";
            StringBuilder stringBuilder = new StringBuilder();
            for (byte b : digest) {
                String toUpperCase = Integer.toHexString(b & 255).toUpperCase();
                if (toUpperCase.length() == 1) {
                    stringBuilder.append("0");
                }
                stringBuilder.append(toUpperCase).append(str);
            }
            return stringBuilder.toString();
        } catch (NoSuchAlgorithmException e) {
            e.a();
            return null;
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static java.lang.String g(android.content.Context r3) {
        /*
        r0 = r3.getContentResolver();	 Catch:{ Exception -> 0x004f }
        r1 = "bd_setting_i";
        r0 = android.provider.Settings.System.getString(r0, r1);	 Catch:{ Exception -> 0x004f }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x004f }
        if (r1 == 0) goto L_0x0014;
    L_0x0010:
        r0 = e(r3);	 Catch:{ Exception -> 0x004f }
    L_0x0014:
        r1 = e(r3);	 Catch:{ Throwable -> 0x0056 }
        r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x0056 }
        if (r2 == 0) goto L_0x0020;
    L_0x001e:
        r1 = "0";
    L_0x0020:
        r2 = new java.lang.StringBuffer;	 Catch:{ Throwable -> 0x0056 }
        r2.<init>(r1);	 Catch:{ Throwable -> 0x0056 }
        r1 = r2.reverse();	 Catch:{ Throwable -> 0x0056 }
        r1 = r1.toString();	 Catch:{ Throwable -> 0x0056 }
        r0 = a(r0);	 Catch:{ Throwable -> 0x0056 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0056 }
        if (r2 != 0) goto L_0x0053;
    L_0x0037:
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0056 }
        r2.<init>();	 Catch:{ Throwable -> 0x0056 }
        r0 = r2.append(r0);	 Catch:{ Throwable -> 0x0056 }
        r2 = "|";
        r0 = r0.append(r2);	 Catch:{ Throwable -> 0x0056 }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x0056 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x0056 }
    L_0x004e:
        return r0;
    L_0x004f:
        r0 = move-exception;
        r0 = "";
        goto L_0x004e;
    L_0x0053:
        r0 = "";
        goto L_0x004e;
    L_0x0056:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = "";
        goto L_0x004e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.g.g(android.content.Context):java.lang.String");
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(Environment.getExternalStorageDirectory(), "baidu/.cuid")));
            StringBuilder stringBuilder = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuilder.append(readLine);
                stringBuilder.append(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            bufferedReader.close();
            String[] split = new String(a.a("30212102dicudiab", "30212102dicudiab", Base64.decode(stringBuilder.toString().getBytes(), 0))).split("=");
            if (split != null && split.length == 2 && str.equals(split[0])) {
                return split[1];
            }
            return str2;
        } catch (Exception e) {
            e.a();
            return str2;
        }
    }

    public static String h(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
                return displayMetrics.widthPixels + Contact.OTHER + displayMetrics.heightPixels;
            }
            return displayMetrics.heightPixels + Contact.OTHER + displayMetrics.widthPixels;
        } catch (Exception e) {
            e.a();
            return "";
        }
    }

    public static String i(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getSubscriberId();
            }
        } catch (Throwable th) {
            e.a();
        }
        return "";
    }

    public static String j(Context context) {
        String str = "";
        String simSerialNumber;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return str;
            }
            simSerialNumber = telephonyManager.getSimSerialNumber();
            try {
                if (TextUtils.isEmpty(simSerialNumber)) {
                    return "";
                }
                return simSerialNumber;
            } catch (Throwable th) {
                e.a();
                return simSerialNumber;
            }
        } catch (Throwable th2) {
            simSerialNumber = str;
            e.a();
            return simSerialNumber;
        }
    }

    public static String k(Context context) {
        String str = "";
        String simOperatorName;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return str;
            }
            simOperatorName = telephonyManager.getSimOperatorName();
            try {
                if (TextUtils.isEmpty(simOperatorName)) {
                    return "";
                }
                return simOperatorName;
            } catch (Throwable th) {
                e.a();
                return simOperatorName;
            }
        } catch (Throwable th2) {
            simOperatorName = str;
            e.a();
            return simOperatorName;
        }
    }

    public static String l(Context context) {
        String str = "";
        String networkOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return str;
            }
            networkOperator = telephonyManager.getNetworkOperator();
            try {
                if (TextUtils.isEmpty(networkOperator)) {
                    return "";
                }
                return networkOperator;
            } catch (Throwable th) {
                e.a();
                return networkOperator;
            }
        } catch (Throwable th2) {
            networkOperator = str;
            e.a();
            return networkOperator;
        }
    }

    public static String m(Context context) {
        String str = "";
        String bssid;
        try {
            bssid = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getBSSID();
            try {
                if (TextUtils.isEmpty(bssid)) {
                    return "";
                }
                return bssid;
            } catch (Throwable th) {
                e.a();
                return bssid;
            }
        } catch (Throwable th2) {
            bssid = str;
        }
    }

    public static String a() {
        String b = b();
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        try {
            return c().toUpperCase().substring(0, 17);
        } catch (Throwable th) {
            e.a();
            return b;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0059 A:{SYNTHETIC, Splitter:B:37:0x0059} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x005e A:{SYNTHETIC, Splitter:B:40:0x005e} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0042 A:{SYNTHETIC, Splitter:B:25:0x0042} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0047 A:{SYNTHETIC, Splitter:B:28:0x0047} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0059 A:{SYNTHETIC, Splitter:B:37:0x0059} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x005e A:{SYNTHETIC, Splitter:B:40:0x005e} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0042 A:{SYNTHETIC, Splitter:B:25:0x0042} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0047 A:{SYNTHETIC, Splitter:B:28:0x0047} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0059 A:{SYNTHETIC, Splitter:B:37:0x0059} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x005e A:{SYNTHETIC, Splitter:B:40:0x005e} */
    private static java.lang.String b() {
        /*
        r2 = 0;
        r4 = "";
        r0 = "";
        r1 = java.lang.Runtime.getRuntime();	 Catch:{ Throwable -> 0x003b, all -> 0x0055 }
        r3 = "cat /sys/class/net/wlan0/address";
        r1 = r1.exec(r3);	 Catch:{ Throwable -> 0x003b, all -> 0x0055 }
        r3 = new java.io.InputStreamReader;	 Catch:{ Throwable -> 0x003b, all -> 0x0055 }
        r1 = r1.getInputStream();	 Catch:{ Throwable -> 0x003b, all -> 0x0055 }
        r3.<init>(r1);	 Catch:{ Throwable -> 0x003b, all -> 0x0055 }
        r1 = new java.io.LineNumberReader;	 Catch:{ Throwable -> 0x0075, all -> 0x006c }
        r1.<init>(r3);	 Catch:{ Throwable -> 0x0075, all -> 0x006c }
        r2 = r4;
    L_0x001e:
        if (r2 == 0) goto L_0x002a;
    L_0x0020:
        r2 = r1.readLine();	 Catch:{ Throwable -> 0x0079, all -> 0x006e }
        if (r2 == 0) goto L_0x001e;
    L_0x0026:
        r0 = r2.trim();	 Catch:{ Throwable -> 0x0079, all -> 0x006e }
    L_0x002a:
        r3.close();	 Catch:{ Throwable -> 0x0031 }
    L_0x002d:
        r1.close();	 Catch:{ IOException -> 0x0036 }
    L_0x0030:
        return r0;
    L_0x0031:
        r2 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x002d;
    L_0x0036:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0030;
    L_0x003b:
        r1 = move-exception;
        r1 = r2;
    L_0x003d:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0071 }
        if (r2 == 0) goto L_0x0045;
    L_0x0042:
        r2.close();	 Catch:{ Throwable -> 0x0050 }
    L_0x0045:
        if (r1 == 0) goto L_0x0030;
    L_0x0047:
        r1.close();	 Catch:{ IOException -> 0x004b }
        goto L_0x0030;
    L_0x004b:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0030;
    L_0x0050:
        r2 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0045;
    L_0x0055:
        r0 = move-exception;
        r3 = r2;
    L_0x0057:
        if (r3 == 0) goto L_0x005c;
    L_0x0059:
        r3.close();	 Catch:{ Throwable -> 0x0062 }
    L_0x005c:
        if (r2 == 0) goto L_0x0061;
    L_0x005e:
        r2.close();	 Catch:{ IOException -> 0x0067 }
    L_0x0061:
        throw r0;
    L_0x0062:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x005c;
    L_0x0067:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0061;
    L_0x006c:
        r0 = move-exception;
        goto L_0x0057;
    L_0x006e:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0057;
    L_0x0071:
        r0 = move-exception;
        r3 = r2;
        r2 = r1;
        goto L_0x0057;
    L_0x0075:
        r1 = move-exception;
        r1 = r2;
        r2 = r3;
        goto L_0x003d;
    L_0x0079:
        r2 = move-exception;
        r2 = r3;
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.g.b():java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x002b A:{SYNTHETIC, Splitter:B:22:0x002b} */
    private static java.lang.String c() {
        /*
        r2 = 0;
        r0 = "";
        r3 = "/sys/class/net/eth0/address";
        r1 = new java.io.FileReader;	 Catch:{ Throwable -> 0x0017, all -> 0x0027 }
        r1.<init>(r3);	 Catch:{ Throwable -> 0x0017, all -> 0x0027 }
        r0 = a(r1);	 Catch:{ Throwable -> 0x0036 }
        r1.close();	 Catch:{ Throwable -> 0x0012 }
    L_0x0011:
        return r0;
    L_0x0012:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0011;
    L_0x0017:
        r1 = move-exception;
        r1 = r2;
    L_0x0019:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0034 }
        if (r1 == 0) goto L_0x0011;
    L_0x001e:
        r1.close();	 Catch:{ Throwable -> 0x0022 }
        goto L_0x0011;
    L_0x0022:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0011;
    L_0x0027:
        r0 = move-exception;
        r1 = r2;
    L_0x0029:
        if (r1 == 0) goto L_0x002e;
    L_0x002b:
        r1.close();	 Catch:{ Throwable -> 0x002f }
    L_0x002e:
        throw r0;
    L_0x002f:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x002e;
    L_0x0034:
        r0 = move-exception;
        goto L_0x0029;
    L_0x0036:
        r2 = move-exception;
        goto L_0x0019;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.g.c():java.lang.String");
    }

    private static String a(Reader reader) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            char[] cArr = new char[4096];
            int read = reader.read(cArr);
            while (read >= 0) {
                stringBuilder.append(cArr, 0, read);
                read = reader.read(cArr);
            }
            return stringBuilder.toString();
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }
}
