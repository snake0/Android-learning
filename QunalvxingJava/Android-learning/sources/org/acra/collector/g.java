package org.acra.collector;

import android.os.Process;
import android.support.annotation.NonNull;
import java.io.IOException;
import java.util.ArrayList;
import org.acra.ACRA;

final class g {
    @NonNull
    public static String a() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("dumpsys");
            arrayList.add("meminfo");
            arrayList.add(Integer.toString(Process.myPid()));
            stringBuilder.append(org.acra.util.g.a(Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()])).getInputStream()));
        } catch (IOException e) {
            ACRA.f.c(ACRA.e, "DumpSysCollector.meminfo could not retrieve data", e);
        }
        return stringBuilder.toString();
    }
}
