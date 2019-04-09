package com.baidu.tts.d.b;

import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.database.a;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashMap;
import java.util.Map;

public class c {
    private String a;
    private Map<String, String> b = new HashMap();

    public c(String str) {
        this.a = str;
    }

    public boolean a(a aVar) {
        this.b = aVar.d(this.a);
        if (DataTool.isMapEmpty(this.b)) {
            return false;
        }
        String str = (String) this.b.get(g.ABS_PATH.b());
        if (StringTool.isEmpty(str)) {
            aVar.b(this.a);
            return false;
        }
        e.a().c(str).c(this.a);
        return true;
    }

    public void a(ModelFileBags modelFileBags, a aVar) {
        aVar.a(modelFileBags);
        a(aVar);
    }

    public String a() {
        return DataTool.getMapValue(this.b, g.ABS_PATH.b());
    }

    public String b() {
        return DataTool.getMapValue(this.b, g.LENGTH.b());
    }

    public String c() {
        return DataTool.getMapValue(this.b, g.MD5.b());
    }
}
