package com.baidu.tts.auth;

import android.text.TextUtils;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.k.b;
import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.StringTool;
import java.util.LinkedList;
import org.apache.http.Header;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class c implements b<c, a> {
    private String a;
    private String b;
    private String c;

    public class a implements com.baidu.tts.k.a {
        private String a;
        private String b;
        private long c;
        private TtsError d;

        public void a(String str) {
            this.a = str;
        }

        public String a() {
            return this.b;
        }

        public void b(String str) {
            this.b = str;
        }

        public void a(long j) {
            this.c = j;
        }

        public TtsError b() {
            return this.d;
        }

        public void a(TtsError ttsError) {
            if (ttsError != null) {
                LoggerProxy.d("OnlineAuth", "this=" + this + "--error=" + ttsError.getDetailMessage());
            }
            this.d = ttsError;
        }

        public boolean g() {
            if (!StringTool.isEmpty(this.a)) {
                return true;
            }
            if (this.b != null && System.currentTimeMillis() < this.c) {
                return true;
            }
            return false;
        }
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    /* renamed from: a */
    public int compareTo(c cVar) {
        String a = cVar.a();
        if (StringTool.isEmpty(this.a)) {
            a = cVar.b();
            String c = cVar.c();
            LoggerProxy.d("OnlineAuth", "mAK=" + this.b + "--mSK=" + this.c + "--ak2=" + a + "--sk2=" + c);
            if (StringTool.isEqual(this.b, a) && StringTool.isEqual(this.c, c)) {
                return 0;
            }
            return 1;
        }
        LoggerProxy.d("OnlineAuth", "mProductId=" + this.a + "--productId2=" + a);
        if (a != null) {
            return this.a.compareTo(a);
        }
        return 1;
    }

    /* renamed from: d */
    public a call() {
        LoggerProxy.d("OnlineAuth", "enter online auth");
        final a aVar = new a();
        if (StringTool.isEmpty(this.a)) {
            try {
                if (a(this.b, this.c)) {
                    String b = b(this.b, this.c);
                    LoggerProxy.d("OnlineAuth", "url=" + b);
                    new SyncHttpClient(true, 80, 443).post(null, b, null, null, new AsyncHttpResponseHandler() {
                        public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                            String str = new String(bArr);
                            LoggerProxy.d("OnlineAuth", "body=" + str + "--code=" + i);
                            if (!TextUtils.isEmpty(str)) {
                                try {
                                    JSONObject jSONObject = new JSONObject(str);
                                    if (jSONObject.has("access_token")) {
                                        aVar.b(jSONObject.getString("access_token"));
                                    } else {
                                        aVar.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_AUTH_FAILURE));
                                    }
                                    if (jSONObject.has("expires_in")) {
                                        aVar.a(System.nanoTime() + (Math.min((long) jSONObject.getInt("expires_in"), 86400) * 1000000000));
                                    }
                                } catch (JSONException e) {
                                    LoggerProxy.d("OnlineAuth", "parse:" + e.toString());
                                } catch (Exception e2) {
                                    LoggerProxy.d("OnlineAuth", "parse:" + e2.toString());
                                }
                            }
                        }

                        public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                            aVar.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_AUTH_FAILURE));
                        }
                    });
                } else {
                    aVar.a(com.baidu.tts.h.a.c.a().b(n.TTS_PARAMETER_INVALID));
                }
            } catch (Exception e) {
                aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_AUTH_FAILURE, e));
            }
        } else {
            aVar.a(this.a);
        }
        LoggerProxy.d("OnlineAuth", "end online auth");
        return aVar;
    }

    private boolean a(String str, String str2) {
        return (StringTool.isEmpty(str) || StringTool.isEmpty(str2)) ? false : true;
    }

    private String b(String str, String str2) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new BasicNameValuePair("grant_type", "client_credentials"));
        linkedList.add(new BasicNameValuePair("client_id", str));
        linkedList.add(new BasicNameValuePair("client_secret", str2));
        return "https://openapi.baidu.com/oauth/2.0/token?" + URLEncodedUtils.format(linkedList, "utf-8");
    }
}
