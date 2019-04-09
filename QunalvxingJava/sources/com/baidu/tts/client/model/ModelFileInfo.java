package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.ResourceTools;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ModelFileInfo {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    public String getServerid() {
        return this.a;
    }

    public void setServerid(String str) {
        this.a = str;
    }

    public String getLength() {
        return this.b;
    }

    public void setLength(String str) {
        this.b = str;
    }

    public String getMd5() {
        return this.c;
    }

    public void setMd5(String str) {
        this.c = str;
    }

    public String getName() {
        return this.d;
    }

    public void setName(String str) {
        this.d = str;
    }

    public String getAbsPath() {
        return this.e;
    }

    public void setAbsPath(String str) {
        this.e = str;
    }

    public String getUrl() {
        return this.f;
    }

    public void setUrl(String str) {
        this.f = str;
    }

    public void generateAbsPath(Context context) {
        this.e = ResourceTools.getModelFileAbsName(context, this.d);
    }

    public void setMap(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            this.a = (String) map.get(g.ID.b());
            this.b = (String) map.get(g.LENGTH.b());
            this.c = (String) map.get(g.MD5.b());
            this.d = (String) map.get(g.NAME.b());
            this.e = (String) map.get(g.ABS_PATH.b());
        }
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(g.ID.b(), this.a);
            jSONObject.putOpt(g.LENGTH.b(), this.b);
            jSONObject.putOpt(g.MD5.b(), this.c);
            jSONObject.putOpt(g.NAME.b(), this.d);
            jSONObject.putOpt(g.ABS_PATH.b(), this.e);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public void parseJson(JSONObject jSONObject) {
        this.a = jSONObject.optString(g.ID.b());
        this.b = jSONObject.optString(g.LENGTH.b());
        this.c = jSONObject.optString(g.MD5.b());
        this.d = jSONObject.optString(g.NAME.b());
        this.f = jSONObject.optString(g.URL.b());
    }
}
