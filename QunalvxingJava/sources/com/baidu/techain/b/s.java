package com.baidu.techain.b;

import android.annotation.SuppressLint;
import android.net.TrafficStats;
import android.os.Build.VERSION;

public final class s {
    @SuppressLint({"NewApi"})
    public static void a() {
        try {
            if (VERSION.SDK_INT >= 15) {
                TrafficStats.setThreadStatsTag(155648);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    @SuppressLint({"NewApi"})
    public static void b() {
        try {
            if (VERSION.SDK_INT >= 15) {
                TrafficStats.clearThreadStatsTag();
            }
        } catch (Throwable th) {
            e.a();
        }
    }
}