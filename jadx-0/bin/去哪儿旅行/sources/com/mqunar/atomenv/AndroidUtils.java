package com.mqunar.atomenv;

import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.core.basectx.application.QApplication;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

public class AndroidUtils {
    public static final Uri PREFERRED_APN_URI = Uri.parse("content://telephony/carriers/preferapn");

    public static String getIMEI() {
        try {
            return ((TelephonyManager) QApplication.getContext().getSystemService("phone")).getDeviceId();
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0089 A:{Catch:{ Throwable -> 0x008f }} */
    public static java.lang.String getSN() {
        /*
        r2 = "unknown";
        r1 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x008c }
        r3 = 9;
        if (r1 < r3) goto L_0x0011;
    L_0x0008:
        r1 = new com.mqunar.atomenv.a;	 Catch:{ Throwable -> 0x008c }
        r1.<init>();	 Catch:{ Throwable -> 0x008c }
        r2 = r1.a();	 Catch:{ Throwable -> 0x008c }
    L_0x0011:
        r1 = "unknown";
        r1 = r1.equals(r2);	 Catch:{ Throwable -> 0x008c }
        if (r1 == 0) goto L_0x0096;
    L_0x0019:
        r1 = "android.os.SystemProperties";
        r1 = java.lang.Class.forName(r1);	 Catch:{ Exception -> 0x0091 }
        r3 = "get";
        r4 = 2;
        r4 = new java.lang.Class[r4];	 Catch:{ Exception -> 0x0091 }
        r5 = 0;
        r6 = java.lang.String.class;
        r4[r5] = r6;	 Catch:{ Exception -> 0x0091 }
        r5 = 1;
        r6 = java.lang.String.class;
        r4[r5] = r6;	 Catch:{ Exception -> 0x0091 }
        r3 = r1.getDeclaredMethod(r3, r4);	 Catch:{ Exception -> 0x0091 }
        r1 = 0;
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0091 }
        r5 = 0;
        r6 = "ro.serialno";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0091 }
        r5 = 1;
        r6 = "unknown";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0091 }
        r1 = r3.invoke(r1, r4);	 Catch:{ Exception -> 0x0091 }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x0091 }
        r2 = "unknown";
        r2 = r2.equals(r1);	 Catch:{ Exception -> 0x0094 }
        if (r2 == 0) goto L_0x0098;
    L_0x004e:
        r2 = 0;
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0094 }
        r5 = 0;
        r6 = "gsm.device.sn";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0094 }
        r5 = 1;
        r6 = "unknown";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0094 }
        r2 = r3.invoke(r2, r4);	 Catch:{ Exception -> 0x0094 }
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0094 }
        r1 = r0;
        r2 = r1;
    L_0x0065:
        r1 = "unknown";
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x0091 }
        if (r1 == 0) goto L_0x0096;
    L_0x006d:
        r1 = 0;
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0091 }
        r5 = 0;
        r6 = "ril.serialnumber";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0091 }
        r5 = 1;
        r6 = "unknown";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0091 }
        r1 = r3.invoke(r1, r4);	 Catch:{ Exception -> 0x0091 }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x0091 }
    L_0x0081:
        r2 = "unknown";
        r2 = r2.equals(r1);	 Catch:{ Throwable -> 0x008f }
        if (r2 == 0) goto L_0x008b;
    L_0x0089:
        r1 = "";
    L_0x008b:
        return r1;
    L_0x008c:
        r1 = move-exception;
        r1 = r2;
        goto L_0x008b;
    L_0x008f:
        r2 = move-exception;
        goto L_0x008b;
    L_0x0091:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0081;
    L_0x0094:
        r2 = move-exception;
        goto L_0x0081;
    L_0x0096:
        r1 = r2;
        goto L_0x0081;
    L_0x0098:
        r2 = r1;
        goto L_0x0065;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.atomenv.AndroidUtils.getSN():java.lang.String");
    }

    public static String getMac() {
        String str = "";
        String str2 = "";
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ").getInputStream()));
            while (str2 != null) {
                str2 = lineNumberReader.readLine();
                if (str2 != null) {
                    return str2.trim();
                }
            }
            return str;
        } catch (Throwable th) {
            return str;
        }
    }

    public static String getADID() {
        try {
            String string = Secure.getString(QApplication.getContext().getContentResolver(), "android_id");
            if ("9774d56d682e549c".equalsIgnoreCase(string) || TextUtils.isEmpty(string)) {
                return getIMEI();
            }
            return string;
        } catch (Throwable th) {
            return "";
        }
    }

    public static String getApnName() {
        String str = "";
        try {
            Cursor query = QApplication.getContext().getContentResolver().query(PREFERRED_APN_URI, new String[]{"_id", "apn", "type"}, null, null, null);
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
            query = QApplication.getContext().getContentResolver().query(PREFERRED_APN_URI, null, null, null, null);
            if (query == null) {
                return str;
            }
            query.moveToFirst();
            str2 = query.getString(query.getColumnIndex(AIUIConstant.USER));
            query.close();
            return str2;
        } catch (Exception e) {
            try {
                return ((ConnectivityManager) QApplication.getContext().getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            } catch (Exception e2) {
                return "";
            }
        }
    }

    public static String getSimOperator() {
        try {
            return ((TelephonyManager) QApplication.getContext().getSystemService("phone")).getSimOperator();
        } catch (Throwable th) {
            return "";
        }
    }
}
