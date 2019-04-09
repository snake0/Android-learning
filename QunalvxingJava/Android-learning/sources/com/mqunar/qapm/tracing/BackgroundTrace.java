package com.mqunar.qapm.tracing;

public class BackgroundTrace extends WatchMan {
    private static boolean a = true;
    private static long b;
    private static long c;

    /* Access modifiers changed, original: protected */
    public void onForegroundListener() {
        a = true;
        c = System.currentTimeMillis();
    }

    /* Access modifiers changed, original: protected */
    public void onBackgroundListener() {
        a = false;
        b = System.currentTimeMillis();
    }

    public static long getBackgroundTime() {
        return b;
    }

    public static long getForegronudTime() {
        return c;
    }

    public static boolean appIsForeground() {
        return a;
    }
}
