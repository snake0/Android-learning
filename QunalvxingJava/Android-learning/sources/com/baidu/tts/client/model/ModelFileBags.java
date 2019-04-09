package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.tools.DataTool;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class ModelFileBags {
    private TtsError a;
    private List<ModelFileInfo> b;

    public List<ModelFileInfo> getModelFileInfos() {
        return this.b;
    }

    public TtsError getTtsError() {
        return this.a;
    }

    public void setTtsError(TtsError ttsError) {
        this.a = ttsError;
    }

    public void setModelFileInfos(List<ModelFileInfo> list) {
        this.b = list;
    }

    public void addFileInfo(ModelFileInfo modelFileInfo) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(modelFileInfo);
    }

    public void setList(List<Map<String, String>> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Map map : list) {
                ModelFileInfo modelFileInfo = new ModelFileInfo();
                modelFileInfo.setMap(map);
                arrayList.add(modelFileInfo);
            }
            this.b = arrayList;
        }
    }

    public void generateAbsPath(Context context) {
        if (this.b != null) {
            for (ModelFileInfo generateAbsPath : this.b) {
                generateAbsPath.generateAbsPath(context);
            }
        }
    }

    public ModelFileInfo getModelFileInfo(int i) {
        if (this.b != null) {
            return (ModelFileInfo) this.b.get(i);
        }
        return null;
    }

    public String getUrl(int i) {
        ModelFileInfo modelFileInfo = getModelFileInfo(i);
        if (modelFileInfo != null) {
            return modelFileInfo.getUrl();
        }
        return null;
    }

    public boolean isEmpty() {
        return DataTool.isListEmpty(this.b);
    }

    public JSONArray toJson() {
        JSONArray jSONArray = new JSONArray();
        if (!isEmpty()) {
            for (ModelFileInfo toJson : this.b) {
                jSONArray.put(toJson.toJson());
            }
        }
        return jSONArray;
    }

    public void parseJson(JSONArray jSONArray) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            ModelFileInfo modelFileInfo = new ModelFileInfo();
            modelFileInfo.parseJson(optJSONObject);
            addFileInfo(modelFileInfo);
        }
    }
}
