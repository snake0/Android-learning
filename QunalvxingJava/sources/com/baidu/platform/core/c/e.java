package com.baidu.platform.core.c;

import com.baidu.mapapi.search.poi.PoiDetailSearchOption;
import com.baidu.platform.domain.c;
import com.iflytek.aiui.AIUIConstant;

public class e extends com.baidu.platform.base.e {
    e(PoiDetailSearchOption poiDetailSearchOption) {
        a(poiDetailSearchOption);
    }

    public String a(c cVar) {
        return cVar.b();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(PoiDetailSearchOption poiDetailSearchOption) {
        this.a.a(AIUIConstant.KEY_UID, poiDetailSearchOption.mUid);
        if (poiDetailSearchOption.mUids == null || poiDetailSearchOption.mUids.length() == 0) {
            this.a.a("uids", poiDetailSearchOption.mUid);
        } else {
            this.a.a("uids", poiDetailSearchOption.mUids);
        }
        this.a.a("output", "json");
        this.a.a("scope", "2");
    }
}
