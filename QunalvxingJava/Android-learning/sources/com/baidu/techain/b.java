package com.baidu.techain;

import com.baidu.techain.b.e;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

public final class b {
    public static int a = -1;
    static ThreadLocal<StringBuilder> b = new ThreadLocal();
    private static int c = 0;

    public static void a() {
    }

    public static void b() {
    }

    public static String a(Throwable th) {
        String stringWriter;
        Throwable th2 = th;
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return "";
            }
            try {
                th2 = th2.getCause();
            } catch (IOException e) {
                e.printStackTrace();
                return stringWriter;
            } catch (Throwable th3) {
                e.a();
                return "";
            }
        }
        StringWriter stringWriter2;
        try {
            stringWriter2 = new StringWriter();
            try {
                th.printStackTrace(new PrintWriter(stringWriter2));
                stringWriter = stringWriter2.toString();
                stringWriter2.close();
                return stringWriter;
            } catch (Throwable th4) {
                th2 = th4;
            }
        } catch (Throwable th5) {
            th2 = th5;
            stringWriter2 = null;
            if (stringWriter2 != null) {
                try {
                    stringWriter2.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            throw th2;
        }
    }

    public static void c() {
    }
}
