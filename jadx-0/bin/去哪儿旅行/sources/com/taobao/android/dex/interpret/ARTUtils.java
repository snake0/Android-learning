package com.taobao.android.dex.interpret;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;

@TargetApi(21)
public class ARTUtils {
    private static boolean a = false;

    private static native boolean IsVerificationEnabledNative();

    private static native boolean abortNative();

    private static native boolean isDex2oatEnabledNative();

    private static native boolean nativeInit(boolean z, int i);

    private static native boolean setIsDex2oatEnabledNative(boolean z);

    private static native boolean setSignalCatcherHaltFlagNative(boolean z);

    private static native boolean setVerificationEnabledNative(boolean z);

    public static boolean a(Context context, boolean z) {
        try {
            System.loadLibrary("dexinterpret");
            nativeInit(z, context.getApplicationInfo().targetSdkVersion);
            a = true;
        } catch (UnsatisfiedLinkError e) {
            Log.e("ARTUtils", "Couldn't initialize.", e);
        } catch (NoSuchMethodError e2) {
            Log.e("ARTUtils", "Couldn't initialize.", e2);
        } catch (Throwable th) {
            Log.e("ARTUtils", "Couldn't initialize.", th);
        }
        return a;
    }

    @Nullable
    public static Boolean a(boolean z) {
        if (a) {
            return Boolean.valueOf(setIsDex2oatEnabledNative(z));
        }
        return null;
    }

    @Nullable
    public static Boolean a() {
        if (a) {
            return Boolean.valueOf(isDex2oatEnabledNative());
        }
        return null;
    }

    @Nullable
    public static Boolean b(boolean z) {
        if (!a) {
            return null;
        }
        boolean verificationEnabledNative = setVerificationEnabledNative(z);
        if (verificationEnabledNative && z) {
            c(false);
        } else if (verificationEnabledNative && !z) {
            c(true);
        }
        return Boolean.valueOf(verificationEnabledNative);
    }

    @Nullable
    public static Boolean b() {
        if (a) {
            return Boolean.valueOf(IsVerificationEnabledNative());
        }
        return null;
    }

    @Nullable
    public static Boolean c(boolean z) {
        if (a) {
            return Boolean.valueOf(setSignalCatcherHaltFlagNative(z));
        }
        return null;
    }
}
