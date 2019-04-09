package com.baidu.tts.l.a;

import android.text.TextUtils;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.g;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a implements Callable<String> {
    private RequestHandle a;
    private JSONArray b;

    public a(JSONArray jSONArray) {
        this.b = jSONArray;
    }

    /* renamed from: a */
    public String call() {
        final String[] strArr = new String[]{""};
        this.a = new SyncHttpClient(true, 80, 443).post(null, o.MODEL_SERVER.a(), b(), RequestParams.APPLICATION_JSON, new AsyncHttpResponseHandler() {
            public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                String str = new String(bArr);
                LoggerProxy.d("GetServerModelsWork", "statusCode: " + i + " response: " + new String(bArr));
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if ("0".equals(jSONObject.optString("err_no"))) {
                            strArr[0] = jSONObject.optString("info");
                        }
                    } catch (Exception e) {
                        LoggerProxy.d("GetServerModelsWork", "parse:" + e.toString());
                    }
                }
            }

            public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                LoggerProxy.d("GetServerModelsWork", "onFileure statusCode:" + i);
            }
        });
        return strArr[0];
    }

    private StringEntity b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(g.FUNCTION.a(), "checkUpdate");
            jSONObject.put(g.MODELSINFO.a(), this.b);
            return new StringEntity(jSONObject.toString());
        } catch (JSONException e) {
            return null;
        }
    }
}
