package com.baidu.tts.d;

import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.l.a;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class d {
    private c a = c.a();
    private ConcurrentMap<String, DownloadHandler> b = new ConcurrentHashMap();
    private a c;

    public void a() {
        this.a.g();
    }

    public void b() {
        c();
        this.a.e();
    }

    private void c() {
        for (DownloadHandler stop : this.b.values()) {
            stop.stop();
        }
    }

    public void a(a aVar) {
        this.c = aVar;
        this.a.a(aVar);
    }

    public DownloadHandler a(b bVar) {
        if (bVar != null && bVar.b()) {
            DownloadHandler a = a(bVar.a());
            if (a != null) {
                a.reset(bVar);
                return this.a.a(a);
            }
        }
        return null;
    }

    public synchronized DownloadHandler a(String str) {
        DownloadHandler downloadHandler;
        try {
            downloadHandler = (DownloadHandler) this.b.get(str);
            if (downloadHandler == null) {
                downloadHandler = new DownloadHandler(this.c);
                this.b.put(str, downloadHandler);
            }
        } catch (Exception e) {
            downloadHandler = null;
        }
        return downloadHandler;
    }
}
