package ctrip.android.oauth.net;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Set;

public class CtripParameters {
    private static final String DEFAULT_CHARSET = "UTF-8";
    private String mAppKey;
    private LinkedHashMap<String, Object> mParams = new LinkedHashMap();

    public CtripParameters(String str) {
        this.mAppKey = str;
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    public LinkedHashMap<String, Object> getParams() {
        return this.mParams;
    }

    public void setParams(LinkedHashMap<String, Object> linkedHashMap) {
        this.mParams = linkedHashMap;
    }

    public void put(String str, String str2) {
        this.mParams.put(str, str2);
    }

    public void put(String str, int i) {
        this.mParams.put(str, String.valueOf(i));
    }

    public void put(String str, long j) {
        this.mParams.put(str, String.valueOf(j));
    }

    public void put(String str, Object obj) {
        this.mParams.put(str, obj.toString());
    }

    public Object get(String str) {
        return this.mParams.get(str);
    }

    public void remove(String str) {
        if (this.mParams.containsKey(str)) {
            this.mParams.remove(str);
            this.mParams.remove(this.mParams.get(str));
        }
    }

    public Set<String> keySet() {
        return this.mParams.keySet();
    }

    public boolean containsKey(String str) {
        return this.mParams.containsKey(str);
    }

    public boolean containsValue(String str) {
        return this.mParams.containsValue(str);
    }

    public int size() {
        return this.mParams.size();
    }

    public String encodeUrl() {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        for (String str : this.mParams.keySet()) {
            Object obj2;
            if (obj != null) {
                obj2 = null;
            } else {
                stringBuilder.append("&");
                obj2 = obj;
            }
            obj = this.mParams.get(str);
            if (obj instanceof String) {
                String str2 = (String) obj;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        stringBuilder.append(URLEncoder.encode(str, "UTF-8") + "=" + URLEncoder.encode(str2, "UTF-8"));
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
            }
            obj = obj2;
        }
        return stringBuilder.toString();
    }
}
