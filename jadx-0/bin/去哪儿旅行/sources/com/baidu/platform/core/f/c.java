package com.baidu.platform.core.f;

import android.net.http.Headers;
import com.baidu.mapapi.CoordType;
import com.baidu.mapapi.SDKInitializer;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.baidu.mapapi.search.sug.OnGetSuggestionResultListener;
import com.baidu.mapapi.search.sug.SuggestionResult;
import com.baidu.mapapi.search.sug.SuggestionResult.SuggestionInfo;
import com.baidu.mapsdkplatform.comapi.util.CoordTrans;
import com.baidu.platform.base.d;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class c extends d {
    public static boolean a(java.lang.String r3, com.baidu.mapapi.search.sug.SuggestionResult r4) {
        /*
        r2 = 0;
        r0 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0019 }
        r0.<init>(r3);	 Catch:{ JSONException -> 0x0019 }
        if (r0 != 0) goto L_0x0009;
    L_0x0008:
        return r2;
    L_0x0009:
        r1 = "status";
        r1 = r0.optInt(r1);	 Catch:{ JSONException -> 0x0019 }
        if (r1 == 0) goto L_0x002c;
    L_0x0011:
        switch(r1) {
            case 1: goto L_0x0022;
            case 2: goto L_0x0027;
            default: goto L_0x0014;
        };	 Catch:{ JSONException -> 0x0019 }
    L_0x0014:
        r0 = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;	 Catch:{ JSONException -> 0x0019 }
        r4.error = r0;	 Catch:{ JSONException -> 0x0019 }
        goto L_0x0008;
    L_0x0019:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
        r4.error = r0;
        goto L_0x0008;
    L_0x0022:
        r0 = com.baidu.mapapi.search.core.SearchResult.ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;	 Catch:{ JSONException -> 0x0019 }
        r4.error = r0;	 Catch:{ JSONException -> 0x0019 }
        goto L_0x0008;
    L_0x0027:
        r0 = com.baidu.mapapi.search.core.SearchResult.ERRORNO.SEARCH_OPTION_ERROR;	 Catch:{ JSONException -> 0x0019 }
        r4.error = r0;	 Catch:{ JSONException -> 0x0019 }
        goto L_0x0008;
    L_0x002c:
        a(r0, r4);	 Catch:{ JSONException -> 0x0019 }
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.platform.core.f.c.a(java.lang.String, com.baidu.mapapi.search.sug.SuggestionResult):boolean");
    }

    private static boolean a(JSONObject jSONObject, SuggestionResult suggestionResult) {
        boolean z = false;
        if (jSONObject == null) {
            return false;
        }
        suggestionResult.error = ERRORNO.NO_ERROR;
        JSONArray optJSONArray = jSONObject.optJSONArray(SpeechUtility.TAG_RESOURCE_RESULT);
        if (optJSONArray == null || optJSONArray.length() == 0) {
            suggestionResult.error = ERRORNO.RESULT_NOT_FOUND;
            return true;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            boolean z2 = z;
            if (z2 < optJSONArray.length()) {
                JSONObject jSONObject2 = (JSONObject) optJSONArray.opt(z2);
                if (jSONObject2 != null) {
                    SuggestionInfo suggestionInfo = new SuggestionInfo();
                    String optString = jSONObject2.optString(AIUIConstant.KEY_NAME);
                    if (optString != null) {
                        suggestionInfo.key = optString;
                    }
                    optString = jSONObject2.optString("city");
                    if (optString != null) {
                        suggestionInfo.city = optString;
                    }
                    optString = jSONObject2.optString("district");
                    if (optString != null) {
                        suggestionInfo.district = optString;
                    }
                    optString = jSONObject2.optString(AIUIConstant.KEY_UID);
                    if (optString != null) {
                        suggestionInfo.uid = optString;
                    }
                    optString = jSONObject2.optString(AIUIConstant.KEY_TAG);
                    if (optString != null) {
                        suggestionInfo.tag = optString;
                    }
                    optString = jSONObject2.optString("address");
                    if (optString != null) {
                        suggestionInfo.address = optString;
                    }
                    JSONObject optJSONObject = jSONObject2.optJSONObject(Headers.LOCATION);
                    if (optJSONObject != null) {
                        LatLng latLng = new LatLng(optJSONObject.optDouble("lat"), optJSONObject.optDouble("lng"));
                        if (SDKInitializer.getCoordType() == CoordType.GCJ02) {
                            latLng = CoordTrans.baiduToGcj(latLng);
                        }
                        suggestionInfo.pt = latLng;
                    }
                    arrayList.add(suggestionInfo);
                }
                z = z2 + 1;
            } else {
                suggestionResult.setSuggestionInfo(arrayList);
                return true;
            }
        }
    }

    public SearchResult a(String str) {
        SuggestionResult suggestionResult = new SuggestionResult();
        if (str == null || str.equals("")) {
            suggestionResult.error = ERRORNO.RESULT_NOT_FOUND;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("SDK_InnerError")) {
                    jSONObject = jSONObject.optJSONObject("SDK_InnerError");
                    if (jSONObject.has("PermissionCheckError")) {
                        suggestionResult.error = ERRORNO.PERMISSION_UNFINISHED;
                    } else if (jSONObject.has("httpStateError")) {
                        String optString = jSONObject.optString("httpStateError");
                        if (optString.equals("NETWORK_ERROR")) {
                            suggestionResult.error = ERRORNO.NETWORK_ERROR;
                        } else if (optString.equals("REQUEST_ERROR")) {
                            suggestionResult.error = ERRORNO.REQUEST_ERROR;
                        } else {
                            suggestionResult.error = ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;
                        }
                    }
                }
                if (!a(str, suggestionResult, true)) {
                    a(str, suggestionResult);
                }
            } catch (Exception e) {
                suggestionResult.error = ERRORNO.RESULT_NOT_FOUND;
            }
        }
        return suggestionResult;
    }

    public void a(SearchResult searchResult, Object obj) {
        if (obj != null && (obj instanceof OnGetSuggestionResultListener)) {
            ((OnGetSuggestionResultListener) obj).onGetSuggestionResult((SuggestionResult) searchResult);
        }
    }
}
