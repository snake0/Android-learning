package org.apache.commons.codec.net;

import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

@Deprecated
public class URLCodec implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder {
    protected static byte ESCAPE_CHAR;
    protected static final BitSet WWW_FORM_URL = null;
    protected String charset;

    public URLCodec() {
        throw new RuntimeException("Stub!");
    }

    public URLCodec(String str) {
        throw new RuntimeException("Stub!");
    }

    public static final byte[] encodeUrl(BitSet bitSet, byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    public static final byte[] decodeUrl(byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    public byte[] encode(byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    public byte[] decode(byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    public String encode(String str, String str2) {
        throw new RuntimeException("Stub!");
    }

    public String encode(String str) {
        throw new RuntimeException("Stub!");
    }

    public String decode(String str, String str2) {
        throw new RuntimeException("Stub!");
    }

    public String decode(String str) {
        throw new RuntimeException("Stub!");
    }

    public Object encode(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public Object decode(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getEncoding() {
        throw new RuntimeException("Stub!");
    }

    public String getDefaultCharset() {
        throw new RuntimeException("Stub!");
    }
}
