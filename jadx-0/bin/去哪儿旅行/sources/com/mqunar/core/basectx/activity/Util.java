package com.mqunar.core.basectx.activity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.AppTask;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Process;
import com.mqunar.core.basectx.IStackName;
import com.mqunar.tools.ImmersiveStatusBarUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class Util {
    static List<String> ACTIVITY_STATE_LOGGER = new ArrayList();

    static void initWindowSetting(Activity activity) {
        ImmersiveStatusBarUtils.initWindowSettingForCustomImmersive(activity);
    }

    static String getActivityStateLogger() {
        if (ACTIVITY_STATE_LOGGER.size() == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(ACTIVITY_STATE_LOGGER.size());
        for (String append : ACTIVITY_STATE_LOGGER) {
            stringBuilder.append(append).append("|");
        }
        return stringBuilder.toString();
    }

    static long getSpiderStartTime() {
        try {
            Field declaredField = Class.forName("com.mqunar.core.QSpider").getDeclaredField("startTime");
            declaredField.setAccessible(true);
            return ((Long) declaredField.get(null)).longValue();
        } catch (Throwable th) {
            return 0;
        }
    }

    static void onException(Context context, long j, Exception exception) {
        long spiderStartTime = getSpiderStartTime();
        if (j == 0 || spiderStartTime == j) {
            throw new RuntimeException(exception);
        }
        exception.printStackTrace();
        restart(context);
    }

    public static String getInStackName(Activity activity) {
        if (activity == null) {
            return null;
        }
        if (activity instanceof IStackName) {
            return ((IStackName) activity).getInStackName();
        }
        return activity.getClass().getName();
    }

    public static void restart(Context context) {
        restart2(context);
    }

    public static void restart2(final Context context) {
        if (VERSION.SDK_INT >= 21) {
            new Object() {
                @TargetApi(21)
                public void quit() {
                    for (AppTask finishAndRemoveTask : ((ActivityManager) context.getSystemService("activity")).getAppTasks()) {
                        finishAndRemoveTask.finishAndRemoveTask();
                    }
                }
            }.quit();
        }
        if (VERSION.SDK_INT >= 11) {
            Intent launchIntentForPackage;
            try {
                launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            } catch (Exception e) {
                e.printStackTrace();
                launchIntentForPackage = null;
            }
            if (launchIntentForPackage == null) {
                launchIntentForPackage = new Intent();
                launchIntentForPackage.setPackage(context.getPackageName());
                launchIntentForPackage.setClassName(context, "com.mqunar.splash.SplashActivity");
            }
            launchIntentForPackage.addFlags(32768);
            launchIntentForPackage.addFlags(268435456);
            launchIntentForPackage.addFlags(67108864);
            launchIntentForPackage.addFlags(65536);
            launchIntentForPackage.addFlags(8388608);
            context.startActivity(launchIntentForPackage);
            Process.killProcess(Process.myPid());
            Runtime.getRuntime().exit(0);
        }
    }

    private static void innerRestart(Context context) {
        Intent launchIntentForPackage;
        try {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        } catch (Exception e) {
            e.printStackTrace();
            launchIntentForPackage = null;
        }
        if (launchIntentForPackage == null) {
            launchIntentForPackage = new Intent();
            launchIntentForPackage.setPackage(context.getPackageName());
            launchIntentForPackage.setClassName(context, "com.mqunar.splash.SplashActivity");
        }
        launchIntentForPackage.addFlags(268468224);
        ((AlarmManager) context.getSystemService("alarm")).set(1, System.currentTimeMillis() + 2000, PendingIntent.getActivity(context.getApplicationContext(), 0, launchIntentForPackage, 268435456));
    }
}
