package com.baidu.tts.l.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.g;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import com.mqunar.yvideo.BuildConfig;
import java.util.concurrent.Callable;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class h implements Callable<ModelBags> {
    private Conditions a;
    private RequestHandle b;

    public h(Conditions conditions) {
        this.a = conditions;
    }

    /* renamed from: a */
    public ModelBags call() {
        SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
        String a = o.MODEL_SERVER.a();
        StringEntity b = b();
        b bVar = new b();
        this.b = syncHttpClient.post(null, a, b, RequestParams.APPLICATION_JSON, bVar);
        return bVar.a();
    }

    private StringEntity b() {
        JSONObject jSONConditions = this.a.getJSONConditions();
        try {
            jSONConditions.put(g.IVERSION.b(), BuildConfig.VERSION_NAME);
            jSONConditions.put(g.FUNCTION.a(), "getList");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String jSONObject = jSONConditions.toString();
        LoggerProxy.d("GetServerModelsWork", "getlist params=" + jSONObject);
        return new StringEntity(jSONObject);
    }
}
