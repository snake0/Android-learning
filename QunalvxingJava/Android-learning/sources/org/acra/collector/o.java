package org.acra.collector;

import android.os.Build;
import android.support.annotation.NonNull;
import com.mqunar.necro.agent.bean.NecroParam;
import java.io.BufferedReader;
import java.util.HashMap;
import java.util.Map;
import org.acra.ACRA;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

final class o {
    private static final String a = Build.BRAND;

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0043 A:{SYNTHETIC, Splitter:B:20:0x0043} */
    @android.support.annotation.NonNull
    static java.lang.String a() {
        /*
        r2 = 0;
        r0 = "getprop";
        r0 = java.lang.Runtime.getRuntime();	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r1 = "getprop";
        r0 = r0.exec(r1);	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r1 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r3 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r0 = r0.getInputStream();	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r3.<init>(r0);	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r0 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r1.<init>(r3, r0);	 Catch:{ IOException -> 0x002d, all -> 0x0040 }
        r2 = a(r1);	 Catch:{ IOException -> 0x0051 }
        if (r1 == 0) goto L_0x0026;
    L_0x0023:
        r1.close();	 Catch:{ IOException -> 0x004a }
    L_0x0026:
        if (r2 == 0) goto L_0x0047;
    L_0x0028:
        r0 = r2.toString();
    L_0x002c:
        return r0;
    L_0x002d:
        r0 = move-exception;
        r1 = r2;
    L_0x002f:
        r3 = org.acra.ACRA.f;	 Catch:{ all -> 0x004e }
        r4 = org.acra.ACRA.e;	 Catch:{ all -> 0x004e }
        r5 = "PropertyCollector.collectProperty could not retrieve data.";
        r3.c(r4, r5, r0);	 Catch:{ all -> 0x004e }
        if (r1 == 0) goto L_0x0026;
    L_0x003a:
        r1.close();	 Catch:{ IOException -> 0x003e }
        goto L_0x0026;
    L_0x003e:
        r0 = move-exception;
        goto L_0x0026;
    L_0x0040:
        r0 = move-exception;
    L_0x0041:
        if (r2 == 0) goto L_0x0046;
    L_0x0043:
        r2.close();	 Catch:{ IOException -> 0x004c }
    L_0x0046:
        throw r0;
    L_0x0047:
        r0 = "";
        goto L_0x002c;
    L_0x004a:
        r0 = move-exception;
        goto L_0x0026;
    L_0x004c:
        r1 = move-exception;
        goto L_0x0046;
    L_0x004e:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0041;
    L_0x0051:
        r0 = move-exception;
        goto L_0x002f;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.collector.o.a():java.lang.String");
    }

    @NonNull
    private static StringBuilder a(@NonNull BufferedReader bufferedReader) {
        StringBuilder stringBuilder = new StringBuilder();
        String[] b = b();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return stringBuilder;
            }
            String[] split = readLine.split(":");
            if (split.length >= 2) {
                if (b.length > 0) {
                    a(b, split);
                }
                a(stringBuilder, split);
            }
        }
    }

    private static void a(@NonNull StringBuilder stringBuilder, String[] strArr) {
        if (strArr[1] != null && !strArr[1].trim().equals(NecroParam.NECRO_EMPTY_ARRAY)) {
            strArr[0] = strArr[0].replace(FilenameUtils.EXTENSION_SEPARATOR, '_');
            stringBuilder.append(strArr[0]).append("=").append(a(strArr[1])).append(IOUtils.LINE_SEPARATOR_UNIX);
        }
    }

    private static void a(@NonNull String[] strArr, @NonNull String[] strArr2) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals(strArr2[0].trim())) {
                if (strArr.length > 1) {
                    ACRA.getErrorReporter().putCustomData("rom version" + (i + 1), a(strArr2[1]) + "  (" + a + ")");
                } else {
                    ACRA.getErrorReporter().putCustomData("rom version", a(strArr2[1]) + "  (" + a + ")");
                }
            }
        }
    }

    @NonNull
    private static String a(@NonNull String str) {
        return str.replace("[", "").replace("]", "");
    }

    private static String[] b() {
        Map c = c();
        for (String str : c.keySet()) {
            if (str != null && str.equalsIgnoreCase(a)) {
                return (String[]) c.get(str);
            }
        }
        return new String[0];
    }

    @NonNull
    private static Map<String, String[]> c() {
        HashMap hashMap = new HashMap();
        hashMap.put("OPPO", new String[]{"[ro.build.version.opporom]"});
        hashMap.put("ONEPLUS", new String[]{"[ro.rom.version]"});
        hashMap.put("Xiaomi", new String[]{"[ro.miui.ui.version.name]", "[ro.build.version.incremental]"});
        hashMap.put("Huawei", new String[]{"[ro.build.version.emui]"});
        hashMap.put("Honor", new String[]{"[ro.build.version.emui]"});
        hashMap.put("QiKU", new String[]{"[ro.build.uiversion]"});
        hashMap.put("SMARTISAN", new String[]{"[ro.smartisan.version]"});
        hashMap.put("vivo", new String[]{"[ro.vivo.rom.version]"});
        hashMap.put("Letv", new String[]{"[ro.letv.release.version]"});
        hashMap.put("htc", new String[]{"[ro.build.sense.version]"});
        hashMap.put("Meizu", new String[]{"[ro.build.display.id]"});
        return hashMap;
    }
}
