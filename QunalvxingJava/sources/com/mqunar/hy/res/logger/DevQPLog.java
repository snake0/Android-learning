package com.mqunar.hy.res.logger;

import android.text.TextUtils;
import com.alibaba.fastjson.JSONObject;
import com.mqunar.hy.res.HyResInitializer;
import com.mqunar.hy.res.model.HybridInfo;
import org.apache.http.cookie.ClientCookie;
import qunar.sdk.mapapi.utils.MapConstant.QUNAR_GPS_FIELD;

public class DevQPLog {
    public static final int DOWNLOAD_FAIL = 0;
    public static final int DOWNLOAD_SUCC = 1;
    public static final int LOAD_NO_RES = 0;
    public static final int LOAD_SUCC = 1;
    public static final String TYPE_CACHE_QP = "cacheQP";
    public static final String TYPE_DOWNLOAD = "download";
    public static final String TYPE_LOAD = "load";
    public static final String TYPE_UPDATE = "update";
    public static final int UPDATE_FAIL = 0;
    public static final int UPDATE_FORCE = 3;
    public static final int UPDATE_NORMAL = 2;
    public static final int UPDATE_NO_NEED = 1;
    private static boolean isBeta;
    private static OnQpLogListener onQpLogListener;

    public interface OnQpLogListener {
        void onQPLog(JSONObject jSONObject);
    }

    static {
        boolean z = HyResInitializer.isDebug() && !HyResInitializer.isOnline();
        isBeta = z;
    }

    public static void setOnQpLogListener(OnQpLogListener onQpLogListener) {
        if (isBeta) {
            onQpLogListener = onQpLogListener;
        }
    }

    public static void onUpdateLog(boolean z, long j, HybridInfo hybridInfo, HybridInfo hybridInfo2) {
        if (isCanLog() && hybridInfo != null) {
            int statusByInfo;
            if (z) {
                try {
                    statusByInfo = getStatusByInfo(hybridInfo, hybridInfo2);
                } catch (Exception e) {
                    Timber.e(e, new Object[0]);
                    return;
                }
            }
            statusByInfo = 0;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(QUNAR_GPS_FIELD.TIME_FIELD, Long.valueOf(System.currentTimeMillis()));
            jSONObject.put("type", TYPE_UPDATE);
            jSONObject.put("hybridId", hybridInfo.hybridId);
            jSONObject.put("status", Integer.valueOf(statusByInfo));
            jSONObject.put("costTime", Long.valueOf(j));
            jSONObject.put(ClientCookie.VERSION_ATTR, hybridInfo.version + "");
            jSONObject.put("newVersion", (hybridInfo2 == null ? hybridInfo.version : hybridInfo2.version) + "");
            onQpLogListener.onQPLog(jSONObject);
        }
    }

    public static void onDownloadLog(boolean z, long j, String str, String str2, String str3) {
        if (isCanLog()) {
            int i = z ? 1 : 0;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(QUNAR_GPS_FIELD.TIME_FIELD, Long.valueOf(System.currentTimeMillis()));
                jSONObject.put("type", TYPE_DOWNLOAD);
                jSONObject.put("hybridId", (Object) str);
                jSONObject.put("status", Integer.valueOf(i));
                jSONObject.put("costTime", Long.valueOf(j));
                jSONObject.put(ClientCookie.VERSION_ATTR, (Object) str2);
                jSONObject.put("newVersion", (Object) str3);
                onQpLogListener.onQPLog(jSONObject);
            } catch (Exception e) {
                Timber.e(e, new Object[0]);
            }
        }
    }

    public static void onCachedLog(HybridInfo hybridInfo) {
        if (isCanLog() && hybridInfo != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(QUNAR_GPS_FIELD.TIME_FIELD, Long.valueOf(System.currentTimeMillis()));
                jSONObject.put("type", TYPE_CACHE_QP);
                jSONObject.put("hybridId", hybridInfo.hybridId);
                jSONObject.put(ClientCookie.VERSION_ATTR, Integer.valueOf(hybridInfo.version));
                onQpLogListener.onQPLog(jSONObject);
            } catch (Exception e) {
                Timber.e(e, new Object[0]);
            }
        }
    }

    public static void onLoadLog(boolean z, String str, String str2, String str3) {
        if (isCanLog() && !TextUtils.isEmpty(str)) {
            int i = z ? 1 : 0;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(QUNAR_GPS_FIELD.TIME_FIELD, Long.valueOf(System.currentTimeMillis()));
                jSONObject.put("type", TYPE_LOAD);
                jSONObject.put("resUrl", (Object) str3);
                jSONObject.put("status", Integer.valueOf(i));
                jSONObject.put("hybridId", (Object) str);
                jSONObject.put(ClientCookie.VERSION_ATTR, (Object) str2);
                onQpLogListener.onQPLog(jSONObject);
            } catch (Exception e) {
                Timber.e(e, new Object[0]);
            }
        }
    }

    private static boolean isCanLog() {
        return isBeta && onQpLogListener != null;
    }

    private static int getStatusByInfo(HybridInfo hybridInfo, HybridInfo hybridInfo2) {
        if (hybridInfo2 == null || hybridInfo2.version == hybridInfo.version) {
            return 1;
        }
        return hybridInfo2.isForce() ? 3 : 2;
    }
}
