package org.acra.ne;

import android.content.Context;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import java.io.File;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.b.e;
import org.acra.util.b;

public class NativeExceptionHandler {
    public static native void endApplication();

    public static native void setDumpDir(String str, int i);

    public void a(@NonNull Context context) {
        setDumpDir(new e(context).d().getAbsolutePath(), b.a());
    }

    public static void handleCrash(NativeException nativeException) {
        ACRA.f.e(ACRA.e, "handle native Crash");
        try {
            String crashFileDirectory = nativeException.getCrashFileDirectory();
            File file = new File(crashFileDirectory);
            if (!file.exists() || crashFileDirectory.equals("")) {
                ACRA.f.e(ACRA.e, "dmp not found");
            } else {
                ErrorReporter errorReporter = ACRA.getErrorReporter();
                nativeException.setCrashFileDirectory(file.getAbsolutePath());
                errorReporter.uncaughtException(Thread.currentThread(), nativeException);
                ACRA.f.e(ACRA.e, "handleNativeException 等待Java代码中的线程");
                SystemClock.sleep(1000);
            }
            ACRA.f.e(ACRA.e, "handleNativeException 结束程序");
            endApplication();
        } catch (Exception e) {
            ACRA.f.e(ACRA.e, "handleNativeHandler error " + e.toString());
            ACRA.f.e(ACRA.e, "handleNativeException 结束程序");
            endApplication();
        } catch (Throwable th) {
            ACRA.f.e(ACRA.e, "handleNativeException 结束程序");
            endApplication();
            throw th;
        }
    }

    public static void a(@NonNull NativeException nativeException) {
        String crashFileDirectory = nativeException.getCrashFileDirectory();
        if (new File(crashFileDirectory).exists() && !crashFileDirectory.equals("")) {
            ACRA.getErrorReporter().handleException(nativeException);
        }
    }
}
