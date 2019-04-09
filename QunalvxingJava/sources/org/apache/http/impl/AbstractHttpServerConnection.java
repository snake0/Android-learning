package org.apache.http.impl;

import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.HttpResponse;
import org.apache.http.HttpServerConnection;
import org.apache.http.impl.entity.EntityDeserializer;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

@Deprecated
public abstract class AbstractHttpServerConnection implements HttpServerConnection {
    public abstract void assertOpen();

    public AbstractHttpServerConnection() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public EntityDeserializer createEntityDeserializer() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public EntitySerializer createEntitySerializer() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public HttpRequestFactory createHttpRequestFactory() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public HttpMessageParser createRequestParser(SessionInputBuffer sessionInputBuffer, HttpRequestFactory httpRequestFactory, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public HttpMessageWriter createResponseWriter(SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void init(SessionInputBuffer sessionInputBuffer, SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public HttpRequest receiveRequestHeader() {
        throw new RuntimeException("Stub!");
    }

    public void receiveRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void doFlush() {
        throw new RuntimeException("Stub!");
    }

    public void flush() {
        throw new RuntimeException("Stub!");
    }

    public void sendResponseHeader(HttpResponse httpResponse) {
        throw new RuntimeException("Stub!");
    }

    public void sendResponseEntity(HttpResponse httpResponse) {
        throw new RuntimeException("Stub!");
    }

    public boolean isStale() {
        throw new RuntimeException("Stub!");
    }

    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException("Stub!");
    }
}
