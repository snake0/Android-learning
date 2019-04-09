package com.baidu.techain.b;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.baidu.techain.TechainService;
import com.baidu.techain.ac.U;
import com.baidu.techain.e;
import com.mqunar.tools.DateTimeUtils;

public final class b {
    public static void a(Context context, boolean z) {
        AlarmManager alarmManager;
        PendingIntent service;
        long j;
        try {
            e eVar = new e(context);
            alarmManager = (AlarmManager) context.getSystemService("alarm");
            Intent intent = new Intent("com.baidu.action.Techain.VIEW");
            intent.setClass(context, TechainService.class);
            intent.setPackage(context.getPackageName());
            intent.addCategory("com.baidu.category.techain");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("from_plugin_package", context.getPackageName());
            intent.putExtra("target_class", U.class.getCanonicalName());
            intent.putExtra("target_method", "handleWork");
            intent.putExtra("from", 6);
            service = PendingIntent.getService(context, 1000, intent, 134217728);
            if (z) {
                j = eVar.a.getLong("npuct", 0);
                if (j <= 0) {
                    j = System.currentTimeMillis() + DateTimeUtils.ONE_DAY;
                    eVar.a(j);
                }
            } else {
                j = ((System.currentTimeMillis() + DateTimeUtils.ONE_DAY) - 600000) + ((long) (1200000.0d * Math.random()));
                eVar.a(j);
            }
            new StringBuilder("b=").append(z).append(", n=").append(j).append(", t=86400000, c=").append(System.currentTimeMillis());
            com.baidu.techain.b.a();
            alarmManager.cancel(service);
        } catch (Throwable th) {
            e.a();
            return;
        }
        try {
            alarmManager.set(0, j, service);
        } catch (Throwable th2) {
            th2.getMessage();
            com.baidu.techain.b.b();
        }
    }

    public static void a(Context context, int i, boolean z) {
        AlarmManager alarmManager;
        PendingIntent service;
        long j = 600000;
        try {
            alarmManager = (AlarmManager) context.getSystemService("alarm");
            Intent intent = new Intent("com.baidu.action.Techain.VIEW");
            intent.setClass(context, TechainService.class);
            intent.setPackage(context.getPackageName());
            intent.addCategory("com.baidu.category.techain");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("from_plugin_package", context.getPackageName());
            intent.putExtra("target_class", U.class.getCanonicalName());
            intent.putExtra("target_method", "handleWork");
            intent.putExtra("from", 2);
            service = PendingIntent.getService(context, 1001, intent, 134217728);
            switch (i) {
                case 0:
                    j = 30000;
                    break;
                case 1:
                    j = 180000;
                    break;
                case 2:
                    j = 300000;
                    break;
            }
            j += System.currentTimeMillis();
            new StringBuilder("n=").append(j).append(", c=").append(System.currentTimeMillis());
            com.baidu.techain.b.a();
            alarmManager.cancel(service);
        } catch (Throwable th) {
            e.a();
            return;
        }
        if (!z) {
            try {
                alarmManager.set(0, j, service);
            } catch (Throwable th2) {
                th2.getMessage();
                com.baidu.techain.b.b();
            }
        }
    }

    public static void a(Context context) {
        AlarmManager alarmManager;
        PendingIntent service;
        long currentTimeMillis;
        try {
            alarmManager = (AlarmManager) context.getSystemService("alarm");
            Intent intent = new Intent("com.baidu.action.Techain.VIEW");
            intent.setClass(context, TechainService.class);
            intent.setPackage(context.getPackageName());
            intent.addCategory("com.baidu.category.techain");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("from_plugin_package", context.getPackageName());
            intent.putExtra("target_class", U.class.getCanonicalName());
            intent.putExtra("target_method", "handleUploadPidChange");
            service = PendingIntent.getService(context, 1002, intent, 134217728);
            currentTimeMillis = System.currentTimeMillis() + DateTimeUtils.ONE_DAY;
            alarmManager.cancel(service);
        } catch (Throwable th) {
            e.a();
            return;
        }
        try {
            alarmManager.set(0, currentTimeMillis, service);
        } catch (Throwable th2) {
            th2.getMessage();
            com.baidu.techain.b.b();
        }
    }
}
