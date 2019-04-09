package com.baidu.tts.b.a.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.b.a.b.b;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import java.util.ArrayList;
import java.util.List;

public abstract class a extends com.baidu.tts.j.a implements d {
    protected b a;
    protected List<com.baidu.tts.b.a.b> b = new ArrayList();
    protected volatile b c;

    public b a() {
        return this.c;
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    /* Access modifiers changed, original: protected */
    public TtsError g() {
        return this.c.b();
    }

    /* Access modifiers changed, original: protected */
    public void h() {
        this.c.a();
    }

    /* Access modifiers changed, original: protected */
    public void i() {
        this.c.c();
    }

    /* Access modifiers changed, original: protected */
    public void j() {
        this.c.d();
    }

    /* Access modifiers changed, original: protected */
    public void k() {
        this.c.e();
    }

    /* Access modifiers changed, original: protected */
    public void l() {
        this.c.f();
    }

    public void a(b bVar) {
        this.c.a(bVar);
    }

    public void a(com.baidu.tts.b.a.b bVar) {
        this.c.a(bVar);
    }

    public void a(Object obj) {
        this.c.a(obj);
    }

    public void a(i iVar) {
        this.c.a(iVar);
    }

    public int a(e eVar) {
        return this.c.a(eVar);
    }

    public int b(e eVar) {
        return this.c.b(eVar);
    }

    public int a(g gVar) {
        return this.c.a(gVar);
    }

    public int a(f fVar) {
        return this.c.a(fVar);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(h hVar) {
        if (C()) {
            if (hVar == null) {
                hVar = new h();
            }
            hVar.a(com.baidu.tts.f.e.SYN_START);
            if (this.b != null) {
                for (com.baidu.tts.b.a.b bVar : this.b) {
                    if (bVar != null) {
                        bVar.a(hVar);
                    }
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b(h hVar) {
        if (C()) {
            if (hVar == null) {
                hVar = new h();
            }
            hVar.a(com.baidu.tts.f.e.SYN_DATA);
            if (this.b != null) {
                for (com.baidu.tts.b.a.b bVar : this.b) {
                    if (bVar != null) {
                        bVar.c(hVar);
                    }
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void c(h hVar) {
        if (C()) {
            if (hVar == null) {
                hVar = new h();
            }
            hVar.a(com.baidu.tts.f.e.SYN_FINISH);
            if (this.b != null) {
                for (com.baidu.tts.b.a.b bVar : this.b) {
                    if (bVar != null) {
                        bVar.b(hVar);
                    }
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void d(h hVar) {
        if (hVar == null) {
            hVar = new h();
        }
        hVar.a(com.baidu.tts.f.e.SYN_STOP);
        if (this.b != null) {
            for (com.baidu.tts.b.a.b bVar : this.b) {
                if (bVar != null) {
                    bVar.e(hVar);
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void e(h hVar) {
        if (hVar == null) {
            hVar = new h();
        }
        hVar.a(com.baidu.tts.f.e.SYN_ERROR);
        if (this.b != null) {
            for (com.baidu.tts.b.a.b bVar : this.b) {
                if (bVar != null) {
                    bVar.d(hVar);
                }
            }
        }
    }
}
