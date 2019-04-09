package com.baidu.tts.d.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.d.a.b.a;
import java.util.concurrent.Future;

public class e {
    private Future<Void> a;
    private a b;

    public void a(Future<Void> future) {
        this.a = future;
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a() {
        LoggerProxy.d("EngineDownloadHandler", "before stop");
        try {
            LoggerProxy.d("EngineDownloadHandler", "stop fileId=" + this.b.c().a());
        } catch (Exception e) {
        }
        if (this.a != null) {
            LoggerProxy.d("EngineDownloadHandler", "unDone = " + this.a.cancel(true));
        }
        if (this.b != null) {
            this.b.b();
        }
        LoggerProxy.d("EngineDownloadHandler", "after stop");
    }
}
