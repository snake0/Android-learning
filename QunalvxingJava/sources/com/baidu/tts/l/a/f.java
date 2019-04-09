package com.baidu.tts.l.a;

import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.g;
import com.baidu.tts.f.o;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import java.util.concurrent.Callable;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class f implements Callable<ModelBags> {
    private RequestHandle a;

    /* renamed from: a */
    public ModelBags call() {
        SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
        String a = o.MODEL_SERVER.a();
        StringEntity b = b();
        b bVar = new b();
        this.a = syncHttpClient.post(null, a, b, RequestParams.APPLICATION_JSON, bVar);
        return bVar.a();
    }

    private StringEntity b() {
        try {
            JSONObject jSONObject = new JSONObject(EmbeddedSynthesizerEngine.bdTTSGetEngineParam());
            jSONObject.put(g.FUNCTION.a(), "getDefaultList");
            return new StringEntity(jSONObject.toString());
        } catch (JSONException e) {
            return null;
        }
    }
}
