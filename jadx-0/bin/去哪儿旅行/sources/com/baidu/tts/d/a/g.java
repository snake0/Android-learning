package com.baidu.tts.d.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.loopj.RangeFileAsyncHttpResponseHandler;
import java.io.File;
import org.apache.http.Header;

public class g extends RangeFileAsyncHttpResponseHandler {
    private c a;

    public g(File file, c cVar) {
        super(file);
        this.a = cVar;
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, File file) {
        String str = null;
        if (th != null) {
            Throwable cause = th.getCause();
            if (cause == null) {
                str = th.getMessage();
            } else {
                str = cause.getMessage();
            }
        }
        LoggerProxy.d("ModelFileResponseHandler", "onFailure statuscode=" + i + "--msg=" + str);
        this.a.a(c.a().a(n.MODEL_REQUEST_ERROR, i, "download failure", th));
    }

    public void onSuccess(int i, Header[] headerArr, File file) {
        LoggerProxy.d("ModelFileResponseHandler", "onSuccess");
        this.a.e();
    }

    public void onProgress(long j, long j2) {
        this.a.a(j, j2);
    }
}
