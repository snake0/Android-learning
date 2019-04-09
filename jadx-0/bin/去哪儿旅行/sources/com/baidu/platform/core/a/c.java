package com.baidu.platform.core.a;

import com.baidu.platform.base.e;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.yvideo.BuildConfig;

public class c extends e {
    public c(String str) {
        a(str);
    }

    private void a(String str) {
        this.a.a("qt", "ext");
        this.a.a("num", "1000");
        this.a.a("l", "10");
        this.a.a("ie", "utf-8");
        this.a.a("oue", BuildConfig.VERSION_NAME);
        this.a.a("res", "api");
        this.a.a("fromproduct", "android_map_sdk");
        this.a.a(AIUIConstant.KEY_UID, str);
    }

    public String a(com.baidu.platform.domain.c cVar) {
        return cVar.o();
    }
}
