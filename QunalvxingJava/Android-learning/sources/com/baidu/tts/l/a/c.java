package com.baidu.tts.l.a;

import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.database.a;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

public class c implements Callable<ModelFileBags> {
    private Set<String> a;
    private a b;

    public c(a aVar, Set<String> set) {
        this.a = set;
        this.b = aVar;
    }

    /* renamed from: a */
    public ModelFileBags call() {
        List a = this.b.a(this.a);
        ModelFileBags modelFileBags = new ModelFileBags();
        modelFileBags.setList(a);
        return modelFileBags;
    }
}
