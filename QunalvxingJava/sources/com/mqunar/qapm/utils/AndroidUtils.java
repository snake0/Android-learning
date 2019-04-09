package com.mqunar.qapm.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.contacts.basis.model.Contact;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

public class AndroidUtils {
    public static final int QAPM_OPEN_PAGE_KEY = 1878973627;
    public static final String UNCONNECT = "unconnect";
    public static final String UNKNOWN = "Unknown";
    private static final Uri a = Uri.parse("content://telephony/carriers/preferapn");
    private static String b = null;
    private static String c = "";
    private static String d = EnvironmentCompat.MEDIA_UNKNOWN;

    @SuppressLint({"MissingPermission"})
    public static String getIMEI(Context context) {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        try {
            b = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Throwable th) {
        }
        return b;
    }

    public static String getSN() {
        if (!EnvironmentCompat.MEDIA_UNKNOWN.equals(d)) {
            return d;
        }
        try {
            if (VERSION.SDK_INT >= 9) {
                d = new a().a();
            }
            if (EnvironmentCompat.MEDIA_UNKNOWN.equals(d)) {
                try {
                    Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[]{String.class, String.class});
                    d = (String) declaredMethod.invoke(null, new Object[]{"ro.serialno", EnvironmentCompat.MEDIA_UNKNOWN});
                    if (EnvironmentCompat.MEDIA_UNKNOWN.equals(d)) {
                        d = (String) declaredMethod.invoke(null, new Object[]{"gsm.device.sn", EnvironmentCompat.MEDIA_UNKNOWN});
                    }
                    if (EnvironmentCompat.MEDIA_UNKNOWN.equals(d)) {
                        d = (String) declaredMethod.invoke(null, new Object[]{"ril.serialnumber", EnvironmentCompat.MEDIA_UNKNOWN});
                    }
                } catch (Exception e) {
                }
            }
            if (EnvironmentCompat.MEDIA_UNKNOWN.equals(d)) {
                return "";
            }
        } catch (Throwable th) {
        }
        return d;
    }

    public static String getMac() {
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        String str = "";
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ").getInputStream()));
            while (str != null) {
                str = lineNumberReader.readLine();
                if (str != null) {
                    c = str.trim();
                    break;
                }
            }
        } catch (Throwable th) {
        }
        return c;
    }

    public static String getADID(Context context) {
        try {
            String string = Secure.getString(context.getContentResolver(), "android_id");
            if ("9774d56d682e549c".equalsIgnoreCase(string) || TextUtils.isEmpty(string)) {
                return getIMEI(context);
            }
            return string;
        } catch (Throwable th) {
            return "";
        }
    }

    public static String getApnName(Context context) {
        String str = "";
        try {
            Cursor query = context.getContentResolver().query(a, new String[]{"_id", "apn", "type"}, null, null, null);
            String str2;
            if (query != null) {
                query.moveToFirst();
                if (query.getCount() == 0 || query.isAfterLast()) {
                    str2 = str;
                } else {
                    str2 = query.getString(query.getColumnIndex("apn"));
                }
                query.close();
                return str2;
            }
            query = context.getContentResolver().query(a, null, null, null, null);
            if (query == null) {
                return str;
            }
            query.moveToFirst();
            str2 = query.getString(query.getColumnIndex(AIUIConstant.USER));
            query.close();
            return str2;
        } catch (Exception e) {
            try {
                return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            } catch (Exception e2) {
                return "";
            }
        }
    }

    public static String getSimOperator(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        } catch (Throwable th) {
            return "";
        }
    }

    public static String carrierNameFromContext(Context context) {
        try {
            NetworkInfo a = a(context);
            if (!a(a)) {
                return "unconnect";
            }
            if (b(a)) {
                return b(context);
            }
            if (c(a)) {
                return "wifi";
            }
            return "Unknown";
        } catch (SecurityException e) {
            return "Unknown";
        }
    }

    public static String wanType(Context context) {
        try {
            NetworkInfo a = a(context);
            if (!a(a)) {
                return "unconnect";
            }
            if (c(a)) {
                return "wifi";
            }
            return b(a) ? a(a.getSubtype()) : "Unknown";
        } catch (SecurityException e) {
            return "Unknown";
        }
    }

    private static boolean a(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnected();
    }

    private static boolean b(NetworkInfo networkInfo) {
        switch (networkInfo.getType()) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }

    private static boolean c(NetworkInfo networkInfo) {
        switch (networkInfo.getType()) {
            case 1:
            case 6:
            case 7:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static NetworkInfo a(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            throw e;
        }
    }

    private static String b(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null || simOperator.trim().isEmpty()) {
            simOperator = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        Object obj = (Build.PRODUCT.equals("google_sdk") || Build.PRODUCT.equals("sdk") || Build.PRODUCT.equals("sdk_x86") || Build.FINGERPRINT.startsWith("generic")) ? 1 : null;
        return (!simOperator.equals("Android") || obj == null) ? simOperator : "wifi";
    }

    private static String a(int i) {
        switch (i) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "EVDO rev 0";
            case 6:
                return "EVDO rev A";
            case 7:
                return "1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "IDEN";
            case 12:
                return "EVDO rev B";
            case 13:
                return "LTE";
            case 14:
                return "HRPD";
            case 15:
                return "HSPAP";
            default:
                return "Unknown";
        }
    }

    public static String stringToMD5(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder stringBuilder = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                if ((b & 255) < 16) {
                    stringBuilder.append("0");
                }
                stringBuilder.append(Integer.toHexString(b & 255));
            }
            return stringBuilder.toString();
        } catch (Throwable th) {
            return "";
        }
    }

    public static String getTraceId(Context context) {
        String stringToMD5 = stringToMD5(UUID.randomUUID().toString() + getIMEI(context));
        if (stringToMD5 == null) {
            return "";
        }
        return stringToMD5;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARNING: Missing block: B:12:0x0046, code skipped:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L_0x0048;
     */
    /* JADX WARNING: Missing block: B:35:0x00e6, code skipped:
            if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x00e8;
     */
    public static java.lang.String getPageName(android.content.Context r6) {
        /*
        r0 = r6 instanceof android.app.Application;
        if (r0 == 0) goto L_0x000b;
    L_0x0004:
        r0 = "AndroidUtils";
        r1 = "Warning! getPageName but context is application!";
        android.util.Log.d(r0, r1);
    L_0x000b:
        r1 = r6;
    L_0x000c:
        r0 = r1 instanceof android.content.ContextWrapper;
        if (r0 == 0) goto L_0x0014;
    L_0x0010:
        r0 = r1 instanceof android.app.Activity;
        if (r0 == 0) goto L_0x00b6;
    L_0x0014:
        r0 = r1.getClass();
        r2 = r0.getSimpleName();
        r0 = "com.mqunar.core.basectx.launcherfragment.TransparentFragmentActivityBase";
        r0 = java.lang.Class.forName(r0);	 Catch:{ Throwable -> 0x00eb }
        r3 = "com.mqunar.core.basectx.launcherfragment.LauncherFragmentActivityBase";
        r3 = java.lang.Class.forName(r3);	 Catch:{ Throwable -> 0x00eb }
        r4 = r1.getClass();	 Catch:{ Throwable -> 0x00eb }
        r4 = r0.isAssignableFrom(r4);	 Catch:{ Throwable -> 0x00eb }
        if (r4 == 0) goto L_0x00c8;
    L_0x0032:
        r3 = "_fragmentName";
        r0 = r0.getDeclaredField(r3);	 Catch:{ Throwable -> 0x00eb }
        r3 = 1;
        r0.setAccessible(r3);	 Catch:{ Throwable -> 0x00eb }
        r0 = r0.get(r1);	 Catch:{ Throwable -> 0x00eb }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x00eb }
        r3 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x00eb }
        if (r3 != 0) goto L_0x00e8;
    L_0x0048:
        r2 = r1.getClass();
        r2 = getAtomName(r2);
        r3 = android.text.TextUtils.isEmpty(r2);
        if (r3 == 0) goto L_0x00f8;
    L_0x0056:
        r3 = ".";
        r3 = r0.indexOf(r3);
        if (r3 <= 0) goto L_0x00f8;
    L_0x005e:
        r3 = java.lang.Class.forName(r0);	 Catch:{ Throwable -> 0x00f0 }
        r2 = getAtomName(r3);	 Catch:{ Throwable -> 0x00f0 }
        r0 = r3.getSimpleName();	 Catch:{ Throwable -> 0x00f0 }
        r5 = r2;
        r2 = r0;
        r0 = r5;
    L_0x006d:
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 != 0) goto L_0x008a;
    L_0x0073:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r0 = r3.append(r0);
        r3 = ".";
        r0 = r0.append(r3);
        r0 = r0.append(r2);
        r2 = r0.toString();
    L_0x008a:
        r0 = r1 instanceof android.app.Activity;
        if (r0 == 0) goto L_0x00b5;
    L_0x008e:
        r1 = (android.app.Activity) r1;
        r0 = a(r1);
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x00b5;
    L_0x009a:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1 = r1.append(r2);
        r2 = "-";
        r1 = r1.append(r2);
        r0 = replace(r0);
        r0 = r1.append(r0);
        r2 = r0.toString();
    L_0x00b5:
        return r2;
    L_0x00b6:
        r0 = r1;
        r0 = (android.content.ContextWrapper) r0;
        r0 = r0.getBaseContext();
        if (r0 == 0) goto L_0x0014;
    L_0x00bf:
        r1 = (android.content.ContextWrapper) r1;
        r6 = r1.getBaseContext();
        r1 = r6;
        goto L_0x000c;
    L_0x00c8:
        r0 = r1.getClass();	 Catch:{ Throwable -> 0x00eb }
        r0 = r3.isAssignableFrom(r0);	 Catch:{ Throwable -> 0x00eb }
        if (r0 == 0) goto L_0x00e8;
    L_0x00d2:
        r0 = "_fragmentName";
        r0 = r3.getDeclaredField(r0);	 Catch:{ Throwable -> 0x00eb }
        r3 = 1;
        r0.setAccessible(r3);	 Catch:{ Throwable -> 0x00eb }
        r0 = r0.get(r1);	 Catch:{ Throwable -> 0x00eb }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x00eb }
        r3 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x00eb }
        if (r3 == 0) goto L_0x0048;
    L_0x00e8:
        r0 = r2;
        goto L_0x0048;
    L_0x00eb:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x00e8;
    L_0x00f0:
        r3 = move-exception;
        r3 = "AndroidUtils";
        r4 = "found class crash";
        android.util.Log.e(r3, r4);
    L_0x00f8:
        r5 = r2;
        r2 = r0;
        r0 = r5;
        goto L_0x006d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.qapm.utils.AndroidUtils.getPageName(android.content.Context):java.lang.String");
    }

    public static String getAtomName(Class cls) {
        try {
            Class cls2 = Class.forName("com.mqunar.core.QunarApkLoader");
            Method declaredMethod = cls2.getDeclaredMethod("getPkgName", new Class[]{String.class});
            if (declaredMethod == null) {
                declaredMethod = cls2.getDeclaredMethod("getPackageName", new Class[]{String.class});
            }
            return ((String) declaredMethod.invoke(null, new Object[]{cls.getName()})).replace("com.mqunar.", "").replace("atom.", "");
        } catch (Throwable th) {
            return null;
        }
    }

    private static String a(Activity activity) {
        View peekDecorView = activity.getWindow().peekDecorView();
        if (peekDecorView != null) {
            return a(peekDecorView, QAPM_OPEN_PAGE_KEY);
        }
        return null;
    }

    @TargetApi(4)
    private static String a(View view, int i) {
        Object tag = view.getTag(i);
        if (tag instanceof String) {
            return (String) tag;
        }
        return null;
    }

    public static String replace(String str) {
        return TextUtils.isEmpty(str) ? str : str.replace("|", "｜").replace(Contact.OTHER, "＊").replace(":", "：").replace("&", "＆").replace(IOUtils.LINE_SEPARATOR_UNIX, "、Ｎ").replace("^", "＾").trim();
    }
}
