package com.mqunar.qapm.tracing;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.mqunar.qapm.QAPM;
import com.mqunar.qapm.domain.ActivityInfo;
import com.mqunar.qapm.domain.UIData;
import com.mqunar.qapm.pager.QLoadingReportHelper;
import com.mqunar.qapm.utils.AndroidUtils;
import java.util.LinkedList;
import java.util.List;
import java.util.WeakHashMap;

public abstract class WatchMan implements ActivityLifecycleCallbacks {
    private static final String a = WatchMan.class.getSimpleName();
    public static List<ActivityInfo> sActivityInfos = new LinkedList();
    public static String sCurrentActivityName = null;
    public static WeakHashMap<Object, UIData> sLoadingBeanMap = new WeakHashMap();
    public static long sOnBackgroundTime = -1;
    private int b = 0;
    private WeakHashMap<Activity, Handler> c;
    private boolean d = true;
    private boolean e = true;
    private boolean f = false;
    private String g = null;
    private String h;
    private Handler i;

    public abstract void onBackgroundListener();

    public abstract void onForegroundListener();

    public void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity.toString());
        if (this.i == null) {
            this.i = new Handler(Looper.getMainLooper());
        }
        if (this.c == null) {
            this.c = new WeakHashMap();
        }
    }

    public void onActivityStarted(Activity activity) {
        if (this.e && this.d) {
            this.d = false;
            this.g = activity.getClass().getSimpleName();
        }
        this.b++;
        if (this.f && this.b == 1) {
            this.f = false;
            onForegroundListener();
        }
    }

    public void onActivityResumed(Activity activity) {
        String pageName = AndroidUtils.getPageName(activity);
        sCurrentActivityName = pageName;
        b(activity.toString());
        if (!pageName.equals(this.h)) {
            if (this.i == null) {
                this.i = new Handler(Looper.getMainLooper());
            }
            this.i.post(new a(this, activity, pageName));
            a(false);
        }
    }

    public void onActivityPaused(Activity activity) {
        Log.d("onActivityPaused(%s)", activity.getClass().getSimpleName());
    }

    public void onActivityStopped(Activity activity) {
        QLoadingReportHelper.newInstance().saveReportMessage();
        if (this.e) {
            this.e = false;
            if (!activity.getClass().getSimpleName().equals(this.g)) {
                this.b++;
            }
            this.g = null;
        }
        this.b--;
        if (this.b < 0) {
            this.b = 0;
        } else if (this.b == 0) {
            onBackgroundListener();
            Log.d(a, "[事件-后台]捕获到应用切换到后台的事件!");
            if (!this.f) {
                Log.d(a, "强制上传QAV日志");
                this.f = true;
                a(true);
            }
        } else {
            a(false);
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
        c(activity.toString());
        if (this.c != null) {
            Handler handler = (Handler) this.c.get(activity);
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.c.remove(activity);
            }
        }
    }

    public static String getCurrentActivityName() {
        if (TextUtils.isEmpty(sCurrentActivityName)) {
            sCurrentActivityName = "Unknown";
        }
        return sCurrentActivityName;
    }

    private void a(boolean z) {
        QAPM instance = QAPM.getInstance();
        if (instance != null) {
            instance.upload(z);
        }
    }

    private void a(String str) {
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.activityName = str;
        activityInfo.createTime = System.currentTimeMillis();
        sActivityInfos.add(activityInfo);
    }

    private void b(String str) {
        for (ActivityInfo activityInfo : sActivityInfos) {
            if (activityInfo.activityName.equalsIgnoreCase(str) && activityInfo.isFristResumed) {
                activityInfo.fristResumedTime = System.currentTimeMillis();
                activityInfo.isFristResumed = false;
            }
        }
    }

    private void c(String str) {
        int i = -1;
        for (ActivityInfo activityInfo : sActivityInfos) {
            int indexOf;
            if (activityInfo.activityName.equalsIgnoreCase(str)) {
                indexOf = sActivityInfos.indexOf(activityInfo);
            } else {
                indexOf = i;
            }
            i = indexOf;
        }
        if (i != -1) {
            sActivityInfos.remove(i);
        }
    }
}
