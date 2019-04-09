package com.baidu.tts.client.model;

import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.JsonTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Conditions {
    private Set<String> a;
    private String b;
    private Set<String> c;
    private Set<String> d;
    private Set<String> e;
    private Set<String> f;
    private Set<String> g;

    public Set<String> getModelIds() {
        return this.a;
    }

    public void setModelIds(Set<String> set) {
        this.a = set;
    }

    public Set<String> getLanguages() {
        return this.c;
    }

    public void setLanguages(Set<String> set) {
        this.c = set;
    }

    public Set<String> getGenders() {
        return this.d;
    }

    public void setGenders(Set<String> set) {
        this.d = set;
    }

    public Set<String> getSpeakers() {
        return this.e;
    }

    public void setSpeakers(Set<String> set) {
        this.e = set;
    }

    public Set<String> getDomains() {
        return this.f;
    }

    public void setDomains(Set<String> set) {
        this.f = set;
    }

    public Set<String> getQualitys() {
        return this.g;
    }

    public void setQualitys(Set<String> set) {
        this.g = set;
    }

    public void appendId(String str) {
        if (!StringTool.isEmpty(str)) {
            if (this.a == null) {
                this.a = new HashSet();
            }
            this.a.add(str);
        }
    }

    public void appendLanguage(String str) {
        if (!StringTool.isEmpty(str)) {
            if (this.c == null) {
                this.c = new HashSet();
            }
            this.c.add(str);
        }
    }

    public void appendGender(String str) {
        if (!StringTool.isEmpty(str)) {
            if (this.d == null) {
                this.d = new HashSet();
            }
            this.d.add(str);
        }
    }

    public void appendSpeaker(String str) {
        if (!StringTool.isEmpty(str)) {
            if (this.e == null) {
                this.e = new HashSet();
            }
            this.e.add(str);
        }
    }

    public void appendDomain(String str) {
        if (!StringTool.isEmpty(str)) {
            if (this.f == null) {
                this.f = new HashSet();
            }
            this.f.add(str);
        }
    }

    public void appendQuality(String str) {
        if (!StringTool.isEmpty(str)) {
            if (this.g == null) {
                this.g = new HashSet();
            }
            this.g.add(str);
        }
    }

    public JSONArray getSpeakerJA() {
        return JsonTool.fromSetToJson(this.e);
    }

    public JSONArray getGenderJA() {
        return JsonTool.fromSetToJson(this.d);
    }

    public void setDomains(String[] strArr) {
        this.f = DataTool.fromArrayToSet(strArr);
    }

    public void setLanguages(String[] strArr) {
        this.c = DataTool.fromArrayToSet(strArr);
    }

    public void setQualitys(String[] strArr) {
        this.g = DataTool.fromArrayToSet(strArr);
    }

    public String[] getModelIdsArray() {
        return DataTool.fromSetToArray(this.a);
    }

    public String[] getDomainArray() {
        return DataTool.fromSetToArray(this.f);
    }

    public String[] getLanguageArray() {
        return DataTool.fromSetToArray(this.c);
    }

    public String[] getQualityArray() {
        return DataTool.fromSetToArray(this.g);
    }

    public String[] getGenderArray() {
        return DataTool.fromSetToArray(this.d);
    }

    public String[] getSpeakerArray() {
        return DataTool.fromSetToArray(this.e);
    }

    public String getVersion() {
        return this.b;
    }

    public void setVersion(String str) {
        this.b = str;
    }

    public JSONObject getJSONConditions() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(g.ID.b(), JsonTool.fromSetToJson(this.a));
            jSONObject.put(g.VERSION.b(), this.b);
            jSONObject.put(g.LANGUAGE.b(), JsonTool.fromSetToJson(this.c));
            jSONObject.put(g.GENDER.b(), JsonTool.fromSetToJson(this.d));
            jSONObject.put(g.SPEAKER.b(), JsonTool.fromSetToJson(this.e));
            jSONObject.put(g.DOMAIN.b(), JsonTool.fromSetToJson(this.f));
            jSONObject.put(g.QUALITY.b(), JsonTool.fromSetToJson(this.g));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
