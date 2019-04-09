package com.mqunar.qapm.pager;

import android.view.View;
import com.mqunar.qapm.domain.ActivityInfo;
import com.mqunar.qapm.domain.UIData;
import com.mqunar.qapm.tracing.WatchMan;

public class QLoadingView {
    public static void onVisibilityChanged(Object obj, View view, int i) {
        if (!WatchMan.sCurrentActivityName.contains("HyWebActivity") && !view.getClass().getName().equalsIgnoreCase("com.android.internal.policy.DecorView")) {
            if (view.getClass().getName().equalsIgnoreCase("com.mqunar.framework.view.stateview.LoadingContainer")) {
                a(obj, view, i);
            } else if (i == 0) {
                if (!WatchMan.sLoadingBeanMap.containsKey(obj)) {
                    a(obj);
                }
            } else if ((i == 4 || i == 8) && WatchMan.sLoadingBeanMap.containsKey(obj)) {
                a(obj, false);
            }
        }
    }

    private static void a(Object obj, View view, int i) {
        if (i == 0) {
            if (!WatchMan.sLoadingBeanMap.containsKey(obj)) {
                a(obj);
            }
        } else if ((i == 4 || i == 8) && WatchMan.sLoadingBeanMap.containsKey(obj)) {
            a(obj, true);
        }
    }

    private static void a(Object obj) {
        UIData uIData = new UIData();
        uIData.createTime = ((ActivityInfo) WatchMan.sActivityInfos.get(WatchMan.sActivityInfos.size() - 1)).createTime;
        uIData.resumeTime = ((ActivityInfo) WatchMan.sActivityInfos.get(WatchMan.sActivityInfos.size() - 1)).fristResumedTime;
        uIData.showTime = System.currentTimeMillis();
        uIData.page = WatchMan.sCurrentActivityName.replaceAll("_", "—");
        WatchMan.sLoadingBeanMap.put(obj, uIData);
    }

    private static void a(Object obj, boolean z) {
        UIData uIData = (UIData) WatchMan.sLoadingBeanMap.get(obj);
        if (uIData != null) {
            if (!z && uIData.showTime - uIData.resumeTime > 5000) {
                return;
            }
            if (WatchMan.sOnBackgroundTime == -1 || WatchMan.sOnBackgroundTime <= uIData.createTime || WatchMan.sOnBackgroundTime >= System.currentTimeMillis()) {
                uIData.hiddenTime = System.currentTimeMillis();
                QLoadingReportHelper.newInstance().addReportMessage(uIData);
                WatchMan.sLoadingBeanMap.remove(obj);
            }
        }
    }
}
