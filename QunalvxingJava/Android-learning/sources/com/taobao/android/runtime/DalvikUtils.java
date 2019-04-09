package com.taobao.android.runtime;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import dalvik.system.DexFile;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class DalvikUtils {
    private static final String a = DalvikUtils.class.getSimpleName();
    private static boolean b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ClassVerifyMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DexOptMode {
    }

    private static native boolean addBootClassPathNative(String[] strArr, int[] iArr);

    private static native String bootClassPathNative();

    private static native boolean disableJitCompilationNative();

    private static native boolean dvmJdwpStartupNative(short s);

    private static native int getClassVerifyModeNative();

    private static native int getDexOptModeNative();

    private static native boolean nativeInit();

    private static native boolean setClassVerifyModeNative(int i);

    private static native boolean setDexOptModeNative(int i);

    public static boolean a() {
        try {
            System.loadLibrary("dalvikhack");
            b = nativeInit();
            return b;
        } catch (UnsatisfiedLinkError e) {
            Log.e(a, e.getMessage(), e);
            return false;
        }
    }

    public static DexFile a(@NonNull String str, @NonNull String str2, int i) {
        long currentTimeMillis = System.currentTimeMillis() - System.currentTimeMillis();
        return DexFile.loadDex(str, str2, i);
    }

    @Nullable
    public static Boolean a(int i) {
        if (!d.a && b) {
            return Boolean.valueOf(setClassVerifyModeNative(i));
        }
        return null;
    }
}
