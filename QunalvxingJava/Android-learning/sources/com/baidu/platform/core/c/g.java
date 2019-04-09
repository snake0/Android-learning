package com.baidu.platform.core.c;

import android.net.http.Headers;
import com.baidu.mapapi.CoordType;
import com.baidu.mapapi.SDKInitializer;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.CityInfo;
import com.baidu.mapapi.search.core.PoiDetailInfo;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.baidu.mapapi.search.poi.OnGetPoiSearchResultListener;
import com.baidu.mapapi.search.poi.PoiResult;
import com.baidu.mapsdkplatform.comapi.util.CoordTrans;
import com.baidu.platform.base.SearchType;
import com.baidu.platform.base.d;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechUtility;
import com.mqunar.qapm.domain.UIData;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class g extends d {
    int b;
    int c;

    g(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    private boolean a(String str, PoiResult poiResult) {
        if (str == null || str.equals("")) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("status");
            if (optInt != 0) {
                switch (optInt) {
                    case 1:
                        poiResult.error = ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;
                        return false;
                    case 2:
                        poiResult.error = ERRORNO.SEARCH_OPTION_ERROR;
                        return false;
                    default:
                        poiResult.error = ERRORNO.RESULT_NOT_FOUND;
                        return false;
                }
                e.printStackTrace();
                poiResult.error = ERRORNO.RESULT_NOT_FOUND;
                return false;
            } else if (!a(jSONObject, poiResult)) {
                return false;
            } else {
                poiResult.error = ERRORNO.NO_ERROR;
                return true;
            }
        } catch (JSONException e) {
            e.printStackTrace();
            poiResult.error = ERRORNO.RESULT_NOT_FOUND;
            return false;
        }
    }

    private boolean a(JSONObject jSONObject, PoiResult poiResult) {
        if (jSONObject == null) {
            return false;
        }
        poiResult.error = ERRORNO.NO_ERROR;
        JSONArray optJSONArray = jSONObject.optJSONArray("results");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            poiResult.error = ERRORNO.RESULT_NOT_FOUND;
            return false;
        }
        int optInt = jSONObject.optInt("total");
        poiResult.setTotalPoiNum(optInt);
        int length = optJSONArray.length();
        poiResult.setCurrentPageCapacity(length);
        poiResult.setCurrentPageNum(this.b);
        if (length != 0) {
            poiResult.setTotalPageNum((optInt % this.c > 0 ? 1 : 0) + (optInt / this.c));
        }
        ArrayList arrayList = new ArrayList();
        for (length = 0; length < optJSONArray.length(); length++) {
            JSONObject jSONObject2 = (JSONObject) optJSONArray.opt(length);
            if (jSONObject2 != null) {
                PoiInfo poiInfo = new PoiInfo();
                String optString = jSONObject2.optString(AIUIConstant.KEY_NAME);
                if (optString != null) {
                    poiInfo.name = optString;
                }
                optString = jSONObject2.optString("province");
                if (optString != null) {
                    poiInfo.province = optString;
                }
                optString = jSONObject2.optString("city");
                if (optString != null) {
                    poiInfo.city = optString;
                }
                optString = jSONObject2.optString("area");
                if (optString != null) {
                    poiInfo.area = optString;
                }
                optString = jSONObject2.optString("street_id");
                if (optString != null) {
                    poiInfo.street_id = optString;
                }
                optString = jSONObject2.optString(AIUIConstant.KEY_UID);
                if (optString != null) {
                    poiInfo.uid = optString;
                }
                optString = jSONObject2.optString("address");
                if (optString != null) {
                    poiInfo.address = optString;
                }
                optString = jSONObject2.optString("telephone");
                if (optString != null) {
                    poiInfo.phoneNum = optString;
                }
                poiInfo.detail = jSONObject2.optInt("detail", 0);
                JSONObject optJSONObject = jSONObject2.optJSONObject(Headers.LOCATION);
                if (optJSONObject != null) {
                    LatLng latLng = new LatLng(optJSONObject.optDouble("lat"), optJSONObject.optDouble("lng"));
                    if (SDKInitializer.getCoordType() == CoordType.GCJ02) {
                        latLng = CoordTrans.baiduToGcj(latLng);
                    }
                    poiInfo.location = latLng;
                }
                String optString2 = jSONObject2.optString("detail_info");
                if (!(optString2 == null || optString2.length() == 0)) {
                    PoiDetailInfo b = b(optString2);
                    if (b != null) {
                        poiInfo.poiDetailInfo = b;
                    }
                }
                arrayList.add(poiInfo);
            }
        }
        poiResult.setPoiInfo(arrayList);
        return true;
    }

    private PoiDetailInfo b(String str) {
        PoiDetailInfo poiDetailInfo = new PoiDetailInfo();
        try {
            JSONObject jSONObject = new JSONObject(str);
            poiDetailInfo.a = jSONObject.optInt("distance", 0);
            poiDetailInfo.b = jSONObject.optString(AIUIConstant.KEY_TAG);
            poiDetailInfo.c = jSONObject.optString("detail_url");
            poiDetailInfo.d = jSONObject.optString("type");
            poiDetailInfo.e = jSONObject.optDouble("price", 0.0d);
            poiDetailInfo.f = jSONObject.optDouble("overall_rating", 0.0d);
            poiDetailInfo.g = jSONObject.optDouble("taste_rating", 0.0d);
            poiDetailInfo.h = jSONObject.optDouble("service_rating", 0.0d);
            poiDetailInfo.i = jSONObject.optDouble("environment_rating", 0.0d);
            poiDetailInfo.j = jSONObject.optDouble("facility_rating", 0.0d);
            poiDetailInfo.k = jSONObject.optDouble("hygiene_rating", 0.0d);
            poiDetailInfo.l = jSONObject.optDouble("technology_rating", 0.0d);
            poiDetailInfo.m = jSONObject.optInt("image_num");
            poiDetailInfo.n = jSONObject.optInt("groupon_num");
            poiDetailInfo.p = jSONObject.optInt("comment_num");
            poiDetailInfo.o = jSONObject.optInt("discount_num");
            poiDetailInfo.q = jSONObject.optInt("favorite_num");
            poiDetailInfo.r = jSONObject.optInt("checkin_num");
            poiDetailInfo.s = jSONObject.optString("shop_hours");
            jSONObject = jSONObject.optJSONObject("navi_location");
            if (jSONObject == null) {
                return poiDetailInfo;
            }
            double optDouble = jSONObject.optDouble("lat");
            double optDouble2 = jSONObject.optDouble("lng");
            if (SDKInitializer.getCoordType() == CoordType.GCJ02) {
                poiDetailInfo.t = CoordTrans.baiduToGcj(new LatLng(optDouble, optDouble2));
                return poiDetailInfo;
            }
            poiDetailInfo.t = new LatLng(optDouble, optDouble2);
            return poiDetailInfo;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean b(String str, PoiResult poiResult) {
        if (str == null || str.equals("") || poiResult == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == null) {
                return false;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
            jSONObject = jSONObject.optJSONObject("traffic_citys");
            if (optJSONObject == null || jSONObject == null || optJSONObject.optInt("type") != 7 || optJSONObject.optInt(UIData.ERROR) != 0) {
                return false;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("contents");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    CityInfo cityInfo = new CityInfo();
                    cityInfo.num = optJSONObject2.optInt("num");
                    cityInfo.city = optJSONObject2.optString(AIUIConstant.KEY_NAME);
                    arrayList.add(cityInfo);
                }
            }
            if (arrayList.size() <= 0) {
                return false;
            }
            poiResult.setSuggestCityList(arrayList);
            poiResult.error = ERRORNO.AMBIGUOUS_KEYWORD;
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public SearchResult a(String str) {
        boolean z = false;
        PoiResult poiResult = new PoiResult();
        if (str == null || str.equals("")) {
            poiResult.error = ERRORNO.RESULT_NOT_FOUND;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("SDK_InnerError")) {
                    jSONObject = jSONObject.optJSONObject("SDK_InnerError");
                    if (jSONObject.has("PermissionCheckError")) {
                        poiResult.error = ERRORNO.PERMISSION_UNFINISHED;
                    } else if (jSONObject.has("httpStateError")) {
                        String optString = jSONObject.optString("httpStateError");
                        if (optString.equals("NETWORK_ERROR")) {
                            poiResult.error = ERRORNO.NETWORK_ERROR;
                        } else if (optString.equals("REQUEST_ERROR")) {
                            poiResult.error = ERRORNO.REQUEST_ERROR;
                        } else {
                            poiResult.error = ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;
                        }
                    }
                }
                SearchType searchType = this.a;
                if (SearchType.POI_IN_CITY_SEARCH == a()) {
                    z = a(str, poiResult, false);
                }
                if (!(z || b(str, poiResult) || a(str, poiResult))) {
                    poiResult.error = ERRORNO.RESULT_NOT_FOUND;
                }
            } catch (Exception e) {
                poiResult.error = ERRORNO.RESULT_NOT_FOUND;
            }
        }
        return poiResult;
    }

    public void a(SearchResult searchResult, Object obj) {
        if (obj != null && (obj instanceof OnGetPoiSearchResultListener)) {
            switch (a()) {
                case POI_NEAR_BY_SEARCH:
                case POI_IN_CITY_SEARCH:
                case POI_IN_BOUND_SEARCH:
                    ((OnGetPoiSearchResultListener) obj).onGetPoiResult((PoiResult) searchResult);
                    return;
                default:
                    return;
            }
        }
    }
}
