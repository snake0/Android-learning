package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HeaderIterator;

@Deprecated
public class BasicHeaderIterator implements HeaderIterator {
    protected final Header[] allHeaders = null;
    protected int currentIndex;
    protected String headerName;

    public BasicHeaderIterator(Header[] headerArr, String str) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public int findNext(int i) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public boolean filterHeader(int i) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNext() {
        throw new RuntimeException("Stub!");
    }

    public Header nextHeader() {
        throw new RuntimeException("Stub!");
    }

    public final Object next() {
        throw new RuntimeException("Stub!");
    }

    public void remove() {
        throw new RuntimeException("Stub!");
    }
}