package com.baidu.tts.p;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.baidu.tts.h.b.b;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.tools.CommonUtility;
import com.baidu.tts.tools.GetCUID;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    public static String a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("System", VERSION.RELEASE);
            jSONObject.put("SystemVersion", VERSION.SDK + "");
            jSONObject.put("PhoneModel", Build.MODEL);
            jSONObject.put("CPU", Build.CPU_ABI);
            jSONObject.put("NetworkType", CommonUtility.getNetworkInfo(context));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String b(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("Cuid", GetCUID.getCUID(context));
            jSONObject.put("AppPackageName", context.getPackageName());
            jSONObject.put("SDKVersion", b.a().j());
            jSONObject.put("soInfo", EmbeddedSynthesizerEngine.bdTTSGetEngineParam());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
