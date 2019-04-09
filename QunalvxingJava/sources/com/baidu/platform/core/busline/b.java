package com.baidu.platform.core.busline;

import com.baidu.mapapi.search.busline.BusLineSearchOption;
import com.baidu.platform.base.e;
import com.baidu.platform.domain.c;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.yvideo.BuildConfig;

public class b extends e {
    public b(BusLineSearchOption busLineSearchOption) {
        a(busLineSearchOption);
    }

    private void a(BusLineSearchOption busLineSearchOption) {
        this.a.a("qt", "bsl");
        this.a.a("rt_info", BuildConfig.VERSION_NAME);
        this.a.a("ie", "utf-8");
        this.a.a("oue", "0");
        this.a.a("c", busLineSearchOption.mCity);
        this.a.a(AIUIConstant.KEY_UID, busLineSearchOption.mUid);
        this.a.a("t", System.currentTimeMillis() + "");
    }

    public String a(c cVar) {
        return cVar.m();
    }
}
