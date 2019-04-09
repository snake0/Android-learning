package com.mqunar.core;

import android.content.Context;
import android.content.IntentFilter;
import com.mqunar.atomenv.SwitchEnv;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.dispatcher.GlobalConnectChangedReceiver;
import com.mqunar.module.ModuleInfo;
import com.mqunar.module.ModuleInfoController;
import com.mqunar.network.NetRequestManager;
import com.mqunar.spider.GPushReceiver;
import com.mqunar.splash.SplashUtils;
import com.mqunar.tools.QPreExecuteTaskUtils;
import com.mqunar.tools.log.QLog;

final class a extends Thread {
    a() {
    }

    public void run() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            ModuleInfoController.loadApk(QApplication.getContext());
            long currentTimeMillis2 = System.currentTimeMillis();
            QLog.i("SPIDER-WASTE", "loadApk:" + (currentTimeMillis2 - currentTimeMillis) + "ms", new Object[0]);
            QPreExecuteTaskUtils.runAllTask();
            QLog.i("SPIDER-WASTE", "runAllTask:" + (System.currentTimeMillis() - currentTimeMillis2) + "ms", new Object[0]);
            currentTimeMillis = System.currentTimeMillis();
            try {
                if (!SwitchEnv.getInstance().isShowNetTips()) {
                    NetRequestManager.getInstance().requestIpList(QApplication.getContext());
                }
            } catch (Throwable th) {
            }
            Class.forName("com.mqunar.imagecache.ImageLoader").getDeclaredMethod("getInstance", new Class[]{Context.class}).invoke(null, new Object[]{QApplication.getContext()});
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            QApplication.getContext().registerReceiver(new GlobalConnectChangedReceiver(), intentFilter);
            QLog.i("SPIDER-WASTE", "imageCache:" + (System.currentTimeMillis() - currentTimeMillis) + "ms", new Object[0]);
            QSpider.loadDone = true;
            SplashUtils.setLoadDone(true);
            GPushReceiver.check(QApplication.getContext());
            QLog.i("SPIDER-WASTE", "qspider init cost:" + (System.currentTimeMillis() - QSpider.startTime) + "ms", new Object[0]);
            try {
                Thread.sleep(8000);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                ModuleInfoController.checkAndInstallModuleDependency((ModuleInfo) ModuleInfoController.modules.get("com.mqunar.atom.im"));
                return;
            } catch (Throwable th3) {
                return;
            }
        } catch (Throwable th4) {
            return;
        }
        ModuleInfoController.checkAndInstallModuleDependency((ModuleInfo) ModuleInfoController.modules.get("com.mqunar.atom.im"));
    }
}
