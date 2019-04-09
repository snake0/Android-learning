package org.apache.commons.io.input;

import java.io.InputStream;

public class AutoCloseInputStream extends ProxyInputStream {
    public AutoCloseInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public void close() {
        this.in.close();
        this.in = new ClosedInputStream();
    }

    /* Access modifiers changed, original: protected */
    public void afterRead(int i) {
        if (i == -1) {
            close();
        }
    }

    /* Access modifiers changed, original: protected */
    public void finalize() {
        close();
        super.finalize();
    }
}
