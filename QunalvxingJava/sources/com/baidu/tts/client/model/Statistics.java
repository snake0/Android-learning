package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.p.b;

public class Statistics {
    public static boolean isStatistics = true;
    private b a;

    public Statistics(Context context) {
        this.a = new b(context);
    }

    public static void setEnable(boolean z) {
        isStatistics = z;
    }

    public int start() {
        this.a.a();
        return 0;
    }

    public int stop() {
        this.a.b();
        return 0;
    }
}
