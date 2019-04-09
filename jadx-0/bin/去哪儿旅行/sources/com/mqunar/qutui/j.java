package com.mqunar.qutui;

import com.alibaba.fastjson.JSON;
import com.iflytek.cloud.SpeechEvent;
import com.mqunar.qutui.model.Caf;
import com.mqunar.tools.log.QLog;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONObject;
import qunar.lego.utils.FormPart;
import qunar.lego.utils.PitcherResponse;

class j implements Runnable {
    final /* synthetic */ QutuiLog a;

    j(QutuiLog qutuiLog) {
        this.a = qutuiLog;
    }

    public void run() {
        ArrayList arrayList = new ArrayList();
        String a = this.a.c();
        FormPart formPart = new FormPart("c", a);
        QLog.i("request url = " + QutuiLog.f + "/frequencyConfig" + ", cparam = " + a, new Object[0]);
        formPart.addHeader("X-ClientEncoding", "none");
        arrayList.add(formPart);
        PitcherResponse request = this.a.a(QutuiLog.f + "/frequencyConfig", arrayList).request();
        String str;
        if (request != null && request.respcode < HttpStatus.SC_BAD_REQUEST && request.e == null && request.content != null) {
            try {
                str = new String(request.content, "utf-8");
                QLog.i("request url = " + QutuiLog.f + "/frequencyConfig" + ", response = " + str, new Object[0]);
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.optInt("status", -1) == 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(SpeechEvent.KEY_EVENT_RECORD_DATA);
                    List arrayList2 = new ArrayList();
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            arrayList2.add(JSON.parseObject(optJSONArray.getString(i), Caf.class));
                        }
                        this.a.a(arrayList2);
                        QutuiLog.j = System.currentTimeMillis();
                    }
                }
            } catch (Exception e) {
                QLog.e(e);
            }
        } else if (request != null) {
            if (request.content != null) {
                try {
                    str = new String(request.content, "utf-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                QLog.w("respcode = [" + request.respcode + "], content = [" + str + "], e = [" + request.e + "]", new Object[0]);
            }
            str = null;
            QLog.w("respcode = [" + request.respcode + "], content = [" + str + "], e = [" + request.e + "]", new Object[0]);
        }
    }
}
