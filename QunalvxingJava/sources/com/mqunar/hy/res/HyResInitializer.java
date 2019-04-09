package com.mqunar.hy.res;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.text.TextUtils;
import com.mqunar.BuildConfig;
import com.mqunar.hy.res.interceptor.ReplaceInterceptor;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.hy.res.logger.Timber.DebugTree;
import com.mqunar.hy.res.model.CommonParam;
import com.mqunar.hy.res.model.HybridInfo;
import com.mqunar.hy.res.model.QpPathInfo;
import java.util.Map;

public class HyResInitializer {
    private static final String QP_SERVER_MODE = "qp_server_mode";
    public static final String SP_NAME = "qunar_hy_res";
    public static final String UPGRADE_10010 = "http://exbizcom.qunar.com/hybridUpgrade";
    public static final String UPGRADE_10010_BETA = "http://l-exbizcom1.wap.beta.cn0.qunar.com:9664/hybridUpgrade";
    public static final String UPGRADE_OTHER = "http://hybrid.qunar.com/hybridUpgrade";
    public static final String UPGRADE_OTHER_BETA = "http://l-client9.wap.beta.cn0.qunar.com:8338/hybridUpgrade";
    private static final String UPGRADE_URL = "upgrade_url";
    private static CommonParam cParam = new CommonParam();
    private static Application context;
    private static boolean debug = false;
    private static Boolean isBetaQPServerMode;
    private static Map<String, String> module;
    private static boolean offlineWork = true;
    private static String serverUrl = UPGRADE_10010;
    private static HyResInitializer singleInstance = null;
    private ReplaceInterceptor replaceInterceptor = new ReplaceInterceptor();

    private HyResInitializer() {
    }

    public static boolean isBetaQPServerMode() {
        if (!debug || isOnline()) {
            return false;
        }
        if (isBetaQPServerMode == null) {
            isBetaQPServerMode = Boolean.valueOf(getCacheBetaQPServerMode());
        }
        return isBetaQPServerMode.booleanValue();
    }

    public static void setIsBetaQPServerMode(boolean z) {
        if (debug && !isOnline()) {
            isBetaQPServerMode = Boolean.valueOf(z);
            saveCacheBetaQPServerMode();
        }
    }

    public void setServerUrl(String str) {
        if (debug && !isOnline() && !TextUtils.isEmpty(str)) {
            serverUrl = str;
            saveCacheUpgradeUrl();
        }
    }

    public static String getServerUrl() {
        if (!debug || isOnline()) {
            return serverUrl;
        }
        return getCacheUpgradeUrl();
    }

    public static CommonParam getCParam() {
        return cParam;
    }

    public void setCParam(CommonParam commonParam) {
        if (commonParam != null) {
            cParam = commonParam;
            if ("10010".equals(commonParam.pid) || "_10010".equals(commonParam.pid) || "q1001".equals(commonParam.pid)) {
                serverUrl = UPGRADE_10010;
            } else {
                serverUrl = UPGRADE_OTHER;
            }
        }
    }

    public void setDebug(boolean z) {
        debug = z;
        Timber.uprootAll();
        if (z) {
            Timber.plant(new DebugTree());
        }
    }

    public static void setOfflineWork(boolean z) {
        offlineWork = z;
    }

    public static boolean getOfflineWork() {
        return offlineWork;
    }

    public static boolean isDebug() {
        return debug;
    }

    public void setModules(Map<String, String> map) {
        module = map;
    }

    public static Map<String, String> getModules() {
        return module;
    }

    public static HyResInitializer getInstance(Application application) {
        if (singleInstance == null) {
            singleInstance = new HyResInitializer();
            context = application;
        }
        return singleInstance;
    }

    public static HyResInitializer getInstance() {
        if (singleInstance == null) {
            singleInstance = new HyResInitializer();
        }
        return singleInstance;
    }

    public static void setContext(Application application) {
        context = application;
    }

    public static Application getContext() {
        if (context == null) {
            resetContext();
        }
        return context;
    }

    private static void resetContext() {
        try {
            Timber.e("HyResInitializer获取Context时为null，通过反射获取QApplication", new Object[0]);
            synchronized (HyResInitializer.class) {
                if (context == null) {
                    setContext((Application) Class.forName("com.mqunar.core.basectx.application.QApplication").getMethod("getContext", new Class[0]).invoke(null, new Object[0]));
                }
            }
        } catch (Throwable th) {
            Timber.e(th, "HyResInitializer反射获取QApplication时出错", new Object[0]);
        }
    }

    public void sendUpdateRequest() {
        new AutoDownloadControler().startUpdateRequest();
        Timber.i("sendUpdateRequest>全量更新>time:" + System.currentTimeMillis(), new Object[0]);
    }

    public void sendSingleUpdateRequest(HybridInfo hybridInfo) {
        new AutoDownloadControler().startUpdateRequest(hybridInfo);
    }

    public void regiestNewModuleFromAssert(AssetManager assetManager, String str, String str2) {
        HybridManager.getInstance().addNewModuleFromAssert(assetManager, str, str2);
    }

    public void regiestNewModuleFromAssert(AssetManager assetManager, QpPathInfo... qpPathInfoArr) {
        HybridManager.getInstance().addNewModuleFromAssert(assetManager, qpPathInfoArr);
    }

    public void addNewModuleFromPath(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            HybridManager.getInstance().addNewModule(str, str2);
        }
    }

    public HybridInfo addNewModuleFromCache(String str) {
        return null;
    }

    public void startDownload(String str) {
    }

    public void downloadOnly(HybridInfo hybridInfo) {
    }

    private static String getCacheUpgradeUrl() {
        return context.getSharedPreferences(SP_NAME, 0).getString(UPGRADE_URL, serverUrl);
    }

    public static boolean isOnline() {
        try {
            if (((Boolean) getBuildConfigValue(context, "DEBUG")).booleanValue()) {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    private static void saveCacheUpgradeUrl() {
        Editor edit = context.getSharedPreferences(SP_NAME, 0).edit();
        edit.putString(UPGRADE_URL, serverUrl);
        edit.apply();
    }

    private static void saveCacheBetaQPServerMode() {
        Editor edit = context.getSharedPreferences(SP_NAME, 0).edit();
        edit.putBoolean(QP_SERVER_MODE, isBetaQPServerMode.booleanValue());
        edit.apply();
    }

    private static boolean getCacheBetaQPServerMode() {
        return context.getSharedPreferences(SP_NAME, 0).getBoolean(QP_SERVER_MODE, false);
    }

    private static Object getBuildConfigValue(Context context, String str) {
        try {
            if (BuildConfig.APPLICATION_ID.equals(context.getPackageName())) {
                return Class.forName("com.mqunar.BuildConfig").getField(str).get(null);
            }
            return Boolean.valueOf(debug);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ReplaceInterceptor getReplaceInterceptor() {
        return this.replaceInterceptor;
    }
}
