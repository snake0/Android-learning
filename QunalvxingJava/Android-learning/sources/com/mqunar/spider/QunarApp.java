package com.mqunar.spider;

import android.app.Activity;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import com.baidu.techain.ac.TH;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.core.QSpider;
import com.mqunar.core.basectx.application.ActivityLifecycleDispatcher.QActivityLifecycleCallbacks;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.network.NetCookieUtils;
import com.mqunar.qutui.PushManager;
import com.mqunar.splash.SplashUtils;
import com.mqunar.tools.log.QLog;
import com.qunar.avra.AVRA;
import java.util.ArrayList;
import java.util.List;
import org.acra.ACRA;
import org.acra.annotation.ReportsCrashes;
import qunar.sdk.location.LocationFacade;

@ReportsCrashes(endingPrimerClass = QCrashEndingPrimer.class, monitorANR = true, monitorNativeCrash = true, monitorProcess = {"com.Qunar:qutui"}, reportPrimerClass = AcraReportPrimer.class, reportSenderFactoryClasses = {QReportSenderFactory.class})
public class QunarApp extends QApplication implements QActivityLifecycleCallbacks {
    private static boolean isLoadGPush = false;
    private List<Activity> activityList;

    public void onCreate() {
        super.onCreate();
        QLog.e("SPIDER-WASTE", System.currentTimeMillis() + "StartTime", new Object[0]);
        if (!ACRA.isACRASenderServiceProcess() || !AVRA.isInAnalyzerProcess(this)) {
            QSpider.initSpider();
            this.activityList = new ArrayList(10);
            if (getPackageName().equalsIgnoreCase(QSpider.getCurrentProcessName(this))) {
                qRegisterActivityLifecycleCallbacks(this);
                Runtime.getRuntime().addShutdownHook(new g(this));
                SplashUtils.setSplashMonitor(new h(this));
                try {
                    LocationFacade.initGPSCache(this);
                } catch (Throwable th) {
                }
                TH.init(this, "600000033", "86c232a29ca480d3343531dec76ee872", 100028);
            }
            NetCookieUtils.clearSessionCookie(this);
            if ("com.Qunar:qutui".equals(QSpider.getCurrentProcessName(this))) {
                PushManager.getInstance().init(this, GlobalEnv.getInstance().getGid(), GlobalEnv.getInstance().isRelease());
            }
            if (!isLoadGPush && getPackageName().equals(QSpider.getCurrentProcessName(this))) {
                initReceiver();
                isLoadGPush = true;
            }
        }
    }

    private void initReceiver() {
        GPushReceiver gPushReceiver = new GPushReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mqunar.atom.qutui.ACTION_MESSAGE_RECEIVED");
        intentFilter.addAction("com.mqunar.atom.push.notify");
        intentFilter.addCategory(getPackageName());
        intentFilter.setPriority(1000);
        registerReceiver(gPushReceiver, intentFilter);
        QLog.d(QSpider.getCurrentProcessName(this) + "initGPushReceiver~~~~~~", new Object[0]);
    }

    public Resources getSuperResources() {
        return super.getResources();
    }

    public Resources getResources() {
        return super.getResources();
    }

    public AssetManager getAssets() {
        return super.getAssets();
    }

    public void clearStack() {
        QLog.i("fuck", "clearStack:" + this.activityList, new Object[0]);
        if (this.activityList != null && !this.activityList.isEmpty()) {
            for (int size = this.activityList.size() - 1; size >= 0; size--) {
                try {
                    ((Activity) this.activityList.get(size)).finish();
                } catch (Throwable th) {
                }
            }
            this.activityList.clear();
        }
    }

    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (getPackageName().equalsIgnoreCase(QSpider.getCurrentProcessName(this)) && i == 60) {
            clearStack();
        }
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.activityList.add(activity);
        if ("com.mqunar.atom.alexhome.ui.activity.MainActivity".equals(activity.getClass().getName())) {
            ModuleMonitor.getInstance().writeShowTime(activity.getClass().getSimpleName(), System.currentTimeMillis());
        }
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityResumed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
        this.activityList.remove(activity);
    }

    public void onActivityFinished(Activity activity) {
        this.activityList.remove(activity);
    }
}
