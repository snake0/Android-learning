package org.apache.http.client.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class RequestDefaultHeaders implements HttpRequestInterceptor {
    public RequestDefaultHeaders() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }
}
