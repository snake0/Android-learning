package com.baidu.tts.l;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.BasicHandler;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.client.model.LibEngineParams;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.d.b;
import com.baidu.tts.database.d;
import com.baidu.tts.f.g;
import com.baidu.tts.l.a.i;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.MD5;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

public class a {
    private Context a;
    private com.baidu.tts.database.a b;
    private d c;
    private i d;
    private com.baidu.tts.d.d e;

    public a(Context context) {
        this.a = context;
        g();
    }

    private void g() {
        this.b = new com.baidu.tts.database.a(this);
        this.c = new d(this);
        this.d = new i(this);
        this.e = new com.baidu.tts.d.d();
        this.e.a(this);
        this.e.a();
    }

    public BasicHandler<ModelBags> a(Conditions conditions) {
        return this.d.a(conditions);
    }

    public BasicHandler<ModelBags> a(Conditions conditions, boolean z) {
        return this.d.a(conditions, z);
    }

    public LibEngineParams a() {
        return this.d.a();
    }

    public BasicHandler<ModelFileBags> a(Set<String> set) {
        return this.d.a((Set) set);
    }

    public BasicHandler<ModelFileBags> b(Set<String> set) {
        return this.d.b(set);
    }

    public BasicHandler<ModelBags> b() {
        return this.d.b();
    }

    public String a(String str, String str2) {
        return this.b.a(str, str2);
    }

    public boolean a(String str) {
        Map d = this.b.d(str);
        if (DataTool.isMapEmpty(d)) {
            return false;
        }
        String str2 = (String) d.get(g.ABS_PATH.b());
        String str3 = (String) d.get(g.LENGTH.b());
        String str4 = (String) d.get(g.MD5.b());
        File file = new File(str2);
        if (!file.exists()) {
            return false;
        }
        if (file.length() != Long.parseLong(str3)) {
            return false;
        }
        return MD5.getInstance().getBigFileMd5(file).equalsIgnoreCase(str4);
    }

    public boolean b(String str) {
        Map e = this.b.e(str);
        if (DataTool.isMapEmpty(e)) {
            return false;
        }
        return a((String) e.get(g.TEXT_DATA_ID.b())) && a((String) e.get(g.SPEECH_DATA_ID.b()));
    }

    public DownloadHandler a(b bVar) {
        return this.e.a(bVar);
    }

    public void c() {
        this.e.b();
    }

    public Context d() {
        return this.a;
    }

    public com.baidu.tts.database.a e() {
        return this.b;
    }

    public void c(String str) {
        this.c.a(str);
    }

    public void a(String str, String str2, String str3) {
        this.c.a(str, str2, str3);
    }

    public Map<String, ArrayList> f() {
        return this.c.a();
    }

    public int a(int i, int i2) {
        return this.c.a(i, i2);
    }

    public String c(Set<String> set) {
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        if (set == null || set.size() == 0 || set.isEmpty()) {
            return "params error";
        }
        try {
            String str;
            for (String str2 : set) {
                Conditions conditions = new Conditions();
                conditions.appendId(str2);
                ModelBags modelBags = (ModelBags) a(conditions, false).get();
                JSONArray toJson = modelBags.toJson();
                if (modelBags.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    if (Pattern.compile("^[0-9]+$").matcher(str2).find()) {
                        jSONObject.put("id", Integer.valueOf(str2));
                        jSONObject.put("needUpdate", 2);
                        jSONArray.put(jSONObject);
                    } else {
                        LoggerProxy.e("GetServerModelsWork", "params error id " + str2 + " is not int");
                    }
                } else {
                    jSONArray2.put(toJson.get(0));
                }
            }
            if (jSONArray2.length() != 0) {
                str2 = (String) this.d.a(jSONArray2).get();
                if (str2.equals("")) {
                    LoggerProxy.d("GetServerModelsWork", "servers return result is empty");
                } else {
                    JSONArray jSONArray3 = new JSONArray(str2);
                    for (int i = 0; i < jSONArray3.length(); i++) {
                        jSONArray.put(jSONArray3.get(i));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONArray.toString();
    }
}
