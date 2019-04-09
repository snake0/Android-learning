package org.apache.http.impl;

import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.impl.entity.EntityDeserializer;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

@Deprecated
public abstract class AbstractHttpClientConnection implements HttpClientConnection {
    public abstract void assertOpen();

    public AbstractHttpClientConnection() {
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
    public HttpResponseFactory createHttpResponseFactory() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public HttpMessageParser createResponseParser(SessionInputBuffer sessionInputBuffer, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public HttpMessageWriter createRequestWriter(SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void init(SessionInputBuffer sessionInputBuffer, SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public boolean isResponseAvailable(int i) {
        throw new RuntimeException("Stub!");
    }

    public void sendRequestHeader(HttpRequest httpRequest) {
        throw new RuntimeException("Stub!");
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void doFlush() {
        throw new RuntimeException("Stub!");
    }

    public void flush() {
        throw new RuntimeException("Stub!");
    }

    public HttpResponse receiveResponseHeader() {
        throw new RuntimeException("Stub!");
    }

    public void receiveResponseEntity(HttpResponse httpResponse) {
        throw new RuntimeException("Stub!");
    }

    public boolean isStale() {
        throw new RuntimeException("Stub!");
    }

    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException("Stub!");
    }
}
