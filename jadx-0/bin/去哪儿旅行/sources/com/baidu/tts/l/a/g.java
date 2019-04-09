package com.baidu.tts.l.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.JsonTool;
import com.mqunar.yvideo.BuildConfig;
import java.util.Set;
import java.util.concurrent.Callable;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class g implements Callable<ModelFileBags> {
    private RequestHandle a;
    private Set<String> b;

    public g(Set<String> set) {
        this.b = set;
    }

    /* renamed from: a */
    public ModelFileBags call() {
        SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
        String str = o.MODEL_SERVER.a() + "https=1";
        StringEntity b = b();
        e eVar = new e();
        this.a = syncHttpClient.post(null, str, b, RequestParams.APPLICATION_JSON, eVar);
        return eVar.a();
    }

    private StringEntity b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.baidu.tts.f.g.FUNCTION.a(), "getURL");
            jSONObject.put(com.baidu.tts.f.g.IVERSION.b(), BuildConfig.VERSION_NAME);
            jSONObject.put(com.baidu.tts.f.g.ID.b(), JsonTool.fromSetToJson(this.b));
            String jSONObject2 = jSONObject.toString();
            LoggerProxy.d("GetServerModelFileInfosWork", "geturl params=" + jSONObject2);
            return new StringEntity(jSONObject2);
        } catch (JSONException e) {
            return null;
        }
    }
}
