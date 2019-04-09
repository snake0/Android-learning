package com.mqunar.tools;

import android.content.Context;
import android.os.Build;

public class RoundedScreenUtil {
    public static int getScreenRoundRadiusInDp(Context context) {
        if (isHWBigRoundScreen()) {
            return 44;
        }
        if (getScreenWidth(context) < 1080 || getScreenHeight(context) < 2310) {
            return 20;
        }
        return 44;
    }

    public static int getScreenRoundRadiusInPx(Context context) {
        return dip2px(context, getScreenRoundRadiusInDp(context));
    }

    public static boolean isHWBigRoundScreen() {
        for (String equalsIgnoreCase : new String[]{"VCE-AL00", "VCE-TL00", "VCE-L22", "PCT-AL10", "PCT-TL10", "PCT-TL10", "TNY-AL00", "TNY-TL00", "GNA-AL00"}) {
            if (equalsIgnoreCase.equalsIgnoreCase(Build.MODEL)) {
                return true;
            }
        }
        return false;
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getScreenDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int dip2px(Context context, int i) {
        return (int) (((double) (((float) i) * getScreenDensity(context))) + 0.5d);
    }
}
