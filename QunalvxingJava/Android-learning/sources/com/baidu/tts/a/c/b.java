package com.baidu.tts.a.c;

import android.util.Log;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.b.a.a.d;
import com.baidu.tts.b.b.a;
import com.baidu.tts.b.b.a.c;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;

public class b implements a {
    private d a;
    private c b;
    private TtsListener c;
    private com.baidu.tts.b.a.b d;
    private a e;
    private com.baidu.tts.b.a.b f;

    public b(d dVar, c cVar, j jVar) {
        this.a = dVar;
        this.b = cVar;
    }

    public TtsError b() {
        TtsError b = this.a.b();
        this.b.b();
        g();
        return b;
    }

    public void c() {
        this.a.c();
        this.b.c();
    }

    public void d() {
        this.a.d();
        this.b.d();
    }

    public void e() {
        LoggerProxy.d("TtsAdapter", "before engine stop");
        this.a.e();
        LoggerProxy.d("TtsAdapter", "after engine stop");
        this.b.e();
        LoggerProxy.d("TtsAdapter", "after play stop");
    }

    public void f() {
        LoggerProxy.d("TtsAdapter", "before engine destroy");
        this.a.f();
        LoggerProxy.d("TtsAdapter", "after engine destroy");
        this.b.f();
        LoggerProxy.d("TtsAdapter", "after player destroy");
    }

    public void a(TtsListener ttsListener) {
        this.c = ttsListener;
        a(this.a);
        a(this.b);
    }

    public void a(i iVar) {
        this.a.a(iVar);
    }

    public void b(i iVar) {
        this.b.o();
        this.a.a(iVar);
    }

    /* Access modifiers changed, original: protected */
    public void a(d dVar) {
        if (this.d == null) {
            this.d = new com.baidu.tts.b.a.b() {
                public void a(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onSynthesizeStart(hVar);
                    }
                }

                public void b(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onSynthesizeFinished(hVar);
                    }
                }

                public void c(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onSynthesizeDataArrived(hVar);
                    }
                }

                public void d(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onError(hVar);
                    }
                }

                public void e(h hVar) {
                    LoggerProxy.d("TtsAdapter", "onSynthesizeStop");
                }
            };
        }
        dVar.a(this.d);
    }

    /* Access modifiers changed, original: protected */
    public void a(c cVar) {
        if (this.e == null) {
            this.e = new a() {
                public void a(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onPlayStart(hVar);
                    }
                }

                public void b(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onPlayProgressUpdate(hVar);
                    }
                }

                public void c(h hVar) {
                    if (b.this.c != null) {
                        try {
                            b.this.c.onPlayFinished(hVar);
                        } catch (Exception e) {
                            Log.e("TtsAdapter", "onPlayFinished exception e=" + e.toString());
                        }
                    }
                }
            };
        }
        cVar.a(this.e);
    }

    /* Access modifiers changed, original: protected */
    public void g() {
        this.f = new com.baidu.tts.b.a.b() {
            public void a(h hVar) {
                if (b.this.a(hVar)) {
                    b.this.b.a(hVar);
                }
            }

            public void b(h hVar) {
                if (b.this.a(hVar)) {
                    b.this.b.a(hVar);
                }
            }

            public void c(h hVar) {
                if (b.this.a(hVar)) {
                    b.this.b.a(hVar);
                }
            }

            public void d(h hVar) {
            }

            public void e(h hVar) {
            }
        };
        this.a.a(this.f);
    }

    private boolean a(h hVar) {
        i e = hVar.e();
        if (e == null) {
            return false;
        }
        return com.baidu.tts.f.i.a(e.g());
    }

    public int a(e eVar) {
        return this.a.a(eVar);
    }

    public int b(e eVar) {
        return this.a.b(eVar);
    }

    public int a(g gVar) {
        return this.a.a(gVar);
    }

    public int a(f fVar) {
        return this.a.a(fVar);
    }

    public int a(float f, float f2) {
        return this.b.a(f, f2);
    }

    public c a() {
        return this.b;
    }
}
