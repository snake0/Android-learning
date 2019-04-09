package com.baidu.tts.client.model;

import com.baidu.tts.f.g;
import com.baidu.tts.tools.JsonTool;
import org.json.JSONException;
import org.json.JSONObject;

public class LibEngineParams {
    private String a;
    private String b;
    private String[] c;
    private String[] d;
    private String[] e;

    public LibEngineParams(String str) {
        this.a = str;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.b = jSONObject.optString(g.VERSION.b());
            this.c = JsonTool.getStringarray(jSONObject.optJSONArray(g.DOMAIN.b()));
            this.d = JsonTool.getStringarray(jSONObject.optJSONArray(g.LANGUAGE.b()));
            this.e = JsonTool.getStringarray(jSONObject.optJSONArray(g.QUALITY.b()));
        } catch (Exception e) {
        }
    }

    public String getVersion() {
        return this.b;
    }

    public void setVersion(String str) {
        this.b = str;
    }

    public String[] getDomain() {
        return this.c;
    }

    public void setDomain(String[] strArr) {
        this.c = strArr;
    }

    public String[] getLanguage() {
        return this.d;
    }

    public void setLanguage(String[] strArr) {
        this.d = strArr;
    }

    public String[] getQuality() {
        return this.e;
    }

    public void setQuality(String[] strArr) {
        this.e = strArr;
    }

    public String getResult() {
        return this.a;
    }

    public JSONObject getJsonResult() {
        try {
            return new JSONObject(this.a);
        } catch (JSONException e) {
            return null;
        }
    }
}
