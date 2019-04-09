package com.baidu.techain.b;

import android.annotation.SuppressLint;
import android.content.Context;
import com.baidu.techain.b;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.X509TrustManager;
import org.apache.http.client.methods.HttpPost;

@Instrumented
@SuppressLint({"NewApi"})
public final class m {
    Context a;
    byte[] b;
    private String c;
    private String d;
    private int e;
    private int f;
    private boolean g;

    final class a implements X509TrustManager {
        private X509TrustManager b = null;

        a(X509TrustManager x509TrustManager) {
            this.b = x509TrustManager;
        }

        public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            b.a();
            this.b.checkClientTrusted(x509CertificateArr, str);
        }

        public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            b.a();
            try {
                this.b.checkServerTrusted(x509CertificateArr, str);
                b.a();
            } catch (Throwable th) {
                e.a();
                Throwable th2 = th;
                while (th2 != null) {
                    if ((th2 instanceof CertificateExpiredException) || (th2 instanceof CertificateNotYetValidException)) {
                        Map hashMap = new HashMap();
                        hashMap.put("0", Long.valueOf(System.currentTimeMillis()));
                        e.a(m.this.a.getApplicationContext(), "1003121", hashMap);
                        return;
                    }
                    th2 = th2.getCause();
                }
                CertificateException certificateException;
                if (th instanceof CertificateException) {
                    certificateException = (CertificateException) th;
                } else {
                    certificateException = new CertificateException();
                }
            }
        }

        public final X509Certificate[] getAcceptedIssuers() {
            b.a();
            return this.b.getAcceptedIssuers();
        }
    }

    public m(Context context) {
        this.b = new byte[8192];
        this.e = 120000;
        this.f = 120000;
        this.g = false;
        this.a = context;
    }

    public m(Context context, byte b) {
        this.b = new byte[8192];
        this.e = 120000;
        this.f = 120000;
        this.g = false;
        this.a = context;
    }

    private void a(String str, String str2) {
        this.c = str;
        this.d = str2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0090 A:{SYNTHETIC, Splitter:B:30:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00bb A:{Catch:{ Throwable -> 0x01f9, Throwable -> 0x0200 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00f3  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x01f0 A:{Catch:{ Throwable -> 0x01f5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x01d4 A:{Catch:{ Throwable -> 0x01f5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0090 A:{SYNTHETIC, Splitter:B:30:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00bb A:{Catch:{ Throwable -> 0x01f9, Throwable -> 0x0200 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00f3  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0117  */
    private java.net.HttpURLConnection a() {
        /*
        r10 = this;
        r0 = -1;
        r5 = 0;
        r9 = 1;
        r3 = 0;
        r1 = r10.c;
        r1 = android.text.TextUtils.isEmpty(r1);
        if (r1 != 0) goto L_0x0014;
    L_0x000c:
        r1 = r10.d;
        r1 = android.text.TextUtils.isEmpty(r1);
        if (r1 == 0) goto L_0x001a;
    L_0x0014:
        r0 = new java.lang.IllegalArgumentException;
        r0.<init>();
        throw r0;
    L_0x001a:
        r1 = r10.c;
        r2 = "POST";
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x0032;
    L_0x0024:
        r1 = r10.c;
        r2 = "GET";
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x0032;
    L_0x002e:
        r1 = "POST";
        r10.c = r1;
    L_0x0032:
        r2 = new java.net.URL;
        r1 = r10.d;
        r2.<init>(r1);
        r1 = r10.a;
        r1 = com.baidu.techain.b.e.e(r1);
        if (r1 != 0) goto L_0x0211;
    L_0x0041:
        r1 = android.os.Build.VERSION.SDK_INT;
        r4 = 13;
        if (r1 < r4) goto L_0x01a9;
    L_0x0047:
        r1 = java.lang.System.getProperties();
        r4 = "http.proxyHost";
        r1 = r1.getProperty(r4);
        r4 = java.lang.System.getProperties();
        r6 = "http.proxyPort";
        r4 = r4.getProperty(r6);
        r6 = android.text.TextUtils.isEmpty(r4);
        if (r6 == 0) goto L_0x01a3;
    L_0x0061:
        if (r1 == 0) goto L_0x01b7;
    L_0x0063:
        if (r0 <= 0) goto L_0x01b7;
    L_0x0065:
        r0 = java.net.InetSocketAddress.createUnresolved(r1, r0);
        r1 = new java.net.Proxy;
        r4 = java.net.Proxy.Type.HTTP;
        r1.<init>(r4, r0);
        r0 = r2.openConnection(r1);
        r0 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.openConnectionWithProxy(r0);
        r0 = (java.net.HttpURLConnection) r0;
        r1 = r0;
    L_0x007b:
        r0 = r1 instanceof javax.net.ssl.HttpsURLConnection;
        if (r0 == 0) goto L_0x00e1;
    L_0x007f:
        r0 = r1;
        r0 = (javax.net.ssl.HttpsURLConnection) r0;
        r2 = "AndroidCAStore";
        r2 = java.security.KeyStore.getInstance(r2);	 Catch:{ Throwable -> 0x01c4 }
        r4 = 0;
        r6 = 0;
        r2.load(r4, r6);	 Catch:{ Throwable -> 0x020f }
        r4 = r2;
    L_0x008e:
        if (r4 == 0) goto L_0x00b9;
    L_0x0090:
        r2 = "com.android.org.conscrypt.TrustManagerImpl";
        r2 = java.lang.Class.forName(r2);	 Catch:{ Throwable -> 0x01f9 }
    L_0x0096:
        if (r2 != 0) goto L_0x009e;
    L_0x0098:
        r6 = "org.apache.harmony.xnet.provider.jsse.TrustManagerImpl";
        r2 = java.lang.Class.forName(r6);	 Catch:{ Throwable -> 0x0206 }
    L_0x009e:
        if (r2 == 0) goto L_0x00b9;
    L_0x00a0:
        r3 = 1;
        r3 = new java.lang.Class[r3];	 Catch:{ Throwable -> 0x0200 }
        r6 = 0;
        r7 = java.security.KeyStore.class;
        r3[r6] = r7;	 Catch:{ Throwable -> 0x0200 }
        r2 = r2.getDeclaredConstructor(r3);	 Catch:{ Throwable -> 0x0200 }
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ Throwable -> 0x0200 }
        r6 = 0;
        r3[r6] = r4;	 Catch:{ Throwable -> 0x0200 }
        r2 = r2.newInstance(r3);	 Catch:{ Throwable -> 0x0200 }
        r2 = (javax.net.ssl.X509TrustManager) r2;	 Catch:{ Throwable -> 0x0200 }
        r3 = r2;
    L_0x00b9:
        if (r3 == 0) goto L_0x00e1;
    L_0x00bb:
        r2 = "TLS";
        r2 = javax.net.ssl.SSLContext.getInstance(r2);	 Catch:{ Throwable -> 0x0200 }
        r4 = 0;
        r6 = 1;
        r6 = new javax.net.ssl.TrustManager[r6];	 Catch:{ Throwable -> 0x0200 }
        r7 = 0;
        r8 = new com.baidu.techain.b.m$a;	 Catch:{ Throwable -> 0x0200 }
        r8.<init>(r3);	 Catch:{ Throwable -> 0x0200 }
        r6[r7] = r8;	 Catch:{ Throwable -> 0x0200 }
        r3 = new java.security.SecureRandom;	 Catch:{ Throwable -> 0x0200 }
        r3.<init>();	 Catch:{ Throwable -> 0x0200 }
        r2.init(r4, r6, r3);	 Catch:{ Throwable -> 0x0200 }
        r3 = org.apache.http.conn.ssl.SSLSocketFactory.STRICT_HOSTNAME_VERIFIER;	 Catch:{ Throwable -> 0x0200 }
        r0.setHostnameVerifier(r3);	 Catch:{ Throwable -> 0x0200 }
        r2 = r2.getSocketFactory();	 Catch:{ Throwable -> 0x0200 }
        r0.setSSLSocketFactory(r2);	 Catch:{ Throwable -> 0x0200 }
    L_0x00e1:
        r0 = r10.c;
        r1.setRequestMethod(r0);
        r1.setDoInput(r9);
        r0 = "POST";
        r2 = r10.c;
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x00f6;
    L_0x00f3:
        r1.setDoOutput(r9);
    L_0x00f6:
        r1.setInstanceFollowRedirects(r9);
        r0 = r10.e;
        r1.setConnectTimeout(r0);
        r0 = r10.f;
        r1.setReadTimeout(r0);
        r0 = r10.a;
        r0 = com.baidu.techain.b.e.g(r0);
        r2 = r0[r5];
        r0 = "techain";
        r3 = "1";
        r4 = "5";
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x0119;
    L_0x0117:
        r0 = "eos";
    L_0x0119:
        r3 = "User-Agent";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r0 = r4.append(r0);
        r4 = "/";
        r0 = r0.append(r4);
        r0 = r0.append(r2);
        r2 = "/";
        r0 = r0.append(r2);
        r2 = r10.a;
        r2 = com.baidu.techain.b.t.a(r2);
        r0 = r0.append(r2);
        r2 = "/3.1.6.1";
        r0 = r0.append(r2);
        r0 = r0.toString();
        r1.setRequestProperty(r3, r0);
        r0 = "Pragma";
        r2 = "no-cache";
        r1.setRequestProperty(r0, r2);
        r0 = "Accept";
        r2 = "*/*";
        r1.setRequestProperty(r0, r2);
        r0 = "Content-Type";
        r2 = "application/x-www-form-urlencoded";
        r1.setRequestProperty(r0, r2);
        r0 = "Accept-Encoding";
        r2 = "gzip,deflate";
        r1.setRequestProperty(r0, r2);
        r0 = "Accept-Language";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = java.util.Locale.getDefault();
        r3 = r3.getLanguage();
        r2 = r2.append(r3);
        r3 = "-";
        r2 = r2.append(r3);
        r3 = java.util.Locale.getDefault();
        r3 = r3.getCountry();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.setRequestProperty(r0, r2);
        r0 = "x-device-id";
        r2 = r10.a;
        r2 = com.baidu.techain.b.g.a(r2);
        r2 = com.baidu.techain.b.o.a(r2);
        r1.setRequestProperty(r0, r2);
        return r1;
    L_0x01a3:
        r0 = java.lang.Integer.parseInt(r4);	 Catch:{ Throwable -> 0x020c }
        goto L_0x0061;
    L_0x01a9:
        r0 = r10.a;
        r1 = android.net.Proxy.getHost(r0);
        r0 = r10.a;
        r0 = android.net.Proxy.getPort(r0);
        goto L_0x0061;
    L_0x01b7:
        r0 = r2.openConnection();
        r0 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.openConnection(r0);
        r0 = (java.net.HttpURLConnection) r0;
        r1 = r0;
        goto L_0x007b;
    L_0x01c4:
        r2 = move-exception;
        r2 = r3;
    L_0x01c6:
        r4 = "javax.net.ssl.trustStore";
        r6 = java.lang.System.getProperty(r4);	 Catch:{ Throwable -> 0x01f5 }
        r4 = "javax.net.ssl.trustStorePassword";
        r4 = java.lang.System.getProperty(r4);	 Catch:{ Throwable -> 0x01f5 }
        if (r4 != 0) goto L_0x01f0;
    L_0x01d4:
        r4 = r3;
    L_0x01d5:
        r7 = java.security.KeyStore.getDefaultType();	 Catch:{ Throwable -> 0x01f5 }
        r2 = java.security.KeyStore.getInstance(r7);	 Catch:{ Throwable -> 0x01f5 }
        r7 = new java.io.BufferedInputStream;	 Catch:{ Throwable -> 0x01f5 }
        r8 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x01f5 }
        r8.<init>(r6);	 Catch:{ Throwable -> 0x01f5 }
        r7.<init>(r8);	 Catch:{ Throwable -> 0x01f5 }
        r2.load(r7, r4);	 Catch:{ Throwable -> 0x01f5 }
        r7.close();	 Catch:{ Throwable -> 0x01f5 }
        r4 = r2;
        goto L_0x008e;
    L_0x01f0:
        r4 = r4.toCharArray();	 Catch:{ Throwable -> 0x01f5 }
        goto L_0x01d5;
    L_0x01f5:
        r4 = move-exception;
        r4 = r2;
        goto L_0x008e;
    L_0x01f9:
        r2 = move-exception;
        r2 = r3;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0200 }
        goto L_0x0096;
    L_0x0200:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00e1;
    L_0x0206:
        r6 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0200 }
        goto L_0x009e;
    L_0x020c:
        r4 = move-exception;
        goto L_0x0061;
    L_0x020f:
        r4 = move-exception;
        goto L_0x01c6;
    L_0x0211:
        r0 = r5;
        r1 = r3;
        goto L_0x0061;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.m.a():java.net.HttpURLConnection");
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:27:0x0046=Splitter:B:27:0x0046, B:10:0x001c=Splitter:B:10:0x001c} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0020 A:{SYNTHETIC, Splitter:B:14:0x0020} */
    private java.io.InputStream a(byte[] r6, java.net.HttpURLConnection r7) {
        /*
        r5 = this;
        r0 = 0;
        r3 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r7 != 0) goto L_0x0006;
    L_0x0005:
        return r0;
    L_0x0006:
        if (r6 != 0) goto L_0x0047;
    L_0x0008:
        r1 = r7.getResponseCode();	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        if (r1 == r3) goto L_0x0024;
    L_0x000e:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        r2.<init>(r1);	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        throw r2;	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
    L_0x0018:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x001c:
        throw r0;	 Catch:{ all -> 0x001d }
    L_0x001d:
        r0 = move-exception;
    L_0x001e:
        if (r1 == 0) goto L_0x0023;
    L_0x0020:
        r1.close();	 Catch:{ Throwable -> 0x0096 }
    L_0x0023:
        throw r0;
    L_0x0024:
        r1 = r7.getContentEncoding();	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        if (r2 != 0) goto L_0x003e;
    L_0x002e:
        r2 = "gzip";
        r1 = r2.equalsIgnoreCase(r1);	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        if (r1 == 0) goto L_0x003e;
    L_0x0036:
        r1 = 1;
        r5.g = r1;	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
    L_0x0039:
        r0 = r7.getInputStream();	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        goto L_0x0005;
    L_0x003e:
        r1 = 0;
        r5.g = r1;	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        goto L_0x0039;
    L_0x0042:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0046:
        throw r0;	 Catch:{ all -> 0x001d }
    L_0x0047:
        r1 = new java.io.BufferedOutputStream;	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        r2 = r7.getOutputStream();	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        r1.<init>(r2);	 Catch:{ IOException -> 0x0018, NetworkErrorException -> 0x0042, Throwable -> 0x0087, all -> 0x0098 }
        r1.write(r6);	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        r1.flush();	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        r0 = r7.getResponseCode();	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        if (r0 == r3) goto L_0x0068;
    L_0x005c:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        throw r2;	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
    L_0x0066:
        r0 = move-exception;
        goto L_0x001c;
    L_0x0068:
        r0 = "gzip";
        r2 = r7.getContentEncoding();	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        r0 = r0.equalsIgnoreCase(r2);	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        if (r0 == 0) goto L_0x0081;
    L_0x0074:
        r0 = 1;
        r5.g = r0;	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
    L_0x0077:
        r0 = r7.getInputStream();	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        r1.close();	 Catch:{ Throwable -> 0x007f }
        goto L_0x0005;
    L_0x007f:
        r1 = move-exception;
        goto L_0x0005;
    L_0x0081:
        r0 = 0;
        r5.g = r0;	 Catch:{ IOException -> 0x0066, NetworkErrorException -> 0x0085, Throwable -> 0x009d }
        goto L_0x0077;
    L_0x0085:
        r0 = move-exception;
        goto L_0x0046;
    L_0x0087:
        r1 = move-exception;
    L_0x0088:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0091 }
        r1 = new java.io.IOException;	 Catch:{ all -> 0x0091 }
        r1.<init>();	 Catch:{ all -> 0x0091 }
        throw r1;	 Catch:{ all -> 0x0091 }
    L_0x0091:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x001e;
    L_0x0096:
        r1 = move-exception;
        goto L_0x0023;
    L_0x0098:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x001e;
    L_0x009d:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0088;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.m.a(byte[], java.net.HttpURLConnection):java.io.InputStream");
    }

    private InputStream a(HttpURLConnection httpURLConnection) {
        if (!e.f(this.a) || httpURLConnection == null || httpURLConnection == null) {
            return null;
        }
        try {
            if (AsyncHttpClient.ENCODING_GZIP.equalsIgnoreCase(httpURLConnection.getContentEncoding())) {
                this.g = true;
            } else {
                this.g = false;
            }
            return httpURLConnection.getInputStream();
        } catch (IOException e) {
            e.a();
            return null;
        }
    }

    private String a(InputStream inputStream) {
        if (inputStream == null) {
            throw new NullPointerException("InputStream");
        }
        try {
            byte[] b = b(inputStream);
            if (b == null) {
                throw new NullPointerException("responseBytes");
            }
            if (this.g) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(b);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                j.b(byteArrayInputStream, byteArrayOutputStream);
                b = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                byteArrayInputStream.close();
            }
            if (b != null) {
                return new String(b);
            }
            throw new IOException();
        } catch (Throwable th) {
            e.a();
            IOException iOException = new IOException();
        }
    }

    public final String a(String str, byte[] bArr) {
        InputStream inputStream = null;
        s.a();
        try {
            HttpURLConnection a;
            Throwable th;
            a(HttpPost.METHOD_NAME, str);
            try {
                a = a();
                try {
                    inputStream = a(bArr, a);
                    String a2 = a(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (a != null) {
                        a.disconnect();
                    }
                    s.b();
                    return a2;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                a = null;
            }
            if (inputStream != null) {
                inputStream.close();
            }
            if (a != null) {
                a.disconnect();
            }
            throw th;
        } catch (Throwable th4) {
            s.b();
        }
    }

    private static byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                bArr = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return bArr;
            }
        }
    }

    public final String a(String str) {
        Throwable th;
        InputStream inputStream = null;
        s.a();
        try {
            b.a();
            HttpURLConnection a;
            try {
                a("GET", str);
                a = a();
                try {
                    inputStream = a(null, a);
                    String a2 = a(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (a != null) {
                        a.disconnect();
                    }
                    s.b();
                    return a2;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                a = null;
                if (inputStream != null) {
                    inputStream.close();
                }
                if (a != null) {
                    a.disconnect();
                }
                throw th;
            }
        } catch (Throwable th4) {
            s.b();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x0075 A:{SYNTHETIC, Splitter:B:42:0x0075} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x007a A:{Catch:{ Throwable -> 0x0083 }} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0075 A:{SYNTHETIC, Splitter:B:42:0x0075} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x007a A:{Catch:{ Throwable -> 0x0083 }} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0075 A:{SYNTHETIC, Splitter:B:42:0x0075} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x007a A:{Catch:{ Throwable -> 0x0083 }} */
    public final boolean a(java.lang.String r6, java.io.File r7) {
        /*
        r5 = this;
        r1 = 0;
        r0 = 0;
        com.baidu.techain.b.s.a();
        com.baidu.techain.b.a();	 Catch:{ all -> 0x007e }
        r2 = r5.a;	 Catch:{ all -> 0x007e }
        r2 = com.baidu.techain.b.e.f(r2);	 Catch:{ all -> 0x007e }
        if (r2 != 0) goto L_0x0014;
    L_0x0010:
        com.baidu.techain.b.s.b();
    L_0x0013:
        return r0;
    L_0x0014:
        r2 = android.text.TextUtils.isEmpty(r6);	 Catch:{ all -> 0x007e }
        if (r2 == 0) goto L_0x001e;
    L_0x001a:
        com.baidu.techain.b.s.b();
        goto L_0x0013;
    L_0x001e:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x007e }
        r3 = "f= ";
        r2.<init>(r3);	 Catch:{ all -> 0x007e }
        r2.append(r7);	 Catch:{ all -> 0x007e }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x007e }
        r2 = "GET";
        r5.a(r2, r6);	 Catch:{ Throwable -> 0x0053, all -> 0x006e }
        r2 = r5.a();	 Catch:{ Throwable -> 0x0053, all -> 0x006e }
        r3 = r5.a(r2);	 Catch:{ Throwable -> 0x0098, all -> 0x008b }
        r1 = r5.a(r3, r7);	 Catch:{ Throwable -> 0x009d, all -> 0x0090 }
        if (r3 == 0) goto L_0x0041;
    L_0x003e:
        r3.close();	 Catch:{ Throwable -> 0x004b }
    L_0x0041:
        if (r2 == 0) goto L_0x0046;
    L_0x0043:
        r2.disconnect();	 Catch:{ Throwable -> 0x004b }
    L_0x0046:
        com.baidu.techain.b.s.b();
        r0 = r1;
        goto L_0x0013;
    L_0x004b:
        r1 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x007e }
        com.baidu.techain.b.s.b();
        goto L_0x0013;
    L_0x0053:
        r2 = move-exception;
        r2 = r1;
    L_0x0055:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0092 }
        if (r2 == 0) goto L_0x005d;
    L_0x005a:
        r2.close();	 Catch:{ Throwable -> 0x0066 }
    L_0x005d:
        if (r1 == 0) goto L_0x0062;
    L_0x005f:
        r1.disconnect();	 Catch:{ Throwable -> 0x0066 }
    L_0x0062:
        com.baidu.techain.b.s.b();
        goto L_0x0013;
    L_0x0066:
        r1 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x007e }
        com.baidu.techain.b.s.b();
        goto L_0x0013;
    L_0x006e:
        r2 = move-exception;
        r3 = r1;
        r4 = r1;
        r1 = r2;
        r2 = r4;
    L_0x0073:
        if (r3 == 0) goto L_0x0078;
    L_0x0075:
        r3.close();	 Catch:{ Throwable -> 0x0083 }
    L_0x0078:
        if (r2 == 0) goto L_0x007d;
    L_0x007a:
        r2.disconnect();	 Catch:{ Throwable -> 0x0083 }
    L_0x007d:
        throw r1;	 Catch:{ all -> 0x007e }
    L_0x007e:
        r0 = move-exception;
        com.baidu.techain.b.s.b();
        throw r0;
    L_0x0083:
        r1 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x007e }
        com.baidu.techain.b.s.b();
        goto L_0x0013;
    L_0x008b:
        r3 = move-exception;
        r4 = r3;
        r3 = r1;
        r1 = r4;
        goto L_0x0073;
    L_0x0090:
        r1 = move-exception;
        goto L_0x0073;
    L_0x0092:
        r3 = move-exception;
        r4 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r4;
        goto L_0x0073;
    L_0x0098:
        r3 = move-exception;
        r4 = r2;
        r2 = r1;
        r1 = r4;
        goto L_0x0055;
    L_0x009d:
        r1 = move-exception;
        r1 = r2;
        r2 = r3;
        goto L_0x0055;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.m.a(java.lang.String, java.io.File):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0037 A:{SYNTHETIC, Splitter:B:21:0x0037} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x004e A:{SYNTHETIC, Splitter:B:33:0x004e} */
    private boolean a(java.io.InputStream r6, java.io.File r7) {
        /*
        r5 = this;
        r0 = 0;
        r2 = 0;
        r1 = r5.g;
        if (r1 == 0) goto L_0x000c;
    L_0x0006:
        r1 = new java.util.zip.GZIPInputStream;	 Catch:{ IOException -> 0x000f }
        r1.<init>(r6);	 Catch:{ IOException -> 0x000f }
        r6 = r1;
    L_0x000c:
        if (r6 != 0) goto L_0x0014;
    L_0x000e:
        return r0;
    L_0x000f:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x000c;
    L_0x0014:
        r1 = new java.io.BufferedOutputStream;	 Catch:{ Throwable -> 0x0059, all -> 0x004a }
        r3 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x0059, all -> 0x004a }
        r3.<init>(r7);	 Catch:{ Throwable -> 0x0059, all -> 0x004a }
        r1.<init>(r3);	 Catch:{ Throwable -> 0x0059, all -> 0x004a }
        r2 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r2 = new byte[r2];	 Catch:{ Throwable -> 0x0031 }
    L_0x0022:
        r3 = r6.read(r2);	 Catch:{ Throwable -> 0x0031 }
        r4 = -1;
        if (r3 == r4) goto L_0x0040;
    L_0x0029:
        r4 = 0;
        r1.write(r2, r4, r3);	 Catch:{ Throwable -> 0x0031 }
        r1.flush();	 Catch:{ Throwable -> 0x0031 }
        goto L_0x0022;
    L_0x0031:
        r2 = move-exception;
    L_0x0032:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0057 }
        if (r1 == 0) goto L_0x000e;
    L_0x0037:
        r1.close();	 Catch:{ IOException -> 0x003b }
        goto L_0x000e;
    L_0x003b:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x000e;
    L_0x0040:
        r1.close();	 Catch:{ IOException -> 0x0045 }
    L_0x0043:
        r0 = 1;
        goto L_0x000e;
    L_0x0045:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0043;
    L_0x004a:
        r0 = move-exception;
        r1 = r2;
    L_0x004c:
        if (r1 == 0) goto L_0x0051;
    L_0x004e:
        r1.close();	 Catch:{ IOException -> 0x0052 }
    L_0x0051:
        throw r0;
    L_0x0052:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0051;
    L_0x0057:
        r0 = move-exception;
        goto L_0x004c;
    L_0x0059:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0032;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.m.a(java.io.InputStream, java.io.File):boolean");
    }
}
