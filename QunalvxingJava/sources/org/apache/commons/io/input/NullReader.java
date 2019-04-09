package org.apache.commons.io.input;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class NullReader extends Reader {
    private boolean eof;
    private long mark;
    private final boolean markSupported;
    private long position;
    private long readlimit;
    private final long size;
    private final boolean throwEofException;

    public NullReader(long j) {
        this(j, true, false);
    }

    public NullReader(long j, boolean z, boolean z2) {
        this.mark = -1;
        this.size = j;
        this.markSupported = z;
        this.throwEofException = z2;
    }

    public long getPosition() {
        return this.position;
    }

    public long getSize() {
        return this.size;
    }

    public void close() {
        this.eof = false;
        this.position = 0;
        this.mark = -1;
    }

    public synchronized void mark(int i) {
        if (this.markSupported) {
            this.mark = this.position;
            this.readlimit = (long) i;
        } else {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    public boolean markSupported() {
        return this.markSupported;
    }

    public int read() {
        if (this.eof) {
            throw new IOException("Read after end of file");
        } else if (this.position == this.size) {
            return doEndOfFile();
        } else {
            this.position++;
            return processChar();
        }
    }

    public int read(char[] cArr) {
        return read(cArr, 0, cArr.length);
    }

    public int read(char[] cArr, int i, int i2) {
        if (this.eof) {
            throw new IOException("Read after end of file");
        } else if (this.position == this.size) {
            return doEndOfFile();
        } else {
            this.position += (long) i2;
            if (this.position > this.size) {
                i2 -= (int) (this.position - this.size);
                this.position = this.size;
            }
            processChars(cArr, i, i2);
            return i2;
        }
    }

    public synchronized void reset() {
        if (!this.markSupported) {
            throw new UnsupportedOperationException("Mark not supported");
        } else if (this.mark < 0) {
            throw new IOException("No position has been marked");
        } else if (this.position > this.mark + this.readlimit) {
            throw new IOException("Marked position [" + this.mark + "] is no longer valid - passed the read limit [" + this.readlimit + "]");
        } else {
            this.position = this.mark;
            this.eof = false;
        }
    }

    public long skip(long j) {
        if (this.eof) {
            throw new IOException("Skip after end of file");
        } else if (this.position == this.size) {
            return (long) doEndOfFile();
        } else {
            this.position += j;
            if (this.position <= this.size) {
                return j;
            }
            j -= this.position - this.size;
            this.position = this.size;
            return j;
        }
    }

    /* Access modifiers changed, original: protected */
    public int processChar() {
        return 0;
    }

    /* Access modifiers changed, original: protected */
    public void processChars(char[] cArr, int i, int i2) {
    }

    private int doEndOfFile() {
        this.eof = true;
        if (!this.throwEofException) {
            return -1;
        }
        throw new EOFException();
    }
}
