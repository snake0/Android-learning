package com.baidu.tts.client.model;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.d.a;
import com.baidu.tts.d.b;
import com.baidu.tts.d.b.d;
import java.util.UUID;
import java.util.concurrent.Future;

public class DownloadHandler {
    public static final int DOWNLOAD_SUCCESS = 0;
    private b a;
    private Future<a> b;
    private TtsError c;
    private com.baidu.tts.d.b.a d = com.baidu.tts.d.b.a.a();
    private volatile boolean e = false;
    private com.baidu.tts.l.a f;
    private RecordData g = null;
    private String h = UUID.randomUUID().toString();

    public DownloadHandler(com.baidu.tts.l.a aVar) {
        this.f = aVar;
    }

    public String getModelId() {
        return this.a.a();
    }

    private OnDownloadListener a() {
        return this.a.c();
    }

    public void setCheckFuture(Future<a> future) {
        this.b = future;
    }

    public void setTtsError(TtsError ttsError) {
        this.c = ttsError;
    }

    public TtsError getTtsError() {
        return this.c;
    }

    public int getErrorCode() {
        return getErrorCode(this.c);
    }

    public int getErrorCode(TtsError ttsError) {
        return ttsError != null ? ttsError.getDetailCode() : 0;
    }

    public String getErrorMessage() {
        return getErrorMessage(this.c);
    }

    public String getErrorMessage(TtsError ttsError) {
        return ttsError != null ? ttsError.getDetailMessage() : null;
    }

    public b getDownloadParams() {
        return this.a;
    }

    public void setDownloadParams(b bVar) {
        this.a = bVar;
    }

    public void reset(b bVar) {
        setDownloadParams(bVar);
        reset();
    }

    public synchronized void reset() {
        LoggerProxy.d("DownloadHandler", "reset");
        this.e = false;
    }

    public synchronized void stop() {
        LoggerProxy.d("DownloadHandler", "stop");
        this.e = true;
        if (this.b != null) {
            this.b.cancel(true);
            this.b = null;
        }
        this.d.a(this);
        this.a.a(null);
    }

    public void updateStart(d dVar) {
        a(dVar.g());
    }

    public void updateProgress(d dVar) {
        a(dVar.g(), dVar.h(), dVar.c());
    }

    public void updateFinish(d dVar, TtsError ttsError) {
        updateFinish(dVar.g(), ttsError);
    }

    public void updateFinish(String str, TtsError ttsError) {
        setTtsError(ttsError);
        a(str, getErrorCode());
    }

    private void a(String str) {
        this.g = new RecordData(this.f);
        synchronized (this) {
            if (Statistics.isStatistics) {
                this.g.setStartInfo(this.h, str, System.currentTimeMillis() + "");
            }
        }
        OnDownloadListener a = a();
        if (a != null) {
            synchronized (this) {
                if (!this.e) {
                    a.onStart(str);
                }
            }
        }
    }

    private void a(String str, long j, long j2) {
        OnDownloadListener a = a();
        if (a != null) {
            synchronized (this) {
                if (!this.e) {
                    a.onProgress(str, j, j2);
                }
            }
        }
    }

    private void a(String str, int i) {
        if (Statistics.isStatistics) {
            this.g.setEndInfo(this.h, str, i, System.currentTimeMillis() + "");
        }
        OnDownloadListener a = a();
        if (a != null) {
            synchronized (this) {
                if (!this.e) {
                    a.onFinish(str, i);
                    this.a.a(null);
                }
            }
        }
        synchronized (this) {
            if (Statistics.isStatistics) {
                this.g.setEndInfo(this.h, str, i, System.currentTimeMillis() + "");
            }
            if (Statistics.isStatistics) {
                LoggerProxy.d("DownloadHandler", " statistics ret=" + new Statistics(this.f.d()).start());
            }
        }
    }
}
