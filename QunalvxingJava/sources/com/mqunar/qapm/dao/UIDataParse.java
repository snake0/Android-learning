package com.mqunar.qapm.dao;

import android.util.Log;
import com.mqunar.qapm.domain.BaseData;
import com.mqunar.qapm.domain.UIData;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UIDataParse implements IDataParse {
    private static final AgentLog a = AgentLogManager.getAgentLog();
    private static UIDataParse b = null;

    private UIDataParse() {
    }

    public static UIDataParse newInstance() {
        if (b == null) {
            synchronized (UIDataParse.class) {
                if (b == null) {
                    b = new UIDataParse();
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
            if (baseData instanceof UIData) {
                UIData uIData = (UIData) baseData;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("action", uIData.action);
                jSONObject.put("page", uIData.page);
                jSONObject.put("createTime", uIData.createTime != -10000 ? Long.valueOf(uIData.createTime) : "Unknown");
                jSONObject.put("resumeTime", uIData.resumeTime != -10000 ? Long.valueOf(uIData.resumeTime) : "Unknown");
                jSONObject.put("hiddenTime", uIData.hiddenTime != -10000 ? Long.valueOf(uIData.hiddenTime) : "Unknown");
                jSONObject.put("showTime", uIData.showTime != -10000 ? Long.valueOf(uIData.showTime) : "Unknown");
                jSONObject.put("status", uIData.status);
                jSONObject.put("netType", uIData.netType);
                return jSONObject;
            }
        } catch (JSONException e) {
            Log.e(IDataParse.TAG, "convertNetworkData2Json failed : " + e.toString());
        }
        return null;
    }

    public BaseData convertMap2BaseData(Map<String, String> map) {
        long parseLong;
        long j = -10000;
        UIData uIData = new UIData();
        uIData.action = map.get("action") != null ? (String) map.get("action") : "Unknown";
        uIData.page = map.get("page") != null ? (String) map.get("page") : "Unknown";
        if (map.get("createTime") != null) {
            parseLong = Long.parseLong((String) map.get("createTime"));
        } else {
            parseLong = -10000;
        }
        uIData.createTime = parseLong;
        if (map.get("resumeTime") != null) {
            parseLong = Long.parseLong((String) map.get("resumeTime"));
        } else {
            parseLong = -10000;
        }
        uIData.resumeTime = parseLong;
        if (map.get("hiddenTime") != null) {
            parseLong = Long.parseLong((String) map.get("hiddenTime"));
        } else {
            parseLong = -10000;
        }
        uIData.hiddenTime = parseLong;
        if (map.get("hiddenTime") != null) {
            j = Long.parseLong((String) map.get("hiddenTime"));
        }
        uIData.showTime = j;
        uIData.status = map.get("status") != null ? (String) map.get("status") : "Unknown";
        uIData.netType = map.get("netType") != null ? (String) map.get("netType") : "Unknown";
        return uIData;
    }
}
