package com.mqunar.qapm.dao;

import com.mqunar.qapm.domain.BaseData;
import com.mqunar.qapm.domain.NetworkData;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.protocol.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NetworkDataParse implements IDataParse {
    private static final AgentLog a = AgentLogManager.getAgentLog();
    private static NetworkDataParse b = null;

    private NetworkDataParse() {
    }

    public static NetworkDataParse newInstance() {
        if (b == null) {
            synchronized (NetworkDataParse.class) {
                if (b == null) {
                    b = new NetworkDataParse();
                }
            }
        }
        return b;
    }

    public String convertBaseData2Json(List<BaseData> list) {
        JSONArray jSONArray = new JSONArray();
        for (BaseData convertImplData2Json : list) {
            JSONObject convertImplData2Json2 = convertImplData2Json(convertImplData2Json);
            if (convertImplData2Json2 != null) {
                jSONArray.put(convertImplData2Json2);
            }
        }
        return jSONArray.toString();
    }

    public JSONObject convertImplData2Json(BaseData baseData) {
        try {
            if (baseData instanceof NetworkData) {
                NetworkData networkData = (NetworkData) baseData;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("action", networkData.action);
                jSONObject.put("reqUrl", networkData.reqUrl);
                jSONObject.put("startTime", networkData.startTime);
                jSONObject.put("endTime", networkData.endTime);
                jSONObject.put("reqSize", networkData.reqSize);
                jSONObject.put("resSize", networkData.resSize);
                jSONObject.put("httpCode", networkData.httpCode);
                jSONObject.put("hf", networkData.hf);
                jSONObject.put("netType", networkData.netType);
                jSONObject.put("netStatus", networkData.netStatus);
                jSONObject.put("topPage", networkData.topPage);
                JSONObject jSONObject2 = new JSONObject();
                if (networkData.headers != null && networkData.headers.size() > 0) {
                    for (Entry entry : networkData.headers.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                }
                if (jSONObject2.length() != 0) {
                    jSONObject.put("header", jSONObject2);
                }
                return jSONObject;
            }
        } catch (JSONException e) {
            a.error("convertNetworkData2Json failed : " + e.toString());
        }
        return null;
    }

    public BaseData convertMap2BaseData(Map<String, String> map) {
        NetworkData networkData = new NetworkData();
        networkData.action = map.get("action") != null ? (String) map.get("action") : "Unknown";
        networkData.reqUrl = map.get("reqUrl") != null ? (String) map.get("reqUrl") : "Unknown";
        networkData.startTime = map.get("startTime") != null ? (String) map.get("startTime") : "Unknown";
        networkData.endTime = map.get("endTime") != null ? (String) map.get("endTime") : "Unknown";
        networkData.reqSize = map.get("reqSize") != null ? (String) map.get("reqSize") : "Unknown";
        networkData.resSize = map.get("resSize") != null ? (String) map.get("resSize") : "Unknown";
        networkData.httpCode = map.get("httpCode") != null ? (String) map.get("httpCode") : "Unknown";
        networkData.hf = map.get("hf") != null ? (String) map.get("hf") : "Unknown";
        networkData.netType = map.get("netType") != null ? (String) map.get("netType") : "Unknown";
        networkData.netStatus = map.get("netStatus") != null ? (String) map.get("netStatus") : "Unknown";
        networkData.topPage = map.get("topPage") != null ? (String) map.get("topPage") : "Unknown";
        String str = map.get("headers") != null ? (String) map.get("headers") : "Unknown";
        if (str != null) {
            try {
                HashMap hashMap = new HashMap();
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.get("Pitcher-Type") != null) {
                    hashMap.put("Pitcher-Type", jSONObject.get("Pitcher-Type").toString());
                }
                if (jSONObject.get("Pitcher-Url") != null) {
                    hashMap.put("Pitcher-Url", jSONObject.get("Pitcher-Url").toString());
                }
                if (jSONObject.get("L-Date") != null) {
                    hashMap.put("L-Date", jSONObject.get("L-Date").toString());
                }
                if (jSONObject.get(HTTP.USER_AGENT) != null) {
                    hashMap.put(HTTP.USER_AGENT, jSONObject.get(HTTP.USER_AGENT).toString());
                }
                if (jSONObject.get("qrid") != null) {
                    hashMap.put("qrid", jSONObject.get("qrid").toString());
                }
                if (jSONObject.get("L-Uuid") != null) {
                    hashMap.put("L-Uuid", jSONObject.get("L-Uuid").toString());
                }
                networkData.headers = hashMap;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return networkData;
    }
}
