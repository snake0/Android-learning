package com.baidu.tts.d;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.d.b.d;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.j.b;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class c implements b {
    private static volatile c a = null;
    private com.baidu.tts.l.a b;
    private com.baidu.tts.d.b.a c = com.baidu.tts.d.b.a.a();
    private com.baidu.tts.d.a.b d = new com.baidu.tts.d.a.b();
    private ExecutorService e;

    public class a implements Callable<a> {
        private DownloadHandler b;

        public a(DownloadHandler downloadHandler) {
            this.b = downloadHandler;
        }

        /* renamed from: a */
        public a call() {
            a aVar = new a();
            com.baidu.tts.database.a e = c.this.b.e();
            String modelId = this.b.getModelId();
            d b = c.this.c.b(modelId);
            try {
                b.c(this.b);
                if (!b.a(e)) {
                    Conditions conditions = new Conditions();
                    conditions.appendId(modelId);
                    ModelBags modelBags = (ModelBags) c.this.b.a(conditions).get();
                    if (modelBags == null || modelBags.isEmpty()) {
                        b.a(this.b, com.baidu.tts.h.a.c.a().a(n.MODEL_BAGS_EMPTY, "modelId=" + modelId));
                        return aVar;
                    }
                    b.a(modelBags, e);
                }
                Set<String> f = b.f();
                if (DataTool.isSetEmpty(f)) {
                    b.a(this.b, com.baidu.tts.h.a.c.a().a(n.MODEL_DB_MODEL_INVALID, "modelId=" + modelId));
                    return aVar;
                }
                for (String str : f) {
                    com.baidu.tts.d.b.c c = c.this.c.c(str);
                    if (!c.a(e)) {
                        Set hashSet = new HashSet();
                        hashSet.add(str);
                        ModelFileBags modelFileBags = (ModelFileBags) c.this.b.a(hashSet).get();
                        if (modelFileBags == null || modelFileBags.isEmpty()) {
                            b.a(this.b, com.baidu.tts.h.a.c.a().a(n.MODEL_FILE_BAG_EMPTY, "fileId=" + str));
                            return aVar;
                        }
                        modelFileBags.generateAbsPath(c.this.b.d());
                        c.a(modelFileBags, e);
                    }
                }
                b.d();
                f = b.b();
                if (DataTool.isSetEmpty(f)) {
                    b.a(this.b, com.baidu.tts.h.a.c.a().a(n.MODEL_DB_MODEL_FILE_PATHS_INVALID, "modelId=" + modelId));
                    return aVar;
                }
                for (String str2 : f) {
                    if (!StringTool.isEmpty(str2)) {
                        com.baidu.tts.d.b.b a = c.this.c.a(str2);
                        a.a(modelId);
                        boolean a2 = a.a(e);
                        String c2 = a.c();
                        LoggerProxy.d("Downloader", "isNeedDownload=" + a2 + "--fileId=" + c2);
                        if (a2) {
                            if (a.e()) {
                                a.f();
                            }
                            com.baidu.tts.d.a.c cVar = new com.baidu.tts.d.a.c();
                            cVar.a(a);
                            if (Thread.currentThread().isInterrupted()) {
                                return null;
                            }
                            LoggerProxy.d("Downloader", "before download fileId=" + c2);
                            a.a(c.this.d.a(cVar));
                            aVar.a(true);
                        } else {
                            aVar.a(str2, a.d());
                        }
                    }
                }
                if (!aVar.a() && aVar.b()) {
                    this.b.updateProgress(b);
                    b.a(this.b, com.baidu.tts.h.a.c.a().a(n.MODEL_EXISTS, "modelId=" + modelId));
                }
                return aVar;
            } catch (Exception e2) {
                LoggerProxy.d("Downloader", "exception=" + e2.toString());
                b.a(this.b, com.baidu.tts.h.a.c.a().a(n.MODEL_CHECK_EXCEPTION, "modelId=" + modelId));
                return aVar;
            }
        }
    }

    private c() {
    }

    public static c a() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        return a;
    }

    private synchronized ExecutorService h() {
        if (this.e == null) {
            this.e = Executors.newSingleThreadExecutor();
        }
        return this.e;
    }

    public synchronized TtsError b() {
        return null;
    }

    public synchronized void g() {
        h();
        this.d.A();
    }

    public synchronized void c() {
        this.d.c();
    }

    public synchronized void d() {
        this.d.d();
    }

    public synchronized void e() {
        LoggerProxy.d("Downloader", "enter stop");
        this.c.c();
        if (this.e != null) {
            if (!this.e.isShutdown()) {
                this.e.shutdownNow();
                this.d.e();
                LoggerProxy.d("Downloader", "after engine stop");
            }
            try {
                LoggerProxy.d("Downloader", "before awaitTermination");
                LoggerProxy.d("Downloader", "after awaitTermination isTermination=" + this.e.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS));
            } catch (InterruptedException e) {
            }
            this.e = null;
        }
        LoggerProxy.d("Downloader", "end stop");
    }

    public synchronized void f() {
    }

    public void a(com.baidu.tts.l.a aVar) {
        this.b = aVar;
        this.c.a(this.b.e());
        this.d.a(this.b);
    }

    public synchronized DownloadHandler a(DownloadHandler downloadHandler) {
        LoggerProxy.d("Downloader", "download handler=" + downloadHandler);
        downloadHandler.setCheckFuture(h().submit(new a(downloadHandler)));
        return downloadHandler;
    }
}
