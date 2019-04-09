package com.baidu.tts.b.b.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.b.b.b;
import com.baidu.tts.b.b.b.c;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.l;
import com.baidu.tts.m.h;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class f extends a {
    private ThreadPoolExecutor c;
    private c f;
    private h g;
    private d h;
    private g i;
    private e j;

    class a implements Runnable {
        private h b;

        public a(h hVar) {
            this.b = hVar;
        }

        public void run() {
            LoggerProxy.d("PlayQueueMachine", "enter run");
            f.this.f.a(this.b);
            LoggerProxy.d("PlayQueueMachine", "end run");
        }
    }

    public f() {
        this.g = new h(this);
        this.h = new d(this);
        this.i = new g(this);
        this.j = new e(this);
        this.b = this.g;
        this.f = b.a().b();
    }

    public boolean m() {
        return this.b == this.j;
    }

    public boolean n() {
        return Thread.currentThread().isInterrupted() || this.b == this.h;
    }

    public h p() {
        return this.g;
    }

    public d q() {
        return this.h;
    }

    public g r() {
        return this.i;
    }

    public e s() {
        return this.j;
    }

    /* Access modifiers changed, original: 0000 */
    public TtsError t() {
        this.f.a(new com.baidu.tts.b.b.a() {
            public void a(h hVar) {
                f.this.b(hVar);
            }

            public void b(h hVar) {
                f.this.c(hVar);
            }

            public void c(h hVar) {
                f.this.d(hVar);
            }
        });
        return this.f.a();
    }

    /* Access modifiers changed, original: 0000 */
    public void u() {
        this.c = new com.baidu.tts.c.a(200, "PlayExecutorPoolThread");
    }

    /* Access modifiers changed, original: 0000 */
    public void v() {
        this.f.d();
    }

    /* Access modifiers changed, original: 0000 */
    public void w() {
        this.f.c();
    }

    /* Access modifiers changed, original: 0000 */
    public void x() {
        this.f.e();
        if (this.c != null) {
            if (!this.c.isShutdown()) {
                this.c.shutdownNow();
            }
            try {
                LoggerProxy.d("PlayQueueMachine", "before await");
                LoggerProxy.d("PlayQueueMachine", "after await isTer=" + this.c.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS));
            } catch (InterruptedException e) {
                LoggerProxy.d("PlayQueueMachine", "InterruptedException");
            }
            this.c = null;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void y() {
        this.f.f();
    }

    /* Access modifiers changed, original: 0000 */
    public void e(h hVar) {
        this.c.execute(new a(hVar));
    }

    /* Access modifiers changed, original: 0000 */
    public void z() {
        this.f.b();
    }

    /* Access modifiers changed, original: 0000 */
    public <T> void b(T t) {
        this.f.a(((com.baidu.tts.m.a) t).a());
    }

    /* Access modifiers changed, original: 0000 */
    public void b(com.baidu.tts.b.b.a aVar) {
        this.a = aVar;
    }

    /* Access modifiers changed, original: 0000 */
    public int b(float f, float f2) {
        return this.f.a(f, f2);
    }

    /* Access modifiers changed, original: 0000 */
    public int b(int i) {
        return this.f.a(i);
    }
}
