package com.taobao.android.runtime;

import java.io.PrintStream;
import java.io.PrintWriter;

public class ExceptionWithContext extends RuntimeException {
    private StringBuffer context;

    public ExceptionWithContext(String str, Object... objArr) {
        this(null, str, objArr);
    }

    public ExceptionWithContext(Throwable th, String str, Object... objArr) {
        String a = str != null ? a(str, objArr) : th != null ? th.getMessage() : null;
        super(a, th);
        if (th instanceof ExceptionWithContext) {
            a = ((ExceptionWithContext) th).context.toString();
            this.context = new StringBuffer(a.length() + 200);
            this.context.append(a);
            return;
        }
        this.context = new StringBuffer(200);
    }

    private static String a(String str, Object... objArr) {
        if (str == null) {
            return null;
        }
        return String.format(str, objArr);
    }

    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.println(this.context);
    }

    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println(this.context);
    }
}
