package com.baidu.tts.b.a.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.b.a.b;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class c extends a {
    private ExecutorService f;
    private h g;
    private e h;
    private g i;
    private f j;

    class a implements Callable<Void> {
        private i b;

        public a(i iVar) {
            this.b = iVar;
        }

        /* renamed from: a */
        public Void call() {
            try {
                c.this.a(h.b(this.b));
                TtsError a = c.this.a.a(this.b);
                if (a == null) {
                    c.this.c(h.b(this.b));
                } else {
                    c.this.e(h.a(this.b, a));
                }
            } catch (InterruptedException e) {
            }
            return null;
        }
    }

    public c() {
        this.g = new h(this);
        this.h = new e(this);
        this.i = new g(this);
        this.j = new f(this);
        this.c = this.g;
    }

    public boolean m() {
        return this.c == this.j;
    }

    public boolean n() {
        return Thread.currentThread().isInterrupted() || this.c == this.h;
    }

    public h o() {
        return this.g;
    }

    public e p() {
        return this.h;
    }

    public g q() {
        return this.i;
    }

    public f r() {
        return this.j;
    }

    /* Access modifiers changed, original: 0000 */
    public TtsError s() {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.a.a(new b() {
            public void e(h hVar) {
            }

            public void a(h hVar) {
            }

            public void b(h hVar) {
            }

            public void c(h hVar) {
                c.this.b(hVar);
            }

            public void d(h hVar) {
            }
        });
        return this.a.a();
    }

    /* Access modifiers changed, original: 0000 */
    public void t() {
        this.f = Executors.newSingleThreadExecutor(new com.baidu.tts.g.a.a("EngineExecutorPoolThread"));
    }

    /* Access modifiers changed, original: 0000 */
    public void u() {
    }

    /* Access modifiers changed, original: 0000 */
    public void v() {
    }

    /* Access modifiers changed, original: 0000 */
    public void w() {
        if (this.f != null) {
            if (!this.f.isShutdown()) {
                this.f.shutdownNow();
            }
            try {
                LoggerProxy.d("EngineExecutor", "before awaitTermination");
                boolean awaitTermination = this.f.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS);
                LoggerProxy.d("EngineExecutor", "after awaitTermination isTermination=" + awaitTermination);
                a(awaitTermination);
            } catch (InterruptedException e) {
                a(false);
            }
            this.f = null;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void x() {
        this.a.b();
        this.b = null;
    }

    /* Access modifiers changed, original: 0000 */
    public int b(g gVar) {
        return this.a.a(gVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int b(f fVar) {
        return this.a.a(fVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int c(e eVar) {
        return this.a.a(eVar);
    }

    /* Access modifiers changed, original: 0000 */
    public int d(e eVar) {
        return this.a.b(eVar);
    }

    /* Access modifiers changed, original: 0000 */
    public void b(com.baidu.tts.b.a.b.b bVar) {
        this.a = bVar;
    }

    /* Access modifiers changed, original: 0000 */
    public void b(b bVar) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        if (!this.b.contains(bVar)) {
            this.b.add(bVar);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <T> void b(T t) {
        this.a.a((Object) t);
    }

    /* Access modifiers changed, original: 0000 */
    public void b(i iVar) {
        this.f.submit(new a(iVar));
    }

    private void a(boolean z) {
        if (z) {
            d(null);
            return;
        }
        h hVar = new h();
        hVar.a(com.baidu.tts.h.a.c.a().b(n.TTS_ENGINE_STOP_FAILURE));
        d(hVar);
    }
}
