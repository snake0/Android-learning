package com.baidu.tts.b.a.b;

import android.text.TextUtils;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.f;
import com.baidu.tts.f.n;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine.OnNewDataListener;
import com.baidu.tts.m.d;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.ResourceTools;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class e extends a {
    private b b;
    private long[] c = new long[1];
    private com.baidu.tts.e.c d;

    class a implements Runnable {
        private int b;

        public a(int i) {
            this.b = i;
        }

        public void run() {
            try {
                synchronized (e.this.d) {
                    if (e.this.d != null) {
                        e.this.d.a(System.currentTimeMillis(), this.b, 0, 0, "");
                    }
                }
            } catch (Exception e) {
                LoggerProxy.d("OfflineSynthesizer", "AddPVResultsToDB exception=" + e.toString());
            }
        }
    }

    public class b extends d<b> {
        private String a = "0";
        private String b = "0";
        private String c = "0";
        private String d;
        private String e;
        private String f;
        private String g;
        private String h = "5";

        public int a(String str) {
            if (!DataTool.isLong(str)) {
                return n.TTS_PARAMETER_INVALID.b();
            }
            this.a = str;
            return 0;
        }

        public void b(String str) {
            this.b = str;
        }

        public int c(String str) {
            if (!DataTool.isLong(str)) {
                return n.TTS_PARAMETER_INVALID.b();
            }
            this.c = str;
            return 0;
        }

        public long a() {
            long j = 0;
            try {
                return Long.parseLong(this.a);
            } catch (Exception e) {
                return j;
            }
        }

        public long b() {
            long j = 0;
            try {
                return Long.parseLong(this.b);
            } catch (Exception e) {
                return j;
            }
        }

        public long c() {
            long j = 0;
            try {
                return Long.parseLong(this.c);
            } catch (Exception e) {
                return j;
            }
        }

        public String d() {
            return this.d;
        }

        public void d(String str) {
            this.d = str;
        }

        public String e() {
            return this.e;
        }

        public void e(String str) {
            this.e = str;
        }

        public String f() {
            return this.f;
        }

        public void f(String str) {
            this.f = str;
        }

        public String g() {
            return this.g;
        }

        public void g(String str) {
            this.g = str;
        }

        public void h(String str) {
            this.h = str;
        }

        public String h() {
            return this.h;
        }
    }

    class c implements OnNewDataListener, Callable<TtsError> {
        ExecutorService a = Executors.newCachedThreadPool();
        private i c;
        private int d = 0;

        public c(i iVar) {
            this.c = iVar;
        }

        public int onNewData(byte[] bArr, int i) {
            h b = h.b(this.c);
            b.e(f.OFFLINE.a());
            b.a(com.baidu.tts.f.a.PCM);
            b.a(bArr);
            b.d(i);
            this.d++;
            b.b(this.d);
            e.this.a(b);
            if (!Thread.currentThread().isInterrupted()) {
                return 0;
            }
            LoggerProxy.d("OfflineSynthesizer", "interrupted to interrupt syn");
            return -1;
        }

        /* renamed from: a */
        public TtsError call() {
            com.baidu.tts.auth.b.a a = com.baidu.tts.auth.a.a().a(e.this.b);
            if (a == null) {
                return com.baidu.tts.h.a.c.a().b(n.OFFLINE_ENGINE_AUTH_NULL);
            }
            if (!a.g()) {
                return a.b();
            }
            String x = e.this.b.x();
            if (x.matches("\\d+(.\\d+)?")) {
                if (x.indexOf(".") > 0) {
                    EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 5, Float.parseFloat(x));
                } else {
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 5, Long.parseLong(x));
                }
            }
            x = e.this.b.v();
            if (x.matches("\\d+(.\\d+)?")) {
                if (x.indexOf(".") > 0) {
                    EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 6, Float.parseFloat(x));
                } else {
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 6, Long.parseLong(x));
                }
            }
            x = e.this.b.w();
            if (x.matches("\\d+(.\\d+)?")) {
                if (x.indexOf(".") > 0) {
                    EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 7, Float.parseFloat(x));
                } else {
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 7, Long.parseLong(x));
                }
            }
            x = e.this.b.h();
            if (x.matches("\\d+(.\\d+)?")) {
                if (x.indexOf(".") > 0) {
                    EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 8, Float.parseFloat(x));
                } else {
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 8, Long.parseLong(x));
                }
            }
            LoggerProxy.d("OfflineSynthesizer", "engineResult = " + EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 0, 0));
            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 18, e.this.b.a());
            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 19, e.this.b.b());
            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 20, e.this.b.c());
            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 10, e.this.b.u());
            EmbeddedSynthesizerEngine.setOnNewDataListener(this);
            this.c.c(com.baidu.tts.f.d.GBK.a());
            byte[] e = this.c.e();
            LoggerProxy.d("OfflineSynthesizer", "before bdttssynthesis");
            int bdTTSSynthesis = EmbeddedSynthesizerEngine.bdTTSSynthesis(e.this.c[0], e, e.length);
            LoggerProxy.d("OfflineSynthesizer", "after bdttssynthesis result = " + bdTTSSynthesis);
            try {
                this.a.execute(new a(bdTTSSynthesis));
            } catch (Exception e2) {
                LoggerProxy.d("OfflineSynthesizer", "AddPVResultsToDB start exception=" + e2.toString());
            }
            if (bdTTSSynthesis == 0) {
                return null;
            }
            return com.baidu.tts.h.a.c.a().a(n.OFFLINE_ENGINE_SYNTHESIZE_ERROR, bdTTSSynthesis);
        }
    }

    public <OfflineSynthesizerParams> void a(OfflineSynthesizerParams offlineSynthesizerParams) {
        this.b = (b) offlineSynthesizerParams;
    }

    public TtsError a() {
        try {
            this.d = com.baidu.tts.e.c.a(com.baidu.tts.h.b.b.a().h());
        } catch (Exception e) {
            LoggerProxy.d("OfflineSynthesizer", "embedded statistics open exception=" + e.toString());
        }
        if (this.b == null) {
            this.b = new b();
        }
        com.baidu.tts.auth.b.a a = com.baidu.tts.auth.a.a().a(this.b);
        if (!a.g()) {
            return a.b();
        }
        String d = this.b.d();
        String e2 = this.b.e();
        byte[] stringToByteArrayAddNull = ResourceTools.stringToByteArrayAddNull(d);
        byte[] stringToByteArrayAddNull2 = ResourceTools.stringToByteArrayAddNull(e2);
        LoggerProxy.d("OfflineSynthesizer", "before bdTTSEngineInit");
        int bdTTSEngineInit = EmbeddedSynthesizerEngine.bdTTSEngineInit(stringToByteArrayAddNull, stringToByteArrayAddNull2, this.c);
        LoggerProxy.d("OfflineSynthesizer", "engine init ret = " + bdTTSEngineInit);
        if (bdTTSEngineInit == 0) {
            return null;
        }
        return com.baidu.tts.h.a.c.a().a(n.OFFLINE_ENGINE_INIT_FAILED, bdTTSEngineInit, "bdTTSEngineInit result not 0");
    }

    public TtsError b() {
        EmbeddedSynthesizerEngine.bdTTSEngineUninit(this.c[0]);
        return null;
    }

    public TtsError a(i iVar) {
        try {
            return new c(iVar).call();
        } catch (InterruptedException e) {
            throw e;
        } catch (Exception e2) {
            return com.baidu.tts.h.a.c.a().a(n.OFFLINE_ENGINE_CALL_EXCEPTION, e2);
        }
    }

    public int a(com.baidu.tts.m.e eVar) {
        return EmbeddedSynthesizerEngine.bdTTSDomainDataInit(ResourceTools.stringToByteArrayAddNull(eVar.a()), this.c[0]);
    }

    public int b(com.baidu.tts.m.e eVar) {
        return EmbeddedSynthesizerEngine.bdTTSDomainDataUninit(this.c[0]);
    }

    public int a(g gVar) {
        int i = 0;
        String b = gVar.b();
        String a = gVar.a();
        boolean isEmpty = TextUtils.isEmpty(b);
        boolean isEmpty2 = TextUtils.isEmpty(a);
        if (isEmpty && isEmpty2) {
            return n.TTS_PARAMETER_INVALID.b();
        }
        int i2;
        if (isEmpty2) {
            i2 = 0;
        } else {
            i2 = EmbeddedSynthesizerEngine.bdTTSReInitData(ResourceTools.stringToByteArrayAddNull(a), this.c[0]);
        }
        if (!isEmpty) {
            i = EmbeddedSynthesizerEngine.bdTTSReInitData(ResourceTools.stringToByteArrayAddNull(b), this.c[0]);
        }
        return i + i2;
    }

    public int a(com.baidu.tts.m.f fVar) {
        String b = fVar.b();
        String a = fVar.a();
        boolean isEmpty = TextUtils.isEmpty(b);
        if (TextUtils.isEmpty(a) || isEmpty) {
            return n.TTS_PARAMETER_INVALID.b();
        }
        int loadEnglishEngine = EmbeddedSynthesizerEngine.loadEnglishEngine(ResourceTools.stringToByteArrayAddNull(a), ResourceTools.stringToByteArrayAddNull(b), this.c[0]);
        LoggerProxy.d("OfflineSynthesizer", "loadEnglishModel ret=" + loadEnglishEngine);
        return loadEnglishEngine;
    }
}
