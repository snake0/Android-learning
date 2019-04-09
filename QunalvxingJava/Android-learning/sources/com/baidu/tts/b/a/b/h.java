package com.baidu.tts.b.a.b;

import com.baidu.tts.a.a.a;
import com.baidu.tts.b.a.b.f.b;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.d;
import com.baidu.tts.f.g;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.tools.CommonUtility;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class h extends g {
    private a<byte[], byte[]> a = new a();
    private b b;
    private com.baidu.tts.m.h c;

    public h(com.baidu.tts.m.h hVar) {
        this.c = hVar;
        this.a.a(new com.baidu.tts.a.a.b());
        this.a.a();
    }

    public void a(b bVar) {
        this.b = bVar;
    }

    public void a(int i, Header[] headerArr, String str, HttpEntity httpEntity) {
        if (RequestParams.APPLICATION_JSON.equals(str)) {
            c(httpEntity);
        } else {
            b(httpEntity);
        }
    }

    private void b(HttpEntity httpEntity) {
        byte[] bytes;
        byte[] bArr = null;
        try {
            bytes = ("--" + "--BD**TTS++LIB").getBytes("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            bytes = bArr;
        }
        try {
            bArr = EntityUtils.toByteArray(httpEntity);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        int indexOf = CommonUtility.indexOf(bArr, bytes, 0);
        if (indexOf < 0) {
            this.c.a(c.a().b(n.ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR));
            return;
        }
        int indexOf2 = CommonUtility.indexOf(bArr, bytes, bytes.length + indexOf);
        if (indexOf2 < 0) {
            this.c.a(c.a().b(n.ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR));
            return;
        }
        try {
            a(new String(CommonUtility.copyBytesOfRange(bArr, indexOf + bytes.length, indexOf2), "utf-8"));
        } catch (UnsupportedEncodingException e3) {
            e3.printStackTrace();
        }
        indexOf = CommonUtility.indexOf(bArr, bytes, bytes.length + indexOf2);
        if (indexOf >= 0) {
            this.c.a(CommonUtility.copyBytesOfRange(bArr, bytes.length + indexOf2, indexOf));
        }
    }

    private void c(HttpEntity httpEntity) {
        String str = null;
        try {
            str = EntityUtils.toString(httpEntity, d.UTF8.a());
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        a(str);
    }

    private void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt(g.ERROR_NUMBER.a());
            LoggerProxy.d("TtsResponseHandler", "parseJSON errNo=" + optInt);
            this.c.a(optInt);
            if (optInt != 0) {
                this.c.a(c.a().a(n.ONLINE_ENGINE_REQUEST_RESULT_ERROR, optInt, jSONObject.getString(g.ERROR_MESSAGE.a())));
                return;
            }
            this.c.a(jSONObject.optString(g.SERIAL_NUMBER.a()));
            this.c.b(jSONObject.optInt(g.INDEX.a()));
            this.c.d(jSONObject.optInt(g.PERCENT.b()));
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void a(int i, Header[] headerArr, String str, HttpEntity httpEntity, Throwable th) {
        LoggerProxy.d("TtsResponseHandler", "onFailure error = " + th.getMessage());
        this.c.a(c.a().a(n.ONLINE_ENGINE_HTTP_REQUEST_FAILURE, i, null, th));
    }
}
