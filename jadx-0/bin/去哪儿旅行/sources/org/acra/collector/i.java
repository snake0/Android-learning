package org.acra.collector;

import android.os.Build.VERSION;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.android.internal.util.Predicate;
import java.io.IOException;
import java.util.ArrayList;
import org.acra.ACRA;
import org.acra.a.a;
import org.acra.a.b;
import org.acra.config.ACRAConfiguration;
import org.acra.util.g;

class i {
    i() {
    }

    public String a(@NonNull ACRAConfiguration aCRAConfiguration, @Nullable String str) {
        String str2;
        int i;
        int myPid = Process.myPid();
        if (!aCRAConfiguration.logcatFilterByPid() || myPid <= 0) {
            str2 = null;
        } else {
            str2 = Integer.toString(myPid) + "):";
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("logcat");
        if (str != null) {
            arrayList.add("-b");
            arrayList.add(str);
        }
        b logcatArguments = aCRAConfiguration.logcatArguments();
        int indexOf = logcatArguments.indexOf("-t");
        if (indexOf <= -1 || indexOf >= logcatArguments.size()) {
            i = -1;
        } else {
            i = Integer.parseInt((String) logcatArguments.get(indexOf + 1));
            if (VERSION.SDK_INT < 8) {
                logcatArguments.remove(indexOf + 1);
                logcatArguments.remove(indexOf);
                logcatArguments.add("-d");
            }
        }
        if (i <= 0) {
            i = 100;
        }
        a aVar = new a(i);
        arrayList.addAll(logcatArguments);
        try {
            final Process exec = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
            ACRA.f.b(ACRA.e, "Retrieving logcat output...");
            new Thread(new Runnable() {
                public void run() {
                    try {
                        g.a(exec.getErrorStream());
                    } catch (IOException e) {
                    }
                }
            }).start();
            aVar.add(g.a(exec.getInputStream(), new Predicate<String>() {
                /* renamed from: a */
                public boolean apply(String str) {
                    return str2 == null || str.contains(str2);
                }
            }));
        } catch (IOException e) {
            ACRA.f.c(ACRA.e, "LogCatCollector.collectLogCat could not retrieve data.", e);
        }
        return aVar.toString();
    }
}
