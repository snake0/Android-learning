package com.baidu.platform.core.d;

import com.baidu.mapapi.common.Logger;
import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.inner.GeoPoint;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.baidu.mapapi.search.core.TaxiInfo;
import com.baidu.mapapi.search.route.DrivingRouteLine;
import com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep;
import com.baidu.mapapi.search.route.DrivingRouteResult;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechUtility;
import com.mqunar.qapm.domain.UIData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends k {
    private RouteNode a(JSONArray jSONArray, List<RouteNode> list) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            if (length > 0) {
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        RouteNode a = a(optJSONObject);
                        if (i == length - 1) {
                            return a;
                        }
                        list.add(a);
                    }
                }
                return null;
            }
        }
        return null;
    }

    private RouteNode a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        RouteNode routeNode = new RouteNode();
        routeNode.setTitle(jSONObject.optString("wd"));
        routeNode.setUid(jSONObject.optString(AIUIConstant.KEY_UID));
        GeoPoint geoPoint = new GeoPoint(0.0d, 0.0d);
        JSONArray optJSONArray = jSONObject.optJSONArray("spt");
        if (optJSONArray != null) {
            geoPoint.setLongitudeE6((double) optJSONArray.optInt(0));
            geoPoint.setLatitudeE6((double) optJSONArray.optInt(1));
        }
        routeNode.setLocation(CoordUtil.mc2ll(geoPoint));
        return routeNode;
    }

    private List<LatLng> a(JSONArray jSONArray) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            if (length >= 6) {
                ArrayList arrayList = new ArrayList();
                double d = 0.0d;
                double d2 = 0.0d;
                for (int i = 5; i < length; i++) {
                    if (i % 2 != 0) {
                        d += (double) jSONArray.optInt(i);
                    } else {
                        d2 += (double) jSONArray.optInt(i);
                        arrayList.add(CoordUtil.mc2ll(new GeoPoint(d2, d)));
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0023  */
    private java.util.List<com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep> a(org.json.JSONArray r16, org.json.JSONArray r17) {
        /*
        r15 = this;
        if (r16 == 0) goto L_0x0008;
    L_0x0002:
        r8 = r16.length();
        if (r8 > 0) goto L_0x000a;
    L_0x0008:
        r1 = 0;
    L_0x0009:
        return r1;
    L_0x000a:
        r2 = 1;
        r1 = 0;
        if (r17 == 0) goto L_0x0014;
    L_0x000e:
        r1 = r17.length();
        if (r1 > 0) goto L_0x014c;
    L_0x0014:
        r2 = 0;
        r3 = r2;
        r2 = r1;
    L_0x0017:
        r6 = new java.util.ArrayList;
        r6.<init>();
        r5 = 0;
        r1 = "";
        r1 = 0;
        r7 = r1;
    L_0x0021:
        if (r7 >= r8) goto L_0x0149;
    L_0x0023:
        r0 = r16;
        r9 = r0.optJSONObject(r7);
        if (r9 != 0) goto L_0x0031;
    L_0x002b:
        r1 = r5;
    L_0x002c:
        r4 = r7 + 1;
        r7 = r4;
        r5 = r1;
        goto L_0x0021;
    L_0x0031:
        r10 = new com.baidu.mapapi.search.route.DrivingRouteLine$DrivingStep;
        r10.<init>();
        r1 = "distance";
        r1 = r9.optInt(r1);
        r10.setDistance(r1);
        r1 = "direction";
        r1 = r9.optInt(r1);
        r1 = r1 * 30;
        r10.setDirection(r1);
        r1 = "instructions";
        r1 = r9.optString(r1);
        if (r1 != 0) goto L_0x0059;
    L_0x0052:
        r4 = r1.length();
        r11 = 4;
        if (r4 < r11) goto L_0x0071;
    L_0x0059:
        r4 = "/?[a-zA-Z]{1,10};";
        r11 = "";
        r1 = r1.replaceAll(r4, r11);
        r4 = "<[^>]*>";
        r11 = "";
        r1 = r1.replaceAll(r4, r11);
        r4 = "[(/>)<]";
        r11 = "";
        r1 = r1.replaceAll(r4, r11);
    L_0x0071:
        r10.setInstructions(r1);
        r1 = "start_instructions";
        r4 = r9.optString(r1);
        if (r4 != 0) goto L_0x00c1;
    L_0x007c:
        r1 = r10.getDistance();
        r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        if (r1 >= r4) goto L_0x0126;
    L_0x0084:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r11 = " - ";
        r4 = r4.append(r11);
        r1 = r4.append(r1);
        r4 = "米";
        r1 = r1.append(r4);
        r1 = r1.toString();
        r4 = r1;
    L_0x009e:
        r1 = r6.size();
        if (r5 > r1) goto L_0x00c1;
    L_0x00a4:
        r11 = new java.lang.StringBuilder;
        r11.<init>();
        r1 = r5 + -1;
        r1 = r6.get(r1);
        r1 = (com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep) r1;
        r1 = r1.getExitInstructions();
        r1 = r11.append(r1);
        r1 = r1.append(r4);
        r4 = r1.toString();
    L_0x00c1:
        r10.setEntranceInstructions(r4);
        r1 = "end_instructions";
        r1 = r9.optString(r1);
        r10.setExitInstructions(r1);
        r1 = "turn";
        r1 = r9.optInt(r1);
        r10.setNumTurns(r1);
        r1 = "spath";
        r1 = r9.optJSONArray(r1);
        r4 = r15.a(r1);
        r10.setPathList(r4);
        if (r4 == 0) goto L_0x010e;
    L_0x00e5:
        r9 = new com.baidu.mapapi.search.core.RouteNode;
        r9.<init>();
        r1 = 0;
        r1 = r4.get(r1);
        r1 = (com.baidu.mapapi.model.LatLng) r1;
        r9.setLocation(r1);
        r10.setEntrance(r9);
        r9 = new com.baidu.mapapi.search.core.RouteNode;
        r9.<init>();
        r1 = r4.size();
        r1 = r1 + -1;
        r1 = r4.get(r1);
        r1 = (com.baidu.mapapi.model.LatLng) r1;
        r9.setLocation(r1);
        r10.setExit(r9);
    L_0x010e:
        if (r3 == 0) goto L_0x011f;
    L_0x0110:
        if (r7 >= r2) goto L_0x011f;
    L_0x0112:
        r0 = r17;
        r1 = r0.optJSONObject(r7);
        r1 = r15.b(r1);
        r10.setTrafficList(r1);
    L_0x011f:
        r1 = r5 + 1;
        r6.add(r10);
        goto L_0x002c;
    L_0x0126:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r11 = " - ";
        r4 = r4.append(r11);
        r11 = (double) r1;
        r13 = 4652007308841189376; // 0x408f400000000000 float:0.0 double:1000.0;
        r11 = r11 / r13;
        r1 = r4.append(r11);
        r4 = "公里";
        r1 = r1.append(r4);
        r1 = r1.toString();
        r4 = r1;
        goto L_0x009e;
    L_0x0149:
        r1 = r6;
        goto L_0x0009;
    L_0x014c:
        r3 = r2;
        r2 = r1;
        goto L_0x0017;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.platform.core.d.c.a(org.json.JSONArray, org.json.JSONArray):java.util.List");
    }

    private List<TaxiInfo> b(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray == null) {
                return null;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject != null) {
                    TaxiInfo taxiInfo = new TaxiInfo();
                    String optString = jSONObject.optString("total_price");
                    if (optString == null || optString.equals("")) {
                        taxiInfo.setTotalPrice(0.0f);
                    } else {
                        taxiInfo.setTotalPrice(Float.parseFloat(optString));
                    }
                    arrayList.add(taxiInfo);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            if (!Logger.debugEnable()) {
                return null;
            }
            e.printStackTrace();
            return null;
        }
    }

    private List<DrivingStep> b(JSONArray jSONArray, List<DrivingStep> list) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            if (length > 0 && list != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        int optInt = optJSONObject.optInt("n");
                        int optInt2 = optJSONObject.optInt("s");
                        for (int i2 = 0; i2 < optInt; i2++) {
                            if (optInt2 + i2 < list.size()) {
                                arrayList.add(list.get(optInt2 + i2));
                            }
                        }
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    private boolean b(String str, DrivingRouteResult drivingRouteResult) {
        if (str == null || "".equals(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == null) {
                return false;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
            if (optJSONObject == null) {
                return false;
            }
            switch (optJSONObject.optInt(UIData.ERROR)) {
                case 0:
                    JSONObject optJSONObject2 = jSONObject.optJSONObject("cars");
                    if (optJSONObject2 == null) {
                        return false;
                    }
                    jSONObject = optJSONObject2.optJSONObject("option");
                    optJSONObject = optJSONObject2.optJSONObject(AIUIConstant.KEY_CONTENT);
                    if (jSONObject == null || optJSONObject == null) {
                        return false;
                    }
                    RouteNode a = a(jSONObject.optJSONObject("start"));
                    List arrayList = new ArrayList();
                    RouteNode a2 = a(jSONObject.optJSONArray("end"), arrayList);
                    List a3 = a(optJSONObject.optJSONArray("steps"), optJSONObject.optJSONArray("stepts"));
                    ArrayList arrayList2 = new ArrayList();
                    JSONArray optJSONArray = optJSONObject.optJSONArray("routes");
                    if (optJSONArray == null) {
                        return false;
                    }
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        DrivingRouteLine drivingRouteLine = new DrivingRouteLine();
                        JSONObject optJSONObject3 = optJSONArray.optJSONObject(i);
                        if (optJSONObject3 != null) {
                            JSONArray optJSONArray2 = optJSONObject3.optJSONArray("legs");
                            if (optJSONArray2 == null) {
                                return false;
                            }
                            int length = optJSONArray2.length();
                            ArrayList arrayList3 = new ArrayList();
                            int i2 = 0;
                            int i3 = 0;
                            for (int i4 = 0; i4 < length; i4++) {
                                JSONObject optJSONObject4 = optJSONArray2.optJSONObject(i4);
                                if (optJSONObject4 != null) {
                                    i3 += optJSONObject4.optInt("distance");
                                    i2 += optJSONObject4.optInt("duration");
                                    List b = b(optJSONObject4.optJSONArray("stepis"), a3);
                                    if (b != null) {
                                        arrayList3.addAll(b);
                                    }
                                }
                            }
                            drivingRouteLine.setStarting(a);
                            drivingRouteLine.setTerminal(a2);
                            if (arrayList.size() == 0) {
                                drivingRouteLine.setWayPoints(null);
                            } else {
                                drivingRouteLine.setWayPoints(arrayList);
                            }
                            drivingRouteLine.setDistance(i3);
                            drivingRouteLine.setDuration(i2);
                            drivingRouteLine.setCongestionDistance(optJSONObject3.optInt("congestion_length"));
                            drivingRouteLine.setLightNum(optJSONObject3.optInt("light_num"));
                            if (arrayList3.size() == 0) {
                                drivingRouteLine.setSteps(null);
                            } else {
                                drivingRouteLine.setSteps(arrayList3);
                            }
                            arrayList2.add(drivingRouteLine);
                        }
                    }
                    drivingRouteResult.setRouteLines(arrayList2);
                    drivingRouteResult.setTaxiInfos(b(optJSONObject2.optString("taxis")));
                    return true;
                case 4:
                    drivingRouteResult.error = ERRORNO.ST_EN_TOO_NEAR;
                    return true;
                default:
                    return false;
            }
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    private int[] b(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject == null) {
            return null;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("end");
        JSONArray optJSONArray2 = jSONObject.optJSONArray("status");
        if (optJSONArray == null || optJSONArray2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        int length2 = optJSONArray2.length();
        int i2 = 0;
        while (i2 < length) {
            int optInt = optJSONArray.optInt(i2);
            int optInt2 = i2 < length2 ? optJSONArray2.optInt(i2) : 0;
            for (int i3 = 0; i3 < optInt; i3++) {
                arrayList.add(Integer.valueOf(optInt2));
            }
            i2++;
        }
        int[] iArr = new int[arrayList.size()];
        while (i < arrayList.size()) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
            i++;
        }
        return iArr;
    }

    public void a(String str, DrivingRouteResult drivingRouteResult) {
        if (str == null || str.equals("")) {
            drivingRouteResult.error = ERRORNO.RESULT_NOT_FOUND;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("SDK_InnerError")) {
                jSONObject = jSONObject.optJSONObject("SDK_InnerError");
                if (jSONObject.has("PermissionCheckError")) {
                    drivingRouteResult.error = ERRORNO.PERMISSION_UNFINISHED;
                    return;
                } else if (jSONObject.has("httpStateError")) {
                    String optString = jSONObject.optString("httpStateError");
                    if (optString.equals("NETWORK_ERROR")) {
                        drivingRouteResult.error = ERRORNO.NETWORK_ERROR;
                        return;
                    } else if (optString.equals("REQUEST_ERROR")) {
                        drivingRouteResult.error = ERRORNO.REQUEST_ERROR;
                        return;
                    } else {
                        drivingRouteResult.error = ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;
                        return;
                    }
                }
            }
            if (!a(str, drivingRouteResult, false) && !b(str, drivingRouteResult)) {
                drivingRouteResult.error = ERRORNO.RESULT_NOT_FOUND;
            }
        } catch (Exception e) {
            drivingRouteResult.error = ERRORNO.RESULT_NOT_FOUND;
        }
    }
}
