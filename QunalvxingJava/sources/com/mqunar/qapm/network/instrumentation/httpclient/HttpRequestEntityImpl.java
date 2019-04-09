package com.mqunar.qapm.network.instrumentation.httpclient;

import com.mqunar.qapm.network.instrumentation.TransactionState;
import com.mqunar.qapm.network.instrumentation.TransactionStateUtil;
import com.mqunar.qapm.network.instrumentation.io.CountingInputStream;
import com.mqunar.qapm.network.instrumentation.io.CountingOutputStream;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteEvent;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteListener;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteListenerSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public class HttpRequestEntityImpl implements StreamCompleteListener, HttpEntity {
    private final HttpEntity a;
    private final TransactionState b;

    public HttpRequestEntityImpl(HttpEntity httpEntity, TransactionState transactionState) {
        this.a = httpEntity;
        this.b = transactionState;
    }

    public void consumeContent() {
        try {
            this.a.consumeContent();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public InputStream getContent() {
        try {
            if (this.b.isSent()) {
                return this.a.getContent();
            }
            CountingInputStream countingInputStream = new CountingInputStream(this.a.getContent());
            countingInputStream.addStreamCompleteListener(this);
            return countingInputStream;
        } catch (IOException e) {
            a(e);
            throw e;
        } catch (IllegalStateException e2) {
            a(e2);
            throw e2;
        }
    }

    public Header getContentEncoding() {
        return this.a.getContentEncoding();
    }

    public long getContentLength() {
        return this.a.getContentLength();
    }

    public Header getContentType() {
        return this.a.getContentType();
    }

    public boolean isChunked() {
        return this.a.isChunked();
    }

    public boolean isRepeatable() {
        return this.a.isRepeatable();
    }

    public boolean isStreaming() {
        return this.a.isStreaming();
    }

    public void writeTo(OutputStream outputStream) {
        try {
            if (this.b.isSent()) {
                this.a.writeTo(outputStream);
                return;
            }
            CountingOutputStream countingOutputStream = new CountingOutputStream(outputStream);
            this.a.writeTo(countingOutputStream);
            this.b.setBytesSent(countingOutputStream.getCount());
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
        ((StreamCompleteListenerSource) streamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        this.b.setBytesSent(streamCompleteEvent.getBytes());
    }

    public void streamError(StreamCompleteEvent streamCompleteEvent) {
        ((StreamCompleteListenerSource) streamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        a(streamCompleteEvent.getException(), Long.valueOf(streamCompleteEvent.getBytes()));
    }

    private void a(Exception exception) {
        a(exception, (Long) null);
    }

    private void a(Exception exception, Long l) {
        TransactionStateUtil.setErrorCodeFromException(this.b, exception);
        if (!this.b.isComplete()) {
            if (l != null) {
                this.b.setBytesSent(l.longValue());
            }
            TransactionStateUtil.end(this.b);
        }
    }
}
