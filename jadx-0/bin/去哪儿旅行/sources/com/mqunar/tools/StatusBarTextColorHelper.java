package com.mqunar.tools;

import android.app.Activity;
import android.os.Build.VERSION;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class StatusBarTextColorHelper {
    public static boolean setStatusBarTextColor(Activity activity, boolean z) {
        boolean a = c.a() ? a(activity, z) : c.b() ? b(activity, z) : false;
        if (c(activity, z) || a) {
            return true;
        }
        return false;
    }

    private static boolean a(Activity activity, boolean z) {
        try {
            Window window = activity.getWindow();
            Class cls = window.getClass();
            Class cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Method method = cls.getMethod("setExtraFlags", new Class[]{Integer.TYPE, Integer.TYPE});
            if (z) {
                method.invoke(window, new Object[]{Integer.valueOf(0), Integer.valueOf(i)});
                return true;
            }
            method.invoke(window, new Object[]{Integer.valueOf(i), Integer.valueOf(i)});
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean b(Activity activity, boolean z) {
        try {
            Window window = activity.getWindow();
            LayoutParams attributes = window.getAttributes();
            Field declaredField = LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i = declaredField.getInt(null);
            int i2 = declaredField2.getInt(attributes);
            if (z) {
                i = (i ^ -1) & i2;
            } else {
                i |= i2;
            }
            declaredField2.setInt(attributes, i);
            window.setAttributes(attributes);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean c(Activity activity, boolean z) {
        if (z) {
            activity.getWindow().getDecorView().setSystemUiVisibility(1280);
            return true;
        } else if (VERSION.SDK_INT < 23) {
            return false;
        } else {
            activity.getWindow().getDecorView().setSystemUiVisibility(9216);
            return true;
        }
    }
}
