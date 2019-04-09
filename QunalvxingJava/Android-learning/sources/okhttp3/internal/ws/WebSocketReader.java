package okhttp3.internal.ws;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

final class WebSocketReader {
    boolean closed;
    long frameBytesRead;
    final FrameCallback frameCallback;
    long frameLength;
    final boolean isClient;
    boolean isControlFrame;
    boolean isFinalFrame;
    boolean isMasked;
    final byte[] maskBuffer = new byte[8192];
    final byte[] maskKey = new byte[4];
    int opcode;
    final BufferedSource source;

    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(String str);

        void onReadMessage(ByteString byteString);

        void onReadPing(ByteString byteString);

        void onReadPong(ByteString byteString);
    }

    WebSocketReader(boolean z, BufferedSource bufferedSource, FrameCallback frameCallback) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        } else if (frameCallback == null) {
            throw new NullPointerException("frameCallback == null");
        } else {
            this.isClient = z;
            this.source = bufferedSource;
            this.frameCallback = frameCallback;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void processNextFrame() {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0077  */
    private void readHeader() {
        /*
        r9 = this;
        r7 = 0;
        r1 = 1;
        r2 = 0;
        r0 = r9.closed;
        if (r0 == 0) goto L_0x0010;
    L_0x0008:
        r0 = new java.io.IOException;
        r1 = "closed";
        r0.<init>(r1);
        throw r0;
    L_0x0010:
        r0 = r9.source;
        r0 = r0.timeout();
        r3 = r0.timeoutNanos();
        r0 = r9.source;
        r0 = r0.timeout();
        r0.clearTimeout();
        r0 = r9.source;	 Catch:{ all -> 0x0058 }
        r0 = r0.readByte();	 Catch:{ all -> 0x0058 }
        r5 = r0 & 255;
        r0 = r9.source;
        r0 = r0.timeout();
        r6 = java.util.concurrent.TimeUnit.NANOSECONDS;
        r0.timeout(r3, r6);
        r0 = r5 & 15;
        r9.opcode = r0;
        r0 = r5 & 128;
        if (r0 == 0) goto L_0x0065;
    L_0x003e:
        r0 = r1;
    L_0x003f:
        r9.isFinalFrame = r0;
        r0 = r5 & 8;
        if (r0 == 0) goto L_0x0067;
    L_0x0045:
        r0 = r1;
    L_0x0046:
        r9.isControlFrame = r0;
        r0 = r9.isControlFrame;
        if (r0 == 0) goto L_0x0069;
    L_0x004c:
        r0 = r9.isFinalFrame;
        if (r0 != 0) goto L_0x0069;
    L_0x0050:
        r0 = new java.net.ProtocolException;
        r1 = "Control frames must be final.";
        r0.<init>(r1);
        throw r0;
    L_0x0058:
        r0 = move-exception;
        r1 = r9.source;
        r1 = r1.timeout();
        r2 = java.util.concurrent.TimeUnit.NANOSECONDS;
        r1.timeout(r3, r2);
        throw r0;
    L_0x0065:
        r0 = r2;
        goto L_0x003f;
    L_0x0067:
        r0 = r2;
        goto L_0x0046;
    L_0x0069:
        r0 = r5 & 64;
        if (r0 == 0) goto L_0x0086;
    L_0x006d:
        r4 = r1;
    L_0x006e:
        r0 = r5 & 32;
        if (r0 == 0) goto L_0x0088;
    L_0x0072:
        r3 = r1;
    L_0x0073:
        r0 = r5 & 16;
        if (r0 == 0) goto L_0x008a;
    L_0x0077:
        r0 = r1;
    L_0x0078:
        if (r4 != 0) goto L_0x007e;
    L_0x007a:
        if (r3 != 0) goto L_0x007e;
    L_0x007c:
        if (r0 == 0) goto L_0x008c;
    L_0x007e:
        r0 = new java.net.ProtocolException;
        r1 = "Reserved flags are unsupported.";
        r0.<init>(r1);
        throw r0;
    L_0x0086:
        r4 = r2;
        goto L_0x006e;
    L_0x0088:
        r3 = r2;
        goto L_0x0073;
    L_0x008a:
        r0 = r2;
        goto L_0x0078;
    L_0x008c:
        r0 = r9.source;
        r0 = r0.readByte();
        r0 = r0 & 255;
        r3 = r0 & 128;
        if (r3 == 0) goto L_0x00ac;
    L_0x0098:
        r9.isMasked = r1;
        r1 = r9.isMasked;
        r2 = r9.isClient;
        if (r1 != r2) goto L_0x00b1;
    L_0x00a0:
        r1 = new java.net.ProtocolException;
        r0 = r9.isClient;
        if (r0 == 0) goto L_0x00ae;
    L_0x00a6:
        r0 = "Server-sent frames must not be masked.";
    L_0x00a8:
        r1.<init>(r0);
        throw r1;
    L_0x00ac:
        r1 = r2;
        goto L_0x0098;
    L_0x00ae:
        r0 = "Client-sent frames must be masked.";
        goto L_0x00a8;
    L_0x00b1:
        r0 = r0 & 127;
        r0 = (long) r0;
        r9.frameLength = r0;
        r0 = r9.frameLength;
        r2 = 126; // 0x7e float:1.77E-43 double:6.23E-322;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 != 0) goto L_0x00e1;
    L_0x00be:
        r0 = r9.source;
        r0 = r0.readShort();
        r0 = (long) r0;
        r2 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r0 = r0 & r2;
        r9.frameLength = r0;
    L_0x00cb:
        r9.frameBytesRead = r7;
        r0 = r9.isControlFrame;
        if (r0 == 0) goto L_0x011c;
    L_0x00d1:
        r0 = r9.frameLength;
        r2 = 125; // 0x7d float:1.75E-43 double:6.2E-322;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 <= 0) goto L_0x011c;
    L_0x00d9:
        r0 = new java.net.ProtocolException;
        r1 = "Control frame must be less than 125B.";
        r0.<init>(r1);
        throw r0;
    L_0x00e1:
        r0 = r9.frameLength;
        r2 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 != 0) goto L_0x00cb;
    L_0x00e9:
        r0 = r9.source;
        r0 = r0.readLong();
        r9.frameLength = r0;
        r0 = r9.frameLength;
        r0 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1));
        if (r0 >= 0) goto L_0x00cb;
    L_0x00f7:
        r0 = new java.net.ProtocolException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Frame length 0x";
        r1 = r1.append(r2);
        r2 = r9.frameLength;
        r2 = java.lang.Long.toHexString(r2);
        r1 = r1.append(r2);
        r2 = " > 0x7FFFFFFFFFFFFFFF";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x011c:
        r0 = r9.isMasked;
        if (r0 == 0) goto L_0x0127;
    L_0x0120:
        r0 = r9.source;
        r1 = r9.maskKey;
        r0.readFully(r1);
    L_0x0127:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.WebSocketReader.readHeader():void");
    }

    private void readControlFrame() {
        Buffer buffer = new Buffer();
        if (this.frameBytesRead < this.frameLength) {
            if (this.isClient) {
                this.source.readFully(buffer, this.frameLength);
            } else {
                while (this.frameBytesRead < this.frameLength) {
                    int read = this.source.read(this.maskBuffer, 0, (int) Math.min(this.frameLength - this.frameBytesRead, (long) this.maskBuffer.length));
                    if (read == -1) {
                        throw new EOFException();
                    }
                    WebSocketProtocol.toggleMask(this.maskBuffer, (long) read, this.maskKey, this.frameBytesRead);
                    buffer.write(this.maskBuffer, 0, read);
                    this.frameBytesRead += (long) read;
                }
            }
        }
        switch (this.opcode) {
            case 8:
                int i = 1005;
                String str = "";
                long size = buffer.size();
                if (size == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (size != 0) {
                    i = buffer.readShort();
                    str = buffer.readUtf8();
                    String closeCodeExceptionMessage = WebSocketProtocol.closeCodeExceptionMessage(i);
                    if (closeCodeExceptionMessage != null) {
                        throw new ProtocolException(closeCodeExceptionMessage);
                    }
                }
                this.frameCallback.onReadClose(i, str);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(buffer.readByteString());
                return;
            case 10:
                this.frameCallback.onReadPong(buffer.readByteString());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.opcode));
        }
    }

    private void readMessageFrame() {
        int i = this.opcode;
        if (i == 1 || i == 2) {
            Buffer buffer = new Buffer();
            readMessage(buffer);
            if (i == 1) {
                this.frameCallback.onReadMessage(buffer.readUtf8());
                return;
            } else {
                this.frameCallback.onReadMessage(buffer.readByteString());
                return;
            }
        }
        throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i));
    }

    /* Access modifiers changed, original: 0000 */
    public void readUntilNonControlFrame() {
        while (!this.closed) {
            readHeader();
            if (this.isControlFrame) {
                readControlFrame();
            } else {
                return;
            }
        }
    }

    private void readMessage(Buffer buffer) {
        while (!this.closed) {
            long read;
            if (this.frameBytesRead == this.frameLength) {
                if (!this.isFinalFrame) {
                    readUntilNonControlFrame();
                    if (this.opcode != 0) {
                        throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.opcode));
                    } else if (this.isFinalFrame && this.frameLength == 0) {
                        return;
                    }
                }
                return;
            }
            long j = this.frameLength - this.frameBytesRead;
            if (this.isMasked) {
                read = (long) this.source.read(this.maskBuffer, 0, (int) Math.min(j, (long) this.maskBuffer.length));
                if (read == -1) {
                    throw new EOFException();
                }
                WebSocketProtocol.toggleMask(this.maskBuffer, read, this.maskKey, this.frameBytesRead);
                buffer.write(this.maskBuffer, 0, (int) read);
            } else {
                read = this.source.read(buffer, j);
                if (read == -1) {
                    throw new EOFException();
                }
            }
            this.frameBytesRead += read;
        }
        throw new IOException("closed");
    }
}
