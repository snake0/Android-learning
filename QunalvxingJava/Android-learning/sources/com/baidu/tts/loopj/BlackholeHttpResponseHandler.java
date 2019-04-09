package com.baidu.tts.loopj;

import org.apache.http.Header;
import org.apache.http.HttpResponse;

public class BlackholeHttpResponseHandler extends AsyncHttpResponseHandler {
    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
    }

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
    }

    public void onProgress(long j, long j2) {
    }

    public void onCancel() {
    }

    public void onFinish() {
    }

    public void onPostProcessResponse(ResponseHandlerInterface responseHandlerInterface, HttpResponse httpResponse) {
    }

    public void onPreProcessResponse(ResponseHandlerInterface responseHandlerInterface, HttpResponse httpResponse) {
    }

    public void onRetry(int i) {
    }

    public void onStart() {
    }

    public void onUserException(Throwable th) {
    }
}
