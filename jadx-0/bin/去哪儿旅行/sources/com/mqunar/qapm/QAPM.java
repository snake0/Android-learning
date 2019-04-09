package com.mqunar.qapm;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechConstant;
import com.mqunar.qapm.dao.NetworkDataParse;
import com.mqunar.qapm.dao.Storage;
import com.mqunar.qapm.dao.UIDataParse;
import com.mqunar.qapm.logging.AgentLogManager;
import com.mqunar.qapm.logging.AndroidAgentLog;
import com.mqunar.qapm.logging.NullAgentLog;
import com.mqunar.qapm.network.sender.ISender;
import com.mqunar.qapm.network.sender.QAPMSender;
import com.mqunar.qapm.tracing.BackgroundTrace;
import com.mqunar.qapm.tracing.WatchMan;
import com.mqunar.qapm.utils.AndroidUtils;
import com.mqunar.qapm.utils.IOUtils;
import com.mqunar.qapm.utils.ReflectUtils;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.json.JSONObject;

public class QAPM implements IQAPM {
    private static QAPM a = null;
    private static boolean b;
    public static Context mContext;
    private ISender c;
    private WatchMan d;
    private String e;
    private Handler f;
    private HandlerThread g;

    private QAPM(Context context, String str) {
        mContext = a(context);
        if (str == null) {
            str = getCParam();
        }
        this.e = str;
        this.d = new BackgroundTrace();
        this.g = new HandlerThread(QAPMConstant.THREAD_UPLOAD);
        this.g.start();
        this.f = new Handler(this.g.getLooper());
        a();
    }

    public static QAPM make(Context context, int i) {
        QAPMConstant.pid = i + "";
        if (context != null) {
            return make(context, null);
        }
        return null;
    }

    public static QAPM make(Context context, String str) {
        if (a == null) {
            synchronized (QAPM.class) {
                if (a == null) {
                    a = new QAPM(context, str);
                }
            }
        }
        return a;
    }

    public static QAPM getInstance() {
        return a;
    }

    public String getCParam() {
        if (mContext == null) {
            return null;
        }
        if (this.e != null) {
            return this.e;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            PackageInfo packageInfo = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0);
            jSONObject.put("ma", AndroidUtils.getMac());
            jSONObject.put("osVersion", VERSION.RELEASE + "_" + VERSION.SDK_INT);
            jSONObject.put("pid", QAPMConstant.pid);
            jSONObject.put(AIUIConstant.KEY_UID, AndroidUtils.getIMEI(mContext));
            jSONObject.put(SpeechConstant.ISV_VID, packageInfo.versionCode);
            jSONObject.put("ke", String.valueOf(System.currentTimeMillis()));
        } catch (Exception e) {
        }
        return jSONObject.toString();
    }

    public void addUIMonitor(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            Storage.newStorage(mContext).putData(UIDataParse.newInstance().convertMap2BaseData(map));
        }
    }

    public void addNetMonitor(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            Storage.newStorage(mContext).putData(NetworkDataParse.newInstance().convertMap2BaseData(map));
        }
    }

    public void setSender(ISender iSender) {
        if (iSender != null) {
            this.c = iSender;
        }
    }

    public ISender getSender() {
        if (this.c == null) {
            String str = (String) ReflectUtils.invokeStaticMethod("com.mqunar.qav.uelog.QAVLog", "getRequestId", null, null);
            if (b) {
                this.c = new QAPMSender("http://mloganalysts.corp.qunar.com/api/log/unifiedLog", "", getCParam(), str);
            } else {
                this.c = new QAPMSender("http://l-acra1.wap.beta.cn0.qunar.com:9099/api/log/unifiedLog", QAPMConstant.PITCHER_URL, getCParam(), str);
            }
        }
        return this.c;
    }

    public QAPM withLogEnabled(boolean z) {
        b = !z;
        AgentLogManager.setAgentLog(z ? new AndroidAgentLog() : new NullAgentLog());
        return this;
    }

    public void release() {
        if (this.g != null) {
            this.g.quit();
        }
        b();
    }

    private void a() {
        if (mContext != null && (mContext instanceof Application) && this.d != null) {
            ((Application) mContext).registerActivityLifecycleCallbacks(this.d);
        }
    }

    private void b() {
        if (mContext != null && (mContext instanceof Application) && this.d != null) {
            ((Application) mContext).unregisterActivityLifecycleCallbacks(this.d);
        }
    }

    private Context a(Context context) {
        if (context == null) {
            throw new NullPointerException("context is empty!");
        } else if (context instanceof Application) {
            return context;
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                return applicationContext;
            }
            return context;
        }
    }

    public static String getSaveDataFile(String str) {
        String uploadDir = IOUtils.getUploadDir(mContext);
        if (uploadDir == null) {
            return null;
        }
        File file = new File(uploadDir, str);
        try {
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return file.toString();
    }

    public void upload(boolean z) {
        this.f.post(new a(this, z));
    }

    public static String getActiveNetworkCarrier() {
        return AndroidUtils.carrierNameFromContext(mContext);
    }

    public static String getActiveNetworkWanType() {
        return AndroidUtils.wanType(mContext);
    }
}
