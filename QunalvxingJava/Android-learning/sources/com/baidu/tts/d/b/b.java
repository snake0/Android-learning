package com.baidu.tts.d.b;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.d.a.e;
import com.baidu.tts.database.a;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.MD5;
import com.baidu.tts.tools.StringTool;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public class b {
    private String a;
    private long b;
    private String c;
    private volatile int d = 0;
    private volatile int e = 9;
    private String f;
    private e g;
    private CopyOnWriteArraySet<String> h = new CopyOnWriteArraySet();

    public b(String str) {
        this.a = str;
    }

    public void a(String str) {
        if (this.h != null) {
            this.h.add(str);
        }
    }

    public void b(String str) {
        boolean isSetEmpty = DataTool.isSetEmpty(this.h);
        LoggerProxy.d("FsFileInfoFlyweight", "unregisterObserver 1isEmpty=" + isSetEmpty);
        if (!isSetEmpty) {
            this.h.remove(str);
            isSetEmpty = DataTool.isSetEmpty(this.h);
            LoggerProxy.d("FsFileInfoFlyweight", "unregisterObserver 2isEmpty=" + isSetEmpty);
            if (isSetEmpty) {
                j();
            }
        }
    }

    private void j() {
        if (this.g != null) {
            LoggerProxy.d("FsFileInfoFlyweight", "unregisterObserver stop");
            this.g.a();
            this.g = null;
            if (this.d == 4 || this.d == 5) {
                this.d = 8;
                this.e = 8;
                a.a().b().a(this.a, this.e);
            }
        }
    }

    public long a() {
        return this.b;
    }

    public void a(e eVar) {
        this.g = eVar;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.f;
    }

    public void c(String str) {
        this.f = str;
    }

    public int d() {
        return this.d;
    }

    public boolean a(a aVar) {
        c b = e.a().b(this.f);
        if (this.d == 0) {
            a(b);
            b(aVar);
        } else if (this.d == 8 || this.d == 7) {
            a(b);
        }
        if (this.d == 7 && this.e != 7) {
            this.e = 7;
            aVar.a(this.a, this.e);
        }
        LoggerProxy.d("FsFileInfoFlyweight", "fileId=" + this.f + "--filestate=" + this.d + "--dbstate=" + this.e);
        if (this.d == 4 || this.d == 5 || this.d == 7) {
            return false;
        }
        return true;
    }

    public boolean e() {
        if (this.d == 7 || this.d == 4 || this.d == 5) {
            return false;
        }
        if (this.b >= Long.parseLong(e.a().b(this.f).b())) {
            return true;
        }
        return false;
    }

    public boolean f() {
        return new File(this.a).delete();
    }

    public int b(a aVar) {
        String mapValue = DataTool.getMapValue(aVar.c(this.a), g.STATE.b());
        if (StringTool.isEmpty(mapValue)) {
            this.e = 9;
        } else {
            this.e = Integer.parseInt(mapValue);
        }
        return this.e;
    }

    public int a(c cVar) {
        File file = new File(this.a);
        if (file.exists()) {
            this.b = file.length();
            if (this.b == Long.parseLong(cVar.b())) {
                this.c = MD5.getInstance().getBigFileMd5(file);
                if (cVar.c().equalsIgnoreCase(this.c)) {
                    this.d = 7;
                } else {
                    this.d = 3;
                }
            } else {
                this.d = 2;
            }
        } else {
            this.d = 1;
        }
        return this.d;
    }

    public void g() {
        LoggerProxy.d("FsFileInfoFlyweight", "queueForDownload fileId=" + this.f + "--filestate=" + this.d);
        this.d = 4;
    }

    public void h() {
        this.d = 5;
        this.e = 6;
        a.a().b().a(this.a, this.e);
    }

    public void a(long j, long j2) {
        a a = a.a();
        this.b = j;
        if (this.h != null) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                a.b((String) it.next()).a(this);
            }
        }
    }

    public void i() {
        LoggerProxy.d("FsFileInfoFlyweight", "onDownloadSuccess");
        this.d = 7;
        this.e = 7;
        a a = a.a();
        a.b().a(this.a, this.e);
        if (this.h != null) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                a.b(str).b(this);
                this.h.remove(str);
            }
        }
    }

    public void a(TtsError ttsError) {
        LoggerProxy.d("FsFileInfoFlyweight", "onDownloadFailure");
        this.d = 8;
        this.e = 8;
        a a = a.a();
        a.b().a(this.a, this.e);
        if (this.h != null) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                a.b(str).a(this, ttsError);
                this.h.remove(str);
            }
        }
    }
}
