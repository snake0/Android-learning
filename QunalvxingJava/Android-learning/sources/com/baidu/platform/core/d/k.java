package com.baidu.platform.core.d;

import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapapi.search.core.CityInfo;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.baidu.mapapi.search.route.DrivingRouteResult;
import com.baidu.mapapi.search.route.OnGetRoutePlanResultListener;
import com.baidu.mapapi.search.route.SuggestAddrInfo;
import com.baidu.mapapi.search.route.TransitRouteResult;
import com.baidu.mapapi.search.route.WalkingRouteResult;
import com.baidu.platform.base.SearchType;
import com.baidu.platform.base.d;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechUtility;
import com.mqunar.qapm.domain.UIData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class k extends d {
    SuggestAddrInfo b = null;
    protected boolean c;

    /* JADX WARNING: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0087  */
    private com.baidu.mapapi.search.route.SuggestAddrInfo a(org.json.JSONObject r14) {
        /*
        r13 = this;
        r3 = 1;
        r4 = 0;
        r2 = 0;
        if (r14 != 0) goto L_0x0006;
    L_0x0005:
        return r2;
    L_0x0006:
        r0 = "traffic_pois";
        r0 = r14.optJSONObject(r0);
        if (r0 == 0) goto L_0x0005;
    L_0x000e:
        r1 = "option";
        r5 = r0.optJSONObject(r1);
        r1 = "content";
        r6 = r0.optJSONObject(r1);
        if (r5 == 0) goto L_0x0005;
    L_0x001c:
        if (r6 == 0) goto L_0x0005;
    L_0x001e:
        r0 = "start_city";
        r0 = r5.optJSONObject(r0);
        if (r0 == 0) goto L_0x00f0;
    L_0x0026:
        r1 = "cname";
        r0 = r0.optString(r1);
        r1 = r0;
    L_0x002d:
        r0 = "end_city";
        r0 = r5.optJSONArray(r0);
        if (r0 == 0) goto L_0x00ed;
    L_0x0035:
        r0 = r0.opt(r4);
        r0 = (org.json.JSONObject) r0;
        if (r0 == 0) goto L_0x00ed;
    L_0x003d:
        r7 = "cname";
        r0 = r0.optString(r7);
    L_0x0043:
        r7 = "city_list";
        r7 = r5.optJSONArray(r7);
        r8 = "prio_flag";
        r8 = r5.optJSONArray(r8);
        if (r7 == 0) goto L_0x0005;
    L_0x0051:
        if (r8 == 0) goto L_0x0005;
    L_0x0053:
        r9 = r7.length();
        r10 = new boolean[r9];
        r11 = new boolean[r9];
        r5 = r4;
    L_0x005c:
        if (r5 >= r9) goto L_0x0080;
    L_0x005e:
        r2 = r7.optString(r5);
        r2 = java.lang.Integer.parseInt(r2);
        r12 = r8.optString(r5);
        r12 = java.lang.Integer.parseInt(r12);
        if (r2 != r3) goto L_0x007c;
    L_0x0070:
        r2 = r3;
    L_0x0071:
        r10[r5] = r2;
        if (r12 != r3) goto L_0x007e;
    L_0x0075:
        r2 = r3;
    L_0x0076:
        r11[r5] = r2;
        r2 = r5 + 1;
        r5 = r2;
        goto L_0x005c;
    L_0x007c:
        r2 = r4;
        goto L_0x0071;
    L_0x007e:
        r2 = r4;
        goto L_0x0076;
    L_0x0080:
        r2 = new com.baidu.mapapi.search.route.SuggestAddrInfo;
        r2.<init>();
    L_0x0085:
        if (r4 >= r9) goto L_0x0005;
    L_0x0087:
        r3 = r11[r4];
        if (r3 != 0) goto L_0x009e;
    L_0x008b:
        r3 = r10[r4];
        if (r3 == 0) goto L_0x00bf;
    L_0x008f:
        if (r4 != 0) goto L_0x00a1;
    L_0x0091:
        r3 = "start";
        r3 = r6.optJSONArray(r3);
        r3 = r13.a(r3);
        r2.setSuggestStartCity(r3);
    L_0x009e:
        r4 = r4 + 1;
        goto L_0x0085;
    L_0x00a1:
        r3 = r9 + -1;
        if (r4 != r3) goto L_0x00b5;
    L_0x00a5:
        if (r4 <= 0) goto L_0x00b5;
    L_0x00a7:
        r3 = "end";
        r3 = r6.optJSONArray(r3);
        r3 = r13.a(r3);
        r2.setSuggestEndCity(r3);
        goto L_0x009e;
    L_0x00b5:
        r3 = "multi_waypoints";
        r3 = r13.a(r6, r3);
        r2.setSuggestWpCity(r3);
        goto L_0x009e;
    L_0x00bf:
        if (r4 != 0) goto L_0x00cf;
    L_0x00c1:
        r3 = "start";
        r3 = r6.optJSONArray(r3);
        r3 = r13.a(r3, r1);
        r2.setSuggestStartNode(r3);
        goto L_0x009e;
    L_0x00cf:
        r3 = r9 + -1;
        if (r4 != r3) goto L_0x00e3;
    L_0x00d3:
        if (r4 <= 0) goto L_0x00e3;
    L_0x00d5:
        r3 = "end";
        r3 = r6.optJSONArray(r3);
        r3 = r13.a(r3, r0);
        r2.setSuggestEndNode(r3);
        goto L_0x009e;
    L_0x00e3:
        r3 = "multi_waypoints";
        r3 = r13.b(r6, r3);
        r2.setSuggestWpNode(r3);
        goto L_0x009e;
    L_0x00ed:
        r0 = r2;
        goto L_0x0043;
    L_0x00f0:
        r1 = r2;
        goto L_0x002d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.platform.core.d.k.a(org.json.JSONObject):com.baidu.mapapi.search.route.SuggestAddrInfo");
    }

    private List<CityInfo> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                JSONObject jSONObject = (JSONObject) jSONArray.opt(i2);
                if (jSONObject != null) {
                    CityInfo cityInfo = new CityInfo();
                    cityInfo.num = jSONObject.optInt("num");
                    cityInfo.city = jSONObject.optString(AIUIConstant.KEY_NAME);
                    arrayList.add(cityInfo);
                }
                i = i2 + 1;
            } else {
                arrayList.trimToSize();
                return arrayList;
            }
        }
    }

    private List<PoiInfo> a(JSONArray jSONArray, String str) {
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArray.length()) {
                    break;
                }
                JSONObject jSONObject = (JSONObject) jSONArray.opt(i2);
                if (jSONObject != null) {
                    PoiInfo poiInfo = new PoiInfo();
                    poiInfo.address = jSONObject.optString("addr");
                    poiInfo.uid = jSONObject.optString(AIUIConstant.KEY_UID);
                    poiInfo.name = jSONObject.optString(AIUIConstant.KEY_NAME);
                    poiInfo.location = CoordUtil.decodeLocation(jSONObject.optString("geo"));
                    poiInfo.city = str;
                    arrayList.add(poiInfo);
                }
                i = i2 + 1;
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
        }
        return null;
    }

    private List<List<CityInfo>> a(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return null;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= optJSONArray.length()) {
                return arrayList;
            }
            List a = a((JSONArray) optJSONArray.opt(i2));
            if (a != null) {
                arrayList.add(a);
            }
            i = i2 + 1;
        }
    }

    private List<List<PoiInfo>> b(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return null;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= optJSONArray.length()) {
                return arrayList;
            }
            List a = a((JSONArray) optJSONArray.opt(i2), "");
            if (a != null) {
                arrayList.add(a);
            }
            i = i2 + 1;
        }
    }

    private boolean b(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == null) {
                return false;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
            if (optJSONObject == null || optJSONObject.optInt("type") != 23 || optJSONObject.optInt(UIData.ERROR) != 0) {
                return false;
            }
            this.b = a(jSONObject);
            return this.b != null;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public SearchResult a(String str) {
        SearchType a = a();
        if (b(str)) {
            this.c = true;
        } else {
            this.c = false;
        }
        switch (a) {
            case TRANSIT_ROUTE:
                TransitRouteResult transitRouteResult = new TransitRouteResult();
                if (this.c) {
                    transitRouteResult.setSuggestAddrInfo(this.b);
                    transitRouteResult.error = ERRORNO.AMBIGUOUS_ROURE_ADDR;
                    return transitRouteResult;
                }
                ((l) this).a(str, transitRouteResult);
                return transitRouteResult;
            case DRIVE_ROUTE:
                DrivingRouteResult drivingRouteResult = new DrivingRouteResult();
                if (this.c) {
                    drivingRouteResult.setSuggestAddrInfo(this.b);
                    drivingRouteResult.error = ERRORNO.AMBIGUOUS_ROURE_ADDR;
                    return drivingRouteResult;
                }
                ((c) this).a(str, drivingRouteResult);
                return drivingRouteResult;
            case WALK_ROUTE:
                WalkingRouteResult walkingRouteResult = new WalkingRouteResult();
                if (this.c) {
                    walkingRouteResult.setSuggestAddrInfo(this.b);
                    walkingRouteResult.error = ERRORNO.AMBIGUOUS_ROURE_ADDR;
                    return walkingRouteResult;
                }
                ((n) this).a(str, walkingRouteResult);
                return walkingRouteResult;
            default:
                return null;
        }
    }

    public void a(SearchResult searchResult, Object obj) {
        if (obj != null && (obj instanceof OnGetRoutePlanResultListener)) {
            OnGetRoutePlanResultListener onGetRoutePlanResultListener = (OnGetRoutePlanResultListener) obj;
            switch (a()) {
                case TRANSIT_ROUTE:
                    onGetRoutePlanResultListener.onGetTransitRouteResult((TransitRouteResult) searchResult);
                    return;
                case DRIVE_ROUTE:
                    onGetRoutePlanResultListener.onGetDrivingRouteResult((DrivingRouteResult) searchResult);
                    return;
                case WALK_ROUTE:
                    onGetRoutePlanResultListener.onGetWalkingRouteResult((WalkingRouteResult) searchResult);
                    return;
                default:
                    return;
            }
        }
    }
}
