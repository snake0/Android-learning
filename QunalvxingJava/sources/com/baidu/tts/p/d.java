package com.baidu.tts.p;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.g;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import org.apache.http.Header;
import org.json.JSONObject;

public class d extends JsonHttpResponseHandler {
    private TtsError a;
    private int b = -1;

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        String str = null;
        if (jSONObject != null) {
            str = jSONObject.toString();
        }
        this.a = c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        int optInt = jSONObject.optInt(g.ERROR_NUMBER.a());
        String optString = jSONObject.optString(g.ERROR_MESSAGE.a());
        if (optInt == 0) {
            this.b = optInt;
        } else {
            this.a = c.a().a(n.MODEL_SERVER_ERROR, optInt, optString);
        }
    }

    public int a() {
        return this.b;
    }
}
