package org.apache.http.entity;

import java.io.InputStream;
import java.io.OutputStream;

@Deprecated
public class InputStreamEntity extends AbstractHttpEntity {
    public InputStreamEntity(InputStream inputStream, long j) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRepeatable() {
        throw new RuntimeException("Stub!");
    }

    public long getContentLength() {
        throw new RuntimeException("Stub!");
    }

    public InputStream getContent() {
        throw new RuntimeException("Stub!");
    }

    public void writeTo(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    public boolean isStreaming() {
        throw new RuntimeException("Stub!");
    }

    public void consumeContent() {
        throw new RuntimeException("Stub!");
    }
}
