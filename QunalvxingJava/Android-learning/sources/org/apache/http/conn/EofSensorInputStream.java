package org.apache.http.conn;

import java.io.InputStream;

@Deprecated
public class EofSensorInputStream extends InputStream implements ConnectionReleaseTrigger {
    protected InputStream wrappedStream;

    public EofSensorInputStream(InputStream inputStream, EofSensorWatcher eofSensorWatcher) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public boolean isReadAllowed() {
        throw new RuntimeException("Stub!");
    }

    public int read() {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] bArr, int i, int i2) {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    public int available() {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void checkEOF(int i) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void checkClose() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void checkAbort() {
        throw new RuntimeException("Stub!");
    }

    public void releaseConnection() {
        throw new RuntimeException("Stub!");
    }

    public void abortConnection() {
        throw new RuntimeException("Stub!");
    }
}
