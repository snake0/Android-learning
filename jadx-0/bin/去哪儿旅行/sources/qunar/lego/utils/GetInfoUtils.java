package qunar.lego.utils;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.yvideo.BuildConfig;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class GetInfoUtils {
    static String DEFAULT_VALUE = "";
    private static final String GLOBALENV_CLASS_STR = "com.mqunar.atomenv.GlobalEnv";
    private static final Uri PREFERRED_APN_URI = Uri.parse("content://telephony/carriers/preferapn");
    private static String batteryData = DEFAULT_VALUE;
    private static BatteryReceiver batteryReceiver = new BatteryReceiver();
    private static SensorEventListener gyroscopeListener = null;
    private static String gyroscopeSensorData = DEFAULT_VALUE;
    private static SensorEventListener lightListener = null;
    private static String lightSensorData = DEFAULT_VALUE;
    private static Object mGlobalEnv = null;
    private static SensorEventListener orientationListener = null;
    private static String orientationSensorData = DEFAULT_VALUE;
    private static GetInfoUtils sGetInfoUtils = null;
    private static SensorManager sSensorManager;

    class BatteryReceiver extends BroadcastReceiver {
        private BatteryReceiver() {
        }

        /* synthetic */ BatteryReceiver(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            int i = intent.getExtras().getInt("level");
            GetInfoUtils.batteryData = String.valueOf((i * 100) / intent.getExtras().getInt("scale")) + "," + System.currentTimeMillis();
            context.getApplicationContext().unregisterReceiver(GetInfoUtils.batteryReceiver);
        }
    }

    GetInfoUtils() {
    }

    static GetInfoUtils getInstance() {
        if (sGetInfoUtils == null) {
            synchronized (GetInfoUtils.class) {
                if (sGetInfoUtils == null) {
                    sGetInfoUtils = new GetInfoUtils();
                }
            }
        }
        return sGetInfoUtils;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(4)
    public String getWh(Context context) {
        String str = DEFAULT_VALUE;
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels + MapViewConstants.ATTR_X + displayMetrics.heightPixels + MapViewConstants.ATTR_X + displayMetrics.densityDpi;
        } catch (Throwable th) {
            return str;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getGid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getGid", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getSid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getSid", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getPid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getPid", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getVid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getVid", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getCid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getRCid", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getUid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getUid", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getUSid() {
        try {
            getGlobalRnvInstance();
            String str = (String) invokeMethod("getUserId", mGlobalEnv, new Class[0], new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(3)
    public String getADID(Context context) {
        try {
            String string = Secure.getString(context.getContentResolver(), "android_id");
            if ("9774d56d682e549c".equalsIgnoreCase(string) || TextUtils.isEmpty(string)) {
                return getUid();
            }
            return string;
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getSsn(Context context) {
        try {
            return ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getSimSerialNumber();
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public JSONObject getBuild() {
        int i = 0;
        JSONObject jSONObject = new JSONObject();
        try {
            for (Field field : Build.class.getDeclaredFields()) {
                field.setAccessible(true);
                jSONObject.put(field.getName(), String.valueOf(field.get(null)));
            }
        } catch (Throwable th) {
        }
        try {
            Field[] declaredFields = VERSION.class.getDeclaredFields();
            int length = declaredFields.length;
            while (i < length) {
                Field field2 = declaredFields[i];
                field2.setAccessible(true);
                jSONObject.put(field2.getName(), String.valueOf(field2.get(null)));
                i++;
            }
        } catch (Throwable th2) {
        }
        return jSONObject;
    }

    /* Access modifiers changed, original: 0000 */
    public String getApn(Context context) {
        String str;
        String str2 = DEFAULT_VALUE;
        try {
            Cursor query = context.getApplicationContext().getContentResolver().query(PREFERRED_APN_URI, new String[]{"_id", "apn", "type"}, null, null, null);
            if (query != null) {
                query.moveToFirst();
                if (query.getCount() == 0 || query.isAfterLast()) {
                    str = str2;
                } else {
                    str = query.getString(query.getColumnIndex("apn"));
                }
                query.close();
            } else {
                query = context.getApplicationContext().getContentResolver().query(PREFERRED_APN_URI, null, null, null, null);
                if (query != null) {
                    query.moveToFirst();
                    str = query.getString(query.getColumnIndex(AIUIConstant.USER));
                    query.close();
                } else {
                    str = str2;
                }
            }
        } catch (Exception e) {
            try {
                str = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            } catch (Exception e2) {
                str = DEFAULT_VALUE;
            }
        }
        if (str == null) {
            return DEFAULT_VALUE;
        }
        return str.replace("\"", "");
    }

    /* Access modifiers changed, original: 0000 */
    public String getImsi(Context context) {
        try {
            return ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getSubscriberId();
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getIp() {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    Object obj2;
                    InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                    if (inetAddress.isLoopbackAddress() || (inetAddress instanceof Inet6Address)) {
                        obj2 = obj;
                    } else {
                        if (obj == null) {
                            stringBuilder.append(',');
                        }
                        stringBuilder.append(inetAddress.getHostAddress());
                        obj2 = null;
                    }
                    obj = obj2;
                }
            }
            return stringBuilder.toString();
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getLocation() {
        try {
            Location location = (Location) invokeStaticMethod("qunar.sdk.location.LocationFacade", "getNewestCacheLocation", new Class[0], new Object[0]);
            if (location != null) {
                return location.getLongitude() + "," + location.getLatitude();
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(9)
    public String getMacAddress() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            NetworkInterface byName = NetworkInterface.getByName("eth1");
            if (byName == null) {
                byName = NetworkInterface.getByName("wlan0");
            }
            if (byName == null) {
                return DEFAULT_VALUE;
            }
            int length = byName.getHardwareAddress().length;
            for (int i = 0; i < length; i++) {
                stringBuilder.append(String.format("%02X:", new Object[]{Byte.valueOf(r1[i])}));
            }
            if (stringBuilder.length() > 0) {
                stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            }
            return stringBuilder.toString();
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getMno(Context context) {
        try {
            return ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getSimOperator();
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getModel() {
        return Build.MODEL;
    }

    /* Access modifiers changed, original: 0000 */
    public String getNetwork(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getTypeName();
            }
        } catch (Throwable th) {
        }
        return DEFAULT_VALUE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getOsVersion() {
        return VERSION.RELEASE;
    }

    /* Access modifiers changed, original: 0000 */
    public String getVolume(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
            return String.valueOf(audioManager.getStreamVolume(4) + (((audioManager.getStreamVolume(0) + audioManager.getStreamVolume(1)) + audioManager.getStreamVolume(2)) + audioManager.getStreamVolume(3)));
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public JSONObject getLinkedWifi(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (hasPermission(context, "android.permission.ACCESS_WIFI_STATE") && wifiManager.getWifiState() == 3) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ssid", connectionInfo.getSSID().replace("\"", ""));
                jSONObject.put("bssid", connectionInfo.getBSSID());
                return jSONObject;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public String getBaseStationId(Context context) {
        try {
            return String.valueOf(((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getCellLocation());
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0038  */
    public java.lang.String getCpuName() {
        /*
        r5 = this;
        r0 = 0;
        r2 = new java.io.FileReader;	 Catch:{ Throwable -> 0x002a, all -> 0x0030 }
        r1 = "/proc/cpuinfo";
        r2.<init>(r1);	 Catch:{ Throwable -> 0x002a, all -> 0x0030 }
        r1 = new java.io.BufferedReader;	 Catch:{ Throwable -> 0x002a, all -> 0x0030 }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x002a, all -> 0x0030 }
    L_0x000d:
        r2 = r1.readLine();	 Catch:{ Throwable -> 0x003d, all -> 0x003b }
        if (r2 == 0) goto L_0x0024;
    L_0x0013:
        r3 = "Hardware";
        r3 = r2.contains(r3);	 Catch:{ Throwable -> 0x003d, all -> 0x003b }
        if (r3 == 0) goto L_0x000d;
    L_0x001b:
        r3 = ":";
        r2 = r2.split(r3);	 Catch:{ Throwable -> 0x003d, all -> 0x003b }
        r3 = 1;
        r0 = r2[r3];	 Catch:{ Throwable -> 0x003d, all -> 0x003b }
    L_0x0024:
        safeCloseIO(r1);
    L_0x0027:
        if (r0 == 0) goto L_0x0038;
    L_0x0029:
        return r0;
    L_0x002a:
        r1 = move-exception;
        r1 = r0;
    L_0x002c:
        safeCloseIO(r1);
        goto L_0x0027;
    L_0x0030:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0034:
        safeCloseIO(r1);
        throw r0;
    L_0x0038:
        r0 = DEFAULT_VALUE;
        goto L_0x0029;
    L_0x003b:
        r0 = move-exception;
        goto L_0x0034;
    L_0x003d:
        r2 = move-exception;
        goto L_0x002c;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.lego.utils.GetInfoUtils.getCpuName():java.lang.String");
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0036  */
    public java.lang.String getImageCount(android.content.Context r8) {
        /*
        r7 = this;
        r6 = 0;
        r0 = r8.getApplicationContext();	 Catch:{ Throwable -> 0x002b, all -> 0x0033 }
        r0 = r0.getContentResolver();	 Catch:{ Throwable -> 0x002b, all -> 0x0033 }
        r1 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;	 Catch:{ Throwable -> 0x002b, all -> 0x0033 }
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Throwable -> 0x002b, all -> 0x0033 }
        if (r1 == 0) goto L_0x0023;
    L_0x0015:
        r0 = r1.getCount();	 Catch:{ Throwable -> 0x003d, all -> 0x003a }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ Throwable -> 0x003d, all -> 0x003a }
        if (r1 == 0) goto L_0x0022;
    L_0x001f:
        r1.close();
    L_0x0022:
        return r0;
    L_0x0023:
        if (r1 == 0) goto L_0x0028;
    L_0x0025:
        r1.close();
    L_0x0028:
        r0 = DEFAULT_VALUE;
        goto L_0x0022;
    L_0x002b:
        r0 = move-exception;
        r0 = r6;
    L_0x002d:
        if (r0 == 0) goto L_0x0028;
    L_0x002f:
        r0.close();
        goto L_0x0028;
    L_0x0033:
        r0 = move-exception;
    L_0x0034:
        if (r6 == 0) goto L_0x0039;
    L_0x0036:
        r6.close();
    L_0x0039:
        throw r0;
    L_0x003a:
        r0 = move-exception;
        r6 = r1;
        goto L_0x0034;
    L_0x003d:
        r0 = move-exception;
        r0 = r1;
        goto L_0x002d;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.lego.utils.GetInfoUtils.getImageCount(android.content.Context):java.lang.String");
    }

    /* Access modifiers changed, original: 0000 */
    public String getTel(Context context) {
        try {
            return ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getLine1Number();
        } catch (Throwable th) {
            return DEFAULT_VALUE;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public JSONArray getWifiList(Context context, int i) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (hasPermission(context, "android.permission.ACCESS_WIFI_STATE") && wifiManager.getWifiState() == 3) {
                List scanResults = wifiManager.getScanResults();
                Collections.sort(scanResults, new Comparator<ScanResult>() {
                    public int compare(ScanResult scanResult, ScanResult scanResult2) {
                        return scanResult2.level - scanResult.level;
                    }
                });
                JSONArray jSONArray = new JSONArray();
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < scanResults.size() && i3 < i) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("ssid", ((ScanResult) scanResults.get(i3)).SSID);
                        jSONObject.put("bssid", ((ScanResult) scanResults.get(i3)).BSSID.replace("2", BuildConfig.VERSION_NAME).replace("a", "b"));
                        jSONObject.put("level", WifiManager.calculateSignalLevel(((ScanResult) scanResults.get(i3)).level, 1001));
                        jSONArray.put(jSONObject);
                        i2 = i3 + 1;
                    }
                }
                return jSONArray;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public String getGyroscopeSensorData(Context context) {
        try {
            registerGyroscopeSensor(context);
        } catch (Throwable th) {
        }
        return gyroscopeSensorData;
    }

    /* Access modifiers changed, original: 0000 */
    public String getLightSensorData(Context context) {
        try {
            registerLightSensor(context);
        } catch (Throwable th) {
        }
        return lightSensorData;
    }

    /* Access modifiers changed, original: 0000 */
    public String getOrientationSensorData(Context context) {
        try {
            registerOrientationSensor(context);
        } catch (Throwable th) {
        }
        return orientationSensorData;
    }

    /* Access modifiers changed, original: 0000 */
    public String getBattery(Context context) {
        try {
            registerBattery(context);
        } catch (Throwable th) {
        }
        return batteryData;
    }

    private static SensorManager getSensorManager(Context context) {
        if (sSensorManager == null) {
            sSensorManager = (SensorManager) context.getApplicationContext().getSystemService("sensor");
        }
        return sSensorManager;
    }

    @TargetApi(3)
    private static synchronized void registerGyroscopeSensor(Context context) {
        synchronized (GetInfoUtils.class) {
            final SensorManager sensorManager = getSensorManager(context);
            Sensor defaultSensor = sensorManager.getDefaultSensor(4);
            if (gyroscopeListener != null) {
                sensorManager.unregisterListener(gyroscopeListener);
            }
            gyroscopeListener = new SensorEventListener() {
                public void onSensorChanged(SensorEvent sensorEvent) {
                    GetInfoUtils.gyroscopeSensorData = sensorEvent.values[0] + "," + sensorEvent.values[1] + "," + sensorEvent.values[2] + "," + System.currentTimeMillis();
                    if (GetInfoUtils.gyroscopeListener != null) {
                        sensorManager.unregisterListener(GetInfoUtils.gyroscopeListener);
                    }
                }

                public void onAccuracyChanged(Sensor sensor, int i) {
                }
            };
            sensorManager.registerListener(gyroscopeListener, defaultSensor, 3);
        }
    }

    @TargetApi(3)
    private static synchronized void registerLightSensor(Context context) {
        synchronized (GetInfoUtils.class) {
            final SensorManager sensorManager = getSensorManager(context);
            Sensor defaultSensor = sensorManager.getDefaultSensor(5);
            if (lightListener != null) {
                sensorManager.unregisterListener(lightListener);
            }
            lightListener = new SensorEventListener() {
                public void onSensorChanged(SensorEvent sensorEvent) {
                    GetInfoUtils.lightSensorData = String.valueOf(sensorEvent.values[0] + "," + System.currentTimeMillis());
                    if (GetInfoUtils.lightListener != null) {
                        sensorManager.unregisterListener(GetInfoUtils.lightListener);
                    }
                }

                public void onAccuracyChanged(Sensor sensor, int i) {
                }
            };
            sensorManager.registerListener(lightListener, defaultSensor, 3);
        }
    }

    @TargetApi(3)
    private static synchronized void registerOrientationSensor(Context context) {
        synchronized (GetInfoUtils.class) {
            final SensorManager sensorManager = getSensorManager(context);
            Sensor defaultSensor = sensorManager.getDefaultSensor(3);
            if (orientationListener != null) {
                sensorManager.unregisterListener(orientationListener);
            }
            orientationListener = new SensorEventListener() {
                public void onSensorChanged(SensorEvent sensorEvent) {
                    GetInfoUtils.orientationSensorData = sensorEvent.values[0] + "," + sensorEvent.values[1] + "," + sensorEvent.values[2] + "," + System.currentTimeMillis();
                    if (GetInfoUtils.orientationListener != null) {
                        sensorManager.unregisterListener(GetInfoUtils.orientationListener);
                    }
                }

                public void onAccuracyChanged(Sensor sensor, int i) {
                }
            };
            sensorManager.registerListener(orientationListener, defaultSensor, 3);
        }
    }

    private static synchronized void registerBattery(Context context) {
        synchronized (GetInfoUtils.class) {
            context.getApplicationContext().registerReceiver(batteryReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        }
    }

    private static GetInfoUtils getGlobalRnvInstance() {
        if (mGlobalEnv == null) {
            synchronized (GetInfoUtils.class) {
                if (mGlobalEnv == null) {
                    mGlobalEnv = invokeStaticMethod(GLOBALENV_CLASS_STR, "getInstance", new Class[0], new Object[0]);
                }
            }
        }
        return sGetInfoUtils;
    }

    static Object invokeStaticMethod(String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        Object obj = null;
        try {
            return getMethod(Class.forName(str), str2, clsArr).invoke(null, objArr);
        } catch (Exception e) {
            return obj;
        }
    }

    static Object invokeMethod(String str, Object obj, Class<?>[] clsArr, Object[] objArr) {
        try {
            return getMethod(obj.getClass(), str, clsArr).invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method getMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        Method method = null;
        Class cls2;
        while (cls2 != null) {
            try {
                method = cls2.getDeclaredMethod(str, clsArr);
            } catch (Exception e) {
            }
            if (method != null) {
                method.setAccessible(true);
                break;
            }
            cls2 = cls2.getSuperclass();
        }
        return method;
    }

    private static void safeCloseIO(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static boolean hasPermission(Context context, String str) {
        return context.getApplicationContext().getPackageManager().checkPermission(str, context.getApplicationContext().getPackageName()) == 0;
    }
}
