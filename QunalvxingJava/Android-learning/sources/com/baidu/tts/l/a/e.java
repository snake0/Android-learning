package com.baidu.tts.l.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.g;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;

public class e extends JsonHttpResponseHandler {
    private TtsError a;
    private ModelFileBags b;

    public ModelFileBags a() {
        return this.b;
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        LoggerProxy.d("GetModelFileInfosHttpHandler", "onSuccess response=" + jSONObject);
        int optInt = jSONObject.optInt(g.ERROR_NUMBER.a());
        String optString = jSONObject.optString(g.ERROR_MESSAGE.a());
        if (optInt == 0 || optInt == -4005) {
            JSONArray optJSONArray = jSONObject.optJSONArray(g.DATA.b());
            this.b = new ModelFileBags();
            this.b.parseJson(optJSONArray);
            return;
        }
        this.a = c.a().a(n.MODEL_SERVER_ERROR, optInt, optString);
    }

    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        LoggerProxy.d("GetModelFileInfosHttpHandler", "onFailure1");
        this.a = c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        LoggerProxy.d("GetModelFileInfosHttpHandler", "onFailure2");
        String str = null;
        if (jSONObject != null) {
            str = jSONObject.toString();
        }
        this.a = c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }
}
