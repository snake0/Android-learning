package okhttp3;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import okhttp3.internal.URLFilter;
import okhttp3.internal.huc.OkHttpURLConnection;
import okhttp3.internal.huc.OkHttpsURLConnection;
import org.apache.http.HttpHost;

public final class OkUrlFactory implements Cloneable, URLStreamHandlerFactory {
    private OkHttpClient client;
    private URLFilter urlFilter;

    public OkUrlFactory(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }

    public OkHttpClient client() {
        return this.client;
    }

    public OkUrlFactory setClient(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public void setUrlFilter(URLFilter uRLFilter) {
        this.urlFilter = uRLFilter;
    }

    public OkUrlFactory clone() {
        return new OkUrlFactory(this.client);
    }

    public HttpURLConnection open(URL url) {
        return open(url, this.client.proxy());
    }

    /* Access modifiers changed, original: 0000 */
    public HttpURLConnection open(URL url, Proxy proxy) {
        String protocol = url.getProtocol();
        OkHttpClient build = this.client.newBuilder().proxy(proxy).build();
        if (protocol.equals(HttpHost.DEFAULT_SCHEME_NAME)) {
            return new OkHttpURLConnection(url, build, this.urlFilter);
        }
        if (protocol.equals("https")) {
            return new OkHttpsURLConnection(url, build, this.urlFilter);
        }
        throw new IllegalArgumentException("Unexpected protocol: " + protocol);
    }

    public URLStreamHandler createURLStreamHandler(final String str) {
        if (str.equals(HttpHost.DEFAULT_SCHEME_NAME) || str.equals("https")) {
            return new URLStreamHandler() {
                /* Access modifiers changed, original: protected */
                public URLConnection openConnection(URL url) {
                    return OkUrlFactory.this.open(url);
                }

                /* Access modifiers changed, original: protected */
                public URLConnection openConnection(URL url, Proxy proxy) {
                    return OkUrlFactory.this.open(url, proxy);
                }

                /* Access modifiers changed, original: protected */
                public int getDefaultPort() {
                    if (str.equals(HttpHost.DEFAULT_SCHEME_NAME)) {
                        return 80;
                    }
                    if (str.equals("https")) {
                        return 443;
                    }
                    throw new AssertionError();
                }
            };
        }
        return null;
    }
}
