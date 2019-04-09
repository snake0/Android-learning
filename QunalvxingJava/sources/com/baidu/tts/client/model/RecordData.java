package com.baidu.tts.client.model;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.l.a;
import com.iflytek.cloud.SpeechUtility;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

public class RecordData {
    ExecutorService a = Executors.newSingleThreadExecutor();
    private a b;

    public class InsertData implements Callable<Integer> {
        private JSONObject b;
        private String c;
        private String d;

        public InsertData(JSONObject jSONObject, String str, String str2) {
            this.b = jSONObject;
            this.c = str;
            this.d = str2;
        }

        public Integer call() {
            if (this.b == null && this.d == null) {
                RecordData.this.b.c(this.c);
            } else {
                RecordData.this.b.a(this.c, this.d, this.b.toString());
            }
            return Integer.valueOf(0);
        }
    }

    public RecordData(a aVar) {
        this.b = aVar;
    }

    public void setStartInfo(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("startTime", str3);
            jSONObject.put("modeId", str2);
            LoggerProxy.d("RecordData", " StartInfo json= " + jSONObject.toString());
            this.a.submit(new InsertData(null, str, null));
            this.a.submit(new InsertData(jSONObject, str, "startInfo"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void setEndInfo(String str, String str2, int i, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("modeId", str2);
            jSONObject.put(SpeechUtility.TAG_RESOURCE_RESULT, i);
            jSONObject.put("endTime", str3);
            LoggerProxy.d("RecordData", "EndInfo json= " + jSONObject.toString());
            this.a.submit(new InsertData(jSONObject, str, "endInfo"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
