package com.baidu.lbsapi.auth;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import com.mqunar.network.NetRequestManager;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.client.methods.HttpPost;

@Instrumented
public class g {
    private Context a;
    private String b = null;
    private HashMap<String, String> c = null;
    private String d = null;

    public g(Context context) {
        this.a = context;
    }

    private String a(Context context) {
        String str = "wifi";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return null;
            }
            String extraInfo = activeNetworkInfo.getExtraInfo();
            return (extraInfo == null || !(extraInfo.trim().toLowerCase().equals("cmwap") || extraInfo.trim().toLowerCase().equals("uniwap") || extraInfo.trim().toLowerCase().equals("3gwap") || extraInfo.trim().toLowerCase().equals(NetRequestManager.CTWAP_APN_NAME_2))) ? str : extraInfo.trim().toLowerCase().equals(NetRequestManager.CTWAP_APN_NAME_2) ? NetRequestManager.CTWAP_APN_NAME_2 : "cmwap";
        } catch (Exception e) {
            if (a.a) {
                e.printStackTrace();
            }
            return null;
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:97:0x01b9=Splitter:B:97:0x01b9, B:81:0x017d=Splitter:B:81:0x017d} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013b A:{Catch:{ all -> 0x0232 }} */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x015f A:{SYNTHETIC, Splitter:B:67:0x015f} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0181 A:{Catch:{ all -> 0x0230 }} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01a5 A:{SYNTHETIC, Splitter:B:87:0x01a5} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01bd A:{Catch:{ all -> 0x0230 }} */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x01e1 A:{SYNTHETIC, Splitter:B:103:0x01e1} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013b A:{Catch:{ all -> 0x0232 }} */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x015f A:{SYNTHETIC, Splitter:B:67:0x015f} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0181 A:{Catch:{ all -> 0x0230 }} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01a5 A:{SYNTHETIC, Splitter:B:87:0x01a5} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01bd A:{Catch:{ all -> 0x0230 }} */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x01e1 A:{SYNTHETIC, Splitter:B:103:0x01e1} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0181 A:{Catch:{ all -> 0x0230 }} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01a5 A:{SYNTHETIC, Splitter:B:87:0x01a5} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01bd A:{Catch:{ all -> 0x0230 }} */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x01e1 A:{SYNTHETIC, Splitter:B:103:0x01e1} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0131 A:{Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }} */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x01f6 A:{SYNTHETIC, Splitter:B:114:0x01f6} */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x01f6 A:{SYNTHETIC, Splitter:B:114:0x01f6} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d3 A:{SYNTHETIC, Splitter:B:36:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0131 A:{Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0131 A:{Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0085 A:{Catch:{ all -> 0x0265 }} */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x0278  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00cd A:{Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d3 A:{SYNTHETIC, Splitter:B:36:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d8 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0216  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0131 A:{Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }} */
    private void a(javax.net.ssl.HttpsURLConnection r13) {
        /*
        r12 = this;
        r11 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r2 = 0;
        r5 = -1;
        r7 = 0;
        r10 = -11;
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "https Post start,url:";
        r0 = r0.append(r1);
        r1 = r12.b;
        r0 = r0.append(r1);
        r0 = r0.toString();
        com.baidu.lbsapi.auth.a.a(r0);
        r0 = r12.c;
        if (r0 != 0) goto L_0x002c;
    L_0x0023:
        r0 = "httpsPost request paramters is null.";
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r0);
        r12.d = r0;
    L_0x002b:
        return;
    L_0x002c:
        r0 = 1;
        r6 = r13.getOutputStream();	 Catch:{ MalformedURLException -> 0x024a, IOException -> 0x017a, Exception -> 0x01b6, all -> 0x01f2 }
        r1 = new java.io.BufferedWriter;	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r3 = new java.io.OutputStreamWriter;	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r4 = "UTF-8";
        r3.<init>(r6, r4);	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r1.<init>(r3);	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r3 = r12.c;	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r3 = b(r3);	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r1.write(r3);	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r3 = r12.c;	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r3 = b(r3);	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        com.baidu.lbsapi.auth.a.a(r3);	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r1.flush();	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r1.close();	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r13.connect();	 Catch:{ MalformedURLException -> 0x024e, IOException -> 0x023f, Exception -> 0x0235 }
        r1 = r13.getInputStream();	 Catch:{ IOException -> 0x0268, all -> 0x0122 }
        r4 = r13.getResponseCode();	 Catch:{ IOException -> 0x026d, all -> 0x0258 }
        if (r11 != r4) goto L_0x027e;
    L_0x0062:
        r3 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0271, all -> 0x025c }
        r8 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0271, all -> 0x025c }
        r9 = "UTF-8";
        r8.<init>(r1, r9);	 Catch:{ IOException -> 0x0271, all -> 0x025c }
        r3.<init>(r8);	 Catch:{ IOException -> 0x0271, all -> 0x025c }
        r2 = new java.lang.StringBuffer;	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
        r2.<init>();	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
    L_0x0073:
        r8 = r3.read();	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
        if (r8 == r5) goto L_0x010b;
    L_0x0079:
        r8 = (char) r8;	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
        r2.append(r8);	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
        goto L_0x0073;
    L_0x007e:
        r0 = move-exception;
        r2 = r3;
        r3 = r4;
    L_0x0081:
        r4 = com.baidu.lbsapi.auth.a.a;	 Catch:{ all -> 0x0265 }
        if (r4 == 0) goto L_0x00a2;
    L_0x0085:
        r0.printStackTrace();	 Catch:{ all -> 0x0265 }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0265 }
        r4.<init>();	 Catch:{ all -> 0x0265 }
        r8 = "httpsPost parse failed;";
        r4 = r4.append(r8);	 Catch:{ all -> 0x0265 }
        r8 = r0.getMessage();	 Catch:{ all -> 0x0265 }
        r4 = r4.append(r8);	 Catch:{ all -> 0x0265 }
        r4 = r4.toString();	 Catch:{ all -> 0x0265 }
        com.baidu.lbsapi.auth.a.a(r4);	 Catch:{ all -> 0x0265 }
    L_0x00a2:
        r4 = -11;
        r8 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0265 }
        r8.<init>();	 Catch:{ all -> 0x0265 }
        r9 = "httpsPost failed,IOException:";
        r8 = r8.append(r9);	 Catch:{ all -> 0x0265 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0265 }
        r0 = r8.append(r0);	 Catch:{ all -> 0x0265 }
        r0 = r0.toString();	 Catch:{ all -> 0x0265 }
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r4, r0);	 Catch:{ all -> 0x0265 }
        r12.d = r0;	 Catch:{ all -> 0x0265 }
        if (r1 == 0) goto L_0x00cb;
    L_0x00c3:
        if (r2 == 0) goto L_0x00cb;
    L_0x00c5:
        r2.close();	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
        r1.close();	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
    L_0x00cb:
        if (r13 == 0) goto L_0x0278;
    L_0x00cd:
        r13.disconnect();	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
        r0 = r7;
    L_0x00d1:
        if (r6 == 0) goto L_0x00d6;
    L_0x00d3:
        r6.close();	 Catch:{ IOException -> 0x0165 }
    L_0x00d6:
        if (r0 == 0) goto L_0x0203;
    L_0x00d8:
        if (r11 == r3) goto L_0x0203;
    L_0x00da:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "httpsPost failed,statusCode:";
        r0 = r0.append(r1);
        r0 = r0.append(r3);
        r0 = r0.toString();
        com.baidu.lbsapi.auth.a.a(r0);
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "httpsPost failed,statusCode:";
        r0 = r0.append(r1);
        r0 = r0.append(r3);
        r0 = r0.toString();
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r10, r0);
        r12.d = r0;
        goto L_0x002b;
    L_0x010b:
        r2 = r2.toString();	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
        r12.d = r2;	 Catch:{ IOException -> 0x007e, all -> 0x0260 }
    L_0x0111:
        if (r1 == 0) goto L_0x011b;
    L_0x0113:
        if (r3 == 0) goto L_0x011b;
    L_0x0115:
        r3.close();	 Catch:{ MalformedURLException -> 0x0253, IOException -> 0x0243, Exception -> 0x0238 }
        r1.close();	 Catch:{ MalformedURLException -> 0x0253, IOException -> 0x0243, Exception -> 0x0238 }
    L_0x011b:
        if (r13 == 0) goto L_0x027b;
    L_0x011d:
        r13.disconnect();	 Catch:{ MalformedURLException -> 0x0253, IOException -> 0x0243, Exception -> 0x0238 }
        r3 = r4;
        goto L_0x00d1;
    L_0x0122:
        r0 = move-exception;
        r1 = r2;
        r3 = r5;
    L_0x0125:
        if (r1 == 0) goto L_0x012f;
    L_0x0127:
        if (r2 == 0) goto L_0x012f;
    L_0x0129:
        r2.close();	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
        r1.close();	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
    L_0x012f:
        if (r13 == 0) goto L_0x0134;
    L_0x0131:
        r13.disconnect();	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
    L_0x0134:
        throw r0;	 Catch:{ MalformedURLException -> 0x0135, IOException -> 0x0247, Exception -> 0x023c }
    L_0x0135:
        r0 = move-exception;
        r2 = r6;
    L_0x0137:
        r1 = com.baidu.lbsapi.auth.a.a;	 Catch:{ all -> 0x0232 }
        if (r1 == 0) goto L_0x013e;
    L_0x013b:
        r0.printStackTrace();	 Catch:{ all -> 0x0232 }
    L_0x013e:
        r1 = -11;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0232 }
        r4.<init>();	 Catch:{ all -> 0x0232 }
        r6 = "httpsPost failed,MalformedURLException:";
        r4 = r4.append(r6);	 Catch:{ all -> 0x0232 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0232 }
        r0 = r4.append(r0);	 Catch:{ all -> 0x0232 }
        r0 = r0.toString();	 Catch:{ all -> 0x0232 }
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r1, r0);	 Catch:{ all -> 0x0232 }
        r12.d = r0;	 Catch:{ all -> 0x0232 }
        if (r2 == 0) goto L_0x0275;
    L_0x015f:
        r2.close();	 Catch:{ IOException -> 0x016f }
        r0 = r7;
        goto L_0x00d6;
    L_0x0165:
        r1 = move-exception;
        r2 = com.baidu.lbsapi.auth.a.a;
        if (r2 == 0) goto L_0x00d6;
    L_0x016a:
        r1.printStackTrace();
        goto L_0x00d6;
    L_0x016f:
        r0 = move-exception;
        r1 = com.baidu.lbsapi.auth.a.a;
        if (r1 == 0) goto L_0x0177;
    L_0x0174:
        r0.printStackTrace();
    L_0x0177:
        r0 = r7;
        goto L_0x00d6;
    L_0x017a:
        r0 = move-exception;
        r3 = r5;
        r6 = r2;
    L_0x017d:
        r1 = com.baidu.lbsapi.auth.a.a;	 Catch:{ all -> 0x0230 }
        if (r1 == 0) goto L_0x0184;
    L_0x0181:
        r0.printStackTrace();	 Catch:{ all -> 0x0230 }
    L_0x0184:
        r1 = -11;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0230 }
        r2.<init>();	 Catch:{ all -> 0x0230 }
        r4 = "httpsPost failed,IOException:";
        r2 = r2.append(r4);	 Catch:{ all -> 0x0230 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0230 }
        r0 = r2.append(r0);	 Catch:{ all -> 0x0230 }
        r0 = r0.toString();	 Catch:{ all -> 0x0230 }
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r1, r0);	 Catch:{ all -> 0x0230 }
        r12.d = r0;	 Catch:{ all -> 0x0230 }
        if (r6 == 0) goto L_0x0275;
    L_0x01a5:
        r6.close();	 Catch:{ IOException -> 0x01ab }
        r0 = r7;
        goto L_0x00d6;
    L_0x01ab:
        r0 = move-exception;
        r1 = com.baidu.lbsapi.auth.a.a;
        if (r1 == 0) goto L_0x01b3;
    L_0x01b0:
        r0.printStackTrace();
    L_0x01b3:
        r0 = r7;
        goto L_0x00d6;
    L_0x01b6:
        r0 = move-exception;
        r3 = r5;
        r6 = r2;
    L_0x01b9:
        r1 = com.baidu.lbsapi.auth.a.a;	 Catch:{ all -> 0x0230 }
        if (r1 == 0) goto L_0x01c0;
    L_0x01bd:
        r0.printStackTrace();	 Catch:{ all -> 0x0230 }
    L_0x01c0:
        r1 = -11;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0230 }
        r2.<init>();	 Catch:{ all -> 0x0230 }
        r4 = "httpsPost failed,Exception:";
        r2 = r2.append(r4);	 Catch:{ all -> 0x0230 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0230 }
        r0 = r2.append(r0);	 Catch:{ all -> 0x0230 }
        r0 = r0.toString();	 Catch:{ all -> 0x0230 }
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r1, r0);	 Catch:{ all -> 0x0230 }
        r12.d = r0;	 Catch:{ all -> 0x0230 }
        if (r6 == 0) goto L_0x0275;
    L_0x01e1:
        r6.close();	 Catch:{ IOException -> 0x01e7 }
        r0 = r7;
        goto L_0x00d6;
    L_0x01e7:
        r0 = move-exception;
        r1 = com.baidu.lbsapi.auth.a.a;
        if (r1 == 0) goto L_0x01ef;
    L_0x01ec:
        r0.printStackTrace();
    L_0x01ef:
        r0 = r7;
        goto L_0x00d6;
    L_0x01f2:
        r0 = move-exception;
        r6 = r2;
    L_0x01f4:
        if (r6 == 0) goto L_0x01f9;
    L_0x01f6:
        r6.close();	 Catch:{ IOException -> 0x01fa }
    L_0x01f9:
        throw r0;
    L_0x01fa:
        r1 = move-exception;
        r2 = com.baidu.lbsapi.auth.a.a;
        if (r2 == 0) goto L_0x01f9;
    L_0x01ff:
        r1.printStackTrace();
        goto L_0x01f9;
    L_0x0203:
        r0 = r12.d;
        if (r0 != 0) goto L_0x0216;
    L_0x0207:
        r0 = "httpsPost failed,mResult is null";
        com.baidu.lbsapi.auth.a.a(r0);
        r0 = "httpsPost failed,internal error";
        r0 = com.baidu.lbsapi.auth.ErrorMessage.a(r5, r0);
        r12.d = r0;
        goto L_0x002b;
    L_0x0216:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "httpsPost success end,parse result = ";
        r0 = r0.append(r1);
        r1 = r12.d;
        r0 = r0.append(r1);
        r0 = r0.toString();
        com.baidu.lbsapi.auth.a.a(r0);
        goto L_0x002b;
    L_0x0230:
        r0 = move-exception;
        goto L_0x01f4;
    L_0x0232:
        r0 = move-exception;
        r6 = r2;
        goto L_0x01f4;
    L_0x0235:
        r0 = move-exception;
        r3 = r5;
        goto L_0x01b9;
    L_0x0238:
        r0 = move-exception;
        r3 = r4;
        goto L_0x01b9;
    L_0x023c:
        r0 = move-exception;
        goto L_0x01b9;
    L_0x023f:
        r0 = move-exception;
        r3 = r5;
        goto L_0x017d;
    L_0x0243:
        r0 = move-exception;
        r3 = r4;
        goto L_0x017d;
    L_0x0247:
        r0 = move-exception;
        goto L_0x017d;
    L_0x024a:
        r0 = move-exception;
        r3 = r5;
        goto L_0x0137;
    L_0x024e:
        r0 = move-exception;
        r3 = r5;
        r2 = r6;
        goto L_0x0137;
    L_0x0253:
        r0 = move-exception;
        r3 = r4;
        r2 = r6;
        goto L_0x0137;
    L_0x0258:
        r0 = move-exception;
        r3 = r5;
        goto L_0x0125;
    L_0x025c:
        r0 = move-exception;
        r3 = r4;
        goto L_0x0125;
    L_0x0260:
        r0 = move-exception;
        r2 = r3;
        r3 = r4;
        goto L_0x0125;
    L_0x0265:
        r0 = move-exception;
        goto L_0x0125;
    L_0x0268:
        r0 = move-exception;
        r1 = r2;
        r3 = r5;
        goto L_0x0081;
    L_0x026d:
        r0 = move-exception;
        r3 = r5;
        goto L_0x0081;
    L_0x0271:
        r0 = move-exception;
        r3 = r4;
        goto L_0x0081;
    L_0x0275:
        r0 = r7;
        goto L_0x00d6;
    L_0x0278:
        r0 = r7;
        goto L_0x00d1;
    L_0x027b:
        r3 = r4;
        goto L_0x00d1;
    L_0x027e:
        r3 = r2;
        goto L_0x0111;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.lbsapi.auth.g.a(javax.net.ssl.HttpsURLConnection):void");
    }

    private static String b(HashMap<String, String> hashMap) {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        for (Entry entry : hashMap.entrySet()) {
            Object obj2;
            if (obj != null) {
                obj2 = null;
            } else {
                stringBuilder.append("&");
                obj2 = obj;
            }
            stringBuilder.append(URLEncoder.encode((String) entry.getKey(), "UTF-8"));
            stringBuilder.append("=");
            stringBuilder.append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
            obj = obj2;
        }
        return stringBuilder.toString();
    }

    private HttpsURLConnection b() {
        try {
            URL url = new URL(this.b);
            a.a("https URL: " + this.b);
            String a = a(this.a);
            if (a == null || a.equals("")) {
                a.c("Current network is not available.");
                this.d = ErrorMessage.a(-10, "Current network is not available.");
                return null;
            }
            a.a("checkNetwork = " + a);
            HttpsURLConnection httpsURLConnection = a.equals("cmwap") ? (HttpsURLConnection) HttpInstrumentation.openConnectionWithProxy(url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.172", 80)))) : a.equals(NetRequestManager.CTWAP_APN_NAME_2) ? (HttpsURLConnection) HttpInstrumentation.openConnectionWithProxy(url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)))) : (HttpsURLConnection) HttpInstrumentation.openConnection(url.openConnection());
            httpsURLConnection.setHostnameVerifier(new h(this));
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
            httpsURLConnection.setConnectTimeout(50000);
            httpsURLConnection.setReadTimeout(50000);
            return httpsURLConnection;
        } catch (MalformedURLException e) {
            if (a.a) {
                e.printStackTrace();
                a.a(e.getMessage());
            }
            this.d = ErrorMessage.a(-11, "Auth server could not be parsed as a URL.");
            return null;
        } catch (Exception e2) {
            if (a.a) {
                e2.printStackTrace();
                a.a(e2.getMessage());
            }
            this.d = ErrorMessage.a(-11, "Init httpsurlconnection failed.");
            return null;
        }
    }

    private HashMap<String, String> c(HashMap<String, String> hashMap) {
        HashMap hashMap2 = new HashMap();
        for (String str : hashMap.keySet()) {
            String str2 = str2.toString();
            hashMap2.put(str2, hashMap.get(str2));
        }
        return hashMap2;
    }

    /* Access modifiers changed, original: protected */
    public String a(HashMap<String, String> hashMap) {
        this.c = c(hashMap);
        this.b = (String) this.c.get("url");
        HttpsURLConnection b = b();
        if (b == null) {
            a.c("syncConnect failed,httpsURLConnection is null");
            return this.d;
        }
        a(b);
        return this.d;
    }

    /* Access modifiers changed, original: protected */
    public boolean a() {
        a.a("checkNetwork start");
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.a.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return false;
            }
            a.a("checkNetwork end");
            return true;
        } catch (Exception e) {
            if (a.a) {
                e.printStackTrace();
            }
            return false;
        }
    }
}
