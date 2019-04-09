package com.baidu.techain.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import com.baidu.techain.core.ApkInfo;
import com.baidu.techain.core.g;
import java.io.File;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public final class i {
    public static final String[] a = new String[]{"java.lang.UnsatisfiedLinkError"};
    public static final String[] b = new String[]{"space left"};

    public static String a(Context context, String str, String str2) {
        try {
            Object obj;
            if (str.contains(a[0])) {
                obj = 1;
            } else if (str.contains(b[0])) {
                obj = 2;
            } else {
                obj = null;
            }
            switch (obj) {
                case 1:
                    ApkInfo d = g.a().d(str2);
                    String str3 = d.libPath;
                    String str4 = str + "\r\n{libpath=" + d.libPath + "}";
                    for (String str32 : str32.split(":")) {
                        if (str32.startsWith("/data/data/")) {
                            File file = new File(str32);
                            if (!file.exists()) {
                                str4 = str4 + "\r\nsubLibPathFile " + str32 + " not exists";
                            } else if (file.isDirectory()) {
                                File[] listFiles = file.listFiles();
                                int length = listFiles.length;
                                int i = 0;
                                while (i < length) {
                                    file = listFiles[i];
                                    i++;
                                    str4 = str4 + "\r\n{" + file.getAbsolutePath() + ":" + o.a(file) + "}\r\n";
                                }
                            } else {
                                str4 = str4 + "\r\nsubLibPathFile " + str32 + " not a dir";
                            }
                        }
                    }
                    return str4;
                case 2:
                    return a(context, str);
                default:
                    return str;
            }
        } catch (Throwable th) {
            e.a();
            return str;
        }
    }

    @SuppressLint({"NewApi"})
    private static String a(Context context, String str) {
        try {
            String str2;
            File filesDir = context.getFilesDir();
            if (VERSION.SDK_INT >= 9) {
                long freeSpace = filesDir.getFreeSpace();
                str2 = ((str + "\r\nFreeSpace=" + freeSpace) + "  TotalSpace=" + filesDir.getTotalSpace()) + "  UsableSpace=" + filesDir.getUsableSpace();
            } else {
                str2 = str;
            }
            JSONArray jSONArray = new JSONArray();
            long j = 0;
            for (File file : filesDir.listFiles()) {
                if (file.isDirectory() && file.getName().startsWith(".")) {
                    j += a(file, jSONArray);
                }
            }
            return ((str2 + IOUtils.LINE_SEPARATOR_WINDOWS) + jSONArray.toString()) + "\r\nAllFileSize=" + j;
        } catch (Throwable th) {
            return str;
        }
    }

    private static long a(File file, JSONArray jSONArray) {
        long j = 0;
        if (!(file == null || jSONArray == null || !file.isDirectory())) {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    j += a(file2, jSONArray);
                } else if (file2.exists()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("path", file2.getAbsolutePath());
                    jSONObject.put("size", file2.length());
                    jSONArray.put(jSONObject);
                    j += file2.length();
                }
            }
        }
        return j;
    }
}
