package com.baidu.tts.d.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.FileTools;
import com.baidu.tts.tools.StringTool;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.Header;

public class b extends com.baidu.tts.j.a {
    private volatile a a = this.b;
    private i b = new i(this);
    private f c = new f(this);
    private d f = new d(this);
    private h g = new h(this);
    private ThreadPoolExecutor h;
    private com.baidu.tts.l.a i;

    public class a implements Callable<Void> {
        private c b;
        private SyncHttpClient c;

        public a(c cVar) {
            this.b = cVar;
        }

        /* renamed from: a */
        public Void call() {
            this.b.d();
            final String a = this.b.a();
            LoggerProxy.d("DownloadEngine", "DownloadWork start fileId=" + a);
            if (StringTool.isEmpty(a)) {
                this.b.a(c.a().a(n.MODEL_REQUEST_ERROR, "fileId is null"));
            } else {
                Set hashSet = new HashSet();
                hashSet.add(a);
                ModelFileBags modelFileBags = (ModelFileBags) b.this.i.a(hashSet).get();
                if (modelFileBags != null) {
                    String url = modelFileBags.getUrl(0);
                    if (url != null) {
                        if (url.startsWith("https")) {
                            this.c = new SyncHttpClient(true, 80, 443);
                        } else {
                            this.c = new SyncHttpClient();
                        }
                        this.c.setURLEncodingEnabled(false);
                        this.c.setTimeout(l.DEFAULT.b());
                        this.c.setMaxRetriesAndTimeout(5, AsyncHttpClient.DEFAULT_RETRY_SLEEP_TIME_MILLIS);
                        AnonymousClass1 anonymousClass1 = new g(FileTools.getFile(this.b.b()), this.b) {
                            public void onFailure(int i, Header[] headerArr, Throwable th, File file) {
                                LoggerProxy.d("DownloadEngine", "1isInterrupted=" + Thread.currentThread().isInterrupted());
                                if (b.this.C()) {
                                    super.onFailure(i, headerArr, th, file);
                                }
                            }

                            public void onSuccess(int i, Header[] headerArr, File file) {
                                LoggerProxy.d("DownloadEngine", "2isInterrupted=" + Thread.currentThread().isInterrupted() + "--fileId=" + a);
                                if (b.this.C()) {
                                    super.onSuccess(i, headerArr, file);
                                }
                            }

                            public void onProgress(long j, long j2) {
                                if (b.this.C()) {
                                    super.onProgress(j, j2);
                                }
                            }
                        };
                        anonymousClass1.setUseSynchronousMode(true);
                        LoggerProxy.d("DownloadEngine", "before get fileId=" + a);
                        this.c.get(url, anonymousClass1);
                    } else {
                        this.b.a(c.a().a(n.MODEL_REQUEST_ERROR, "url is null"));
                    }
                } else {
                    this.b.a(c.a().a(n.MODEL_REQUEST_ERROR, "urlbags is null"));
                }
            }
            LoggerProxy.d("DownloadEngine", "DownloadWork end");
            return null;
        }

        public void b() {
            if (this.c != null) {
                this.c.stop();
            }
        }

        public c c() {
            return this.b;
        }
    }

    public b() {
        b();
    }

    public void a(com.baidu.tts.l.a aVar) {
        this.i = aVar;
    }

    public a a() {
        return this.a;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    public i o() {
        return this.b;
    }

    public f p() {
        return this.c;
    }

    public d q() {
        return this.f;
    }

    public h r() {
        return this.g;
    }

    /* Access modifiers changed, original: protected */
    public TtsError g() {
        return this.a.b();
    }

    /* Access modifiers changed, original: protected */
    public void h() {
        this.a.a();
    }

    /* Access modifiers changed, original: protected */
    public void i() {
        this.a.c();
    }

    /* Access modifiers changed, original: protected */
    public void j() {
        this.a.d();
    }

    /* Access modifiers changed, original: protected */
    public void k() {
        this.a.e();
    }

    /* Access modifiers changed, original: protected */
    public void l() {
        this.a.f();
    }

    public boolean m() {
        return this.a == this.g;
    }

    public boolean n() {
        return Thread.currentThread().isInterrupted() || this.a == this.c;
    }

    public e a(c cVar) {
        return this.a.a(cVar);
    }

    /* Access modifiers changed, original: 0000 */
    public void s() {
        this.h = (ThreadPoolExecutor) Executors.newFixedThreadPool(5, new com.baidu.tts.g.a.a("downloadPoolThread"));
    }

    /* Access modifiers changed, original: 0000 */
    public void t() {
        LoggerProxy.d("DownloadEngine", "enter stop");
        if (this.h != null) {
            if (!this.h.isShutdown()) {
                this.h.shutdownNow();
            }
            try {
                LoggerProxy.d("DownloadEngine", "before awaitTermination");
                LoggerProxy.d("DownloadEngine", "after awaitTermination isTermination=" + this.h.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS));
            } catch (InterruptedException e) {
            }
            this.h = null;
        }
        LoggerProxy.d("DownloadEngine", "end stop");
    }

    /* Access modifiers changed, original: 0000 */
    public e b(c cVar) {
        a aVar = new a(cVar);
        cVar.c();
        LoggerProxy.d("DownloadEngine", "before submit");
        Future future = null;
        try {
            future = this.h.submit(aVar);
        } catch (Exception e) {
            LoggerProxy.d("DownloadEngine", "submit exception");
            cVar.a(c.a().a(n.MODEL_FILE_DOWNLOAD_EXCEPTION, e));
        }
        e eVar = new e();
        eVar.a(future);
        eVar.a(aVar);
        return eVar;
    }
}
