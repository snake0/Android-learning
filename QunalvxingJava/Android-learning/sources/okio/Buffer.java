package okio;

import android.support.v4.media.TransportMediator;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class Buffer implements Cloneable, BufferedSink, BufferedSource {
    private static final byte[] DIGITS = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};
    static final int REPLACEMENT_CHARACTER = 65533;
    @Nullable
    Segment head;
    long size;

    public long size() {
        return this.size;
    }

    public Buffer buffer() {
        return this;
    }

    public OutputStream outputStream() {
        return new OutputStream() {
            public void write(int i) {
                Buffer.this.writeByte((byte) i);
            }

            public void write(byte[] bArr, int i, int i2) {
                Buffer.this.write(bArr, i, i2);
            }

            public void flush() {
            }

            public void close() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }
        };
    }

    public Buffer emitCompleteSegments() {
        return this;
    }

    public BufferedSink emit() {
        return this;
    }

    public boolean exhausted() {
        return this.size == 0;
    }

    public void require(long j) {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    public boolean request(long j) {
        return this.size >= j;
    }

    public InputStream inputStream() {
        return new InputStream() {
            public int read() {
                if (Buffer.this.size > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            public int read(byte[] bArr, int i, int i2) {
                return Buffer.this.read(bArr, i, i2);
            }

            public int available() {
                return (int) Math.min(Buffer.this.size, 2147483647L);
            }

            public void close() {
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }
        };
    }

    public Buffer copyTo(OutputStream outputStream) {
        return copyTo(outputStream, 0, this.size);
    }

    public Buffer copyTo(OutputStream outputStream, long j, long j2) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, j, j2);
        if (j2 != 0) {
            Segment segment = this.head;
            while (j >= ((long) (segment.limit - segment.pos))) {
                j -= (long) (segment.limit - segment.pos);
                segment = segment.next;
            }
            while (j2 > 0) {
                int i = (int) (((long) segment.pos) + j);
                int min = (int) Math.min((long) (segment.limit - i), j2);
                outputStream.write(segment.data, i, min);
                j2 -= (long) min;
                segment = segment.next;
                j = 0;
            }
        }
        return this;
    }

    public Buffer copyTo(Buffer buffer, long j, long j2) {
        if (buffer == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, j, j2);
        if (j2 != 0) {
            buffer.size += j2;
            Segment segment = this.head;
            while (j >= ((long) (segment.limit - segment.pos))) {
                j -= (long) (segment.limit - segment.pos);
                segment = segment.next;
            }
            while (j2 > 0) {
                Segment segment2 = new Segment(segment);
                segment2.pos = (int) (((long) segment2.pos) + j);
                segment2.limit = Math.min(segment2.pos + ((int) j2), segment2.limit);
                if (buffer.head == null) {
                    segment2.prev = segment2;
                    segment2.next = segment2;
                    buffer.head = segment2;
                } else {
                    buffer.head.prev.push(segment2);
                }
                j2 -= (long) (segment2.limit - segment2.pos);
                segment = segment.next;
                j = 0;
            }
        }
        return this;
    }

    public Buffer writeTo(OutputStream outputStream) {
        return writeTo(outputStream, this.size);
    }

    public Buffer writeTo(OutputStream outputStream, long j) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, 0, j);
        Segment segment = this.head;
        while (j > 0) {
            Segment pop;
            int min = (int) Math.min(j, (long) (segment.limit - segment.pos));
            outputStream.write(segment.data, segment.pos, min);
            segment.pos += min;
            this.size -= (long) min;
            j -= (long) min;
            if (segment.pos == segment.limit) {
                pop = segment.pop();
                this.head = pop;
                SegmentPool.recycle(segment);
            } else {
                pop = segment;
            }
            segment = pop;
        }
        return this;
    }

    public Buffer readFrom(InputStream inputStream) {
        readFrom(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    public Buffer readFrom(InputStream inputStream, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        readFrom(inputStream, j, false);
        return this;
    }

    private void readFrom(InputStream inputStream, long j, boolean z) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j > 0 || z) {
                Segment writableSegment = writableSegment(1);
                int read = inputStream.read(writableSegment.data, writableSegment.limit, (int) Math.min(j, (long) (8192 - writableSegment.limit)));
                if (read != -1) {
                    writableSegment.limit += read;
                    this.size += (long) read;
                    j -= (long) read;
                } else if (!z) {
                    throw new EOFException();
                } else {
                    return;
                }
            }
            return;
        }
    }

    public long completeSegmentByteCount() {
        long j = this.size;
        if (j == 0) {
            return 0;
        }
        Segment segment = this.head.prev;
        if (segment.limit >= 8192 || !segment.owner) {
            return j;
        }
        return j - ((long) (segment.limit - segment.pos));
    }

    public byte readByte() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        this.size--;
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    public byte getByte(long j) {
        Util.checkOffsetAndCount(this.size, j, 1);
        Segment segment = this.head;
        while (true) {
            int i = segment.limit - segment.pos;
            if (j < ((long) i)) {
                return segment.data[segment.pos + ((int) j)];
            }
            j -= (long) i;
            segment = segment.next;
        }
    }

    public short readShort() {
        if (this.size < 2) {
            throw new IllegalStateException("size < 2: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.size -= 2;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) i;
    }

    public int readInt() {
        if (this.size < 4) {
            throw new IllegalStateException("size < 4: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return ((((readByte() & 255) << 24) | ((readByte() & 255) << 16)) | ((readByte() & 255) << 8)) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        i3 = i4 + 1;
        i |= (bArr[i4] & 255) << 8;
        i4 = i3 + 1;
        i |= bArr[i3] & 255;
        this.size -= 4;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return i;
        }
        segment.pos = i4;
        return i;
    }

    public long readLong() {
        if (this.size < 8) {
            throw new IllegalStateException("size < 8: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (((long) readInt()) & 4294967295L);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        i = i3 + 1;
        int i4 = i + 1;
        i = i4 + 1;
        long j = ((((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i3]) & 255) << 48)) | ((((long) bArr[i]) & 255) << 40)) | ((((long) bArr[i4]) & 255) << 32);
        i4 = i + 1;
        i = i4 + 1;
        j = (j | ((((long) bArr[i]) & 255) << 24)) | ((((long) bArr[i4]) & 255) << 16);
        i4 = i + 1;
        int i5 = i4 + 1;
        long j2 = (((long) bArr[i4]) & 255) | (j | ((((long) bArr[i]) & 255) << 8));
        this.size -= 8;
        if (i5 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return j2;
        }
        segment.pos = i5;
        return j2;
    }

    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00c9 A:{SYNTHETIC, EDGE_INSN: B:41:0x00c9->B:37:0x00c9 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c3  */
    public long readDecimalLong() {
        /*
        r19 = this;
        r0 = r19;
        r2 = r0.size;
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0012;
    L_0x000a:
        r2 = new java.lang.IllegalStateException;
        r3 = "size == 0";
        r2.<init>(r3);
        throw r2;
    L_0x0012:
        r7 = 0;
        r6 = 0;
        r5 = 0;
        r4 = 0;
        r10 = -922337203685477580; // 0xf333333333333334 float:4.1723254E-8 double:-8.390303882365713E246;
        r2 = -7;
    L_0x001e:
        r0 = r19;
        r12 = r0.head;
        r13 = r12.data;
        r9 = r12.pos;
        r14 = r12.limit;
    L_0x0028:
        if (r9 >= r14) goto L_0x00b4;
    L_0x002a:
        r15 = r13[r9];
        r16 = 48;
        r0 = r16;
        if (r15 < r0) goto L_0x0087;
    L_0x0032:
        r16 = 57;
        r0 = r16;
        if (r15 > r0) goto L_0x0087;
    L_0x0038:
        r16 = 48 - r15;
        r17 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1));
        if (r17 < 0) goto L_0x004b;
    L_0x003e:
        r17 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1));
        if (r17 != 0) goto L_0x007a;
    L_0x0042:
        r0 = r16;
        r0 = (long) r0;
        r17 = r0;
        r17 = (r17 > r2 ? 1 : (r17 == r2 ? 0 : -1));
        if (r17 >= 0) goto L_0x007a;
    L_0x004b:
        r2 = new okio.Buffer;
        r2.<init>();
        r2 = r2.writeDecimalLong(r7);
        r2 = r2.writeByte(r15);
        if (r5 != 0) goto L_0x005d;
    L_0x005a:
        r2.readByte();
    L_0x005d:
        r3 = new java.lang.NumberFormatException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Number too large: ";
        r4 = r4.append(r5);
        r2 = r2.readUtf8();
        r2 = r4.append(r2);
        r2 = r2.toString();
        r3.<init>(r2);
        throw r3;
    L_0x007a:
        r17 = 10;
        r7 = r7 * r17;
        r0 = r16;
        r15 = (long) r0;
        r7 = r7 + r15;
    L_0x0082:
        r9 = r9 + 1;
        r6 = r6 + 1;
        goto L_0x0028;
    L_0x0087:
        r16 = 45;
        r0 = r16;
        if (r15 != r0) goto L_0x0094;
    L_0x008d:
        if (r6 != 0) goto L_0x0094;
    L_0x008f:
        r5 = 1;
        r15 = 1;
        r2 = r2 - r15;
        goto L_0x0082;
    L_0x0094:
        if (r6 != 0) goto L_0x00b3;
    L_0x0096:
        r2 = new java.lang.NumberFormatException;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Expected leading [0-9] or '-' character but was 0x";
        r3 = r3.append(r4);
        r4 = java.lang.Integer.toHexString(r15);
        r3 = r3.append(r4);
        r3 = r3.toString();
        r2.<init>(r3);
        throw r2;
    L_0x00b3:
        r4 = 1;
    L_0x00b4:
        if (r9 != r14) goto L_0x00d6;
    L_0x00b6:
        r9 = r12.pop();
        r0 = r19;
        r0.head = r9;
        okio.SegmentPool.recycle(r12);
    L_0x00c1:
        if (r4 != 0) goto L_0x00c9;
    L_0x00c3:
        r0 = r19;
        r9 = r0.head;
        if (r9 != 0) goto L_0x001e;
    L_0x00c9:
        r0 = r19;
        r2 = r0.size;
        r9 = (long) r6;
        r2 = r2 - r9;
        r0 = r19;
        r0.size = r2;
        if (r5 == 0) goto L_0x00d9;
    L_0x00d5:
        return r7;
    L_0x00d6:
        r12.pos = r9;
        goto L_0x00c1;
    L_0x00d9:
        r7 = -r7;
        goto L_0x00d5;
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a6 A:{SYNTHETIC, EDGE_INSN: B:39:0x00a6->B:35:0x00a6 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00a2  */
    public long readHexadecimalUnsignedLong() {
        /*
        r15 = this;
        r0 = 0;
        r4 = 0;
        r1 = r15.size;
        r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1));
        if (r1 != 0) goto L_0x0011;
    L_0x0009:
        r0 = new java.lang.IllegalStateException;
        r1 = "size == 0";
        r0.<init>(r1);
        throw r0;
    L_0x0011:
        r1 = r0;
        r2 = r4;
    L_0x0013:
        r10 = r15.head;
        r11 = r10.data;
        r6 = r10.pos;
        r12 = r10.limit;
        r7 = r6;
    L_0x001c:
        if (r7 >= r12) goto L_0x0095;
    L_0x001e:
        r8 = r11[r7];
        r6 = 48;
        if (r8 < r6) goto L_0x005b;
    L_0x0024:
        r6 = 57;
        if (r8 > r6) goto L_0x005b;
    L_0x0028:
        r6 = r8 + -48;
    L_0x002a:
        r13 = -1152921504606846976; // 0xf000000000000000 float:0.0 double:-3.105036184601418E231;
        r13 = r13 & r2;
        r9 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1));
        if (r9 == 0) goto L_0x00ae;
    L_0x0031:
        r0 = new okio.Buffer;
        r0.<init>();
        r0 = r0.writeHexadecimalUnsignedLong(r2);
        r0 = r0.writeByte(r8);
        r1 = new java.lang.NumberFormatException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Number too large: ";
        r2 = r2.append(r3);
        r0 = r0.readUtf8();
        r0 = r2.append(r0);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
    L_0x005b:
        r6 = 97;
        if (r8 < r6) goto L_0x0068;
    L_0x005f:
        r6 = 102; // 0x66 float:1.43E-43 double:5.04E-322;
        if (r8 > r6) goto L_0x0068;
    L_0x0063:
        r6 = r8 + -97;
        r6 = r6 + 10;
        goto L_0x002a;
    L_0x0068:
        r6 = 65;
        if (r8 < r6) goto L_0x0075;
    L_0x006c:
        r6 = 70;
        if (r8 > r6) goto L_0x0075;
    L_0x0070:
        r6 = r8 + -65;
        r6 = r6 + 10;
        goto L_0x002a;
    L_0x0075:
        if (r1 != 0) goto L_0x0094;
    L_0x0077:
        r0 = new java.lang.NumberFormatException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Expected leading [0-9a-fA-F] character but was 0x";
        r1 = r1.append(r2);
        r2 = java.lang.Integer.toHexString(r8);
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0094:
        r0 = 1;
    L_0x0095:
        if (r7 != r12) goto L_0x00ba;
    L_0x0097:
        r6 = r10.pop();
        r15.head = r6;
        okio.SegmentPool.recycle(r10);
    L_0x00a0:
        if (r0 != 0) goto L_0x00a6;
    L_0x00a2:
        r6 = r15.head;
        if (r6 != 0) goto L_0x0013;
    L_0x00a6:
        r4 = r15.size;
        r0 = (long) r1;
        r0 = r4 - r0;
        r15.size = r0;
        return r2;
    L_0x00ae:
        r8 = 4;
        r2 = r2 << r8;
        r8 = (long) r6;
        r8 = r8 | r2;
        r2 = r7 + 1;
        r1 = r1 + 1;
        r7 = r2;
        r2 = r8;
        goto L_0x001c;
    L_0x00ba:
        r10.pos = r7;
        goto L_0x00a0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    public ByteString readByteString(long j) {
        return new ByteString(readByteArray(j));
    }

    public int select(Options options) {
        Segment segment = this.head;
        if (segment == null) {
            return options.indexOf(ByteString.EMPTY);
        }
        ByteString[] byteStringArr = options.byteStrings;
        int length = byteStringArr.length;
        for (int i = 0; i < length; i++) {
            ByteString byteString = byteStringArr[i];
            if (this.size >= ((long) byteString.size())) {
                if (rangeEquals(segment, segment.pos, byteString, 0, byteString.size())) {
                    try {
                        skip((long) byteString.size());
                        return i;
                    } catch (EOFException e) {
                        throw new AssertionError(e);
                    }
                }
            }
        }
        return -1;
    }

    /* Access modifiers changed, original: 0000 */
    public int selectPrefix(Options options) {
        Segment segment = this.head;
        ByteString[] byteStringArr = options.byteStrings;
        int length = byteStringArr.length;
        int i = 0;
        while (i < length) {
            ByteString byteString = byteStringArr[i];
            int min = (int) Math.min(this.size, (long) byteString.size());
            if (min != 0) {
                if (!rangeEquals(segment, segment.pos, byteString, 0, min)) {
                    i++;
                }
            }
            return i;
        }
        return -1;
    }

    public void readFully(Buffer buffer, long j) {
        if (this.size < j) {
            buffer.write(this, this.size);
            throw new EOFException();
        } else {
            buffer.write(this, j);
        }
    }

    public long readAll(Sink sink) {
        long j = this.size;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    public String readUtf8() {
        try {
            return readString(this.size, Util.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String readUtf8(long j) {
        return readString(j, Util.UTF_8);
    }

    public String readString(Charset charset) {
        try {
            return readString(this.size, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String readString(long j, Charset charset) {
        Util.checkOffsetAndCount(this.size, 0, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return "";
        } else {
            Segment segment = this.head;
            if (((long) segment.pos) + j > ((long) segment.limit)) {
                return new String(readByteArray(j), charset);
            }
            String str = new String(segment.data, segment.pos, (int) j, charset);
            segment.pos = (int) (((long) segment.pos) + j);
            this.size -= j;
            if (segment.pos != segment.limit) {
                return str;
            }
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return str;
        }
    }

    @Nullable
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            return this.size != 0 ? readUtf8(this.size) : null;
        } else {
            return readUtf8Line(indexOf);
        }
    }

    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    public String readUtf8LineStrict(long j) {
        long j2 = Long.MAX_VALUE;
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        if (j != Long.MAX_VALUE) {
            j2 = j + 1;
        }
        long indexOf = indexOf((byte) 10, 0, j2);
        if (indexOf != -1) {
            return readUtf8Line(indexOf);
        }
        if (j2 < size() && getByte(j2 - 1) == (byte) 13 && getByte(j2) == (byte) 10) {
            return readUtf8Line(j2);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + buffer.readByteString().hex() + 8230);
    }

    /* Access modifiers changed, original: 0000 */
    public String readUtf8Line(long j) {
        String readUtf8;
        if (j <= 0 || getByte(j - 1) != (byte) 13) {
            readUtf8 = readUtf8(j);
            skip(1);
            return readUtf8;
        }
        readUtf8 = readUtf8(j - 1);
        skip(2);
        return readUtf8;
    }

    public int readUtf8CodePoint() {
        if (this.size == 0) {
            throw new EOFException();
        }
        int i;
        int i2;
        int i3;
        byte b = getByte(0);
        if ((b & 128) == 0) {
            i = 0;
            i2 = b & TransportMediator.KEYCODE_MEDIA_PAUSE;
            i3 = 1;
        } else if ((b & 224) == 192) {
            i2 = b & 31;
            i3 = 2;
            i = 128;
        } else if ((b & 240) == 224) {
            i2 = b & 15;
            i3 = 3;
            i = 2048;
        } else if ((b & 248) == 240) {
            i2 = b & 7;
            i3 = 4;
            i = 65536;
        } else {
            skip(1);
            return REPLACEMENT_CHARACTER;
        }
        if (this.size < ((long) i3)) {
            throw new EOFException("size < " + i3 + ": " + this.size + " (to read code point prefixed 0x" + Integer.toHexString(b) + ")");
        }
        int i4 = i2;
        i2 = 1;
        while (i2 < i3) {
            b = getByte((long) i2);
            if ((b & 192) == 128) {
                i2++;
                i4 = (b & 63) | (i4 << 6);
            } else {
                skip((long) i2);
                return REPLACEMENT_CHARACTER;
            }
        }
        skip((long) i3);
        return i4 > 1114111 ? REPLACEMENT_CHARACTER : (i4 < 55296 || i4 > 57343) ? i4 < i ? REPLACEMENT_CHARACTER : i4 : REPLACEMENT_CHARACTER;
    }

    public byte[] readByteArray() {
        try {
            return readByteArray(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public byte[] readByteArray(long j) {
        Util.checkOffsetAndCount(this.size, 0, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[((int) j)];
        readFully(bArr);
        return bArr;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public void readFully(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.limit - segment.pos);
        System.arraycopy(segment.data, segment.pos, bArr, i, min);
        segment.pos += min;
        this.size -= (long) min;
        if (segment.pos != segment.limit) {
            return min;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return min;
    }

    public void clear() {
        try {
            skip(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public void skip(long j) {
        while (j > 0) {
            if (this.head == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, (long) (this.head.limit - this.head.pos));
            this.size -= (long) min;
            j -= (long) min;
            Segment segment = this.head;
            segment.pos = min + segment.pos;
            if (this.head.pos == this.head.limit) {
                Segment segment2 = this.head;
                this.head = segment2.pop();
                SegmentPool.recycle(segment2);
            }
        }
    }

    public Buffer write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.write(this);
        return this;
    }

    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    public Buffer writeUtf8(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else {
            while (i < i2) {
                int i3;
                char charAt = str.charAt(i);
                if (charAt < 128) {
                    int i4;
                    Segment writableSegment = writableSegment(1);
                    byte[] bArr = writableSegment.data;
                    int i5 = writableSegment.limit - i;
                    int min = Math.min(i2, 8192 - i5);
                    i3 = i + 1;
                    bArr[i5 + i] = (byte) charAt;
                    while (i3 < min) {
                        char charAt2 = str.charAt(i3);
                        if (charAt2 >= 128) {
                            break;
                        }
                        i4 = i3 + 1;
                        bArr[i3 + i5] = (byte) charAt2;
                        i3 = i4;
                    }
                    i4 = (i3 + i5) - writableSegment.limit;
                    writableSegment.limit += i4;
                    this.size += (long) i4;
                } else if (charAt < 2048) {
                    writeByte((charAt >> 6) | 192);
                    writeByte((charAt & 63) | 128);
                    i3 = i + 1;
                } else if (charAt < 55296 || charAt > 57343) {
                    writeByte((charAt >> 12) | 224);
                    writeByte(((charAt >> 6) & 63) | 128);
                    writeByte((charAt & 63) | 128);
                    i3 = i + 1;
                } else {
                    i3 = i + 1 < i2 ? str.charAt(i + 1) : 0;
                    if (charAt > 56319 || i3 < 56320 || i3 > 57343) {
                        writeByte(63);
                        i++;
                    } else {
                        i3 = ((i3 & -56321) | ((charAt & -55297) << 10)) + 65536;
                        writeByte((i3 >> 18) | 240);
                        writeByte(((i3 >> 12) & 63) | 128);
                        writeByte(((i3 >> 6) & 63) | 128);
                        writeByte((i3 & 63) | 128);
                        i3 = i + 2;
                    }
                }
                i = i3;
            }
            return this;
        }
    }

    public Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public Buffer writeString(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(Util.UTF_8)) {
            return writeUtf8(str, i, i2);
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
    }

    public Buffer write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    public Buffer write(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        int i3 = i + i2;
        while (i < i3) {
            Segment writableSegment = writableSegment(1);
            int min = Math.min(i3 - i, 8192 - writableSegment.limit);
            System.arraycopy(bArr, i, writableSegment.data, writableSegment.limit, min);
            i += min;
            writableSegment.limit = min + writableSegment.limit;
        }
        this.size += (long) i2;
        return this;
    }

    public long writeAll(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }

    public BufferedSink write(Source source, long j) {
        while (j > 0) {
            long read = source.read(this, j);
            if (read == -1) {
                throw new EOFException();
            }
            j -= read;
        }
        return this;
    }

    public Buffer writeByte(int i) {
        Segment writableSegment = writableSegment(1);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        writableSegment.limit = i2 + 1;
        bArr[i2] = (byte) i;
        this.size++;
        return this;
    }

    public Buffer writeShort(int i) {
        Segment writableSegment = writableSegment(2);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i & 255);
        writableSegment.limit = i2;
        this.size += 2;
        return this;
    }

    public Buffer writeShortLe(int i) {
        return writeShort(Util.reverseBytesShort((short) i));
    }

    public Buffer writeInt(int i) {
        Segment writableSegment = writableSegment(4);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        i2 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i & 255);
        writableSegment.limit = i2;
        this.size += 4;
        return this;
    }

    public Buffer writeIntLe(int i) {
        return writeInt(Util.reverseBytesInt(i));
    }

    public Buffer writeLong(long j) {
        Segment writableSegment = writableSegment(8);
        byte[] bArr = writableSegment.data;
        int i = writableSegment.limit;
        int i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 56) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 48) & 255));
        i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 40) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 32) & 255));
        i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 24) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 16) & 255));
        i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 8) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) (j & 255));
        writableSegment.limit = i;
        this.size += 8;
        return this;
    }

    public Buffer writeLongLe(long j) {
        return writeLong(Util.reverseBytesLong(j));
    }

    public Buffer writeDecimalLong(long j) {
        int i = 1;
        if (j == 0) {
            return writeByte(48);
        }
        long j2;
        int i2;
        if (j < 0) {
            j2 = -j;
            if (j2 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            i2 = 1;
        } else {
            i2 = 0;
            j2 = j;
        }
        if (j2 >= 100000000) {
            i = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 >= 100) {
            i = j2 < 1000 ? 3 : 4;
        } else if (j2 >= 10) {
            i = 2;
        }
        if (i2 != 0) {
            i++;
        }
        Segment writableSegment = writableSegment(i);
        byte[] bArr = writableSegment.data;
        int i3 = writableSegment.limit + i;
        while (j2 != 0) {
            i3--;
            bArr[i3] = DIGITS[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (i2 != 0) {
            bArr[i3 - 1] = (byte) 45;
        }
        writableSegment.limit += i;
        this.size += (long) i;
        return this;
    }

    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Segment writableSegment = writableSegment(numberOfTrailingZeros);
        byte[] bArr = writableSegment.data;
        int i = writableSegment.limit;
        for (int i2 = (writableSegment.limit + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = DIGITS[(int) (15 & j)];
            j >>>= 4;
        }
        writableSegment.limit += numberOfTrailingZeros;
        this.size = ((long) numberOfTrailingZeros) + this.size;
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public Segment writableSegment(int i) {
        Segment segment;
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        } else if (this.head == null) {
            this.head = SegmentPool.take();
            Segment segment2 = this.head;
            Segment segment3 = this.head;
            segment = this.head;
            segment3.prev = segment;
            segment2.next = segment;
            return segment;
        } else {
            segment = this.head.prev;
            if (segment.limit + i > 8192 || !segment.owner) {
                return segment.push(SegmentPool.take());
            }
            return segment;
        }
    }

    public void write(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("source == null");
        } else if (buffer == this) {
            throw new IllegalArgumentException("source == this");
        } else {
            Util.checkOffsetAndCount(buffer.size, 0, j);
            while (j > 0) {
                Segment segment;
                if (j < ((long) (buffer.head.limit - buffer.head.pos))) {
                    segment = this.head != null ? this.head.prev : null;
                    if (segment != null && segment.owner) {
                        if ((((long) segment.limit) + j) - ((long) (segment.shared ? 0 : segment.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            buffer.head.writeTo(segment, (int) j);
                            buffer.size -= j;
                            this.size += j;
                            return;
                        }
                    }
                    buffer.head = buffer.head.split((int) j);
                }
                Segment segment2 = buffer.head;
                long j2 = (long) (segment2.limit - segment2.pos);
                buffer.head = segment2.pop();
                if (this.head == null) {
                    this.head = segment2;
                    segment2 = this.head;
                    segment = this.head;
                    Segment segment3 = this.head;
                    segment.prev = segment3;
                    segment2.next = segment3;
                } else {
                    this.head.prev.push(segment2).compact();
                }
                buffer.size -= j2;
                this.size += j2;
                j -= j2;
            }
        }
    }

    public long read(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.size == 0) {
            return -1;
        } else {
            if (j > this.size) {
                j = this.size;
            }
            buffer.write(this, j);
            return j;
        }
    }

    public long indexOf(byte b) {
        return indexOf(b, 0, Long.MAX_VALUE);
    }

    public long indexOf(byte b, long j) {
        return indexOf(b, j, Long.MAX_VALUE);
    }

    public long indexOf(byte b, long j, long j2) {
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", new Object[]{Long.valueOf(this.size), Long.valueOf(j), Long.valueOf(j2)}));
        }
        if (j2 > this.size) {
            j2 = this.size;
        }
        if (j == j2) {
            return -1;
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        long j3;
        Segment segment2;
        if (this.size - j >= j) {
            j3 = 0;
            segment2 = segment;
            while (true) {
                long j4 = ((long) (segment2.limit - segment2.pos)) + j3;
                if (j4 >= j) {
                    break;
                }
                segment2 = segment2.next;
                j3 = j4;
            }
        } else {
            j3 = this.size;
            segment2 = segment;
            while (j3 > j) {
                segment2 = segment2.prev;
                j3 -= (long) (segment2.limit - segment2.pos);
            }
        }
        long j5 = j3;
        while (j5 < j2) {
            byte[] bArr = segment2.data;
            int min = (int) Math.min((long) segment2.limit, (((long) segment2.pos) + j2) - j5);
            for (int i = (int) ((((long) segment2.pos) + j) - j5); i < min; i++) {
                if (bArr[i] == b) {
                    return ((long) (i - segment2.pos)) + j5;
                }
            }
            j3 = j5 + ((long) (segment2.limit - segment2.pos));
            segment2 = segment2.next;
            j = j3;
            j5 = j3;
        }
        return -1;
    }

    public long indexOf(ByteString byteString) {
        return indexOf(byteString, 0);
    }

    public long indexOf(ByteString byteString, long j) {
        if (byteString.size() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        } else if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        } else {
            Segment segment = this.head;
            if (segment == null) {
                return -1;
            }
            long j2;
            Segment segment2;
            long j3;
            if (this.size - j >= j) {
                j2 = 0;
                segment2 = segment;
                while (true) {
                    j3 = ((long) (segment2.limit - segment2.pos)) + j2;
                    if (j3 >= j) {
                        break;
                    }
                    segment2 = segment2.next;
                    j2 = j3;
                }
            } else {
                j2 = this.size;
                segment2 = segment;
                while (j2 > j) {
                    segment2 = segment2.prev;
                    j2 -= (long) (segment2.limit - segment2.pos);
                }
            }
            byte b = byteString.getByte(0);
            int size = byteString.size();
            long j4 = (this.size - ((long) size)) + 1;
            long j5 = j2;
            Segment segment3 = segment2;
            while (j5 < j4) {
                byte[] bArr = segment3.data;
                int min = (int) Math.min((long) segment3.limit, (((long) segment3.pos) + j4) - j5);
                for (int i = (int) ((((long) segment3.pos) + j) - j5); i < min; i++) {
                    if (bArr[i] == b) {
                        if (rangeEquals(segment3, i + 1, byteString, 1, size)) {
                            return ((long) (i - segment3.pos)) + j5;
                        }
                    }
                }
                j3 = ((long) (segment3.limit - segment3.pos)) + j5;
                segment3 = segment3.next;
                j5 = j3;
                j = j3;
            }
            return -1;
        }
    }

    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0);
    }

    public long indexOfElement(ByteString byteString, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        long j2;
        Segment segment2;
        if (this.size - j >= j) {
            j2 = 0;
            segment2 = segment;
            while (true) {
                long j3 = ((long) (segment2.limit - segment2.pos)) + j2;
                if (j3 >= j) {
                    break;
                }
                segment2 = segment2.next;
                j2 = j3;
            }
        } else {
            j2 = this.size;
            segment2 = segment;
            while (j2 > j) {
                segment2 = segment2.prev;
                j2 -= (long) (segment2.limit - segment2.pos);
            }
        }
        byte[] bArr;
        int i;
        int i2;
        byte b;
        if (byteString.size() == 2) {
            byte b2 = byteString.getByte(0);
            byte b3 = byteString.getByte(1);
            while (j2 < this.size) {
                bArr = segment2.data;
                i = segment2.limit;
                for (i2 = (int) ((((long) segment2.pos) + j) - j2); i2 < i; i2++) {
                    b = bArr[i2];
                    if (b == b2 || b == b3) {
                        return j2 + ((long) (i2 - segment2.pos));
                    }
                }
                j2 += (long) (segment2.limit - segment2.pos);
                segment2 = segment2.next;
                j = j2;
            }
        } else {
            byte[] internalArray = byteString.internalArray();
            while (j2 < this.size) {
                bArr = segment2.data;
                i2 = (int) ((((long) segment2.pos) + j) - j2);
                i = segment2.limit;
                for (int i3 = i2; i3 < i; i3++) {
                    b = bArr[i3];
                    for (byte b4 : internalArray) {
                        if (b == b4) {
                            return j2 + ((long) (i3 - segment2.pos));
                        }
                    }
                }
                j2 += (long) (segment2.limit - segment2.pos);
                segment2 = segment2.next;
                j = j2;
            }
        }
        return -1;
    }

    public boolean rangeEquals(long j, ByteString byteString) {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.size - j < ((long) i2) || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (getByte(((long) i3) + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    private boolean rangeEquals(Segment segment, int i, ByteString byteString, int i2, int i3) {
        int i4 = segment.limit;
        byte[] bArr = segment.data;
        int i5 = i;
        Segment segment2 = segment;
        while (i2 < i3) {
            if (i5 == i4) {
                segment2 = segment2.next;
                bArr = segment2.data;
                i5 = segment2.pos;
                i4 = segment2.limit;
            }
            if (bArr[i5] != byteString.getByte(i2)) {
                return false;
            }
            i5++;
            i2++;
        }
        return true;
    }

    public void flush() {
    }

    public void close() {
    }

    public Timeout timeout() {
        return Timeout.NONE;
    }

    /* Access modifiers changed, original: 0000 */
    public List<Integer> segmentSizes() {
        if (this.head == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.head.limit - this.head.pos));
        for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
            arrayList.add(Integer.valueOf(segment.limit - segment.pos));
        }
        return arrayList;
    }

    public ByteString md5() {
        return digest("MD5");
    }

    public ByteString sha1() {
        return digest("SHA-1");
    }

    public ByteString sha256() {
        return digest("SHA-256");
    }

    public ByteString sha512() {
        return digest("SHA-512");
    }

    private ByteString digest(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            if (this.head != null) {
                instance.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
                    instance.update(segment.data, segment.pos, segment.limit - segment.pos);
                }
            }
            return ByteString.of(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    public ByteString hmacSha1(ByteString byteString) {
        return hmac("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return hmac("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return hmac("HmacSHA512", byteString);
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac instance = Mac.getInstance(str);
            instance.init(new SecretKeySpec(byteString.toByteArray(), str));
            if (this.head != null) {
                instance.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
                    instance.update(segment.data, segment.pos, segment.limit - segment.pos);
                }
            }
            return ByteString.of(instance.doFinal());
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if (this.size != buffer.size) {
            return false;
        }
        if (this.size == 0) {
            return true;
        }
        Segment segment = this.head;
        Segment segment2 = buffer.head;
        int i = segment.pos;
        int i2 = segment2.pos;
        while (j < this.size) {
            long min = (long) Math.min(segment.limit - i, segment2.limit - i2);
            int i3 = 0;
            while (((long) i3) < min) {
                int i4 = i + 1;
                byte b = segment.data[i];
                i = i2 + 1;
                if (b != segment2.data[i2]) {
                    return false;
                }
                i3++;
                i2 = i;
                i = i4;
            }
            if (i == segment.limit) {
                segment = segment.next;
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                i2 = segment2.pos;
            }
            j += min;
        }
        return true;
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.pos;
            while (i2 < segment.limit) {
                int i3 = segment.data[i2] + (i * 31);
                i2++;
                i = i3;
            }
            segment = segment.next;
        } while (segment != this.head);
        return i;
    }

    public String toString() {
        return snapshot().toString();
    }

    public Buffer clone() {
        Buffer buffer = new Buffer();
        if (this.size == 0) {
            return buffer;
        }
        buffer.head = new Segment(this.head);
        Segment segment = buffer.head;
        Segment segment2 = buffer.head;
        Segment segment3 = buffer.head;
        segment2.prev = segment3;
        segment.next = segment3;
        for (segment = this.head.next; segment != this.head; segment = segment.next) {
            buffer.head.prev.push(new Segment(segment));
        }
        buffer.size = this.size;
        return buffer;
    }

    public ByteString snapshot() {
        if (this.size <= 2147483647L) {
            return snapshot((int) this.size);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.size);
    }

    public ByteString snapshot(int i) {
        if (i == 0) {
            return ByteString.EMPTY;
        }
        return new SegmentedByteString(this, i);
    }
}
