package com.baidu.platform.core.a;

import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapapi.model.inner.GeoPoint;
import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.baidu.mapapi.search.district.DistrictResult;
import com.baidu.mapapi.search.district.OnGetDistricSearchResultListener;
import com.baidu.platform.base.d;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechUtility;
import com.mqunar.qapm.domain.UIData;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends d {
    boolean b = false;
    String c = null;

    private boolean a(String str, DistrictResult districtResult) {
        if (str == null || "".equals(str) || districtResult == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == null) {
                return false;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
            jSONObject = jSONObject.optJSONObject("city_result");
            if (optJSONObject == null || jSONObject == null) {
                return false;
            }
            if (optJSONObject.optInt(UIData.ERROR) != 0) {
                return false;
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject(AIUIConstant.KEY_CONTENT);
            if (optJSONObject2 == null) {
                return false;
            }
            jSONObject = optJSONObject2.optJSONObject("sgeo");
            if (jSONObject != null) {
                JSONArray optJSONArray = jSONObject.optJSONArray("geo_elements");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray("point");
                            if (optJSONArray2 != null) {
                                int length = optJSONArray2.length();
                                if (length > 0) {
                                    ArrayList arrayList2 = new ArrayList();
                                    int i2 = 0;
                                    int i3 = 0;
                                    for (int i4 = 0; i4 < length; i4++) {
                                        int optInt = optJSONArray2.optInt(i4);
                                        if (i4 % 2 == 0) {
                                            i3 += optInt;
                                        } else {
                                            i2 += optInt;
                                            arrayList2.add(CoordUtil.mc2ll(new GeoPoint((double) i2, (double) i3)));
                                        }
                                    }
                                    arrayList.add(arrayList2);
                                }
                            }
                        }
                    }
                    if (arrayList.size() > 0) {
                        districtResult.setPolylines(arrayList);
                        districtResult.setCenterPt(CoordUtil.decodeLocation(optJSONObject2.optString("geo")));
                        districtResult.setCityCode(optJSONObject2.optInt("code"));
                        districtResult.setCityName(optJSONObject2.optString("cname"));
                        districtResult.error = ERRORNO.NO_ERROR;
                        return true;
                    }
                }
            }
            districtResult.setCityName(optJSONObject2.optString(AIUIConstant.KEY_UID));
            this.c = optJSONObject2.optString("cname");
            districtResult.setCenterPt(CoordUtil.decodeLocation(optJSONObject2.optString("geo")));
            districtResult.setCityCode(optJSONObject2.optInt("code"));
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0081  */
    private boolean b(java.lang.String r7, com.baidu.mapapi.search.district.DistrictResult r8) {
        /*
        r6 = this;
        r1 = 0;
        r0 = 0;
        if (r7 == 0) goto L_0x000e;
    L_0x0004:
        r2 = "";
        r2 = r7.equals(r2);
        if (r2 != 0) goto L_0x000e;
    L_0x000c:
        if (r8 != 0) goto L_0x000f;
    L_0x000e:
        return r0;
    L_0x000f:
        r2 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x006c }
        r2.<init>(r7);	 Catch:{ JSONException -> 0x006c }
        if (r2 == 0) goto L_0x000e;
    L_0x0016:
        r3 = "result";
        r3 = r2.optJSONObject(r3);
        r4 = "content";
        r2 = r2.optJSONObject(r4);
        if (r3 == 0) goto L_0x000e;
    L_0x0024:
        if (r2 == 0) goto L_0x000e;
    L_0x0026:
        r4 = "error";
        r3 = r3.optInt(r4);
        if (r3 != 0) goto L_0x000e;
    L_0x002e:
        r3 = new java.util.ArrayList;
        r3.<init>();
        r0 = r6.c;
        if (r0 == 0) goto L_0x0075;
    L_0x0037:
        r0 = "geo";
        r0 = r2.optString(r0);	 Catch:{ Exception -> 0x0071 }
        r0 = com.baidu.mapapi.model.CoordUtil.decodeLocationList2D(r0);	 Catch:{ Exception -> 0x0071 }
    L_0x0041:
        if (r0 == 0) goto L_0x007b;
    L_0x0043:
        r2 = r0.iterator();
    L_0x0047:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x007b;
    L_0x004d:
        r0 = r2.next();
        r0 = (java.util.List) r0;
        r4 = new java.util.ArrayList;
        r4.<init>();
        r5 = r0.iterator();
    L_0x005c:
        r0 = r5.hasNext();
        if (r0 == 0) goto L_0x0077;
    L_0x0062:
        r0 = r5.next();
        r0 = (com.baidu.mapapi.model.LatLng) r0;
        r4.add(r0);
        goto L_0x005c;
    L_0x006c:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x000e;
    L_0x0071:
        r0 = move-exception;
        r0.printStackTrace();
    L_0x0075:
        r0 = r1;
        goto L_0x0041;
    L_0x0077:
        r3.add(r4);
        goto L_0x0047;
    L_0x007b:
        r0 = r3.size();
        if (r0 <= 0) goto L_0x0084;
    L_0x0081:
        r8.setPolylines(r3);
    L_0x0084:
        r0 = r6.c;
        r8.setCityName(r0);
        r0 = com.baidu.mapapi.search.core.SearchResult.ERRORNO.NO_ERROR;
        r8.error = r0;
        r6.c = r1;
        r0 = 1;
        goto L_0x000e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.platform.core.a.b.b(java.lang.String, com.baidu.mapapi.search.district.DistrictResult):boolean");
    }

    public SearchResult a(String str) {
        DistrictResult districtResult = new DistrictResult();
        if (str == null || str.equals("")) {
            districtResult.error = ERRORNO.RESULT_NOT_FOUND;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("SDK_InnerError")) {
                    jSONObject = jSONObject.optJSONObject("SDK_InnerError");
                    if (jSONObject.has("PermissionCheckError")) {
                        districtResult.error = ERRORNO.PERMISSION_UNFINISHED;
                    } else if (jSONObject.has("httpStateError")) {
                        String optString = jSONObject.optString("httpStateError");
                        if (optString.equals("NETWORK_ERROR")) {
                            districtResult.error = ERRORNO.NETWORK_ERROR;
                        } else if (optString.equals("REQUEST_ERROR")) {
                            districtResult.error = ERRORNO.REQUEST_ERROR;
                        } else {
                            districtResult.error = ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;
                        }
                    }
                }
                if (!a(str, districtResult, false)) {
                    if (this.b) {
                        b(str, districtResult);
                    } else if (!a(str, districtResult)) {
                        districtResult.error = ERRORNO.RESULT_NOT_FOUND;
                    }
                }
            } catch (Exception e) {
                districtResult.error = ERRORNO.RESULT_NOT_FOUND;
            }
        }
        return districtResult;
    }

    public void a(SearchResult searchResult, Object obj) {
        if (obj != null && (obj instanceof OnGetDistricSearchResultListener)) {
            ((OnGetDistricSearchResultListener) obj).onGetDistrictResult((DistrictResult) searchResult);
        }
    }

    public void a(boolean z) {
        this.b = z;
    }
}
