package com.mqunar.necro.agent.tracing;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.text.TextUtils;

public abstract class AbsBackgroundTrace implements ActivityLifecycleCallbacks {
    private static String mCurrentActivityName;
    private boolean isBackToDesktop = false;
    private String mFirstQavStartActivityName = null;
    private boolean mIsFirstActivityStart = true;
    private boolean mIsFirstActivityStop = true;
    private int mLifeCount = 0;

    public abstract void onBackgroundListener();

    public abstract void onForegroundListener();

    public void onActivityStarted(Activity activity) {
        if (this.mIsFirstActivityStop && this.mIsFirstActivityStart) {
            this.mIsFirstActivityStart = false;
            this.mFirstQavStartActivityName = activity.getClass().getSimpleName();
        }
        this.mLifeCount++;
        if (this.isBackToDesktop && this.mLifeCount == 1) {
            this.isBackToDesktop = false;
            onForegroundListener();
        }
    }

    public void onActivityStopped(Activity activity) {
        if (this.mIsFirstActivityStop) {
            this.mIsFirstActivityStop = false;
            if (!activity.getClass().getSimpleName().equals(this.mFirstQavStartActivityName)) {
                this.mLifeCount++;
            }
            this.mFirstQavStartActivityName = null;
        }
        this.mLifeCount--;
        if (this.mLifeCount < 0) {
            this.mLifeCount = 0;
        } else if (this.mLifeCount == 0 && !this.isBackToDesktop) {
            this.isBackToDesktop = true;
            onBackgroundListener();
        }
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityResumed(Activity activity) {
        mCurrentActivityName = activity.getClass().getSimpleName();
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public static String getCurrentActivityName() {
        if (TextUtils.isEmpty(mCurrentActivityName)) {
            mCurrentActivityName = "Unknown";
        }
        return mCurrentActivityName;
    }
}
