package org.apache.http.impl.conn.tsccm;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.impl.conn.AbstractPooledConnAdapter;

@Deprecated
public class BasicPooledConnAdapter extends AbstractPooledConnAdapter {
    protected BasicPooledConnAdapter(ThreadSafeClientConnManager threadSafeClientConnManager, AbstractPoolEntry abstractPoolEntry) {
        super((ClientConnectionManager) null, (AbstractPoolEntry) null);
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public ClientConnectionManager getManager() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public AbstractPoolEntry getPoolEntry() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void detach() {
        throw new RuntimeException("Stub!");
    }
}
