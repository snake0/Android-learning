package com.baidu.tts.b.a.b;

import com.baidu.speechsynthesizer.utility.SpeechDecoder;
import com.baidu.speechsynthesizer.utility.SpeechDecoder.OnDecodedDataListener;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.g;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.m.e;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.tools.CommonUtility;
import com.baidu.tts.tools.StringTool;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class f extends a {
    private b b;
    private double c;

    class a implements Callable<h> {
        private int b;
        private c c;
        private i d;
        private b e;
        private h f;
        private SyncHttpClient g;

        public a(int i, c cVar, i iVar, b bVar, h hVar) {
            this.b = i;
            this.c = cVar;
            this.d = iVar;
            this.e = bVar;
            this.f = hVar;
        }

        /* renamed from: a */
        public h call() {
            try {
                HttpEntity a = f.this.a(this.b, this.c.a, this.d, this.e);
                this.g = new SyncHttpClient(true, 80, 443);
                this.g.setMaxRetriesAndTimeout(this.e.n(), this.e.o());
                int p = this.e.p();
                LoggerProxy.d("OnlineSynthesizer", "timeout=" + p);
                this.g.setTimeout(p);
                h hVar = new h(this.f);
                hVar.a(this.e);
                if (this.b == 1) {
                    this.c.b = o.TTS_SERVER.b();
                    LoggerProxy.d("OnlineSynthesizer", "serverIp=" + this.c.b);
                }
                if (this.c.b == null) {
                    this.f.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_SERVER_IP_IS_NULL));
                } else if (!Thread.currentThread().isInterrupted()) {
                    LoggerProxy.d("OnlineSynthesizer", "before post");
                    this.g.post(null, this.c.b, a, null, hVar);
                    LoggerProxy.d("OnlineSynthesizer", "after post");
                }
                return this.f;
            } catch (com.baidu.tts.q.a e) {
                this.f.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_TOKEN_IS_NULL));
                return this.f;
            }
        }

        public void b() {
            if (this.g != null) {
                this.g.stop();
            }
        }
    }

    public class b extends com.baidu.tts.m.d<b> {
        private static Set<String> p = new HashSet();
        private String a;
        private com.baidu.tts.f.b b = com.baidu.tts.f.b.AMR;
        private com.baidu.tts.f.c c = com.baidu.tts.f.c.AMR_15K85;
        private String d = "0";
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;
        private String k;
        private String l;
        private int m = 5;
        private int n = 1000;
        private int o = l.DEFAULT.b();

        public String a() {
            return this.k;
        }

        public void a(String str) {
            this.k = str;
        }

        public String b() {
            return this.l;
        }

        public void b(String str) {
            this.l = str;
        }

        public com.baidu.tts.f.b c() {
            return this.b;
        }

        public String d() {
            return this.b.a();
        }

        public int a(com.baidu.tts.f.b bVar) {
            if (bVar == null) {
                return n.TTS_PARAMETER_INVALID.b();
            }
            this.b = bVar;
            return 0;
        }

        public String e() {
            return this.a;
        }

        public void c(String str) {
            this.a = str;
        }

        public String f() {
            return this.c.a();
        }

        public void a(com.baidu.tts.f.c cVar) {
            this.c = cVar;
        }

        public String g() {
            return this.d;
        }

        public void d(String str) {
            this.d = str;
        }

        public String h() {
            return this.e;
        }

        public String i() {
            return this.f;
        }

        public String j() {
            return this.g;
        }

        public void e(String str) {
            this.g = str;
        }

        public String k() {
            return this.h;
        }

        public void f(String str) {
            this.h = str;
        }

        public String l() {
            return this.i;
        }

        public void g(String str) {
            this.i = str;
        }

        public String m() {
            return this.j;
        }

        public void h(String str) {
            this.j = str;
        }

        public int n() {
            return this.m;
        }

        public void a(int i) {
            this.m = i;
        }

        public int o() {
            return this.n;
        }

        public void b(int i) {
            this.n = i;
        }

        public int p() {
            return this.o;
        }

        public void c(int i) {
            this.o = i;
        }

        static {
            p.add(g.SPEED.b());
        }
    }

    class c {
        String a = CommonUtility.generateSerialNumber();
        String b;
    }

    class d implements OnDecodedDataListener, Callable<TtsError> {
        byte[] a = new byte[0];
        private i c;
        private c d;
        private SpeechDecoder e;
        private h f;
        private int g = 0;
        private int h = 1;

        public d(i iVar) {
            this.c = iVar;
            this.d = new c();
            this.e = new SpeechDecoder();
        }

        /* renamed from: a */
        public TtsError call() {
            h a;
            int i = 0;
            SpeechDecoder.setOnDecodedDataListener(this);
            do {
                i++;
                LoggerProxy.d("OnlineSynthesizer", "count=" + i);
                a = f.this.a(i, this.d, this.c);
                if (a(a)) {
                    this.f = a;
                    this.e.decodeWithCallback(a.d());
                }
            } while (!b(a));
            if (a == null) {
                return com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_CALL_EXCEPTION);
            }
            return a.f();
        }

        private boolean a(h hVar) {
            if (hVar != null && hVar.f() == null && hVar.a() == 0) {
                return true;
            }
            return false;
        }

        private boolean b(h hVar) {
            if (!a(hVar) || hVar.b() < 0) {
                return true;
            }
            return false;
        }

        public void onDecodedData(byte[] bArr) {
            this.a = a(this.a, bArr);
            int length = this.a.length;
            if (length >= 3200) {
                int length2 = this.f.d().length;
                double a = ((double) length) / (((double) length2) * f.this.c);
                double d = (double) this.g;
                a((int) (((((double) (this.f.c() - this.g)) * a) * ((double) this.h)) + d));
            }
            if (bArr.length == 0) {
                if (length < 3200) {
                    a(this.f.c());
                }
                this.g = this.f.c();
                this.h = 1;
                if (this.f.b() < 0) {
                    this.g = 0;
                }
            }
        }

        private void a(int i) {
            LoggerProxy.d("OnlineSynthesizer", "mindex=" + this.h + " progress=" + i);
            h hVar = (h) this.f.y();
            hVar.a(this.a);
            hVar.a(com.baidu.tts.f.a.PCM);
            hVar.c(this.h);
            hVar.d(i);
            f.this.a(hVar);
            this.h++;
            this.a = new byte[0];
        }

        private byte[] a(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[(bArr.length + bArr2.length)];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }
    }

    public <OnlineSynthesizerParams> void a(OnlineSynthesizerParams onlineSynthesizerParams) {
        this.b = (b) onlineSynthesizerParams;
    }

    public TtsError a(i iVar) {
        try {
            return new d(iVar).call();
        } catch (InterruptedException e) {
            throw e;
        } catch (Exception e2) {
            return com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_CALL_EXCEPTION, e2);
        }
    }

    private h a(int i, c cVar, i iVar) {
        h b = h.b(iVar);
        b bVar = (b) this.b.y();
        a aVar = new a(i, cVar, iVar, bVar, b);
        FutureTask futureTask = new FutureTask(aVar);
        new Thread(futureTask).start();
        try {
            return (h) futureTask.get((long) bVar.p(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            futureTask.cancel(true);
            aVar.b();
            throw e;
        } catch (ExecutionException e2) {
            b.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_GET_EXECUTION_EXCEPTION, e2.getCause()));
            return b;
        } catch (TimeoutException e3) {
            LoggerProxy.d("OnlineSynthesizer", "startOnceHttpRequest timeout");
            futureTask.cancel(true);
            aVar.b();
            b.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_GET_TIMEOUT, e3));
            return b;
        }
    }

    private HttpEntity a(int i, String str, i iVar, b bVar) {
        if (bVar == null) {
            return null;
        }
        UrlEncodedFormEntity urlEncodedFormEntity;
        ArrayList<NameValuePair> arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair(g.INDEX.a(), String.valueOf(i)));
        arrayList.add(new BasicNameValuePair(g.SERIAL_NUMBER.a(), str));
        arrayList.add(new BasicNameValuePair(g.PLATFORM.b(), "Android"));
        com.baidu.tts.h.b.b a = com.baidu.tts.h.b.b.a();
        arrayList.add(new BasicNameValuePair(g.VERSION.a(), a.j()));
        String e = bVar.e();
        if (!StringTool.isEmpty(e)) {
            arrayList.add(new BasicNameValuePair(g.PRODUCT_ID.a(), e));
        }
        iVar.c(bVar.q());
        String d = iVar.d();
        if (i == 1) {
            try {
                arrayList.add(new BasicNameValuePair(g.TEXT.a(), URLEncoder.encode(iVar.c(), d)));
                arrayList.add(new BasicNameValuePair(g.CTP.a(), a.a(g.CTP.a())));
                String i2 = a.i();
                if (i2 != null) {
                    arrayList.add(new BasicNameValuePair(g.CUID.a(), i2));
                }
                if (StringTool.isEmpty(e)) {
                    LoggerProxy.d("OnlineSynthesizer", "before online auth");
                    com.baidu.tts.auth.c.a a2 = com.baidu.tts.auth.a.a().a(bVar);
                    LoggerProxy.d("OnlineSynthesizer", "after online auth");
                    if (a2.g()) {
                        arrayList.add(new BasicNameValuePair(g.TOKEN.a(), a2.a()));
                    } else {
                        throw new com.baidu.tts.q.a();
                    }
                }
                arrayList.add(new BasicNameValuePair(g.TEXT_ENCODE.a(), bVar.r()));
                arrayList.add(new BasicNameValuePair(g.AUDIO_ENCODE.a(), bVar.d()));
                arrayList.add(new BasicNameValuePair(g.BITRATE.a(), bVar.f()));
                this.c = bVar.c().b()[Integer.parseInt(bVar.f())].b();
                arrayList.add(new BasicNameValuePair(g.SPEAKER.a(), bVar.g()));
                arrayList.add(new BasicNameValuePair(g.NUMBER.a(), bVar.h()));
                arrayList.add(new BasicNameValuePair(g.ENGINE.a(), bVar.i()));
                arrayList.add(new BasicNameValuePair(g.STYLE.a(), bVar.j()));
                arrayList.add(new BasicNameValuePair(g.BACKGROUND.a(), bVar.k()));
                arrayList.add(new BasicNameValuePair(g.TERRITORY.a(), bVar.l()));
                arrayList.add(new BasicNameValuePair(g.PUNCTUATION.a(), bVar.m()));
                arrayList.add(new BasicNameValuePair(g.LANGUAGE.a(), bVar.s()));
                arrayList.add(new BasicNameValuePair(g.SPEED.a(), bVar.v()));
                arrayList.add(new BasicNameValuePair(g.PITCH.a(), bVar.w()));
                arrayList.add(new BasicNameValuePair(g.VOLUME.a(), bVar.x()));
                arrayList.add(new BasicNameValuePair(g.OPEN_XML.a(), bVar.t()));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (NameValuePair nameValuePair : arrayList) {
                stringBuffer.append(nameValuePair.getName());
                stringBuffer.append("=");
                stringBuffer.append(nameValuePair.getValue());
                stringBuffer.append(",");
            }
            LoggerProxy.d("OnlineSynthesizer", "request params: " + stringBuffer);
            urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, d);
        } catch (UnsupportedEncodingException e22) {
            e22.printStackTrace();
            urlEncodedFormEntity = null;
        }
        return urlEncodedFormEntity;
    }

    public int a(e eVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }

    public int b(e eVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }

    public int a(com.baidu.tts.m.g gVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }

    public int a(com.baidu.tts.m.f fVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }
}
