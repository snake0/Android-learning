package com.mqunar.spider;

import android.app.Application;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.atomenv.SwitchEnv;
import com.mqunar.core.QSpider;
import com.mqunar.core.ReflectUtils;
import com.mqunar.necro.agent.NewNecro;
import com.mqunar.necro.agent.task.IHttpSender;
import com.mqunar.splash.SplashActivity;
import com.mqunar.splash.SplashMonitor;
import com.mqunar.tools.log.QLog;
import org.acra.ACRA;

class h extends SplashMonitor {
    final /* synthetic */ QunarApp a;

    h(QunarApp qunarApp) {
        this.a = qunarApp;
    }

    public void initMonitor() {
        try {
            if (SwitchEnv.getInstance().isShowNetTips()) {
                ACRA.init((Application) this.a.getApplicationContext(), QSpider.getEnv(), QSpider.getCParam(this.a.getApplicationContext()));
                NewNecro withLogEnabled = NewNecro.withAppToken("token").withPid(GlobalEnv.getInstance().getPid()).withLogEnabled(!GlobalEnv.getInstance().isRelease());
                ReflectUtils.invokeMethod("withSender", withLogEnabled, new Class[]{IHttpSender.class}, new Object[]{new QNecroSender()});
                withLogEnabled.start(this.a.getApplicationContext());
            }
        } catch (Exception e) {
            QLog.e("acra", "init acra fail " + e.toString(), new Object[0]);
        }
    }

    public void monitorShowTime() {
        ModuleMonitor.getInstance().writeShowTime(SplashActivity.class.getSimpleName(), System.currentTimeMillis());
    }

    public void monitorAppStartCostTime(boolean z, long j, long j2, long j3) {
        if (z) {
            ModuleMonitor.getInstance().writeAppStartCostTime("appStartCostAppHot", j3 - j);
            ModuleMonitor.getInstance().writeAppAdTime("AppStartCostAdHot", j2 - j);
            return;
        }
        ModuleMonitor.getInstance().writeAppStartCostTime("appStartCostAppCold", j3 - QSpider.startTime);
        ModuleMonitor.getInstance().writeAppAdTime("AppStartCostAdCold", j2 - QSpider.startTime);
    }
}
