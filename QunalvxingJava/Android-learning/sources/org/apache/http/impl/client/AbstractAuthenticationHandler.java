package org.apache.http.impl.client;

import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScheme;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract class AbstractAuthenticationHandler implements AuthenticationHandler {
    public AbstractAuthenticationHandler() {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public Map<String, Header> parseChallenges(Header[] headerArr) {
        throw new RuntimeException("Stub!");
    }

    /* Access modifiers changed, original: protected */
    public List<String> getAuthPreferences() {
        throw new RuntimeException("Stub!");
    }

    public AuthScheme selectScheme(Map<String, Header> map, HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }
}
