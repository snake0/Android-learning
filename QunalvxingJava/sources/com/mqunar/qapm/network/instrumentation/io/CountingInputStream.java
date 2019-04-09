package com.mqunar.qapm.network.instrumentation.io;

import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class CountingInputStream extends InputStream implements StreamCompleteListenerSource {
    public static final int DEFAULT_RESPONSE_BODY_LIMIT = 2048;
    private static final AgentLog f = AgentLogManager.getAgentLog();
    private final InputStream a;
    private long b = 0;
    private final StreamCompleteListenerManager c = new StreamCompleteListenerManager();
    private final ByteBuffer d;
    private boolean e = false;

    public CountingInputStream(InputStream inputStream) {
        this.a = inputStream;
        if (this.e) {
            this.d = ByteBuffer.allocate(2048);
            fillBuffer();
            return;
        }
        this.d = null;
    }

    public CountingInputStream(InputStream inputStream, boolean z) {
        this.a = inputStream;
        this.e = z;
        if (z) {
            this.d = ByteBuffer.allocate(2048);
            fillBuffer();
            return;
        }
        this.d = null;
    }

    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.c.addStreamCompleteListener(streamCompleteListener);
    }

    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.c.removeStreamCompleteListener(streamCompleteListener);
    }

    public int read() {
        int a;
        if (this.e) {
            ByteBuffer byteBuffer = this.d;
            synchronized (this.d) {
                if (a(1)) {
                    a = a();
                    if (a >= 0) {
                        this.b++;
                    }
                }
            }
            return a;
        }
        try {
            a = this.a.read();
            if (a >= 0) {
                this.b++;
            } else {
                c();
            }
            return a;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public int read(byte[] bArr) {
        int i = 0;
        int length = bArr.length;
        if (this.e) {
            ByteBuffer byteBuffer = this.d;
            synchronized (this.d) {
                if (a((long) length)) {
                    length = a(bArr);
                    if (length >= 0) {
                        this.b += (long) length;
                        return length;
                    }
                    throw new IOException("readBufferBytes failed");
                }
                int remaining = this.d.remaining();
                if (remaining > 0) {
                    i = a(bArr, 0, remaining);
                    if (i < 0) {
                        throw new IOException("partial read from buffer failed");
                    }
                    length -= i;
                    this.b += (long) i;
                }
            }
        }
        try {
            length = this.a.read(bArr, i, length);
            if (length >= 0) {
                this.b += (long) length;
                return length + i;
            } else if (i > 0) {
                return i;
            } else {
                c();
                return length;
            }
        } catch (IOException e) {
            f.error(e.toString());
            System.out.println("NOTIFY STREAM ERROR: " + e);
            e.printStackTrace();
            a(e);
            throw e;
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        int a;
        int i3 = 0;
        if (this.e) {
            ByteBuffer byteBuffer = this.d;
            synchronized (this.d) {
                if (a((long) i2)) {
                    a = a(bArr, i, i2);
                    if (a >= 0) {
                        this.b += (long) a;
                        return a;
                    }
                    throw new IOException("readBufferBytes failed");
                }
                a = this.d.remaining();
                if (a > 0) {
                    i3 = a(bArr, i, a);
                    if (i3 < 0) {
                        throw new IOException("partial read from buffer failed");
                    }
                    i2 -= i3;
                    this.b += (long) i3;
                }
            }
        }
        try {
            a = this.a.read(bArr, i + i3, i2);
            if (a >= 0) {
                this.b += (long) a;
                return a + i3;
            } else if (i3 > 0) {
                return i3;
            } else {
                c();
                return a;
            }
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public long skip(long j) {
        if (this.e) {
            ByteBuffer byteBuffer = this.d;
            synchronized (this.d) {
                if (a(j)) {
                    this.d.position((int) j);
                    this.b += j;
                    return j;
                }
                j -= (long) this.d.remaining();
                if (j <= 0) {
                    throw new IOException("partial read from buffer (skip) failed");
                }
                this.d.position(this.d.remaining());
            }
        }
        try {
            j = this.a.skip(j);
            this.b += j;
            return j;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public int available() {
        int i = 0;
        if (this.e) {
            i = this.d.remaining();
        }
        try {
            return i + this.a.available();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void close() {
        try {
            this.a.close();
            c();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void mark(int i) {
        if (markSupported()) {
            this.a.mark(i);
        }
    }

    public boolean markSupported() {
        return this.a.markSupported();
    }

    public void reset() {
        if (markSupported()) {
            try {
                this.a.reset();
            } catch (IOException e) {
                a(e);
                throw e;
            }
        }
    }

    private int a() {
        return b() ? -1 : this.d.get();
    }

    private int a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private int a(byte[] bArr, int i, int i2) {
        if (b()) {
            return -1;
        }
        int remaining = this.d.remaining();
        this.d.get(bArr, i, i2);
        return remaining - this.d.remaining();
    }

    private boolean a(long j) {
        return ((long) this.d.remaining()) >= j;
    }

    private boolean b() {
        return !this.d.hasRemaining();
    }

    public void fillBuffer() {
        if (this.d != null && this.d.hasArray()) {
            ByteBuffer byteBuffer = this.d;
            synchronized (this.d) {
                int read;
                try {
                    read = this.a.read(this.d.array(), 0, this.d.capacity());
                } catch (IOException e) {
                    f.error(e.toString());
                    read = 0;
                }
                if (read <= 0) {
                    this.d.limit(0);
                } else if (read < this.d.capacity()) {
                    this.d.limit(read);
                }
            }
        }
    }

    private void c() {
        if (!this.c.isComplete()) {
            this.c.notifyStreamComplete(new StreamCompleteEvent(this, this.b));
        }
    }

    private void a(Exception exception) {
        if (!this.c.isComplete()) {
            this.c.notifyStreamError(new StreamCompleteEvent(this, this.b, exception));
        }
    }

    public void setBufferingEnabled(boolean z) {
        this.e = z;
    }

    public String getBufferAsString() {
        if (this.d == null) {
            return "";
        }
        String str;
        ByteBuffer byteBuffer = this.d;
        synchronized (this.d) {
            byte[] bArr = new byte[this.d.limit()];
            for (int i = 0; i < this.d.limit(); i++) {
                bArr[i] = this.d.get(i);
            }
            str = new String(bArr);
        }
        return str;
    }
}
