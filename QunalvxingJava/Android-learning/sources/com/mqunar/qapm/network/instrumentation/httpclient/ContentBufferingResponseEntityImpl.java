package com.mqunar.qapm.network.instrumentation.httpclient;

import com.mqunar.qapm.network.instrumentation.io.CountingInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public class ContentBufferingResponseEntityImpl implements HttpEntity {
    final HttpEntity a;
    private CountingInputStream b;

    public ContentBufferingResponseEntityImpl(HttpEntity httpEntity) {
        if (httpEntity == null) {
            throw new IllegalArgumentException("Missing wrapped entity");
        }
        this.a = httpEntity;
    }

    public void consumeContent() {
        this.a.consumeContent();
    }

    public InputStream getContent() {
        if (this.b != null) {
            return this.b;
        }
        this.b = new CountingInputStream(this.a.getContent(), true);
        return this.b;
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
        this.a.writeTo(outputStream);
    }
}
