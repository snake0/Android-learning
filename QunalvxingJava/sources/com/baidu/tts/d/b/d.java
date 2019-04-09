package com.baidu.tts.d.b;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.database.a;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public class d {
    private String a;
    private String b;
    private String c;
    private long d = 0;
    private a e = a.a();
    private CopyOnWriteArraySet<DownloadHandler> f = new CopyOnWriteArraySet();

    public d(String str) {
        this.a = str;
    }

    public void a(DownloadHandler downloadHandler) {
        if (this.f != null) {
            this.f.add(downloadHandler);
        }
    }

    public void b(DownloadHandler downloadHandler) {
        boolean isSetEmpty = DataTool.isSetEmpty(this.f);
        LoggerProxy.d("ModelFlyweight", "unregisterListener 1isEmpty=" + isSetEmpty);
        if (!isSetEmpty) {
            this.f.remove(downloadHandler);
            isSetEmpty = DataTool.isSetEmpty(this.f);
            LoggerProxy.d("ModelFlyweight", "unregisterListener 2isEmpty=" + isSetEmpty);
            if (isSetEmpty) {
                j();
                return;
            }
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                LoggerProxy.d("ModelFlyweight", "unregisterListener item=" + ((DownloadHandler) it.next()));
            }
        }
    }

    private void j() {
        this.e.a(this.b, this.a);
        this.e.a(this.c, this.a);
    }

    public void a() {
        this.f.clear();
        j();
    }

    public Set<String> b() {
        HashSet hashSet = new HashSet();
        e a = e.a();
        c b = a.b(this.b);
        c b2 = a.b(this.c);
        String a2 = b.a();
        String a3 = b2.a();
        hashSet.add(a2);
        hashSet.add(a3);
        return hashSet;
    }

    public long c() {
        d();
        return this.d;
    }

    public void d() {
        if (this.d == 0) {
            e();
        }
    }

    public void e() {
        e a = e.a();
        String b = a.b(this.b).b();
        String b2 = a.b(this.c).b();
        this.d = Long.valueOf(Long.parseLong(b)).longValue() + Long.valueOf(Long.parseLong(b2)).longValue();
    }

    public boolean a(a aVar) {
        Map e = aVar.e(this.a);
        if (e == null || e.isEmpty()) {
            return false;
        }
        this.b = DataTool.getMapValue(e, g.TEXT_DATA_ID.b());
        this.c = DataTool.getMapValue(e, g.SPEECH_DATA_ID.b());
        boolean isEmpty = StringTool.isEmpty(this.b);
        boolean isEmpty2 = StringTool.isEmpty(this.c);
        if (!isEmpty && !isEmpty2) {
            return true;
        }
        aVar.a(this.a);
        return false;
    }

    public void a(ModelBags modelBags, a aVar) {
        aVar.a(modelBags);
        a(aVar);
    }

    public Set<String> f() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.b);
        hashSet.add(this.c);
        return hashSet;
    }

    public String g() {
        return this.a;
    }

    public long h() {
        return this.e.d(this.b) + this.e.d(this.c);
    }

    public void c(DownloadHandler downloadHandler) {
        a(downloadHandler);
        downloadHandler.updateStart(this);
    }

    public void a(DownloadHandler downloadHandler, TtsError ttsError) {
        downloadHandler.updateFinish(this, ttsError);
        b(downloadHandler);
    }

    public void a(b bVar) {
        if (this.f != null) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((DownloadHandler) it.next()).updateProgress(this);
            }
        }
    }

    public boolean i() {
        int e = this.e.e(this.b);
        int e2 = this.e.e(this.c);
        if (e == 7 && e2 == 7) {
            return true;
        }
        return false;
    }

    public void b(b bVar) {
        boolean i = i();
        LoggerProxy.d("ModelFlyweight", "onFileDownloadSuccess isAllFileDownloadSuccess=" + i);
        if (i && this.f != null) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                a((DownloadHandler) it.next(), null);
            }
        }
    }

    public void a(b bVar, TtsError ttsError) {
        LoggerProxy.d("ModelFlyweight", "onFileDownloadFailure");
        if (this.f != null) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                a((DownloadHandler) it.next(), ttsError);
            }
        }
    }
}
