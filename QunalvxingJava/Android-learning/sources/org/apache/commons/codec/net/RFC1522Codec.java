package org.apache.commons.codec.net;

@Deprecated
abstract class RFC1522Codec {
    public abstract byte[] doDecoding(byte[] bArr);

    public abstract byte[] doEncoding(byte[] bArr);

    public abstract String getEncoding();

    RFC1522Codec() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public String encodeText(String str, String str2) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public String decodeText(String str) {
        throw new RuntimeException("Stub!");
    }
}
