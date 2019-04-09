package com.mqunar.network;

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
import com.iflytek.cloud.SpeechEvent;
import com.mqunar.libtask.ProgressType;
import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import com.mqunar.network.Headers.Builder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import okhttp3.internal.http.StatusLine;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
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
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

@Instrumented
public class NetRequestManager {
    public static final int BUFFER_SIZE = 4096;
    public static final String CTWAP_APN_NAME_1 = "#777";
    public static final String CTWAP_APN_NAME_2 = "ctwap";
    public static final Uri PREFERRED_APN_URI = Uri.parse("content://telephony/carriers/preferapn");
    private static NetRequestManager g;
    private int a = 80000;
    private int b = 80000;
    private int c = 80000;
    private DefaultHttpClient d;
    private String e;
    private int f;
    private Map<String, String> h = new HashMap();
    private Map<String, List<String>> i = new HashMap();

    private boolean a(Context context, String str) {
        System.currentTimeMillis();
        DefaultHttpClient b = b(context, str);
        HttpGet httpGet = new HttpGet(str);
        try {
            HttpResponse execute;
            if (b instanceof HttpClient) {
                execute = HttpInstrumentation.execute(b, httpGet);
            } else {
                execute = b.execute(httpGet);
            }
            if (execute.getStatusLine().getStatusCode() == 200) {
                JSONObject jSONObject = new JSONObject(EntityUtils.toString(execute.getEntity()));
                if (jSONObject.getInt("errcode") == 0) {
                    JSONArray jSONArray = jSONObject.getJSONArray(SpeechEvent.KEY_EVENT_RECORD_DATA);
                    synchronized (this.i) {
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String string = jSONObject2.getString("record");
                            String string2 = jSONObject2.getString(AIUIConstant.KEY_NAME);
                            if (!(TextUtils.isEmpty(string2) || TextUtils.isEmpty(string))) {
                                List list = (List) this.i.get(string2);
                                if (list == null) {
                                    list = new ArrayList();
                                    this.i.put(string2, list);
                                }
                                if (!list.contains(string)) {
                                    list.add(string);
                                }
                            }
                        }
                    }
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private boolean a(Context context, String str, String str2) {
        boolean[] zArr = new boolean[1];
        AtomicInteger atomicInteger = new AtomicInteger(2);
        new e(this, context, str, zArr, atomicInteger).start();
        new f(this, context, str2, zArr, atomicInteger).start();
        if (!zArr[0]) {
            try {
                synchronized (zArr) {
                    zArr.wait();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return zArr[0];
    }

    public void requestIpList(Context context) {
        new g(this, context).start();
    }

    private String a(String str) {
        if (!c(str)) {
            synchronized (this.i) {
                String str2 = (String) this.h.get(str);
                if (TextUtils.isEmpty(str2)) {
                    List list = (List) this.i.get(str);
                    if (list == null || list.isEmpty()) {
                        Object substring;
                        if (str.endsWith(".")) {
                            substring = str.substring(0, str.length() - 1);
                        } else {
                            substring = str + ".";
                        }
                        list = (List) this.i.get(substring);
                    }
                    if (!(list == null || list.isEmpty())) {
                        str2 = (String) list.get((int) (Math.random() * ((double) list.size())));
                        if (!TextUtils.isEmpty(str2)) {
                            this.h.put(str, str2);
                            return str2;
                        }
                    }
                }
                return str2;
            }
        }
        return str;
    }

    private void b(String str) {
        if (!TextUtils.isEmpty(str) && !c(str)) {
            synchronized (this.i) {
                String str2 = (String) this.h.remove(str);
                for (String str3 : this.i.keySet()) {
                    ((List) this.i.get(str3)).remove(str2);
                }
            }
        }
    }

    private NetRequestManager() {
    }

    public static int getProxyPort(boolean z, Context context) {
        if (!z) {
            try {
                return Proxy.getPort(context);
            } catch (Throwable th) {
            }
        }
        return Proxy.getDefaultPort();
    }

    public static String getProxyHost(boolean z, Context context) {
        if (!z) {
            try {
                return Proxy.getHost(context);
            } catch (Throwable th) {
            }
        }
        return Proxy.getDefaultHost();
    }

    public static NetRequestManager getInstance() {
        if (g == null) {
            synchronized (NetRequestManager.class) {
                if (g == null) {
                    g = new NetRequestManager();
                }
            }
        }
        return g;
    }

    public static String getApnName(Context context) {
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
        return b(context, null);
    }

    private DefaultHttpClient b(Context context, String str) {
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
            if (CTWAP_APN_NAME_1.equalsIgnoreCase(apnName) || CTWAP_APN_NAME_2.equalsIgnoreCase(apnName)) {
                proxyHost = null;
            }
        }
        DefaultHttpClient httpClient = getHttpClient(proxyHost, proxyPort);
        httpClient.addResponseInterceptor(new h(this));
        httpClient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(6, true));
        return httpClient;
    }

    public void setTimeout(int i, int i2, int i3) {
        this.a = i;
        this.c = i3;
        this.b = i2;
    }

    private boolean c(String str) {
        return Pattern.compile("([1-9]|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])(//.(//d|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])){3}").matcher(str).matches();
    }

    public DefaultHttpClient getHttpClient(String str, int i) {
        if (this.d != null && a(this.e, str) && this.f == i) {
            return this.d;
        }
        this.e = str;
        this.f = i;
        DefaultHttpClient a = a(str, i);
        this.d = a;
        return a;
    }

    private boolean a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        } else {
            return str.equals(str2);
        }
    }

    private DefaultHttpClient a(String str, int i) {
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
        try {
            QSSLSocketFactory qSSLSocketFactory = new QSSLSocketFactory(null);
            qSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
            schemeRegistry.register(new Scheme("https", qSSLSocketFactory, 443));
        } catch (Exception e) {
            e.printStackTrace();
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.a);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.b);
        if (str != null && str.trim().length() > 0) {
            ConnRouteParams.setDefaultProxy(basicHttpParams, new HttpHost(str, i));
        }
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, ProgressType.PRO_END);
        basicHttpParams.setIntParameter(ConnManagerPNames.MAX_TOTAL_CONNECTIONS, ProgressType.PRO_END);
        ConnPerRouteBean connPerRouteBean = new ConnPerRouteBean(20);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, connPerRouteBean);
        basicHttpParams.setParameter(ConnManagerPNames.MAX_CONNECTIONS_PER_ROUTE, connPerRouteBean);
        return new DefaultHttpClient(new l(this, basicHttpParams, schemeRegistry), basicHttpParams);
    }

    public static boolean isRedirect(int i) {
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

    /* JADX WARNING: Removed duplicated region for block: B:57:0x016b A:{Catch:{ Exception -> 0x01fb }} */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x0226 A:{SYNTHETIC, Splitter:B:103:0x0226} */
    public com.mqunar.network.NetResponse request(com.mqunar.network.NetRequest r14, android.content.Context r15) {
        /*
        r13 = this;
        r10 = -1;
        r9 = 0;
        r11 = 0;
        r8 = new com.mqunar.network.NetResponse;
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
        r7 = r13.b(r15, r1);
        r1 = r14.a;	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x0093;
    L_0x0038:
        r1 = new org.apache.http.client.methods.HttpPost;	 Catch:{ Throwable -> 0x007b }
        r2 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x007b }
        r6 = new com.mqunar.network.OutputStreamWarp;	 Catch:{ Throwable -> 0x007b }
        r6.<init>(r14);	 Catch:{ Throwable -> 0x007b }
        r2 = new com.mqunar.network.i;	 Catch:{ Throwable -> 0x007b }
        r3 = r14.a;	 Catch:{ Throwable -> 0x007b }
        r2.<init>(r13, r3, r6);	 Catch:{ Throwable -> 0x007b }
        r1.setEntity(r2);	 Catch:{ Throwable -> 0x007b }
        r3 = r1;
    L_0x004f:
        r1 = r14.hasHeader();	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00f0;
    L_0x0055:
        r1 = r14.header;	 Catch:{ Throwable -> 0x007b }
        r1 = r1.entrySet();	 Catch:{ Throwable -> 0x007b }
        r4 = r1.iterator();	 Catch:{ Throwable -> 0x007b }
    L_0x005f:
        r1 = r4.hasNext();	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00f0;
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
        r1 = r14.b;	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00b2;
    L_0x0097:
        r12 = new org.apache.http.client.methods.HttpPost;	 Catch:{ Throwable -> 0x007b }
        r1 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r12.<init>(r1);	 Catch:{ Throwable -> 0x007b }
        r6 = new com.mqunar.network.OutputStreamWarp;	 Catch:{ Throwable -> 0x007b }
        r6.<init>(r14);	 Catch:{ Throwable -> 0x007b }
        r1 = new com.mqunar.network.j;	 Catch:{ Throwable -> 0x007b }
        r3 = r14.b;	 Catch:{ Throwable -> 0x007b }
        r4 = -1;
        r2 = r13;
        r1.<init>(r2, r3, r4, r6);	 Catch:{ Throwable -> 0x007b }
        r12.setEntity(r1);	 Catch:{ Throwable -> 0x007b }
        r3 = r12;
        goto L_0x004f;
    L_0x00b2:
        r1 = r14.d;	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00e5;
    L_0x00b6:
        r2 = new org.apache.http.client.methods.HttpPost;	 Catch:{ Throwable -> 0x007b }
        r1 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r2.<init>(r1);	 Catch:{ Throwable -> 0x007b }
        r6 = new com.mqunar.network.OutputStreamWarp;	 Catch:{ Throwable -> 0x007b }
        r6.<init>(r14);	 Catch:{ Throwable -> 0x007b }
        r3 = new com.mqunar.network.k;	 Catch:{ Throwable -> 0x007b }
        r1 = org.apache.http.entity.mime.HttpMultipartMode.BROWSER_COMPATIBLE;	 Catch:{ Throwable -> 0x007b }
        r3.<init>(r13, r1, r6);	 Catch:{ Throwable -> 0x007b }
        r1 = r14.d;	 Catch:{ Throwable -> 0x007b }
        r4 = r1.iterator();	 Catch:{ Throwable -> 0x007b }
    L_0x00cf:
        r1 = r4.hasNext();	 Catch:{ Throwable -> 0x007b }
        if (r1 == 0) goto L_0x00df;
    L_0x00d5:
        r1 = r4.next();	 Catch:{ Throwable -> 0x007b }
        r1 = (org.apache.http.entity.mime.FormBodyPart) r1;	 Catch:{ Throwable -> 0x007b }
        r3.addPart(r1);	 Catch:{ Throwable -> 0x007b }
        goto L_0x00cf;
    L_0x00df:
        r2.setEntity(r3);	 Catch:{ Throwable -> 0x007b }
        r3 = r2;
        goto L_0x004f;
    L_0x00e5:
        r1 = new org.apache.http.client.methods.HttpGet;	 Catch:{ Throwable -> 0x007b }
        r2 = r14.url;	 Catch:{ Throwable -> 0x007b }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x007b }
        r3 = r1;
        r6 = r9;
        goto L_0x004f;
    L_0x00f0:
        r14.c = r3;	 Catch:{ Throwable -> 0x007b }
        r1 = r14.url;	 Catch:{ Throwable -> 0x007b }
        com.mqunar.network.NetCookieUtils.a(r15, r1, r3);	 Catch:{ Throwable -> 0x007b }
        r1 = r7.getCookieStore();	 Catch:{ Throwable -> 0x007b }
        r1.clear();	 Catch:{ Throwable -> 0x007b }
        r1 = new java.text.SimpleDateFormat;	 Catch:{ Throwable -> 0x007b }
        r2 = "yyyy-MM-dd HH:mm:ss.SSS Z z";
        r1.<init>(r2);	 Catch:{ Throwable -> 0x007b }
        r2 = 0;
        r1.setLenient(r2);	 Catch:{ Throwable -> 0x007b }
        r2 = new java.util.Date;	 Catch:{ Throwable -> 0x007b }
        r2.<init>();	 Catch:{ Throwable -> 0x007b }
        r1 = r1.format(r2);	 Catch:{ Throwable -> 0x007b }
        r2 = "L-Date";
        r3.addHeader(r2, r1);	 Catch:{ Throwable -> 0x007b }
        r1 = r7 instanceof org.apache.http.client.HttpClient;	 Catch:{ Throwable -> 0x007b }
        if (r1 != 0) goto L_0x01d5;
    L_0x011b:
        r1 = r7.execute(r3);	 Catch:{ Throwable -> 0x007b }
    L_0x011f:
        r2 = r14.url;	 Catch:{ Throwable -> 0x007b }
        com.mqunar.network.NetCookieUtils.a(r15, r2, r1);	 Catch:{ Throwable -> 0x007b }
        if (r6 == 0) goto L_0x0129;
    L_0x0126:
        r6.checkNotify();	 Catch:{ Throwable -> 0x007b }
    L_0x0129:
        if (r1 == 0) goto L_0x01d2;
    L_0x012b:
        r2 = r1.getStatusLine();
        r2 = r2.getStatusCode();
        r8.code = r2;
        r2 = r8.code;
        r2 = isRedirect(r2);
        r8.redirect = r2;
        r2 = r13.a(r1);
        r8.headers = r2;
        r2 = r1.getEntity();	 Catch:{ Exception -> 0x0242, all -> 0x023f }
        r5 = r2.getContent();	 Catch:{ Exception -> 0x01fb }
        r3 = 0;
        r1 = r14.handler;	 Catch:{ Exception -> 0x01fb }
        if (r1 != 0) goto L_0x0175;
    L_0x0151:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01fb }
        if (r1 == 0) goto L_0x0245;
    L_0x0155:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01fb }
        r6 = "Content-Length";
        r1 = r1.get(r6);	 Catch:{ Exception -> 0x01fb }
        if (r1 == 0) goto L_0x01df;
    L_0x015f:
        r6 = android.text.TextUtils.isDigitsOnly(r1);	 Catch:{ Exception -> 0x01fb }
        if (r6 == 0) goto L_0x01df;
    L_0x0165:
        r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x01fb }
    L_0x0169:
        if (r1 <= 0) goto L_0x01f2;
    L_0x016b:
        r6 = 409600; // 0x64000 float:5.73972E-40 double:2.023693E-318;
        if (r1 >= r6) goto L_0x01f2;
    L_0x0170:
        r9 = new com.mqunar.network.a;	 Catch:{ Exception -> 0x01fb }
        r9.<init>(r1);	 Catch:{ Exception -> 0x01fb }
    L_0x0175:
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r1 = new byte[r1];	 Catch:{ Exception -> 0x01fb }
    L_0x0179:
        r6 = r5.read(r1);	 Catch:{ Exception -> 0x01fb }
        if (r6 != r10) goto L_0x0217;
    L_0x017f:
        r8.total = r3;	 Catch:{ Exception -> 0x01fb }
        r7 = r14.handler;	 Catch:{ Exception -> 0x01fb }
        if (r7 == 0) goto L_0x018e;
    L_0x0185:
        r8.result = r1;	 Catch:{ Exception -> 0x01fb }
        r8.resultLen = r6;	 Catch:{ Exception -> 0x01fb }
        r1 = r14.handler;	 Catch:{ Exception -> 0x01fb }
        r13.sendMessageRead(r1, r8);	 Catch:{ Exception -> 0x01fb }
    L_0x018e:
        r1 = r14.handler;	 Catch:{ Exception -> 0x01fb }
        if (r1 != 0) goto L_0x01a0;
    L_0x0192:
        r1 = r9.b();	 Catch:{ Exception -> 0x01fb }
        r8.result = r1;	 Catch:{ Exception -> 0x01fb }
        r1 = r8.result;	 Catch:{ Exception -> 0x01fb }
        r1 = r1.length;	 Catch:{ Exception -> 0x01fb }
        r8.resultLen = r1;	 Catch:{ Exception -> 0x01fb }
        r9.close();	 Catch:{ Exception -> 0x01fb }
    L_0x01a0:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01fb }
        if (r1 == 0) goto L_0x01ca;
    L_0x01a4:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01fb }
        r6 = "Content-Encoding";
        r1 = r1.get(r6);	 Catch:{ Exception -> 0x01fb }
        r6 = "gzip";
        r1 = r6.equalsIgnoreCase(r1);	 Catch:{ Exception -> 0x01fb }
        if (r1 == 0) goto L_0x01ca;
    L_0x01b4:
        r1 = r8.headers;	 Catch:{ Exception -> 0x01fb }
        r1 = r1.newBuilder();	 Catch:{ Exception -> 0x01fb }
        r6 = "Content-Length";
        r3 = java.lang.String.valueOf(r3);	 Catch:{ Exception -> 0x01fb }
        r1 = r1.set(r6, r3);	 Catch:{ Exception -> 0x01fb }
        r1 = r1.build();	 Catch:{ Exception -> 0x01fb }
        r8.headers = r1;	 Catch:{ Exception -> 0x01fb }
    L_0x01ca:
        r5.close();	 Catch:{ Exception -> 0x01fb }
        if (r2 == 0) goto L_0x01d2;
    L_0x01cf:
        r2.consumeContent();	 Catch:{ IOException -> 0x0235 }
    L_0x01d2:
        r1 = r8;
        goto L_0x0029;
    L_0x01d5:
        r0 = r7;
        r0 = (org.apache.http.client.HttpClient) r0;	 Catch:{ Throwable -> 0x007b }
        r1 = r0;
        r1 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.execute(r1, r3);	 Catch:{ Throwable -> 0x007b }
        goto L_0x011f;
    L_0x01df:
        r1 = "chunked";
        r6 = r8.headers;	 Catch:{ Exception -> 0x01fb }
        r7 = "Transfer-Encoding";
        r6 = r6.get(r7);	 Catch:{ Exception -> 0x01fb }
        r1 = r1.equalsIgnoreCase(r6);	 Catch:{ Exception -> 0x01fb }
        if (r1 == 0) goto L_0x0245;
    L_0x01ef:
        r1 = r10;
        goto L_0x0169;
    L_0x01f2:
        r9 = new com.mqunar.network.a;	 Catch:{ Exception -> 0x01fb }
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r9.<init>(r1);	 Catch:{ Exception -> 0x01fb }
        goto L_0x0175;
    L_0x01fb:
        r1 = move-exception;
    L_0x01fc:
        r3 = 2;
        r8.error = r3;	 Catch:{ all -> 0x0223 }
        r8.e = r1;	 Catch:{ all -> 0x0223 }
        r1 = r14.handler;	 Catch:{ all -> 0x0223 }
        r3 = r8.id;	 Catch:{ all -> 0x0223 }
        r4 = r8.error;	 Catch:{ all -> 0x0223 }
        r5 = r8.e;	 Catch:{ all -> 0x0223 }
        r13.sendMessageInfo(r1, r3, r4, r5);	 Catch:{ all -> 0x0223 }
        if (r2 == 0) goto L_0x01d2;
    L_0x020e:
        r2.consumeContent();	 Catch:{ IOException -> 0x0212 }
        goto L_0x01d2;
    L_0x0212:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x01d2;
    L_0x0217:
        r11 = (long) r6;
        r3 = r3 + r11;
        r7 = r14.handler;	 Catch:{ Exception -> 0x01fb }
        if (r7 != 0) goto L_0x022a;
    L_0x021d:
        r7 = 0;
        r9.write(r1, r7, r6);	 Catch:{ Exception -> 0x01fb }
        goto L_0x0179;
    L_0x0223:
        r1 = move-exception;
    L_0x0224:
        if (r2 == 0) goto L_0x0229;
    L_0x0226:
        r2.consumeContent();	 Catch:{ IOException -> 0x023a }
    L_0x0229:
        throw r1;
    L_0x022a:
        r8.result = r1;	 Catch:{ Exception -> 0x01fb }
        r8.resultLen = r6;	 Catch:{ Exception -> 0x01fb }
        r6 = r14.handler;	 Catch:{ Exception -> 0x01fb }
        r13.sendMessageRead(r6, r8);	 Catch:{ Exception -> 0x01fb }
        goto L_0x0179;
    L_0x0235:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x01d2;
    L_0x023a:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x0229;
    L_0x023f:
        r1 = move-exception;
        r2 = r9;
        goto L_0x0224;
    L_0x0242:
        r1 = move-exception;
        r2 = r9;
        goto L_0x01fc;
    L_0x0245:
        r1 = r11;
        goto L_0x0169;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.network.NetRequestManager.request(com.mqunar.network.NetRequest, android.content.Context):com.mqunar.network.NetResponse");
    }

    private Headers a(HttpResponse httpResponse) {
        Builder builder = new Builder();
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
                    builder.add(name, value);
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
                    builder.add(header.getName(), "-1");
                } else if (header != null) {
                    builder.add(header.getName(), header.getValue());
                }
            }
        }
        return builder.build();
    }

    public void sendMessageRead(Callback callback, NetResponse netResponse) {
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
            str = netResponse.headers.get(HTTP.CONTENT_LEN);
        }
        if (str != null && str.length() >= 0) {
            netResponse.total = Long.parseLong(str);
        } else if (netResponse.headers != null && netResponse.headers.get(HTTP.TRANSFER_ENCODING).equalsIgnoreCase(HTTP.CHUNK_CODING) && netResponse.resultLen == -1) {
            netResponse.total = -1;
        }
        obtain.obj = new NetMsgObj(netResponse.id, netResponse.total, netResponse.resultLen, obj);
        callback.handleMessage(obtain);
    }

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

    public boolean sendMessageInfo(Callback callback, int i, int i2, Exception exception) {
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
