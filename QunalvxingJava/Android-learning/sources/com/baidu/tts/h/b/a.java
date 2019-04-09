package com.baidu.tts.h.b;

import android.content.Context;
import com.baidu.tts.tools.FileTools;
import com.baidu.tts.tools.GetCUID;
import com.baidu.tts.tools.ResourceTools;
import java.lang.ref.WeakReference;

public class a {
    private WeakReference<Context> a;
    private String b;
    private String c;

    public a(WeakReference<Context> weakReference) {
        this.a = weakReference;
    }

    public String a() {
        if (this.b == null) {
            this.b = GetCUID.getCUID(c());
        }
        return this.b;
    }

    public String b() {
        if (this.c == null) {
            this.c = FileTools.jointPathAndName(ResourceTools.getAppFilesDirPath(c()), "baidu_tts_license");
        }
        return this.c;
    }

    private Context c() {
        return this.a == null ? null : (Context) this.a.get();
    }
}
