package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.d.b;
import com.baidu.tts.f.g;
import com.baidu.tts.l.a;
import java.util.Set;

public class ModelManager {
    private a a;
    public Context mContext;

    public ModelManager(Context context) {
        this.a = new a(context);
        this.mContext = context;
    }

    public BasicHandler<ModelBags> getServerModels(Conditions conditions) {
        return this.a.a(conditions);
    }

    public BasicHandler<ModelBags> getLocalModels(Conditions conditions) {
        return this.a.a(conditions, false);
    }

    public LibEngineParams getEngineParams() {
        return this.a.a();
    }

    public BasicHandler<ModelBags> getServerModelsAvailable(AvailableConditions availableConditions) {
        return getServerModels(a(availableConditions));
    }

    public BasicHandler<ModelBags> getLocalModelsAvailable(AvailableConditions availableConditions) {
        return this.a.a(a(availableConditions), true);
    }

    private Conditions a(AvailableConditions availableConditions) {
        Conditions a = a();
        if (!(a == null || availableConditions == null)) {
            a.setSpeakers(availableConditions.getSpeakers());
            a.setGenders(availableConditions.getGenders());
        }
        return a;
    }

    private Conditions a() {
        Conditions conditions = new Conditions();
        LibEngineParams engineParams = getEngineParams();
        conditions.setVersion(engineParams.getVersion());
        conditions.setDomains(engineParams.getDomain());
        conditions.setLanguages(engineParams.getLanguage());
        conditions.setQualitys(engineParams.getQuality());
        return conditions;
    }

    public boolean isModelFileValid(String str) {
        return this.a.a(str);
    }

    public boolean isModelValid(String str) {
        return this.a.b(str);
    }

    public String getTextModelFileAbsPath(String str) {
        return this.a.a(g.TEXT_DATA_ID.b(), str);
    }

    public String getSpeechModelFileAbsPath(String str) {
        return this.a.a(g.SPEECH_DATA_ID.b(), str);
    }

    public BasicHandler<ModelFileBags> getServerModelFileInfos(Set<String> set) {
        return this.a.a((Set) set);
    }

    public BasicHandler<ModelFileBags> getLocalModelFileInfos(Set<String> set) {
        return this.a.b((Set) set);
    }

    public BasicHandler<ModelBags> getServerDefaultModels() {
        return this.a.b();
    }

    public DownloadHandler download(String str, OnDownloadListener onDownloadListener) {
        b bVar = new b();
        bVar.a(str);
        bVar.a(onDownloadListener);
        return this.a.a(bVar);
    }

    public int stop() {
        this.a.c();
        return 0;
    }

    public String checkModelsUpdate(Set<String> set) {
        return this.a.c((Set) set);
    }
}
