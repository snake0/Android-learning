package com.baidu.tts.l.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.g;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;

public class b extends JsonHttpResponseHandler {
    private TtsError a;
    private ModelBags b;

    public ModelBags a() {
        return this.b;
    }

    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        LoggerProxy.d("GetListHttpHandler", "onFailure1");
        this.a = c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        LoggerProxy.d("GetListHttpHandler", "onFailure2");
        String str = null;
        if (jSONObject != null) {
            str = jSONObject.toString();
        }
        this.a = c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        LoggerProxy.d("GetListHttpHandler", "onSuccess response=" + jSONObject);
        int optInt = jSONObject.optInt(g.ERROR_NUMBER.a());
        String optString = jSONObject.optString(g.ERROR_MESSAGE.a());
        if (optInt == 0 || optInt == -1004) {
            JSONArray optJSONArray = jSONObject.optJSONArray(g.DATA_LIST.b());
            this.b = new ModelBags();
            this.b.parseJson(optJSONArray);
            return;
        }
        this.a = c.a().a(n.MODEL_SERVER_ERROR, optInt, optString);
    }
}
