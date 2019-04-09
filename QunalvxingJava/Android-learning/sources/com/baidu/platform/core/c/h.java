package com.baidu.platform.core.c;

import android.net.http.Headers;
import android.text.TextUtils;
import com.baidu.mapapi.search.poi.PoiBoundSearchOption;
import com.baidu.mapapi.search.poi.PoiCitySearchOption;
import com.baidu.mapapi.search.poi.PoiNearbySearchOption;
import com.baidu.platform.base.e;
import com.baidu.platform.domain.c;
import com.iflytek.aiui.AIUIConstant;

public class h extends e {
    h(PoiBoundSearchOption poiBoundSearchOption) {
        a(poiBoundSearchOption);
    }

    h(PoiCitySearchOption poiCitySearchOption) {
        a(poiCitySearchOption);
    }

    h(PoiNearbySearchOption poiNearbySearchOption) {
        a(poiNearbySearchOption);
    }

    private void a(PoiBoundSearchOption poiBoundSearchOption) {
        this.a.a("query", poiBoundSearchOption.mKeyword);
        this.a.a(AIUIConstant.KEY_TAG, poiBoundSearchOption.mTag);
        this.a.a("bounds", poiBoundSearchOption.mBound.southwest.latitude + "," + poiBoundSearchOption.mBound.southwest.longitude + "," + poiBoundSearchOption.mBound.northeast.latitude + "," + poiBoundSearchOption.mBound.northeast.longitude);
        this.a.a("output", "json");
        this.a.a("scope", poiBoundSearchOption.mScope + "");
        this.a.a("page_num", poiBoundSearchOption.mPageNum + "");
        this.a.a("page_size", poiBoundSearchOption.mPageCapacity + "");
        if (poiBoundSearchOption.mScope == 2 && poiBoundSearchOption.mPoiFilter != null && !TextUtils.isEmpty(poiBoundSearchOption.mPoiFilter.toString())) {
            this.a.a("filter", poiBoundSearchOption.mPoiFilter.toString());
        }
    }

    private void a(PoiCitySearchOption poiCitySearchOption) {
        this.a.a("query", poiCitySearchOption.mKeyword);
        this.a.a("region", poiCitySearchOption.mCity);
        this.a.a("output", "json");
        this.a.a("page_num", poiCitySearchOption.mPageNum + "");
        this.a.a("page_size", poiCitySearchOption.mPageCapacity + "");
        this.a.a("scope", poiCitySearchOption.mScope + "");
        this.a.a(AIUIConstant.KEY_TAG, poiCitySearchOption.mTag);
        if (poiCitySearchOption.mIsCityLimit) {
            this.a.a("city_limit", "true");
        } else {
            this.a.a("city_limit", "false");
        }
        if (poiCitySearchOption.mScope == 2 && poiCitySearchOption.mPoiFilter != null && !TextUtils.isEmpty(poiCitySearchOption.mPoiFilter.toString())) {
            this.a.a("filter", poiCitySearchOption.mPoiFilter.toString());
        }
    }

    private void a(PoiNearbySearchOption poiNearbySearchOption) {
        this.a.a("query", poiNearbySearchOption.mKeyword);
        this.a.a(Headers.LOCATION, poiNearbySearchOption.mLocation.latitude + "," + poiNearbySearchOption.mLocation.longitude);
        this.a.a("radius", poiNearbySearchOption.mRadius + "");
        this.a.a("output", "json");
        this.a.a("page_num", poiNearbySearchOption.mPageNum + "");
        this.a.a("page_size", poiNearbySearchOption.mPageCapacity + "");
        this.a.a("scope", poiNearbySearchOption.mScope + "");
        this.a.a(AIUIConstant.KEY_TAG, poiNearbySearchOption.mTag);
        if (poiNearbySearchOption.mRadiusLimit) {
            this.a.a("radius_limit", "true");
        } else {
            this.a.a("radius_limit", "false");
        }
        if (poiNearbySearchOption.mScope == 2 && poiNearbySearchOption.mPoiFilter != null && !TextUtils.isEmpty(poiNearbySearchOption.mPoiFilter.toString())) {
            this.a.a("filter", poiNearbySearchOption.mPoiFilter.toString());
        }
    }

    public String a(c cVar) {
        return cVar.a();
    }
}
