package org.apache.http.impl.entity;

import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.SessionOutputBuffer;

@Deprecated
public class EntitySerializer {
    public EntitySerializer(ContentLengthStrategy contentLengthStrategy) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public OutputStream doSerialize(SessionOutputBuffer sessionOutputBuffer, HttpMessage httpMessage) {
        throw new RuntimeException("Stub!");
    }

    public void serialize(SessionOutputBuffer sessionOutputBuffer, HttpMessage httpMessage, HttpEntity httpEntity) {
        throw new RuntimeException("Stub!");
    }
}
