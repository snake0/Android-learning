package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;

@Deprecated
public class RequestUserAgent implements HttpRequestInterceptor {
    public RequestUserAgent() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }
}
