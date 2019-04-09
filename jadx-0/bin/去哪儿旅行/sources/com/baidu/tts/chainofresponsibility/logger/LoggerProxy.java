package com.baidu.tts.chainofresponsibility.logger;

import android.util.Log;
import java.util.List;

public class LoggerProxy {
    private static d a = d.a();

    public static void v(String str, String str2) {
        log(2, str, str2);
    }

    public static void i(String str, String str2) {
        log(4, str, str2);
    }

    public static void d(String str, String str2) {
        log(3, str, str2);
    }

    public static void w(String str, String str2) {
        log(5, str, str2);
    }

    public static void e(String str, String str2) {
        log(6, str, str2);
    }

    public static void a(String str, String str2) {
        log(7, str, str2);
    }

    public static void log(int i, String str, String str2) {
        try {
            a.a(i, str, str2);
        } catch (Exception e) {
            Log.e("LoggerProxy", "log exception=" + e.toString());
        }
    }

    public static void printable(boolean z) {
        a.a(z);
    }

    public static void setModeRelease() {
        a.d();
    }

    public static void clearHandler() {
        a.b();
    }

    public static boolean isModeRelease() {
        return a.e();
    }

    public static void addPrintString(String str) {
        a.a(str);
    }

    public static void addPrintStrings(List<String> list) {
        a.a((List) list);
    }

    public static void addUnPrintString(String str) {
        a.b(str);
    }

    public static void clearSpecifyStrings() {
        a.c();
    }
}
