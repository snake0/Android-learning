package com.mqunar.qutui;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.mqunar.libtask.ProgressType;
import com.mqunar.tools.log.QLog;
import java.util.ArrayList;
import java.util.List;

final class i {
    public static PackageInfo a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 1);
        } catch (Throwable th) {
            QLog.e(th);
            return null;
        }
    }

    public static List<String> a(Context context) {
        ArrayList arrayList = new ArrayList();
        if (context == null) {
            return arrayList;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        PackageManager packageManager = context.getPackageManager();
        List runningServices;
        if (activityManager != null) {
            try {
                runningServices = activityManager.getRunningServices(ProgressType.PRO_END);
            } catch (Exception e) {
                runningServices = null;
            }
        } else {
            runningServices = null;
        }
        if (runningServices != null) {
            for (RunningServiceInfo runningServiceInfo : runningServices) {
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(runningServiceInfo.service.getPackageName(), 0);
                    if (!(applicationInfo == null || (applicationInfo.flags & 1) == 1)) {
                        arrayList.add(runningServiceInfo.process);
                        QLog.i("进程名：" + runningServiceInfo.process + " Class:" + runningServiceInfo.service.getClassName() + " pkgName: " + runningServiceInfo.service.getPackageName(), new Object[0]);
                    }
                } catch (NameNotFoundException e2) {
                    QLog.w(e2.getMessage(), new Object[0]);
                }
            }
        }
        return arrayList;
    }
}
