package org.apache.http.protocol;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.params.HttpParams;

@Deprecated
public class HttpService {
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory) {
        throw new RuntimeException("Stub!");
    }

    public void setHttpProcessor(HttpProcessor httpProcessor) {
        throw new RuntimeException("Stub!");
    }

    public void setConnReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        throw new RuntimeException("Stub!");
    }

    public void setResponseFactory(HttpResponseFactory httpResponseFactory) {
        throw new RuntimeException("Stub!");
    }

    public void setHandlerResolver(HttpRequestHandlerResolver httpRequestHandlerResolver) {
        throw new RuntimeException("Stub!");
    }

    public void setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        throw new RuntimeException("Stub!");
    }

    public HttpParams getParams() {
        throw new RuntimeException("Stub!");
    }

    public void setParams(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public void handleRequest(HttpServerConnection httpServerConnection, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void handleException(HttpException httpException, HttpResponse httpResponse) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public void doService(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }
}
