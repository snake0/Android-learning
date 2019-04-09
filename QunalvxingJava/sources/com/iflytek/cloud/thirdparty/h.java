package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.Random;

public final class h {
    public static String a() {
        return a(Build.MODEL);
    }

    public static String a(Context context) {
        String deviceId;
        try {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            deviceId = "";
        }
        return a(deviceId);
    }

    public static String a(Context context, String str) {
        String valueOf;
        try {
            valueOf = String.valueOf(b(System.currentTimeMillis() + str + a(context) + g(context) + new Random().nextInt(10)).toCharArray(), 8, 16);
        } catch (Exception e) {
            valueOf = "";
        }
        return c(valueOf);
    }

    protected static String a(String str) {
        if (str == null) {
            return "";
        }
        if (str.length() > 901) {
            str = str.substring(0, 900);
        }
        return str.replace("\\", "").replace("|", "");
    }

    protected static boolean a(String str, int i) {
        return str != null && str.length() > i;
    }

    public static String b() {
        return a(Build.MANUFACTURER);
    }

    public static String b(Context context) {
        try {
            String a = a(context);
            if (a != null && a.length() > 6) {
                return String.valueOf(b(a).toCharArray(), 7, 18);
            }
            a = g(context);
            if (a != null && a.length() >= 9) {
                return String.valueOf(b(a).toCharArray(), 7, 18);
            }
            a = c(context);
            return (a == null || a.length() == 0) ? String.valueOf(b(a(Build.MODEL)).toCharArray(), 7, 18) : String.valueOf(b(a).toCharArray(), 7, 18);
        } catch (Exception e) {
            return "";
        }
    }

    private static String b(String str) {
        int i = 0;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            char[] toCharArray = str.toCharArray();
            byte[] bArr = new byte[toCharArray.length];
            for (int i2 = 0; i2 < toCharArray.length; i2++) {
                bArr[i2] = (byte) toCharArray[i2];
            }
            byte[] digest = instance.digest(bArr);
            StringBuffer stringBuffer = new StringBuffer();
            while (i < digest.length) {
                int i3 = digest[i] & 255;
                if (i3 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i3));
                i++;
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static boolean b(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String c() {
        return a("android " + VERSION.RELEASE);
    }

    public static String c(Context context) {
        String subscriberId;
        String str = "";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                subscriberId = telephonyManager.getSubscriberId();
                subscriberId = subscriberId != null ? subscriberId.trim() : str;
                c.a("MobileUtils", subscriberId);
            } else {
                subscriberId = str;
            }
        } catch (Exception e) {
            subscriberId = "";
            Log.i("MobileUtils", "can't not read imsi");
        }
        return c(subscriberId);
    }

    private static String c(String str) {
        return TextUtils.isEmpty(str) ? "" : str;
    }

    public static int d(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String d() {
        String country;
        try {
            country = Locale.getDefault().getCountry();
        } catch (Exception e) {
            country = "";
        }
        return c(country);
    }

    public static int e(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.heightPixels;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String e() {
        String language;
        try {
            language = Locale.getDefault().getLanguage();
        } catch (Exception e) {
            language = "";
        }
        return c(language);
    }

    public static int f(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.densityDpi;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String f() {
        String str = "";
        InputStream inputStream = null;
        try {
            inputStream = new ProcessBuilder(new String[]{"/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"}).start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = new StringBuilder(String.valueOf(str)).append(new String(bArr)).toString();
            }
            try {
                inputStream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            str = "";
            try {
                inputStream.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (Exception e32) {
                e32.printStackTrace();
            }
            throw th;
        }
        return str.trim();
    }

    public static String g() {
        Exception e;
        Throwable th;
        FileReader fileReader;
        try {
            fileReader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq");
            try {
                String trim = new BufferedReader(fileReader).readLine().trim();
                try {
                    fileReader.close();
                    return trim;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return trim;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            e = e4;
            fileReader = null;
            try {
                e.printStackTrace();
                try {
                    fileReader.close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                try {
                    fileReader.close();
                } catch (Exception e22) {
                    e22.printStackTrace();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
            fileReader.close();
            throw th;
        }
    }

    public static String g(Context context) {
        try {
            String macAddress;
            if (b(context, "android.permission.ACCESS_WIFI_STATE")) {
                macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
                if (macAddress == null || macAddress.equals("")) {
                    macAddress = EnvironmentCompat.MEDIA_UNKNOWN;
                }
            } else {
                Log.w("MobileUtils", "Could not read MAC, forget to include ACCESS_WIFI_STATE permission?");
                macAddress = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            return c(macAddress);
        } catch (Exception e) {
            Log.w("MobileUtils", "Could not read MAC, forget to include ACCESS_WIFI_STATE permission?", e);
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static String h() {
        Exception e;
        Throwable th;
        FileReader fileReader = null;
        FileReader fileReader2;
        BufferedReader bufferedReader;
        try {
            fileReader2 = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader2, 8192);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        readLine = readLine.substring(readLine.indexOf(":") + 2, readLine.indexOf("k") - 1).trim();
                        c.a("MobileUtils", readLine);
                        readLine = c(readLine);
                        try {
                            fileReader2.close();
                            bufferedReader.close();
                            return readLine;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return readLine;
                        }
                    }
                    try {
                        fileReader2.close();
                        bufferedReader.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    return "";
                } catch (Exception e4) {
                    e3 = e4;
                    fileReader = fileReader2;
                    try {
                        e3.printStackTrace();
                        try {
                            fileReader.close();
                            bufferedReader.close();
                        } catch (Exception e32) {
                            e32.printStackTrace();
                        }
                        return "";
                    } catch (Throwable th2) {
                        th = th2;
                        fileReader2 = fileReader;
                        try {
                            fileReader2.close();
                            bufferedReader.close();
                        } catch (Exception e22) {
                            e22.printStackTrace();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileReader2.close();
                    bufferedReader.close();
                    throw th;
                }
            } catch (Exception e5) {
                e32 = e5;
                bufferedReader = null;
                fileReader = fileReader2;
                e32.printStackTrace();
                fileReader.close();
                bufferedReader.close();
                return "";
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                fileReader2.close();
                bufferedReader.close();
                throw th;
            }
        } catch (Exception e6) {
            e32 = e6;
            bufferedReader = null;
            e32.printStackTrace();
            fileReader.close();
            bufferedReader.close();
            return "";
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
            fileReader2 = null;
            fileReader2.close();
            bufferedReader.close();
            throw th;
        }
    }

    public static String h(Context context) {
        try {
            CharSequence string = context.getSharedPreferences("lxdMoblieAgent_sys_config", 0).getString("MOBILE_APPKEY", "");
            if (!string.equals("")) {
                return string;
            }
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                string = applicationInfo.metaData.getString("MOBILE_APPKEY");
            }
            if (TextUtils.isEmpty(string)) {
                Log.e("MobileUtils", "the appkey is empty,please init datau.sdk");
            }
            return TextUtils.isEmpty(string) ? "00000" : string;
        } catch (Exception e) {
            e.printStackTrace();
            return "00000";
        }
    }

    public static String i(Context context) {
        try {
            String string = context.getSharedPreferences("lxdMoblieAgent_sys_config", 0).getString("MOBILE_CHANNEL", "");
            if (!string.equals("")) {
                return a(string);
            }
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                string = applicationInfo.metaData.getString("MOBILE_CHANNEL");
                if (string == null) {
                    Log.w("MobileUtils", "Could not read MOBILE_CHANNEL meta-data from AndroidManifest.xml.");
                    string = "";
                }
            }
            return a(string);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String j(Context context) {
        String packageName;
        try {
            packageName = context.getPackageName();
        } catch (Exception e) {
            packageName = "";
        }
        return c(packageName);
    }

    public static String k(Context context) {
        String networkOperatorName;
        try {
            networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            e.printStackTrace();
            networkOperatorName = "";
        }
        return c(networkOperatorName);
    }

    public static String l(Context context) {
        try {
            if (!b(context, "android.permission.ACCESS_NETWORK_STATE")) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "wifi";
            }
            String extraInfo = activeNetworkInfo.getExtraInfo();
            if (extraInfo == null) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            c.a("MobileUtils", "net type:" + extraInfo);
            return extraInfo.trim();
        } catch (Exception e) {
            Log.w("MobileUtils", "Could not read ACCESSPOINT, forget to include ACCESS_NETSTATE_STATE permission?", e);
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static int m(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String n(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return c(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ff  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ae A:{SYNTHETIC, Splitter:B:28:0x00ae} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ff  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00c2 A:{SYNTHETIC, Splitter:B:36:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00c2 A:{SYNTHETIC, Splitter:B:36:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ff  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00ed A:{SYNTHETIC, Splitter:B:53:0x00ed} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x011a  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00d9 A:{SYNTHETIC, Splitter:B:45:0x00d9} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ff  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00ed A:{SYNTHETIC, Splitter:B:53:0x00ed} */
    public static long[] o(android.content.Context r11) {
        /*
        r2 = 0;
        r1 = 0;
        r0 = q(r11);
        r4 = new java.lang.StringBuilder;
        r5 = "proc/uid_stat/";
        r4.<init>(r5);
        r4 = r4.append(r0);
        r5 = "/tcp_rcv";
        r4 = r4.append(r5);
        r5 = r4.toString();
        r4 = new java.lang.StringBuilder;
        r6 = "proc/uid_stat/";
        r4.<init>(r6);
        r0 = r4.append(r0);
        r4 = "/tcp_snd";
        r0 = r0.append(r4);
        r8 = r0.toString();
        r4 = new java.io.FileReader;	 Catch:{ Exception -> 0x00a9, all -> 0x00be }
        r4.<init>(r5);	 Catch:{ Exception -> 0x00a9, all -> 0x00be }
        r0 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0115, all -> 0x010e }
        r5 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r0.<init>(r4, r5);	 Catch:{ Exception -> 0x0115, all -> 0x010e }
        r5 = r0.readLine();	 Catch:{ Exception -> 0x0118, all -> 0x0110 }
        r5 = r5.toString();	 Catch:{ Exception -> 0x0118, all -> 0x0110 }
        r5 = r5.trim();	 Catch:{ Exception -> 0x0118, all -> 0x0110 }
        r5 = java.lang.Long.parseLong(r5);	 Catch:{ Exception -> 0x0118, all -> 0x0110 }
        r4.close();	 Catch:{ Exception -> 0x00ce }
        r0.close();	 Catch:{ Exception -> 0x00ce }
        r0 = r1;
        r9 = r5;
        r4 = r9;
    L_0x0056:
        r7 = new java.io.FileReader;	 Catch:{ Exception -> 0x00d6, all -> 0x00e7 }
        r7.<init>(r8);	 Catch:{ Exception -> 0x00d6, all -> 0x00e7 }
        r6 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0107, all -> 0x0101 }
        r1 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r6.<init>(r7, r1);	 Catch:{ Exception -> 0x0107, all -> 0x0101 }
        r0 = r6.readLine();	 Catch:{ Exception -> 0x010a, all -> 0x0105 }
        r0 = r0.toString();	 Catch:{ Exception -> 0x010a, all -> 0x0105 }
        r0 = r0.trim();	 Catch:{ Exception -> 0x010a, all -> 0x0105 }
        r0 = java.lang.Long.parseLong(r0);	 Catch:{ Exception -> 0x010a, all -> 0x0105 }
        r7.close();	 Catch:{ Exception -> 0x00f9 }
        r6.close();	 Catch:{ Exception -> 0x00f9 }
    L_0x0078:
        r6 = "MobileUtils";
        r7 = new java.lang.StringBuilder;
        r8 = "indicate flow: ";
        r7.<init>(r8);
        r7 = r7.append(r4);
        r8 = "  &  ";
        r7 = r7.append(r8);
        r7 = r7.append(r0);
        r7 = r7.toString();
        com.iflytek.cloud.thirdparty.c.a(r6, r7);
        r6 = 2;
        r6 = new long[r6];
        r7 = 0;
        r8 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r8 >= 0) goto L_0x009f;
    L_0x009e:
        r4 = r2;
    L_0x009f:
        r6[r7] = r4;
        r4 = 1;
        r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r5 >= 0) goto L_0x00ff;
    L_0x00a6:
        r6[r4] = r2;
        return r6;
    L_0x00a9:
        r0 = move-exception;
        r0 = r1;
        r4 = r1;
    L_0x00ac:
        if (r4 == 0) goto L_0x011d;
    L_0x00ae:
        r4.close();	 Catch:{ Exception -> 0x00b7 }
        r0.close();	 Catch:{ Exception -> 0x00b7 }
        r4 = r2;
        r0 = r1;
        goto L_0x0056;
    L_0x00b7:
        r1 = move-exception;
        r1.printStackTrace();
        r1 = r4;
        r4 = r2;
        goto L_0x0056;
    L_0x00be:
        r0 = move-exception;
        r4 = r1;
    L_0x00c0:
        if (r4 == 0) goto L_0x00c8;
    L_0x00c2:
        r4.close();	 Catch:{ Exception -> 0x00c9 }
        r1.close();	 Catch:{ Exception -> 0x00c9 }
    L_0x00c8:
        throw r0;
    L_0x00c9:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x00c8;
    L_0x00ce:
        r1 = move-exception;
        r1.printStackTrace();
        r1 = r4;
        r9 = r5;
        r4 = r9;
        goto L_0x0056;
    L_0x00d6:
        r6 = move-exception;
    L_0x00d7:
        if (r1 == 0) goto L_0x011a;
    L_0x00d9:
        r1.close();	 Catch:{ Exception -> 0x00e1 }
        r0.close();	 Catch:{ Exception -> 0x00e1 }
        r0 = r2;
        goto L_0x0078;
    L_0x00e1:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = r2;
        goto L_0x0078;
    L_0x00e7:
        r2 = move-exception;
        r6 = r0;
        r7 = r1;
        r0 = r2;
    L_0x00eb:
        if (r7 == 0) goto L_0x00f3;
    L_0x00ed:
        r7.close();	 Catch:{ Exception -> 0x00f4 }
        r6.close();	 Catch:{ Exception -> 0x00f4 }
    L_0x00f3:
        throw r0;
    L_0x00f4:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x00f3;
    L_0x00f9:
        r6 = move-exception;
        r6.printStackTrace();
        goto L_0x0078;
    L_0x00ff:
        r2 = r0;
        goto L_0x00a6;
    L_0x0101:
        r1 = move-exception;
        r6 = r0;
        r0 = r1;
        goto L_0x00eb;
    L_0x0105:
        r0 = move-exception;
        goto L_0x00eb;
    L_0x0107:
        r1 = move-exception;
        r1 = r7;
        goto L_0x00d7;
    L_0x010a:
        r0 = move-exception;
        r0 = r6;
        r1 = r7;
        goto L_0x00d7;
    L_0x010e:
        r0 = move-exception;
        goto L_0x00c0;
    L_0x0110:
        r1 = move-exception;
        r9 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x00c0;
    L_0x0115:
        r0 = move-exception;
        r0 = r1;
        goto L_0x00ac;
    L_0x0118:
        r5 = move-exception;
        goto L_0x00ac;
    L_0x011a:
        r0 = r2;
        goto L_0x0078;
    L_0x011d:
        r1 = r4;
        r4 = r2;
        goto L_0x0056;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.h.o(android.content.Context):long[]");
    }

    public static String p(Context context) {
        String str = "";
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return "";
            }
            String typeName = activeNetworkInfo.getTypeName();
            return typeName.equalsIgnoreCase("WIFI") ? "WIFI" : typeName.equalsIgnoreCase("MOBILE") ? new StringBuilder(String.valueOf(((TelephonyManager) context.getSystemService("phone")).getNetworkType())).toString() : str;
        } catch (Exception e) {
            return "";
        }
    }

    private static int q(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 1).uid;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
