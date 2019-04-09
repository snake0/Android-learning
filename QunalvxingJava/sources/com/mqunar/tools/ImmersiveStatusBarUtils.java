package com.mqunar.tools;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import java.lang.reflect.Method;

public class ImmersiveStatusBarUtils {
    private static String[] a = new String[]{"essential"};
    private static boolean b = false;

    class StatusBarUnderAdr5View extends View {
        public StatusBarUnderAdr5View(Context context) {
            super(context);
        }

        public StatusBarUnderAdr5View(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public StatusBarUnderAdr5View(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }
    }

    public static boolean isNeedImmersive(Activity activity) {
        return a((Context) activity);
    }

    public static boolean isNeedImmersive(Context context) {
        return a(context);
    }

    public static int getImmersiveOffset(Activity activity) {
        if (isNeedImmersive(activity)) {
            return getImmersiveOffset((Context) activity);
        }
        return 0;
    }

    public static int getImmersiveOffset(Context context) {
        if (isNeedImmersive(context)) {
            return getStatusBarHeight(context);
        }
        return 0;
    }

    private static boolean a(Context context) {
        return (context == null || b || !a()) ? false : true;
    }

    private static boolean a() {
        String str = Build.BRAND;
        if (str == null) {
            return false;
        }
        for (CharSequence contains : a) {
            if (str.contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public static void setStatusBarBgColorAndOffset(Activity activity, int i) {
        if (isNeedImmersive(activity)) {
            int immersiveOffset = getImmersiveOffset(activity);
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(16908290);
            if (viewGroup2 != null) {
                viewGroup2.setPadding(0, immersiveOffset, 0, 0);
                if (VERSION.SDK_INT >= 21) {
                    setStatusBarBgColor(activity, i);
                    return;
                }
                StatusBarUnderAdr5View statusBarUnderAdr5View;
                StatusBarUnderAdr5View a = a(viewGroup);
                if (a == null) {
                    a = new StatusBarUnderAdr5View(activity);
                    viewGroup.addView(a, new LayoutParams(-1, immersiveOffset));
                    statusBarUnderAdr5View = a;
                } else {
                    statusBarUnderAdr5View = a;
                }
                statusBarUnderAdr5View.setBackgroundColor(i);
            }
        }
    }

    public static void removeStatusBarBgColorAndOffset(Activity activity) {
        if (isNeedImmersive(activity)) {
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(16908290);
            if (viewGroup2 != null) {
                viewGroup2.setPadding(0, 0, 0, 0);
                if (VERSION.SDK_INT >= 21) {
                    setStatusBarBgColor(activity, 0);
                    return;
                }
                StatusBarUnderAdr5View a = a(viewGroup);
                if (a != null) {
                    viewGroup.removeView(a);
                }
            }
        }
    }

    private static StatusBarUnderAdr5View a(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != null && (childAt instanceof StatusBarUnderAdr5View)) {
                return (StatusBarUnderAdr5View) childAt;
            }
        }
        return null;
    }

    public static void setStatusBarBgColor(Activity activity, int i) {
        if (isNeedImmersive(activity) && VERSION.SDK_INT >= 21) {
            activity.getWindow().setStatusBarColor(i);
        }
    }

    public static void adaptShowKeyboard(Activity activity) {
        AndroidBug5497Workaround androidBug5497Workaround = new AndroidBug5497Workaround(activity);
    }

    public static void initWindowSetting(Activity activity) {
        Window window = activity.getWindow();
        activity.requestWindowFeature(1);
        if (VERSION.SDK_INT >= 21) {
            window.getDecorView().setSystemUiVisibility(1280);
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        } else if (VERSION.SDK_INT == 19) {
            window.addFlags(67108864);
        }
        window.setSoftInputMode(16);
    }

    public static void initWindowSettingForCustomImmersive(Activity activity) {
        try {
            b = false;
            if (isNeedImmersive(activity)) {
                initWindowSetting(activity);
            } else {
                activity.requestWindowFeature(1);
            }
        } catch (Throwable th) {
            b = true;
            a(th);
        }
    }

    private static void a(Throwable th) {
        try {
            Object invoke = Class.forName("org.acra.ACRA").getMethod("getErrorReporter", new Class[0]).invoke(null, new Object[0]);
            Method method = invoke.getClass().getMethod("handleSilentException", new Class[]{Throwable.class});
            Throwable th2 = new Throwable("在沉浸屏适配WindowSetting时错误，已被捕获，本次恢复为非沉浸式", th);
            method.invoke(invoke, new Object[]{th2});
        } catch (Throwable th3) {
        }
    }

    public static void setStatusBarTextColor(Activity activity, boolean z) {
        if (!isNeedImmersive(activity)) {
            return;
        }
        if (z || VERSION.SDK_INT >= 23) {
            StatusBarTextColorHelper.setStatusBarTextColor(activity, z);
        }
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
