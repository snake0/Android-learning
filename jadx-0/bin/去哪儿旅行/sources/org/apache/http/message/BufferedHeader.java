package org.apache.http.message;

import org.apache.http.FormattedHeader;
import org.apache.http.HeaderElement;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public class BufferedHeader implements FormattedHeader {
    public BufferedHeader(CharArrayBuffer charArrayBuffer) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public String getValue() {
        throw new RuntimeException("Stub!");
    }

    public HeaderElement[] getElements() {
        throw new RuntimeException("Stub!");
    }

    public int getValuePos() {
        throw new RuntimeException("Stub!");
    }

    public CharArrayBuffer getBuffer() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }
}
