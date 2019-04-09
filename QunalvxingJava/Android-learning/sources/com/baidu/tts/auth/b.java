package com.baidu.tts.auth;

import android.content.Context;
import android.net.http.EventHandler;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.tools.StringTool;
import java.io.File;

public class b implements com.baidu.tts.k.b<b, a> {
    private String a;
    private String b;

    public class a implements com.baidu.tts.k.a {
        private int a;
        private int b = -1;
        private String c;
        private String d;
        private TtsError e;

        public int a() {
            return this.a >= 1000 ? this.a - 1000 : 0;
        }

        public void a(int i) {
            this.b = i;
        }

        public void a(String str) {
            this.c = str;
        }

        public void b(String str) {
            this.d = str;
        }

        public TtsError b() {
            return this.e;
        }

        public void a(TtsError ttsError) {
            if (ttsError != null) {
                LoggerProxy.d("OfflineAuth", "this=" + this + "--error=" + ttsError.getDetailMessage());
            }
            this.e = ttsError;
        }

        public String c() {
            if (e()) {
                return "valid official";
            }
            if (d()) {
                return "valid temp";
            }
            switch (this.a) {
                case -10:
                    return "temp license expired";
                case EventHandler.ERROR_TIMEOUT /*-8*/:
                    return "license not exist or invalid license";
                case EventHandler.ERROR_IO /*-7*/:
                    return "platform unmatched";
                case EventHandler.ERROR_CONNECT /*-6*/:
                    return "will expire after a month";
                case EventHandler.ERROR_PROXYAUTH /*-5*/:
                    return "official license expired";
                case -4:
                    return "cuid unmatched";
                case -3:
                    return "sign or appcode unmatched";
                case -2:
                    return "package name unmatched";
                default:
                    return "not a valid result";
            }
        }

        public boolean d() {
            return this.a >= 1000;
        }

        public boolean e() {
            return this.a >= 0 && this.a < 1000;
        }

        public boolean f() {
            return this.a == -5 || this.a == -6;
        }

        public boolean g() {
            if (StringTool.isEmpty(this.c)) {
                return false;
            }
            File file = new File(this.c);
            if (!file.exists()) {
                return false;
            }
            com.baidu.tts.h.b.b a = com.baidu.tts.h.b.b.a();
            Context h = a.h();
            byte[] bArr = new byte[32];
            this.a = EmbeddedSynthesizerEngine.bdTTSVerifyLicense(h, this.d, a.i(), this.c, bArr);
            LoggerProxy.d("OfflineAuth", "verify result=" + this.a);
            if (bArr != null) {
                String str = new String(bArr);
                LoggerProxy.d("OfflineAuth", "get appIdStr=" + str);
                try {
                    int indexOf = str.indexOf("end");
                    if (indexOf != -1) {
                        new com.baidu.tts.e.b(h, str.substring(0, indexOf)).start();
                    }
                } catch (Exception e) {
                    LoggerProxy.d("OfflineAuth", "embedded statistics start exception=" + e.toString());
                }
            }
            if (this.a >= 0) {
                return true;
            }
            LoggerProxy.d("OfflineAuth", "isDelete=" + file.delete());
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

    /* renamed from: a */
    public int compareTo(b bVar) {
        return (StringTool.isEqual(this.a, bVar.a()) && StringTool.isEqual(this.b, bVar.b())) ? 0 : 1;
    }

    /* renamed from: c */
    public a call() {
        a aVar = new a();
        aVar.a(this.b);
        aVar.b(this.a);
        if (!aVar.g()) {
            com.baidu.tts.h.b.b a = com.baidu.tts.h.b.b.a();
            Context h = a.h();
            String i = a.i();
            LoggerProxy.d("OfflineAuth", "+ downloadLicense");
            int bdTTSGetLicense = EmbeddedSynthesizerEngine.bdTTSGetLicense(h, this.a, i, "0", "", this.b);
            LoggerProxy.d("OfflineAuth", "- downloadLicense ret = " + bdTTSGetLicense);
            aVar.a(bdTTSGetLicense);
            if (bdTTSGetLicense < 0) {
                aVar.a(c.a().a(n.OFFLINE_ENGINE_DOWNLOAD_LICENSE_FAILED, bdTTSGetLicense, "appCode=" + this.a + "--licensePath=" + this.b));
            } else {
                aVar.g();
            }
        }
        return aVar;
    }
}
