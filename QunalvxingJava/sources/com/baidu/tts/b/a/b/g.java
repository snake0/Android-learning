package com.baidu.tts.b.a.b;

import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.RequestParams;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;

public abstract class g extends AsyncHttpResponseHandler {
    private String a;
    private HttpEntity b;

    public abstract void a(int i, Header[] headerArr, String str, HttpEntity httpEntity);

    public abstract void a(int i, Header[] headerArr, String str, HttpEntity httpEntity, Throwable th);

    public void sendResponseMessage(HttpResponse httpResponse) {
        if (!Thread.currentThread().isInterrupted()) {
            StatusLine statusLine = httpResponse.getStatusLine();
            this.b = httpResponse.getEntity();
            this.a = a(this.b);
            if (!Thread.currentThread().isInterrupted()) {
                if (statusLine.getStatusCode() >= 300) {
                    sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
                } else {
                    sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null);
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String a(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            if (RequestParams.APPLICATION_JSON.equals(contentType.getValue())) {
                return RequestParams.APPLICATION_JSON;
            }
        }
        return null;
    }

    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        a(i, headerArr, this.a, this.b);
    }

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        a(i, headerArr, this.a, this.b, th);
    }
}
