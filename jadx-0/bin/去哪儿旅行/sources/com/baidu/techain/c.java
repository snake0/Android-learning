package com.baidu.techain;

import android.content.Context;
import com.baidu.techain.b.e;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class c {
    private static Map<String, d> a = new HashMap();

    public static void a(Context context, int i, File file, File file2) {
        try {
            if (e.a(file)) {
                if (!e.a(file2)) {
                    e.a(file, file2);
                }
                new StringBuilder("f=").append(file).append(", b=").append(file2);
                b.a();
                if (!a.containsKey(file.getAbsolutePath())) {
                    d dVar = new d(context, i, file.getAbsolutePath(), file2.getAbsolutePath());
                    dVar.startWatching();
                    a.put(file.getAbsolutePath(), dVar);
                }
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    public static void a(File file) {
        if (file != null) {
            try {
                new StringBuilder("f=").append(file.getAbsolutePath());
                b.a();
                d dVar = (d) a.get(file.getAbsolutePath());
                if (dVar != null) {
                    dVar.stopWatching();
                    a.remove(file.getAbsolutePath());
                    dVar.a();
                }
            } catch (Throwable th) {
                e.a();
            }
        }
    }
}
