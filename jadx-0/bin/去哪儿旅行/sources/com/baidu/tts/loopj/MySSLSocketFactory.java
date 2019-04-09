package com.baidu.tts.loopj;

import java.net.Socket;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpHost;
import org.apache.http.HttpVersion;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;

public class MySSLSocketFactory extends SSLSocketFactory {
    SSLContext sslContext = SSLContext.getInstance("TLS");

    public MySSLSocketFactory(KeyStore keyStore) {
        super(keyStore);
        AnonymousClass1 anonymousClass1 = new X509TrustManager() {
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        };
        this.sslContext.init(null, new TrustManager[]{anonymousClass1}, null);
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
    }

    public Socket createSocket() {
        return this.sslContext.getSocketFactory().createSocket();
    }

    public void fixHttpsURLConnection() {
        HttpsURLConnection.setDefaultSSLSocketFactory(this.sslContext.getSocketFactory());
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0043 A:{SYNTHETIC, Splitter:B:29:0x0043} */
    public static java.security.KeyStore getKeystoreOfCA(java.io.InputStream r5) {
        /*
        r1 = 0;
        r0 = "X.509";
        r0 = java.security.cert.CertificateFactory.getInstance(r0);	 Catch:{ CertificateException -> 0x002e, all -> 0x0040 }
        r2 = new java.io.BufferedInputStream;	 Catch:{ CertificateException -> 0x002e, all -> 0x0040 }
        r2.<init>(r5);	 Catch:{ CertificateException -> 0x002e, all -> 0x0040 }
        r0 = r0.generateCertificate(r2);	 Catch:{ CertificateException -> 0x005c }
        if (r2 == 0) goto L_0x0015;
    L_0x0012:
        r2.close();	 Catch:{ IOException -> 0x0029 }
    L_0x0015:
        r2 = java.security.KeyStore.getDefaultType();
        r1 = java.security.KeyStore.getInstance(r2);	 Catch:{ Exception -> 0x004c }
        r2 = 0;
        r3 = 0;
        r1.load(r2, r3);	 Catch:{ Exception -> 0x0054 }
        r2 = "ca";
        r1.setCertificateEntry(r2, r0);	 Catch:{ Exception -> 0x0054 }
        r0 = r1;
    L_0x0028:
        return r0;
    L_0x0029:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x0015;
    L_0x002e:
        r0 = move-exception;
        r2 = r1;
    L_0x0030:
        r0.printStackTrace();	 Catch:{ all -> 0x0059 }
        if (r2 == 0) goto L_0x0038;
    L_0x0035:
        r2.close();	 Catch:{ IOException -> 0x003a }
    L_0x0038:
        r0 = r1;
        goto L_0x0015;
    L_0x003a:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = r1;
        goto L_0x0015;
    L_0x0040:
        r0 = move-exception;
    L_0x0041:
        if (r1 == 0) goto L_0x0046;
    L_0x0043:
        r1.close();	 Catch:{ IOException -> 0x0047 }
    L_0x0046:
        throw r0;
    L_0x0047:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0046;
    L_0x004c:
        r0 = move-exception;
        r4 = r0;
        r0 = r1;
        r1 = r4;
    L_0x0050:
        r1.printStackTrace();
        goto L_0x0028;
    L_0x0054:
        r0 = move-exception;
        r4 = r0;
        r0 = r1;
        r1 = r4;
        goto L_0x0050;
    L_0x0059:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0041;
    L_0x005c:
        r0 = move-exception;
        goto L_0x0030;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.MySSLSocketFactory.getKeystoreOfCA(java.io.InputStream):java.security.KeyStore");
    }

    public static KeyStore getKeystore() {
        KeyStore instance;
        Throwable th;
        try {
            instance = KeyStore.getInstance(KeyStore.getDefaultType());
            try {
                instance.load(null, null);
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                return instance;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            instance = null;
            th = th4;
            th.printStackTrace();
            return instance;
        }
        return instance;
    }

    public static SSLSocketFactory getFixedSocketFactory() {
        try {
            return new MySSLSocketFactory(getKeystore());
        } catch (Throwable th) {
            th.printStackTrace();
            return SSLSocketFactory.getSocketFactory();
        }
    }

    public static DefaultHttpClient getNewHttpClient(KeyStore keyStore) {
        try {
            MySSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(keyStore);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", mySSLSocketFactory, 443));
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }
}
