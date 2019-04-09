package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.UUID;
import org.apache.commons.io.TaggedIOException;

public class TaggedInputStream extends ProxyInputStream {
    private final Serializable tag = UUID.randomUUID();

    public TaggedInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public boolean isCauseOf(Throwable th) {
        return TaggedIOException.isTaggedWith(th, this.tag);
    }

    public void throwIfCauseOf(Throwable th) {
        TaggedIOException.throwCauseIfTaggedWith(th, this.tag);
    }

    /* Access modifiers changed, original: protected */
    public void handleIOException(IOException iOException) {
        throw new TaggedIOException(iOException, this.tag);
    }
}
