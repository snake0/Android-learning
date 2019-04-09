package com.mqunar.yvideo.multivideo;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.view.Window;
import com.mqunar.tools.DateTimeUtils;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public class VideoUtils {
    public static final String TAG = "VideoPlayer";
    private static String sp_progress = "PLAYER_PROGRESS";

    public static String stringForTime(long j) {
        if (j <= 0 || j >= DateTimeUtils.ONE_DAY) {
            return "00:00";
        }
        long j2 = j / 1000;
        int i = (int) (j2 % 60);
        int i2 = (int) ((j2 / 60) % 60);
        int i3 = (int) (j2 / 3600);
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        if (i3 > 0) {
            return formatter.format("%d:%02d:%02d", new Object[]{Integer.valueOf(i3), Integer.valueOf(i2), Integer.valueOf(i)}).toString();
        }
        return formatter.format("%02d:%02d", new Object[]{Integer.valueOf(i2), Integer.valueOf(i)}).toString();
    }

    public static boolean isWifiConnected(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static Activity scanForActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return context instanceof ContextWrapper ? scanForActivity(((ContextWrapper) context).getBaseContext()) : null;
    }

    public static void setRequestedOrientation(Context context, int i) {
        scanForActivity(context).setRequestedOrientation(i);
    }

    public static Window getWindow(Context context) {
        return scanForActivity(context).getWindow();
    }

    public static int dip2px(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    public static void saveProgress(Context context, Object obj, long j) {
        if (VideoPlayer.SAVE_PROGRESS) {
            if (j < 5000) {
                j = 0;
            }
            context.getSharedPreferences(sp_progress, 0).edit().putLong("newVersion:" + obj.toString(), j).apply();
        }
    }

    public static long getSavedProgress(Context context, Object obj) {
        if (VideoPlayer.SAVE_PROGRESS) {
            return context.getSharedPreferences(sp_progress, 0).getLong("newVersion:" + obj.toString(), 0);
        }
        return 0;
    }

    public static void clearSavedProgress(Context context, Object obj) {
        if (obj == null) {
            context.getSharedPreferences(sp_progress, 0).edit().clear().apply();
        } else {
            context.getSharedPreferences(sp_progress, 0).edit().putLong("newVersion:" + obj.toString(), 0).apply();
        }
    }

    public static String getCurrentFromDataSource(DataSourceBean dataSourceBean) {
        Map urlMap = dataSourceBean.getUrlMap();
        if (urlMap == null || urlMap.size() <= 0) {
            return null;
        }
        return getValueFromMap(urlMap, dataSourceBean.getDefaultUrlMapIndex());
    }

    public static String getValueFromMap(Map<String, String> map, int i) {
        int i2 = 0;
        Iterator it = map.keySet().iterator();
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                return null;
            }
            String str = (String) it.next();
            if (i3 == i) {
                return (String) map.get(str);
            }
            i2 = i3 + 1;
        }
    }

    public static boolean dataSourceObjectsContainsUri(DataSourceBean dataSourceBean, String str) {
        Map urlMap = dataSourceBean.getUrlMap();
        if (urlMap == null || str == null) {
            return false;
        }
        return urlMap.containsValue(str);
    }

    public static String getKeyFromDataSource(DataSourceBean dataSourceBean) {
        int i = 0;
        Iterator it = dataSourceBean.getUrlMap().keySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return null;
            }
            String str = (String) it.next();
            if (i2 == dataSourceBean.getDefaultUrlMapIndex()) {
                return str;
            }
            i = i2 + 1;
        }
    }
}
