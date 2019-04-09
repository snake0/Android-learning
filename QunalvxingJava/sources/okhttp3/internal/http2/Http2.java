package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.Util;
import okio.ByteString;

public final class Http2 {
    static final String[] BINARY = new String[256];
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    static final String[] FLAGS = new String[64];
    static final byte FLAG_ACK = (byte) 1;
    static final byte FLAG_COMPRESSED = (byte) 32;
    static final byte FLAG_END_HEADERS = (byte) 4;
    static final byte FLAG_END_PUSH_PROMISE = (byte) 4;
    static final byte FLAG_END_STREAM = (byte) 1;
    static final byte FLAG_NONE = (byte) 0;
    static final byte FLAG_PADDED = (byte) 8;
    static final byte FLAG_PRIORITY = (byte) 32;
    private static final String[] FRAME_NAMES = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = (byte) 9;
    static final byte TYPE_DATA = (byte) 0;
    static final byte TYPE_GOAWAY = (byte) 7;
    static final byte TYPE_HEADERS = (byte) 1;
    static final byte TYPE_PING = (byte) 6;
    static final byte TYPE_PRIORITY = (byte) 2;
    static final byte TYPE_PUSH_PROMISE = (byte) 5;
    static final byte TYPE_RST_STREAM = (byte) 3;
    static final byte TYPE_SETTINGS = (byte) 4;
    static final byte TYPE_WINDOW_UPDATE = (byte) 8;

    static {
        int i;
        int i2 = 0;
        for (i = 0; i < BINARY.length; i++) {
            BINARY[i] = Util.format("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        FLAGS[0] = "";
        FLAGS[1] = "END_STREAM";
        int[] iArr = new int[]{1};
        FLAGS[8] = "PADDED";
        for (int i3 : iArr) {
            FLAGS[i3 | 8] = FLAGS[i3] + "|PADDED";
        }
        FLAGS[4] = "END_HEADERS";
        FLAGS[32] = "PRIORITY";
        FLAGS[36] = "END_HEADERS|PRIORITY";
        for (int i4 : new int[]{4, 32, 36}) {
            for (int i5 : iArr) {
                FLAGS[i5 | i4] = FLAGS[i5] + '|' + FLAGS[i4];
                FLAGS[(i5 | i4) | 8] = FLAGS[i5] + '|' + FLAGS[i4] + "|PADDED";
            }
        }
        while (i2 < FLAGS.length) {
            if (FLAGS[i2] == null) {
                FLAGS[i2] = BINARY[i2];
            }
            i2++;
        }
    }

    private Http2() {
    }

    static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    static IOException ioException(String str, Object... objArr) {
        throw new IOException(Util.format(str, objArr));
    }

    static String frameLog(boolean z, int i, int i2, byte b, byte b2) {
        String format = b < FRAME_NAMES.length ? FRAME_NAMES[b] : Util.format("0x%02x", Byte.valueOf(b));
        String formatFlags = formatFlags(b, b2);
        String str = "%s 0x%08x %5d %-13s %s";
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = format;
        objArr[4] = formatFlags;
        return Util.format(str, objArr);
    }

    static String formatFlags(byte b, byte b2) {
        if (b2 == (byte) 0) {
            return "";
        }
        switch (b) {
            case (byte) 2:
            case (byte) 3:
            case (byte) 7:
            case (byte) 8:
                return BINARY[b2];
            case (byte) 4:
            case (byte) 6:
                return b2 == (byte) 1 ? "ACK" : BINARY[b2];
            default:
                String str = b2 < FLAGS.length ? FLAGS[b2] : BINARY[b2];
                if (b == TYPE_PUSH_PROMISE && (b2 & 4) != 0) {
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
                if (b != (byte) 0 || (b2 & 32) == 0) {
                    return str;
                }
                return str.replace("PRIORITY", "COMPRESSED");
        }
    }
}
