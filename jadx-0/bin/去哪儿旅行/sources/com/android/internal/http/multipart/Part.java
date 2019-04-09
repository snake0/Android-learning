package com.android.internal.http.multipart;

import java.io.OutputStream;

public abstract class Part {
    @Deprecated
    protected static final String BOUNDARY = "----------------314159265358979323846";
    @Deprecated
    protected static final byte[] BOUNDARY_BYTES = null;
    protected static final String CHARSET = "; charset=";
    protected static final byte[] CHARSET_BYTES = null;
    protected static final String CONTENT_DISPOSITION = "Content-Disposition: form-data; name=";
    protected static final byte[] CONTENT_DISPOSITION_BYTES = null;
    protected static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding: ";
    protected static final byte[] CONTENT_TRANSFER_ENCODING_BYTES = null;
    protected static final String CONTENT_TYPE = "Content-Type: ";
    protected static final byte[] CONTENT_TYPE_BYTES = null;
    protected static final String CRLF = "\r\n";
    protected static final byte[] CRLF_BYTES = null;
    protected static final String EXTRA = "--";
    protected static final byte[] EXTRA_BYTES = null;
    protected static final String QUOTE = "\"";
    protected static final byte[] QUOTE_BYTES = null;

    public abstract String getCharSet();

    public abstract String getContentType();

    public abstract String getName();

    public abstract String getTransferEncoding();

    public abstract long lengthOfData();

    public abstract void sendData(OutputStream outputStream);

    public Part() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static String getBoundary() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public byte[] getPartBoundary() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRepeatable() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendStart(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendDispositionHeader(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendContentTypeHeader(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendTransferEncodingHeader(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendEndOfHeader(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendEnd(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    public void send(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    public long length() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static void sendParts(OutputStream outputStream, Part[] partArr) {
        throw new RuntimeException("Stub!");
    }

    public static void sendParts(OutputStream outputStream, Part[] partArr, byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    public static long getLengthOfParts(Part[] partArr) {
        throw new RuntimeException("Stub!");
    }

    public static long getLengthOfParts(Part[] partArr, byte[] bArr) {
        throw new RuntimeException("Stub!");
    }
}
