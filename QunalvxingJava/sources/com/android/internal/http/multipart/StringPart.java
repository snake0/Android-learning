package com.android.internal.http.multipart;

import java.io.OutputStream;

public class StringPart extends PartBase {
    public static final String DEFAULT_CHARSET = "US-ASCII";
    public static final String DEFAULT_CONTENT_TYPE = "text/plain";
    public static final String DEFAULT_TRANSFER_ENCODING = "8bit";

    public StringPart(String str, String str2, String str3) {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException("Stub!");
    }

    public StringPart(String str, String str2) {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void sendData(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public long lengthOfData() {
        throw new RuntimeException("Stub!");
    }

    public void setCharSet(String str) {
        throw new RuntimeException("Stub!");
    }
}
