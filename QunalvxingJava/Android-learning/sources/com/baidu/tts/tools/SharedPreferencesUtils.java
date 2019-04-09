package com.baidu.tts.tools;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public class SharedPreferencesUtils {
    public static String PREFERENCE_NAME = "AndroidTTS";

    private SharedPreferencesUtils() {
        throw new AssertionError();
    }

    public static boolean putString(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        edit.putString(str, str2);
        return edit.commit();
    }

    public static String getString(Context context, String str) {
        return getString(context, str, null);
    }

    public static String getString(Context context, String str, String str2) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getString(str, str2);
    }

    public static boolean putInt(Context context, String str, int i) {
        Editor edit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        edit.putInt(str, i);
        return edit.commit();
    }

    public static int getInt(Context context, String str) {
        return getInt(context, str, -1);
    }

    public static int getInt(Context context, String str, int i) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getInt(str, i);
    }

    public static boolean putLong(Context context, String str, long j) {
        Editor edit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        edit.putLong(str, j);
        return edit.commit();
    }

    public static long getLong(Context context, String str) {
        return getLong(context, str, -1);
    }

    public static long getLong(Context context, String str, long j) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getLong(str, j);
    }

    public static boolean putFloat(Context context, String str, float f) {
        Editor edit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        edit.putFloat(str, f);
        return edit.commit();
    }

    public static float getFloat(Context context, String str) {
        return getFloat(context, str, -1.0f);
    }

    public static float getFloat(Context context, String str, float f) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getFloat(str, f);
    }

    public static boolean putBoolean(Context context, String str, boolean z) {
        Editor edit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        edit.putBoolean(str, z);
        return edit.commit();
    }

    public static boolean getBoolean(Context context, String str) {
        return getBoolean(context, str, false);
    }

    public static boolean getBoolean(Context context, String str, boolean z) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getBoolean(str, z);
    }
}
