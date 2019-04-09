package com.mqunar.hy.res.libtask;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Proxy;
import android.net.Uri;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.libtask.ProgressType;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal.http.StatusLine;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.params.ConnManagerPNames;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.DefaultClientConnectionOperator;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;

@Instrumented
class NetRequestManager {
    static final int BUFFER_SIZE = 4096;
    private static final String CTWAP_APN_NAME_1 = "#777";
    private static final String CTWAP_APN_NAME_2 = "ctwap";
    private static final Uri PREFERRED_APN_URI = Uri.parse("content://telephony/carriers/preferapn");
    private static final boolean PRINTLOG = false;
    private static NetRequestManager instance;
    private DefaultHttpClient cacheClient;
    private String cacheHost;
    private int cachePort;
    private int connTimeout = 80000;
    private Map<String, String> currentDnsMap = new HashMap();
    private Map<String, List<String>> dnsMap = new HashMap();
    private int readTimeout = 80000;

    class QThreadSafeClientConnManager extends ThreadSafeClientConnManager {
        QThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
            super(httpParams, schemeRegistry);
        }

        /* Access modifiers changed, original: protected */
        public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
            return new DefaultClientConnectionOperator(schemeRegistry) {
                public void openConnection(OperatedClientConnection operatedClientConnection, HttpHost httpHost, InetAddress inetAddress, HttpContext httpContext, HttpParams httpParams) {
                    String hostName = httpHost.getHostName();
                    try {
                        super.openConnection(operatedClientConnection, new HttpHost(NetRequestManager.this.nameToIp(hostName), httpHost.getPort(), httpHost.getSchemeName()), inetAddress, httpContext, httpParams);
                    } catch (IOException e) {
                        NetRequestManager.this.onSocketError(hostName);
                        throw e;
                    }
                }

                public void updateSecureConnection(OperatedClientConnection operatedClientConnection, HttpHost httpHost, HttpContext httpContext, HttpParams httpParams) {
                    String hostName = httpHost.getHostName();
                    try {
                        super.updateSecureConnection(operatedClientConnection, new HttpHost(NetRequestManager.this.nameToIp(hostName), httpHost.getPort(), httpHost.getSchemeName()), httpContext, httpParams);
                    } catch (IOException e) {
                        NetRequestManager.this.onSocketError(hostName);
                        throw e;
                    }
                }

                /* Access modifiers changed, original: protected */
                public void prepareSocket(Socket socket, HttpContext httpContext, HttpParams httpParams) {
                    super.prepareSocket(socket, httpContext, httpParams);
                }
            };
        }

        public void shutdown() {
        }

        public void superShutdown() {
            super.shutdown();
        }
    }

    private String nameToIp(String str) {
        if (!isboolIp(str)) {
            synchronized (this.dnsMap) {
                String str2 = (String) this.currentDnsMap.get(str);
                if (TextUtils.isEmpty(str2)) {
                    List list = (List) this.dnsMap.get(str);
                    if (list == null || list.isEmpty()) {
                        Object substring;
                        if (str.endsWith(".")) {
                            substring = str.substring(0, str.length() - 1);
                        } else {
                            substring = str + ".";
                        }
                        list = (List) this.dnsMap.get(substring);
                    }
                    if (!(list == null || list.isEmpty())) {
                        str2 = (String) list.get((int) (Math.random() * ((double) list.size())));
                        if (!TextUtils.isEmpty(str2)) {
                            this.currentDnsMap.put(str, str2);
                            return str2;
                        }
                    }
                }
                return str2;
            }
        }
        return str;
    }

    private void onSocketError(String str) {
        if (!TextUtils.isEmpty(str) && !isboolIp(str)) {
            synchronized (this.dnsMap) {
                String str2 = (String) this.currentDnsMap.remove(str);
                for (String str3 : this.dnsMap.keySet()) {
                    ((List) this.dnsMap.get(str3)).remove(str2);
                }
            }
        }
    }

    private NetRequestManager() {
    }

    private static int getProxyPort(boolean z, Context context) {
        if (!z) {
            try {
                return Proxy.getPort(context);
            } catch (Throwable th) {
            }
        }
        return Proxy.getDefaultPort();
    }

    private static String getProxyHost(boolean z, Context context) {
        if (!z) {
            try {
                return Proxy.getHost(context);
            } catch (Throwable th) {
            }
        }
        return Proxy.getDefaultHost();
    }

    public static NetRequestManager getInstance() {
        if (instance == null) {
            synchronized (NetRequestManager.class) {
                if (instance == null) {
                    instance = new NetRequestManager();
                }
            }
        }
        return instance;
    }

    private static String getApnName(Context context) {
        String str = "";
        try {
            Cursor query = context.getContentResolver().query(PREFERRED_APN_URI, new String[]{"_id", "apn", "type"}, null, null, null);
            String str2;
            if (query != null) {
                query.moveToFirst();
                if (query.getCount() == 0 || query.isAfterLast()) {
                    str2 = str;
                } else {
                    str2 = query.getString(query.getColumnIndex("apn"));
                }
                query.close();
                return str2;
            }
            query = context.getContentResolver().query(PREFERRED_APN_URI, null, null, null, null);
            if (query == null) {
                return str;
            }
            query.moveToFirst();
            str2 = query.getString(query.getColumnIndex(AIUIConstant.USER));
            query.close();
            return str2;
        } catch (Exception e) {
            try {
                return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            } catch (Exception e2) {
                return "";
            }
        }
    }

    public DefaultHttpClient setupProxy(Context context) {
        return setupProxy(context, null);
    }

    private DefaultHttpClient setupProxy(Context context, String str) {
        String proxyHost;
        int proxyPort;
        NetConnChangeReceiver.dealNetworkInfo(context);
        if (NetConnChangeReceiver.wifi) {
            proxyHost = getProxyHost(false, context);
            proxyPort = getProxyPort(false, context);
        } else {
            proxyHost = getProxyHost(true, context);
            proxyPort = getProxyPort(true, context);
        }
        if (!TextUtils.isEmpty(str) && (str.startsWith("https://") || str.startsWith("HTTPS://"))) {
            String apnName = getApnName(context);
            if ("#777".equalsIgnoreCase(apnName) || "ctwap".equalsIgnoreCase(apnName)) {
                proxyHost = null;
            }
        }
        DefaultHttpClient httpClient = getHttpClient(proxyHost, proxyPort);
        httpClient.addResponseInterceptor(new HttpResponseInterceptor() {
            public void process(HttpResponse httpResponse, HttpContext httpContext) {
                Header contentEncoding = httpResponse.getEntity().getContentEncoding();
                if (contentEncoding != null) {
                    for (HeaderElement name : contentEncoding.getElements()) {
                        if (name.getName().equalsIgnoreCase(AsyncHttpClient.ENCODING_GZIP)) {
                            httpResponse.setEntity(new GzipDecompressingEntity(httpResponse.getEntity()));
                            return;
                        }
                    }
                }
            }
        });
        httpClient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(6, true));
        return httpClient;
    }

    private boolean isboolIp(String str) {
        return Pattern.compile("([1-9]|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])(//.(//d|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])){3}").matcher(str).matches();
    }

    public DefaultHttpClient getHttpClient(String str, int i) {
        if (this.cacheClient != null && equalsString(this.cacheHost, str) && this.cachePort == i) {
            return this.cacheClient;
        }
        this.cacheHost = str;
        this.cachePort = i;
        DefaultHttpClient cacheHttpClient = getCacheHttpClient(str, i);
        this.cacheClient = cacheHttpClient;
        return cacheHttpClient;
    }

    private boolean equalsString(String str, String str2) {
        if (str == null) {
            return str2 == null;
        } else {
            return str.equals(str2);
        }
    }

    private DefaultHttpClient getCacheHttpClient(String str, int i) {
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
        try {
            QSSLSocketFactory qSSLSocketFactory = new QSSLSocketFactory(null);
            qSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
            schemeRegistry.register(new Scheme("https", qSSLSocketFactory, 443));
        } catch (Exception e) {
            Timber.e(e, new Object[0]);
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.connTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.readTimeout);
        if (str != null && str.trim().length() > 0) {
            ConnRouteParams.setDefaultProxy(basicHttpParams, new HttpHost(str, i));
        }
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, ProgressType.PRO_END);
        basicHttpParams.setIntParameter(ConnManagerPNames.MAX_TOTAL_CONNECTIONS, ProgressType.PRO_END);
        ConnPerRouteBean connPerRouteBean = new ConnPerRouteBean(20);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, connPerRouteBean);
        basicHttpParams.setParameter(ConnManagerPNames.MAX_CONNECTIONS_PER_ROUTE, connPerRouteBean);
        return new DefaultHttpClient(new QThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
    }

    private static boolean isRedirect(int i) {
        switch (i) {
            case 300:
            case HttpStatus.SC_MOVED_PERMANENTLY /*301*/:
            case HttpStatus.SC_MOVED_TEMPORARILY /*302*/:
            case HttpStatus.SC_SEE_OTHER /*303*/:
            case 307:
            case StatusLine.HTTP_PERM_REDIRECT /*308*/:
                return true;
            default:
                return false;
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0117 A:{Catch:{ Exception -> 0x01bd }} */
    public com.mqunar.hy.res.libtask.NetResponse request(com.mqunar.hy.res.libtask.NetRequest r14, android.content.Context r15) {
        /*
        r13 = this;
        r9 = 0;
        r11 = 0;
        r10 = -1;
        r8 = new com.mqunar.hy.res.libtask.NetResponse;
        r8.<init>();
        if (r14 == 0) goto L_0x0016;
    L_0x000a:
        r1 = r14.url;
        if (r1 == 0) goto L_0x0016;
    L_0x000e:
        r1 = r14.url;
        r1 = r1.length();
        if (r1 != 0) goto L_0x002a;
    L_0x0016:
        r1 = 3;
        r8.error = r1;
        r1 = r14.handler;
        if (r1 == 0) goto L_0x0028;
    L_0x001d:
        r1 = r14.handler;
        r2 = r8.id;
        r3 = r8.error;
        r4 = r8.e;
        r13.sendMessageInfo(r1, r2, r3, r4);
    L_0x0028:
        r1 = r8;
    L_0x0029:
        return r1;
    L_0x002a:
        r1 = r14.id;
        r8.id = r1;
        r1 = r14.url;
        r7 = r13.setupProxy(r15, r1);
        r1 = r14.content;	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x0093;
    L_0x0038:
        r1 = new org.apache.http.client.methods.HttpPost;	 Catch:{ Throwable -> 0x007b }
        r2 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x007b }
        r6 = new com.mqunar.hy.res.libtask.OutputStreamWarp;	 Catch:{ Throwable -> 0x007b }
        r6.<init>(r14);	 Catch:{ Throwable -> 0x007b }
        r2 = new com.mqunar.hy.res.libtask.NetRequestManager$2;	 Catch:{ Throwable -> 0x007b }
        r3 = r14.content;	 Catch:{ Throwable -> 0x007b }
        r2.<init>(r3, r6);	 Catch:{ Throwable -> 0x007b }
        r1.setEntity(r2);	 Catch:{ Throwable -> 0x007b }
        r3 = r1;
    L_0x004f:
        r1 = r14.hasHeader();	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00bc;
    L_0x0055:
        r1 = r14.header;	 Catch:{ Throwable -> 0x007b }
        r1 = r1.entrySet();	 Catch:{ Throwable -> 0x007b }
        r4 = r1.iterator();	 Catch:{ Throwable -> 0x007b }
    L_0x005f:
        r1 = r4.hasNext();	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00bc;
    L_0x0065:
        r1 = r4.next();	 Catch:{ Throwable -> 0x007b }
        r1 = (java.util.Map.Entry) r1;	 Catch:{ Throwable -> 0x007b }
        r2 = r1.getKey();	 Catch:{ Throwable -> 0x007b }
        r2 = (java.lang.String) r2;	 Catch:{ Throwable -> 0x007b }
        r1 = r1.getValue();	 Catch:{ Throwable -> 0x007b }
        r1 = (java.lang.String) r1;	 Catch:{ Throwable -> 0x007b }
        r3.addHeader(r2, r1);	 Catch:{ Throwable -> 0x007b }
        goto L_0x005f;
    L_0x007b:
        r1 = move-exception;
        r2 = 1;
        r8.error = r2;
        r2 = new java.lang.RuntimeException;
        r2.<init>(r1);
        r8.e = r2;
        r1 = r14.handler;
        r2 = r8.id;
        r3 = r8.error;
        r4 = r8.e;
        r13.sendMessageInfo(r1, r2, r3, r4);
        r1 = r8;
        goto L_0x0029;
    L_0x0093:
        r1 = r14.stream;	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00b2;
    L_0x0097:
        r12 = new org.apache.http.client.methods.HttpPost;	 Catch:{ Throwable -> 0x007b }
        r1 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r12.<init>(r1);	 Catch:{ Throwable -> 0x007b }
        r6 = new com.mqunar.hy.res.libtask.OutputStreamWarp;	 Catch:{ Throwable -> 0x007b }
        r6.<init>(r14);	 Catch:{ Throwable -> 0x007b }
        r1 = new com.mqunar.hy.res.libtask.NetRequestManager$3;	 Catch:{ Throwable -> 0x007b }
        r3 = r14.stream;	 Catch:{ Throwable -> 0x007b }
        r4 = -1;
        r2 = r13;
        r1.<init>(r3, r4, r6);	 Catch:{ Throwable -> 0x007b }
        r12.setEntity(r1);	 Catch:{ Throwable -> 0x007b }
        r3 = r12;
        goto L_0x004f;
    L_0x00b2:
        r1 = new org.apache.http.client.methods.HttpGet;	 Catch:{ Throwable -> 0x007b }
        r2 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x007b }
        r3 = r1;
        r6 = r9;
        goto L_0x004f;
    L_0x00bc:
        r14.httpRequest = r3;	 Catch:{ Throwable -> 0x007b }
        r1 = r7.getCookieStore();	 Catch:{ Throwable -> 0x007b }
        r1.clear();	 Catch:{ Throwable -> 0x007b }
        r1 = r7 instanceof org.apache.http.client.HttpClient;	 Catch:{ Throwable -> 0x007b }
        if (r1 != 0) goto L_0x017b;
    L_0x00c9:
        r1 = r7.execute(r3);	 Catch:{ Throwable -> 0x007b }
    L_0x00cd:
        if (r6 == 0) goto L_0x00d2;
    L_0x00cf:
        r6.checkNotify();	 Catch:{ Throwable -> 0x007b }
    L_0x00d2:
        if (r1 == 0) goto L_0x0178;
    L_0x00d4:
        r2 = r1.getStatusLine();
        r2 = r2.getStatusCode();
        r8.code = r2;
        r2 = r8.code;
        r2 = isRedirect(r2);
        r8.redirect = r2;
        r2 = r13.mergeHeaders(r1);
        r8.headers = r2;
        r1 = r1.getEntity();	 Catch:{ Exception -> 0x01bd }
        r5 = r1.getContent();	 Catch:{ Exception -> 0x01bd }
        r2 = 0;
        r1 = r14.handler;	 Catch:{ Exception -> 0x01bd }
        if (r1 != 0) goto L_0x01d2;
    L_0x00fa:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        if (r1 == 0) goto L_0x01cf;
    L_0x00fe:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        r4 = "Content-Length";
        r1 = r1.get(r4);	 Catch:{ Exception -> 0x01bd }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x01bd }
        if (r1 == 0) goto L_0x0185;
    L_0x010a:
        r4 = android.text.TextUtils.isDigitsOnly(r1);	 Catch:{ Exception -> 0x01bd }
        if (r4 == 0) goto L_0x0185;
    L_0x0110:
        r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x01bd }
        r4 = r1;
    L_0x0115:
        if (r4 <= 0) goto L_0x019a;
    L_0x0117:
        r1 = 409600; // 0x64000 float:5.73972E-40 double:2.023693E-318;
        if (r4 >= r1) goto L_0x019a;
    L_0x011c:
        r1 = new com.mqunar.hy.res.libtask.ByteArrayOutputStream;	 Catch:{ Exception -> 0x01bd }
        r1.<init>(r4);	 Catch:{ Exception -> 0x01bd }
        r4 = r1;
    L_0x0122:
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r6 = new byte[r1];	 Catch:{ Exception -> 0x01bd }
    L_0x0126:
        r7 = r5.read(r6);	 Catch:{ Exception -> 0x01bd }
        if (r7 != r10) goto L_0x01a3;
    L_0x012c:
        r8.total = r2;	 Catch:{ Exception -> 0x01bd }
        r1 = r14.handler;	 Catch:{ Exception -> 0x01bd }
        if (r1 == 0) goto L_0x013b;
    L_0x0132:
        r8.result = r6;	 Catch:{ Exception -> 0x01bd }
        r8.resultLen = r7;	 Catch:{ Exception -> 0x01bd }
        r1 = r14.handler;	 Catch:{ Exception -> 0x01bd }
        r13.sendMessageRead(r1, r8);	 Catch:{ Exception -> 0x01bd }
    L_0x013b:
        r1 = r14.handler;	 Catch:{ Exception -> 0x01bd }
        if (r1 != 0) goto L_0x014d;
    L_0x013f:
        r1 = r4.rawByteArray();	 Catch:{ Exception -> 0x01bd }
        r8.result = r1;	 Catch:{ Exception -> 0x01bd }
        r1 = r8.result;	 Catch:{ Exception -> 0x01bd }
        r1 = r1.length;	 Catch:{ Exception -> 0x01bd }
        r8.resultLen = r1;	 Catch:{ Exception -> 0x01bd }
        r4.close();	 Catch:{ Exception -> 0x01bd }
    L_0x014d:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        if (r1 == 0) goto L_0x0175;
    L_0x0151:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        r4 = "Content-Encoding";
        r1 = r1.get(r4);	 Catch:{ Exception -> 0x01bd }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x01bd }
        r4 = "gzip";
        r1 = r4.equalsIgnoreCase(r1);	 Catch:{ Exception -> 0x01bd }
        if (r1 == 0) goto L_0x0175;
    L_0x0163:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        r4 = "Content-Length";
        r1.remove(r4);	 Catch:{ Exception -> 0x01bd }
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        r4 = "Content-Length";
        r2 = java.lang.String.valueOf(r2);	 Catch:{ Exception -> 0x01bd }
        r1.put(r4, r2);	 Catch:{ Exception -> 0x01bd }
    L_0x0175:
        r5.close();	 Catch:{ Exception -> 0x01bd }
    L_0x0178:
        r1 = r8;
        goto L_0x0029;
    L_0x017b:
        r0 = r7;
        r0 = (org.apache.http.client.HttpClient) r0;	 Catch:{ Throwable -> 0x007b }
        r1 = r0;
        r1 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(r1, r3);	 Catch:{ Throwable -> 0x007b }
        goto L_0x00cd;
    L_0x0185:
        r4 = "chunked";
        r1 = r8.headers;	 Catch:{ Exception -> 0x01bd }
        r6 = "Transfer-Encoding";
        r1 = r1.get(r6);	 Catch:{ Exception -> 0x01bd }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x01bd }
        r1 = r4.equalsIgnoreCase(r1);	 Catch:{ Exception -> 0x01bd }
        if (r1 == 0) goto L_0x01cf;
    L_0x0197:
        r4 = r10;
        goto L_0x0115;
    L_0x019a:
        r1 = new com.mqunar.hy.res.libtask.ByteArrayOutputStream;	 Catch:{ Exception -> 0x01bd }
        r4 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r1.<init>(r4);	 Catch:{ Exception -> 0x01bd }
        r4 = r1;
        goto L_0x0122;
    L_0x01a3:
        r11 = (long) r7;	 Catch:{ Exception -> 0x01bd }
        r1 = r2 + r11;
        r3 = r14.handler;	 Catch:{ Exception -> 0x01bd }
        if (r3 != 0) goto L_0x01b1;
    L_0x01aa:
        r3 = 0;
        r4.write(r6, r3, r7);	 Catch:{ Exception -> 0x01bd }
        r2 = r1;
        goto L_0x0126;
    L_0x01b1:
        r8.result = r6;	 Catch:{ Exception -> 0x01bd }
        r8.resultLen = r7;	 Catch:{ Exception -> 0x01bd }
        r3 = r14.handler;	 Catch:{ Exception -> 0x01bd }
        r13.sendMessageRead(r3, r8);	 Catch:{ Exception -> 0x01bd }
        r2 = r1;
        goto L_0x0126;
    L_0x01bd:
        r1 = move-exception;
        r2 = 2;
        r8.error = r2;
        r8.e = r1;
        r1 = r14.handler;
        r2 = r8.id;
        r3 = r8.error;
        r4 = r8.e;
        r13.sendMessageInfo(r1, r2, r3, r4);
        goto L_0x0178;
    L_0x01cf:
        r4 = r11;
        goto L_0x0115;
    L_0x01d2:
        r4 = r9;
        goto L_0x0122;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.libtask.NetRequestManager.request(com.mqunar.hy.res.libtask.NetRequest, android.content.Context):com.mqunar.hy.res.libtask.NetResponse");
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0094 A:{SYNTHETIC, Splitter:B:32:0x0094} */
    private static void saveToFile(long r7, java.lang.String r9) {
        /*
        r3 = "22";
        monitor-enter(r3);
        r0 = 0;
        r1 = android.os.Environment.getExternalStorageState();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = "mounted";
        r1 = r1.equals(r2);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        if (r1 == 0) goto L_0x007d;
    L_0x0010:
        r1 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
    L_0x0014:
        r2 = r1.exists();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        if (r2 != 0) goto L_0x001d;
    L_0x001a:
        r1.mkdirs();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
    L_0x001d:
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = "qunar_log.txt";
        r4.<init>(r1, r2);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1.<init>();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1 = r1.append(r9);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1 = r1.append(r7);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = ":\n";
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1 = r1.toString();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = r4.exists();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        if (r2 != 0) goto L_0x00a4;
    L_0x0041:
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2.<init>();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r5 = r4.getAbsolutePath();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r5 = "\n";
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1 = r2.append(r1);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r1 = r1.toString();	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = r1;
    L_0x005d:
        r1 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r5 = 1;
        r1.<init>(r4, r5);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r0 = r2.getBytes();	 Catch:{ Throwable -> 0x00a1, all -> 0x009f }
        r1.write(r0);	 Catch:{ Throwable -> 0x00a1, all -> 0x009f }
        r0 = "\n\n";
        r0 = r0.getBytes();	 Catch:{ Throwable -> 0x00a1, all -> 0x009f }
        r1.write(r0);	 Catch:{ Throwable -> 0x00a1, all -> 0x009f }
        r1.flush();	 Catch:{ Throwable -> 0x00a1, all -> 0x009f }
        if (r1 == 0) goto L_0x007b;
    L_0x0078:
        r1.close();	 Catch:{ IOException -> 0x009b }
    L_0x007b:
        monitor-exit(r3);	 Catch:{ all -> 0x0098 }
        return;
    L_0x007d:
        r1 = new java.io.File;	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        r2 = "/data/data/com.Qunar/files";
        r1.<init>(r2);	 Catch:{ Throwable -> 0x0085, all -> 0x008e }
        goto L_0x0014;
    L_0x0085:
        r1 = move-exception;
    L_0x0086:
        if (r0 == 0) goto L_0x007b;
    L_0x0088:
        r0.close();	 Catch:{ IOException -> 0x008c }
        goto L_0x007b;
    L_0x008c:
        r0 = move-exception;
        goto L_0x007b;
    L_0x008e:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0092:
        if (r1 == 0) goto L_0x0097;
    L_0x0094:
        r1.close();	 Catch:{ IOException -> 0x009d }
    L_0x0097:
        throw r0;	 Catch:{ all -> 0x0098 }
    L_0x0098:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0098 }
        throw r0;
    L_0x009b:
        r0 = move-exception;
        goto L_0x007b;
    L_0x009d:
        r1 = move-exception;
        goto L_0x0097;
    L_0x009f:
        r0 = move-exception;
        goto L_0x0092;
    L_0x00a1:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0086;
    L_0x00a4:
        r2 = r1;
        goto L_0x005d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.libtask.NetRequestManager.saveToFile(long, java.lang.String):void");
    }

    private static String bytesToHexString(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String toHexString = Integer.toHexString(b & 255);
            if (toHexString.length() < 2) {
                stringBuilder.append(0);
            }
            stringBuilder.append(toHexString);
        }
        return stringBuilder.toString();
    }

    private Map<String, String> mergeHeaders(HttpResponse httpResponse) {
        HashMap hashMap = new HashMap();
        Header[] allHeaders = httpResponse.getAllHeaders();
        if (allHeaders != null && allHeaders.length > 0) {
            Header header = null;
            int length = allHeaders.length;
            int i = 0;
            Object obj = null;
            while (i < length) {
                Object obj2;
                Header header2 = allHeaders[i];
                String name = header2.getName();
                if (HTTP.CONTENT_LEN.equalsIgnoreCase(name)) {
                    obj2 = obj;
                } else {
                    Object obj3;
                    String value = header2.getValue();
                    if ("Content-Encoding".equalsIgnoreCase(name) && AsyncHttpClient.ENCODING_GZIP.equalsIgnoreCase(value)) {
                        obj3 = 1;
                    } else {
                        obj3 = obj;
                    }
                    hashMap.put(name, value);
                    Header header3 = header;
                    obj2 = obj3;
                    header2 = header3;
                }
                i++;
                obj = obj2;
                header = header2;
            }
            if (header != null) {
                if (obj != null) {
                    hashMap.put(header.getName(), "-1");
                } else {
                    hashMap.put(header.getName(), header.getValue());
                }
            }
        }
        return hashMap;
    }

    private void sendMessageRead(Callback callback, NetResponse netResponse) {
        Object obj;
        String str = null;
        Message obtain = Message.obtain();
        if (netResponse.resultLen > 0) {
            obj = new byte[netResponse.resultLen];
            System.arraycopy(netResponse.result, 0, obj, 0, netResponse.resultLen);
        } else {
            obj = null;
        }
        obtain.what = 1;
        if (netResponse.headers != null) {
            str = (String) netResponse.headers.get(HTTP.CONTENT_LEN);
        }
        if (str != null && str.length() >= 0) {
            netResponse.total = Long.parseLong(str);
        } else if (netResponse.headers != null && ((String) netResponse.headers.get(HTTP.TRANSFER_ENCODING)).equalsIgnoreCase(HTTP.CHUNK_CODING) && netResponse.resultLen == -1) {
            netResponse.total = -1;
        }
        obtain.obj = new NetMsgObj(netResponse.id, netResponse.total, netResponse.resultLen, obj);
        callback.handleMessage(obtain);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean sendMessageWrite(Callback callback, NetRequest netRequest) {
        if (netRequest.handler == null) {
            return false;
        }
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.obj = new NetMsgObj(netRequest.id, netRequest.total, 0, null);
        callback.handleMessage(obtain);
        return true;
    }

    private boolean sendMessageInfo(Callback callback, int i, int i2, Exception exception) {
        if (callback == null) {
            return false;
        }
        Message obtain = Message.obtain();
        obtain.what = 3;
        obtain.obj = new NetMsgObj(i, 0, i2, exception);
        callback.handleMessage(obtain);
        return true;
    }
}
