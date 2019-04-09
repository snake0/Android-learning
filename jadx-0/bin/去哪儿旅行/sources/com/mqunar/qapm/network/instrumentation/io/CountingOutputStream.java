package com.mqunar.qapm.network.instrumentation.io;

import java.io.IOException;
import java.io.OutputStream;

public final class CountingOutputStream extends OutputStream implements StreamCompleteListenerSource {
    private final OutputStream a;
    private long b = 0;
    private final StreamCompleteListenerManager c = new StreamCompleteListenerManager();

    public CountingOutputStream(OutputStream outputStream) {
        this.a = outputStream;
    }

    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.c.addStreamCompleteListener(streamCompleteListener);
    }

    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.c.removeStreamCompleteListener(streamCompleteListener);
    }

    public long getCount() {
        return this.b;
    }

    public void write(int i) {
        try {
            this.a.write(i);
            this.b++;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void write(byte[] bArr) {
        try {
            this.a.write(bArr);
            this.b += (long) bArr.length;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void write(byte[] bArr, int i, int i2) {
        try {
            this.a.write(bArr, i, i2);
            this.b += (long) i2;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void flush() {
        try {
            this.a.flush();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void close() {
        try {
            this.a.close();
            a();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    private void a() {
        if (!this.c.isComplete()) {
            this.c.notifyStreamComplete(new StreamCompleteEvent(this, this.b));
        }
    }

    private void a(Exception exception) {
        if (!this.c.isComplete()) {
            this.c.notifyStreamError(new StreamCompleteEvent(this, this.b, exception));
        }
    }
}
