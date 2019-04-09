package qunar.lego.utils;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.util.Pair;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import com.mqunar.network.NetRequestManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.http.client.utils.URLEncodedUtils;

@Instrumented
public class Pitcher {
    private static String DEFAULT_PROXY_URL;
    private static boolean IS_URL_LOCK = false;
    private static final Uri PREFERRED_APN_URI = Uri.parse("content://telephony/carriers/preferapn");
    private HttpURLConnection conn;
    private final byte[] content;
    private final Context context;
    private String proxyUrl = DEFAULT_PROXY_URL;
    private final HttpHeader reqHeader;
    private final String url;

    public Pitcher(Context context, String str, List<FormPart> list, HttpHeader httpHeader) {
        this.context = context;
        this.url = str;
        Pair protocol = getProtocol(str, (List) list, httpHeader);
        this.content = (byte[]) protocol.second;
        this.reqHeader = (HttpHeader) protocol.first;
    }

    public Pitcher(Context context, String str, byte[] bArr, HttpHeader httpHeader) {
        this.context = context;
        this.url = str;
        Pair protocol = getProtocol(str, bArr, httpHeader);
        this.content = (byte[]) protocol.second;
        this.reqHeader = (HttpHeader) protocol.first;
    }

    public String getProxyUrl() {
        return this.proxyUrl;
    }

    public byte[] getContent() {
        return this.content;
    }

    public String getUrl() {
        return this.url;
    }

    public HttpHeader getReqHeader() {
        return this.reqHeader;
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:38:0x00d3=Splitter:B:38:0x00d3, B:49:0x010d=Splitter:B:49:0x010d} */
    public qunar.lego.utils.PitcherResponse request() {
        /*
        r6 = this;
        r2 = new qunar.lego.utils.PitcherResponse;
        r2.<init>();
        r0 = 0;
        r6.conn = r0;
        r0 = r6.context;	 Catch:{ Exception -> 0x001c }
        if (r0 == 0) goto L_0x0014;
    L_0x000c:
        r0 = r6.url;	 Catch:{ Exception -> 0x001c }
        r0 = isEmpty(r0);	 Catch:{ Exception -> 0x001c }
        if (r0 == 0) goto L_0x0029;
    L_0x0014:
        r0 = new java.lang.IllegalArgumentException;	 Catch:{ Exception -> 0x001c }
        r1 = "context or url illegal";
        r0.<init>(r1);	 Catch:{ Exception -> 0x001c }
        throw r0;	 Catch:{ Exception -> 0x001c }
    L_0x001c:
        r0 = move-exception;
        r2.e = r0;	 Catch:{ all -> 0x0041 }
        r0 = r6.conn;
        if (r0 == 0) goto L_0x0028;
    L_0x0023:
        r0 = r6.conn;
        r0.disconnect();
    L_0x0028:
        return r2;
    L_0x0029:
        r0 = r6.context;	 Catch:{ Exception -> 0x001c }
        r1 = r6.url;	 Catch:{ Exception -> 0x001c }
        r0 = setupProxy(r0, r1);	 Catch:{ Exception -> 0x001c }
        r1 = r6.proxyUrl;	 Catch:{ Exception -> 0x001c }
        r1 = isEmpty(r1);	 Catch:{ Exception -> 0x001c }
        if (r1 == 0) goto L_0x004c;
    L_0x0039:
        r0 = new java.net.MalformedURLException;	 Catch:{ Exception -> 0x001c }
        r1 = "pitcher url must not be empty";
        r0.<init>(r1);	 Catch:{ Exception -> 0x001c }
        throw r0;	 Catch:{ Exception -> 0x001c }
    L_0x0041:
        r0 = move-exception;
        r1 = r6.conn;
        if (r1 == 0) goto L_0x004b;
    L_0x0046:
        r1 = r6.conn;
        r1.disconnect();
    L_0x004b:
        throw r0;
    L_0x004c:
        if (r0 == 0) goto L_0x00a2;
    L_0x004e:
        r1 = new java.net.URL;	 Catch:{ Exception -> 0x001c }
        r3 = r6.proxyUrl;	 Catch:{ Exception -> 0x001c }
        r1.<init>(r3);	 Catch:{ Exception -> 0x001c }
        r0 = r1.openConnection(r0);	 Catch:{ Exception -> 0x001c }
        r0 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.openConnectionWithProxy(r0);	 Catch:{ Exception -> 0x001c }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x001c }
        r6.conn = r0;	 Catch:{ Exception -> 0x001c }
    L_0x0061:
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = 80000; // 0x13880 float:1.12104E-40 double:3.95253E-319;
        r0.setConnectTimeout(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = 80000; // 0x13880 float:1.12104E-40 double:3.95253E-319;
        r0.setReadTimeout(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = "POST";
        r0.setRequestMethod(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = 0;
        r0.setUseCaches(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r6.reqHeader;	 Catch:{ Exception -> 0x001c }
        r3 = r0.iterator();	 Catch:{ Exception -> 0x001c }
    L_0x0084:
        r0 = r3.hasNext();	 Catch:{ Exception -> 0x001c }
        if (r0 == 0) goto L_0x00b6;
    L_0x008a:
        r0 = r3.next();	 Catch:{ Exception -> 0x001c }
        r0 = (java.util.AbstractMap.SimpleEntry) r0;	 Catch:{ Exception -> 0x001c }
        r4 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = r0.getKey();	 Catch:{ Exception -> 0x001c }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x001c }
        r0 = r0.getValue();	 Catch:{ Exception -> 0x001c }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x001c }
        r4.addRequestProperty(r1, r0);	 Catch:{ Exception -> 0x001c }
        goto L_0x0084;
    L_0x00a2:
        r0 = new java.net.URL;	 Catch:{ Exception -> 0x001c }
        r1 = r6.proxyUrl;	 Catch:{ Exception -> 0x001c }
        r0.<init>(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x001c }
        r0 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.openConnection(r0);	 Catch:{ Exception -> 0x001c }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x001c }
        r6.conn = r0;	 Catch:{ Exception -> 0x001c }
        goto L_0x0061;
    L_0x00b6:
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = 1;
        r0.setDoOutput(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = 1;
        r0.setDoInput(r1);	 Catch:{ Exception -> 0x001c }
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = r0.getOutputStream();	 Catch:{ Exception -> 0x001c }
        r0 = r6.content;	 Catch:{ all -> 0x0109 }
        r1.write(r0);	 Catch:{ all -> 0x0109 }
        r1.flush();	 Catch:{ all -> 0x0109 }
        r1.close();	 Catch:{ IOException -> 0x0126 }
    L_0x00d3:
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r0 = r0.getResponseCode();	 Catch:{ Exception -> 0x001c }
        r2.respcode = r0;	 Catch:{ Exception -> 0x001c }
        r0 = new qunar.lego.utils.HttpHeader;	 Catch:{ Exception -> 0x001c }
        r1 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r1 = r1.getHeaderFields();	 Catch:{ Exception -> 0x001c }
        r0.<init>(r1);	 Catch:{ Exception -> 0x001c }
        r2.respHeader = r0;	 Catch:{ Exception -> 0x001c }
        r0 = r2.respcode;	 Catch:{ Exception -> 0x001c }
        r1 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r0 >= r1) goto L_0x011b;
    L_0x00ee:
        r0 = r6.conn;	 Catch:{ Exception -> 0x001c }
        r0 = r0.getInputStream();	 Catch:{ Exception -> 0x001c }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x001c }
        r1.<init>();	 Catch:{ Exception -> 0x001c }
        r3 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r3 = new byte[r3];	 Catch:{ Exception -> 0x001c }
    L_0x00fd:
        r4 = r0.read(r3);	 Catch:{ Exception -> 0x001c }
        r5 = -1;
        if (r4 == r5) goto L_0x010e;
    L_0x0104:
        r5 = 0;
        r1.write(r3, r5, r4);	 Catch:{ Exception -> 0x001c }
        goto L_0x00fd;
    L_0x0109:
        r0 = move-exception;
        r1.close();	 Catch:{ IOException -> 0x0128 }
    L_0x010d:
        throw r0;	 Catch:{ Exception -> 0x001c }
    L_0x010e:
        r1.flush();	 Catch:{ Exception -> 0x001c }
        r0 = r1.toByteArray();	 Catch:{ Exception -> 0x001c }
        r0 = buildResult(r0);	 Catch:{ Exception -> 0x001c }
        r2.content = r0;	 Catch:{ Exception -> 0x001c }
    L_0x011b:
        r0 = r6.conn;
        if (r0 == 0) goto L_0x0028;
    L_0x011f:
        r0 = r6.conn;
        r0.disconnect();
        goto L_0x0028;
    L_0x0126:
        r0 = move-exception;
        goto L_0x00d3;
    L_0x0128:
        r1 = move-exception;
        goto L_0x010d;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.lego.utils.Pitcher.request():qunar.lego.utils.PitcherResponse");
    }

    public void cancel() {
        if (this.conn != null) {
            this.conn.disconnect();
        }
    }

    public Pitcher setProxyUrl(String str) {
        this.proxyUrl = str;
        return this;
    }

    private static Pair<HttpHeader, byte[]> getProtocol(String str, byte[] bArr, HttpHeader httpHeader) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        HttpHeader httpHeader2 = new HttpHeader();
        if (!httpHeader2.hasHeader("Content-Type")) {
            httpHeader2.setHeader("Content-Type", URLEncodedUtils.CONTENT_TYPE);
        }
        byte[] buildRequest = buildRequest(bArr);
        httpHeader2.setHeader("Pitcher-Url", str);
        if (httpHeader != null) {
            httpHeader2.addHeaders(httpHeader);
        }
        httpHeader2.setHeader("L-Date", getLDate());
        return new Pair(httpHeader2, buildRequest);
    }

    private static Pair<HttpHeader, byte[]> getProtocol(String str, List<FormPart> list, HttpHeader httpHeader) {
        byte[] toByteArray;
        MultipartEntity multipartEntity = new MultipartEntity(list);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            multipartEntity.writeTo(byteArrayOutputStream);
            toByteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (IOException e) {
            }
        } catch (IOException e2) {
            toByteArray = new byte[0];
            try {
                byteArrayOutputStream.close();
            } catch (IOException e3) {
            }
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
            }
            throw th;
        }
        String contentType = multipartEntity.getContentType();
        HttpHeader httpHeader2 = new HttpHeader();
        if (contentType != null) {
            httpHeader2.setHeader("Content-Type", contentType);
        }
        toByteArray = buildRequest(toByteArray);
        httpHeader2.setHeader("Pitcher-Url", str);
        if (httpHeader != null) {
            httpHeader2.addHeaders(httpHeader);
        }
        httpHeader2.setHeader("L-Date", getLDate());
        return new Pair(httpHeader2, toByteArray);
    }

    private static String getLDate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS Z z");
        simpleDateFormat.setLenient(false);
        try {
            return simpleDateFormat.format(new Date());
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static boolean isEmpty(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        if (!(obj instanceof CharSequence)) {
            if (obj.getClass().isArray()) {
                if (obj instanceof Object[]) {
                    if (((Object[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof int[]) {
                    if (((int[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof long[]) {
                    if (((long[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof short[]) {
                    if (((short[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof double[]) {
                    if (((double[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof float[]) {
                    if (((float[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof boolean[]) {
                    if (((boolean[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof char[]) {
                    if (((char[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                } else if (obj instanceof byte[]) {
                    if (((byte[]) obj).length != 0) {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        } else if (((CharSequence) obj).length() != 0) {
            return false;
        } else {
            return true;
        }
    }

    private static Proxy setupProxy(Context context, String str) {
        NetworkInfo activeNetworkInfo;
        boolean z;
        int proxyPort;
        String str2;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
            z = false;
        } else {
            z = true;
        }
        String proxyHost;
        if (z) {
            proxyHost = getProxyHost(false, context);
            proxyPort = getProxyPort(false, context);
            str2 = proxyHost;
        } else {
            proxyHost = getProxyHost(true, context);
            proxyPort = getProxyPort(true, context);
            str2 = proxyHost;
        }
        if (str.toLowerCase().startsWith("https://")) {
            String str3;
            String str4 = "";
            try {
                Cursor query = context.getContentResolver().query(PREFERRED_APN_URI, new String[]{"_id", "apn", "type"}, null, null, null);
                if (query != null) {
                    query.moveToFirst();
                    if (query.getCount() == 0 || query.isAfterLast()) {
                        str3 = str4;
                    } else {
                        str3 = query.getString(query.getColumnIndex("apn"));
                    }
                    query.close();
                } else {
                    query = context.getContentResolver().query(PREFERRED_APN_URI, null, null, null, null);
                    if (query != null) {
                        query.moveToFirst();
                        str3 = query.getString(query.getColumnIndex(AIUIConstant.USER));
                        query.close();
                    } else {
                        str3 = str4;
                    }
                }
            } catch (Exception e2) {
                try {
                    str3 = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
                } catch (Exception e3) {
                    str3 = "";
                }
            }
            if (NetRequestManager.CTWAP_APN_NAME_1.equalsIgnoreCase(str3) || NetRequestManager.CTWAP_APN_NAME_2.equalsIgnoreCase(str3)) {
                str2 = null;
            }
        }
        if (str2 == null || proxyPort == -1) {
            return null;
        }
        return new Proxy(Type.HTTP, new InetSocketAddress(str2, proxyPort));
    }

    private static int getProxyPort(boolean z, Context context) {
        if (!z) {
            try {
                return android.net.Proxy.getPort(context);
            } catch (Throwable th) {
            }
        }
        return android.net.Proxy.getDefaultPort();
    }

    private static String getProxyHost(boolean z, Context context) {
        if (!z) {
            try {
                return android.net.Proxy.getHost(context);
            } catch (Throwable th) {
            }
        }
        return android.net.Proxy.getDefaultHost();
    }

    public static void setDefaultProxyUrl(String str) {
        if (!IS_URL_LOCK) {
            DEFAULT_PROXY_URL = str;
        }
    }

    public static void lockUrl() {
        IS_URL_LOCK = true;
    }

    private static byte[] buildRequest(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        return Goblin.sand(bArr);
    }

    public static byte[] buildResult(byte[] bArr) {
        return isEmpty(bArr) ? new byte[0] : Goblin.drift(bArr);
    }
}
