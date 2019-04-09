package com.baidu.tts.client.model;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.tools.DataTool;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class ModelBags {
    private TtsError a;
    private List<ModelInfo> b;

    public TtsError getTtsError() {
        return this.a;
    }

    public void setTtsError(TtsError ttsError) {
        this.a = ttsError;
    }

    public List<ModelInfo> getModelInfos() {
        return this.b;
    }

    public void setModelInfos(List<ModelInfo> list) {
        this.b = list;
    }

    public void addModelInfo(ModelInfo modelInfo) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(modelInfo);
    }

    public void setList(List<Map<String, String>> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Map map : list) {
                ModelInfo modelInfo = new ModelInfo();
                modelInfo.setMap(map);
                arrayList.add(modelInfo);
            }
            this.b = arrayList;
        }
    }

    public boolean isEmpty() {
        return DataTool.isListEmpty(this.b);
    }

    public JSONArray toJson() {
        JSONArray jSONArray = new JSONArray();
        if (!isEmpty()) {
            for (ModelInfo toJson : this.b) {
                jSONArray.put(toJson.toJson());
            }
        }
        return jSONArray;
    }

    public void parseJson(JSONArray jSONArray) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            ModelInfo modelInfo = new ModelInfo();
            modelInfo.parseJson(optJSONObject);
            addModelInfo(modelInfo);
        }
    }
}
