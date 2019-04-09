package com.baidu.tts.l.a;

import com.baidu.tts.client.model.BasicHandler;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.LibEngineParams;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.l.a;
import java.util.Set;
import java.util.concurrent.FutureTask;
import org.json.JSONArray;

public class i {
    private a a;

    public i(a aVar) {
        this.a = aVar;
    }

    public BasicHandler<ModelBags> a(Conditions conditions) {
        BasicHandler basicHandler = new BasicHandler(new FutureTask(new h(conditions)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<ModelBags> a(Conditions conditions, boolean z) {
        BasicHandler basicHandler = new BasicHandler(new FutureTask(new d(this.a.e(), conditions, this.a, z)));
        basicHandler.start();
        return basicHandler;
    }

    public LibEngineParams a() {
        return new LibEngineParams(EmbeddedSynthesizerEngine.bdTTSGetEngineParam());
    }

    public BasicHandler<ModelFileBags> a(Set<String> set) {
        BasicHandler basicHandler = new BasicHandler(new FutureTask(new g(set)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<ModelFileBags> b(Set<String> set) {
        BasicHandler basicHandler = new BasicHandler(new FutureTask(new c(this.a.e(), set)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<ModelBags> b() {
        BasicHandler basicHandler = new BasicHandler(new FutureTask(new f()));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<String> a(JSONArray jSONArray) {
        BasicHandler basicHandler = new BasicHandler(new FutureTask(new a(jSONArray)));
        basicHandler.start();
        return basicHandler;
    }
}
