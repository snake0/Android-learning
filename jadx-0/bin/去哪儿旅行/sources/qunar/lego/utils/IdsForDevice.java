package qunar.lego.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.iflytek.aiui.AIUIConstant;
import java.util.Arrays;
import org.json.JSONObject;

public class IdsForDevice {
    private static String[] BAD_IMEI_LIST = new String[]{"000000000000000", "0", "1111", "baidu", "00000000"};
    private static final String FORMAT_FAILURE_IMEI = "[IMEI] Failure -> %s";
    private static final String FORMAT_FAILURE_IMSI = "[IMSI] Failure -> %s";
    private static final String FORMAT_FAILURE_SERIAL = "[SERIAL] Failure -> %s";

    @SuppressLint({"MissingPermission"})
    public static String getImei(Context context) {
        if (context == null) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        String str = "";
        if (!GetInfoUtils.hasPermission(context, "android.permission.READ_SMS") || !GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
            return str;
        }
        String str2;
        try {
            if (VERSION.SDK_INT >= 26) {
                str2 = (String) telephonyManager.getClass().getDeclaredMethod("getImei", new Class[0]).invoke(telephonyManager, new Object[0]);
            } else {
                str2 = telephonyManager.getDeviceId();
            }
        } catch (Throwable th) {
            ACRAErrorReporterBridge.getInstance().handleSilentException(th);
            str2 = str;
        }
        if (isBadImei(str2)) {
            return "";
        }
        return str2;
    }

    @SuppressLint({"MissingPermission"})
    public static String getSerial(Context context) {
        String str = "";
        if (!GetInfoUtils.hasPermission(context, "android.permission.READ_SMS") || !GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
            return str;
        }
        if (VERSION.SDK_INT < 26) {
            return Build.SERIAL;
        }
        try {
            return (String) Build.class.getDeclaredMethod("getSerial", new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable th) {
            Throwable th2 = th;
            str = "";
            ACRAErrorReporterBridge.getInstance().handleSilentException(th2);
            return str;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static String getImsi(Context context) {
        String str = "";
        if (!GetInfoUtils.hasPermission(context, "android.permission.READ_SMS") || !GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
            return str;
        }
        if (context == null) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            return telephonyManager.getSubscriberId();
        } catch (Throwable th) {
            str = "";
            ACRAErrorReporterBridge.getInstance().handleSilentException(th);
            return str;
        }
    }

    private static boolean isBadImei(String str) {
        return TextUtils.isEmpty(str) || Arrays.binarySearch(BAD_IMEI_LIST, str) >= 0;
    }

    @SuppressLint({"MissingPermission"})
    public static String getADID(Context context) {
        try {
            String string = Secure.getString(context.getContentResolver(), "android_id");
            if (TextUtils.isEmpty(string) || "9774d56d682e549c".equalsIgnoreCase(string)) {
                return "";
            }
            return string;
        } catch (Throwable th) {
            return "";
        }
    }

    public static String getApnName(Context context) {
        Uri parse = Uri.parse("content://telephony/carriers/preferapn");
        String str = "";
        try {
            Cursor query = context.getContentResolver().query(parse, new String[]{"_id", "apn", "type"}, (String) null, (String[]) null, (String) null);
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
            Cursor query2 = context.getContentResolver().query(parse, (String[]) null, (String) null, (String[]) null, (String) null);
            if (query2 == null) {
                return str;
            }
            query2.moveToFirst();
            str2 = query2.getString(query2.getColumnIndex(AIUIConstant.USER));
            query2.close();
            return str2;
        } catch (Exception e) {
            try {
                return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            } catch (Exception e2) {
                return "";
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    public static String getSimOperator(Context context) {
        String simOperator;
        String str = "";
        if (GetInfoUtils.hasPermission(context, "android.permission.READ_SMS") && GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return str;
                }
                simOperator = telephonyManager.getSimOperator();
            } catch (Throwable th) {
                ACRAErrorReporterBridge.getInstance().handleSilentException(th);
                return "";
            }
        }
        simOperator = str;
        return simOperator;
    }

    @SuppressLint({"MissingPermission"})
    public static String getPhoneNumber(Context context) {
        String line1Number;
        String str = "";
        if (GetInfoUtils.hasPermission(context, "android.permission.READ_SMS") && GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return str;
                }
                line1Number = telephonyManager.getLine1Number();
            } catch (Throwable th) {
                ACRAErrorReporterBridge.getInstance().handleSilentException(th);
                return "";
            }
        }
        line1Number = str;
        return line1Number;
    }

    @SuppressLint({"MissingPermission"})
    public static String getSimSerialNumber(Context context) {
        String simSerialNumber;
        String str = "";
        try {
            if (GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return str;
                }
                simSerialNumber = telephonyManager.getSimSerialNumber();
                return simSerialNumber;
            }
        } catch (Throwable th) {
            ACRAErrorReporterBridge.getInstance().handleSilentException(th);
        }
        simSerialNumber = str;
        return simSerialNumber;
    }

    public static String ishasSimCard(Context context) {
        String str = "true";
        if (!GetInfoUtils.hasPermission(context, "android.permission.READ_PHONE_STATE")) {
            return str;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return str;
            }
            String str2;
            switch (telephonyManager.getSimState()) {
                case 0:
                    str2 = "false";
                    break;
                case 1:
                    str2 = "false";
                    break;
                default:
                    str2 = str;
                    break;
            }
            return str2;
        } catch (Throwable th) {
            ACRAErrorReporterBridge.getInstance().handleSilentException(th);
            return str;
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static java.lang.String getWifiInfo(android.content.Context r7) {
        /*
        r2 = new org.json.JSONArray;
        r2.<init>();
        r0 = "android.permission.ACCESS_FINE_LOCATION";
        r0 = qunar.lego.utils.GetInfoUtils.hasPermission(r7, r0);
        if (r0 == 0) goto L_0x004b;
    L_0x000d:
        r0 = "android.permission.ACCESS_COARSE_LOCATION";
        r0 = qunar.lego.utils.GetInfoUtils.hasPermission(r7, r0);
        if (r0 == 0) goto L_0x004b;
    L_0x0015:
        r0 = "android.permission.ACCESS_WIFI_STATE";
        r0 = qunar.lego.utils.GetInfoUtils.hasPermission(r7, r0);
        if (r0 == 0) goto L_0x004b;
    L_0x001d:
        r0 = "wifi";
        r0 = r7.getSystemService(r0);	 Catch:{ Throwable -> 0x007c }
        r0 = (android.net.wifi.WifiManager) r0;	 Catch:{ Throwable -> 0x007c }
        if (r0 != 0) goto L_0x002a;
    L_0x0027:
        r0 = "[]";
    L_0x0029:
        return r0;
    L_0x002a:
        r1 = r0.getWifiState();	 Catch:{ Throwable -> 0x007c }
        r3 = 3;
        if (r1 != r3) goto L_0x004b;
    L_0x0031:
        r1 = r0.getScanResults();	 Catch:{ Throwable -> 0x007c }
        r0 = 0;
        r3 = r1.iterator();	 Catch:{ Throwable -> 0x007c }
        r1 = r0;
    L_0x003b:
        r0 = r3.hasNext();	 Catch:{ Throwable -> 0x007c }
        if (r0 == 0) goto L_0x004b;
    L_0x0041:
        r0 = r3.next();	 Catch:{ Throwable -> 0x007c }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ Throwable -> 0x007c }
        r4 = 10;
        if (r1 <= r4) goto L_0x0050;
    L_0x004b:
        r0 = r2.toString();
        goto L_0x0029;
    L_0x0050:
        r4 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0071 }
        r4.<init>();	 Catch:{ JSONException -> 0x0071 }
        r5 = "SSID";
        r6 = r0.SSID;	 Catch:{ JSONException -> 0x0071 }
        r4.put(r5, r6);	 Catch:{ JSONException -> 0x0071 }
        r5 = "BSSID";
        r6 = r0.BSSID;	 Catch:{ JSONException -> 0x0071 }
        r4.put(r5, r6);	 Catch:{ JSONException -> 0x0071 }
        r5 = "level";
        r0 = r0.level;	 Catch:{ JSONException -> 0x0071 }
        r4.put(r5, r0);	 Catch:{ JSONException -> 0x0071 }
        r2.put(r4);	 Catch:{ JSONException -> 0x0071 }
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x003b;
    L_0x0071:
        r0 = move-exception;
        r1 = qunar.lego.utils.ACRAErrorReporterBridge.getInstance();	 Catch:{ Throwable -> 0x007c }
        r1.handleSilentException(r0);	 Catch:{ Throwable -> 0x007c }
        r0 = "[]";
        goto L_0x0029;
    L_0x007c:
        r0 = move-exception;
        r1 = qunar.lego.utils.ACRAErrorReporterBridge.getInstance();
        r1.handleSilentException(r0);
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.lego.utils.IdsForDevice.getWifiInfo(android.content.Context):java.lang.String");
    }

    public static String getGSM(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (GetInfoUtils.hasPermission(context, "android.permission.ACCESS_FINE_LOCATION") && GetInfoUtils.hasPermission(context, "android.permission.ACCESS_COARSE_LOCATION")) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return jSONObject.toString();
            }
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                if (!TextUtils.isEmpty(networkOperator) && networkOperator.length() >= 5) {
                    String substring = networkOperator.substring(0, 3);
                    networkOperator = networkOperator.substring(3, 5);
                    CellLocation cellLocation = telephonyManager.getCellLocation();
                    int lac;
                    int cid;
                    if (cellLocation != null && (cellLocation instanceof GsmCellLocation)) {
                        GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                        lac = gsmCellLocation.getLac();
                        cid = gsmCellLocation.getCid();
                        jSONObject.put("MCC", substring);
                        jSONObject.put("MNC", networkOperator);
                        jSONObject.put("LAC", lac);
                        jSONObject.put("CID", cid);
                    } else if (cellLocation != null) {
                        if (cellLocation instanceof CdmaCellLocation) {
                            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                            lac = cdmaCellLocation.getNetworkId();
                            cid = cdmaCellLocation.getBaseStationId();
                            jSONObject.put("MCC", substring);
                            jSONObject.put("MNC", networkOperator);
                            jSONObject.put("LAC", lac);
                            jSONObject.put("CID", cid);
                        }
                    }
                }
            } catch (Throwable th) {
                ACRAErrorReporterBridge.getInstance().handleSilentException(th);
            }
        }
        return jSONObject.toString();
    }
}
