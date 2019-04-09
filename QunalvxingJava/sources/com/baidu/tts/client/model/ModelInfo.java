package com.baidu.tts.client.model;

import com.baidu.tts.f.g;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ModelInfo {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;

    public String getServerId() {
        return this.a;
    }

    public void setServerId(String str) {
        this.a = str;
    }

    public String getName() {
        return this.b;
    }

    public void setName(String str) {
        this.b = str;
    }

    public String getVersionMin() {
        return this.c;
    }

    public void setVersionMin(String str) {
        this.c = str;
    }

    public String getVersionMax() {
        return this.d;
    }

    public void setVersionMax(String str) {
        this.d = str;
    }

    public String getLanguage() {
        return this.e;
    }

    public void setLanguage(String str) {
        this.e = str;
    }

    public String getGender() {
        return this.f;
    }

    public void setGender(String str) {
        this.f = str;
    }

    public String getSpeaker() {
        return this.g;
    }

    public void setSpeaker(String str) {
        this.g = str;
    }

    public String getDomain() {
        return this.h;
    }

    public void setDomain(String str) {
        this.h = str;
    }

    public String getQuality() {
        return this.i;
    }

    public void setQuality(String str) {
        this.i = str;
    }

    public String getTextDataId() {
        return this.j;
    }

    public void setTextDataId(String str) {
        this.j = str;
    }

    public String getSpeechDataId() {
        return this.k;
    }

    public void setSpeechDataId(String str) {
        this.k = str;
    }

    public void setMap(Map<String, String> map) {
        if (map != null) {
            this.a = (String) map.get(g.ID.b());
            this.b = (String) map.get(g.NAME.b());
            this.c = (String) map.get(g.VERSION_MIN.b());
            this.d = (String) map.get(g.VERSION_MAX.b());
            this.e = (String) map.get(g.LANGUAGE.b());
            this.f = (String) map.get(g.GENDER.b());
            this.g = (String) map.get(g.SPEAKER.b());
            this.h = (String) map.get(g.DOMAIN.b());
            this.i = (String) map.get(g.QUALITY.b());
            this.j = (String) map.get(g.TEXT_DATA_ID.b());
            this.k = (String) map.get(g.SPEECH_DATA_ID.b());
        }
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(g.ID.b(), this.a);
            jSONObject.putOpt(g.NAME.b(), this.b);
            jSONObject.putOpt(g.VERSION_MIN.b(), this.c);
            jSONObject.putOpt(g.VERSION_MAX.b(), this.d);
            jSONObject.putOpt(g.LANGUAGE.b(), this.e);
            jSONObject.putOpt(g.GENDER.b(), this.f);
            jSONObject.putOpt(g.SPEAKER.b(), this.g);
            jSONObject.putOpt(g.DOMAIN.b(), this.h);
            jSONObject.putOpt(g.QUALITY.b(), this.i);
            jSONObject.putOpt(g.TEXT_DATA_ID.b(), this.j);
            jSONObject.putOpt(g.SPEECH_DATA_ID.b(), this.k);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public void parseJson(JSONObject jSONObject) {
        this.a = jSONObject.optString(g.ID.b());
        this.b = jSONObject.optString(g.NAME.b());
        this.c = jSONObject.optString(g.VERSION_MIN.b());
        this.d = jSONObject.optString(g.VERSION_MAX.b());
        this.e = jSONObject.optString(g.LANGUAGE.b());
        this.f = jSONObject.optString(g.GENDER.b());
        this.g = jSONObject.optString(g.SPEAKER.b());
        this.h = jSONObject.optString(g.DOMAIN.b());
        this.i = jSONObject.optString(g.QUALITY.b());
        this.j = jSONObject.optString(g.TEXT_DATA_ID.b());
        this.k = jSONObject.optString(g.SPEECH_DATA_ID.b());
    }
}
