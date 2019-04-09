package com.baidu.mapapi.http;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.baidu.mapapi.JNIInitializer;
import com.baidu.mapapi.common.Logger;
import com.baidu.mapsdkplatform.comapi.util.PermissionCheck;
import com.baidu.mapsdkplatform.comapi.util.e;
import com.mqunar.hy.res.utils.ErrorCodeAndMessage;
import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

@Instrumented
public class HttpClient {
    public static boolean isHttpsEnable = false;
    HttpURLConnection a;
    private String b = null;
    private String c = null;
    private int d;
    private int e;
    private String f;
    private ProtoResultCallback g;

    public enum HttpStateError {
        NO_ERROR,
        NETWORK_ERROR,
        INNER_ERROR,
        REQUEST_ERROR,
        SERVER_ERROR
    }

    public abstract class ProtoResultCallback {
        public abstract void onFailed(HttpStateError httpStateError);

        public abstract void onSuccess(String str);
    }

    public HttpClient(String str, ProtoResultCallback protoResultCallback) {
        this.f = str;
        this.g = protoResultCallback;
    }

    private HttpURLConnection a() {
        try {
            HttpURLConnection httpURLConnection;
            URL url = new URL(this.b);
            if (isHttpsEnable) {
                httpURLConnection = (HttpsURLConnection) HttpInstrumentation.openConnection(url.openConnection());
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new b(this));
            } else {
                httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(url.openConnection());
            }
            httpURLConnection.setRequestMethod(this.f);
            httpURLConnection.setDoOutput(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setConnectTimeout(this.d);
            httpURLConnection.setReadTimeout(this.e);
            return httpURLConnection;
        } catch (Exception e) {
            Log.e("HttpClient", "url connect failed");
            if (Logger.debugEnable()) {
                e.printStackTrace();
            } else {
                Logger.logW("HttpClient", e.getMessage());
            }
            return null;
        }
    }

    private void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("status") || jSONObject.has("status_sp")) {
                switch (jSONObject.has("status") ? jSONObject.getInt("status") : jSONObject.getInt("status_sp")) {
                    case ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_CODE /*105*/:
                    case ErrorCodeAndMessage.QP_DOWNLOAD_ERROR_CODE /*106*/:
                        int permissionCheck = PermissionCheck.permissionCheck();
                        if (permissionCheck != 0) {
                            Log.e("HttpClient", "permissionCheck result is: " + permissionCheck);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        } catch (JSONException e) {
            Log.e("HttpClient", "Parse json happened exception");
            e.printStackTrace();
        }
    }

    public static String getAuthToken() {
        return e.z;
    }

    public static String getPhoneInfo() {
        return e.c();
    }

    /* Access modifiers changed, original: protected */
    public boolean checkNetwork() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) JNIInitializer.getCachedContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        } catch (Exception e) {
            if (Logger.debugEnable()) {
                e.printStackTrace();
            } else {
                Logger.logW("HttpClient", e.getMessage());
            }
            e.printStackTrace();
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0159 A:{SYNTHETIC, Splitter:B:77:0x0159} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0075 A:{Catch:{ all -> 0x0164 }} */
    /* JADX WARNING: Removed duplicated region for block: B:102:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0094 A:{Catch:{ Exception -> 0x009b }} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0175 A:{Catch:{ Exception -> 0x009b }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0075 A:{Catch:{ all -> 0x0164 }} */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0159 A:{SYNTHETIC, Splitter:B:77:0x0159} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0094 A:{Catch:{ Exception -> 0x009b }} */
    /* JADX WARNING: Removed duplicated region for block: B:102:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0175 A:{Catch:{ Exception -> 0x009b }} */
    public void request(java.lang.String r8) {
        /*
        r7 = this;
        r2 = 0;
        r7.b = r8;
        r0 = r7.checkNetwork();
        if (r0 != 0) goto L_0x0011;
    L_0x0009:
        r0 = r7.g;
        r1 = com.baidu.mapapi.http.HttpClient.HttpStateError.NETWORK_ERROR;
        r0.onFailed(r1);
    L_0x0010:
        return;
    L_0x0011:
        r0 = r7.a();
        r7.a = r0;
        r0 = r7.a;
        if (r0 != 0) goto L_0x002a;
    L_0x001b:
        r0 = "HttpClient";
        r1 = "url connection failed";
        android.util.Log.e(r0, r1);
        r0 = r7.g;
        r1 = com.baidu.mapapi.http.HttpClient.HttpStateError.INNER_ERROR;
        r0.onFailed(r1);
        goto L_0x0010;
    L_0x002a:
        r0 = r7.b;
        r0 = android.text.TextUtils.isEmpty(r0);
        if (r0 == 0) goto L_0x003a;
    L_0x0032:
        r0 = r7.g;
        r1 = com.baidu.mapapi.http.HttpClient.HttpStateError.REQUEST_ERROR;
        r0.onFailed(r1);
        goto L_0x0010;
    L_0x003a:
        r3 = 0;
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        r0.connect();	 Catch:{ Exception -> 0x009b }
        r0 = r7.a;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r0.getResponseCode();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r0 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 != r1) goto L_0x00dc;
    L_0x004a:
        r0 = r7.a;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r0.getInputStream();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r3 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        r0 = new java.io.InputStreamReader;	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        r4 = "UTF-8";
        r0.<init>(r1, r4);	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        r3.<init>(r0);	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        r0 = new java.lang.StringBuffer;	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        r0.<init>();	 Catch:{ Exception -> 0x006d, all -> 0x018d }
    L_0x0061:
        r2 = r3.read();	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        r4 = -1;
        if (r2 == r4) goto L_0x00b5;
    L_0x0068:
        r2 = (char) r2;	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        r0.append(r2);	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        goto L_0x0061;
    L_0x006d:
        r0 = move-exception;
        r2 = r3;
    L_0x006f:
        r3 = com.baidu.mapapi.common.Logger.debugEnable();	 Catch:{ all -> 0x0164 }
        if (r3 == 0) goto L_0x0159;
    L_0x0075:
        r0.printStackTrace();	 Catch:{ all -> 0x0164 }
    L_0x0078:
        r0 = "HttpClient";
        r3 = "Catch exception. INNER_ERROR";
        android.util.Log.e(r0, r3);	 Catch:{ all -> 0x0164 }
        r0 = r7.g;	 Catch:{ all -> 0x0164 }
        r3 = com.baidu.mapapi.http.HttpClient.HttpStateError.INNER_ERROR;	 Catch:{ all -> 0x0164 }
        r0.onFailed(r3);	 Catch:{ all -> 0x0164 }
        if (r1 == 0) goto L_0x0090;
    L_0x0088:
        if (r2 == 0) goto L_0x0090;
    L_0x008a:
        r2.close();	 Catch:{ Exception -> 0x009b }
        r1.close();	 Catch:{ Exception -> 0x009b }
    L_0x0090:
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        if (r0 == 0) goto L_0x0010;
    L_0x0094:
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        r0.disconnect();	 Catch:{ Exception -> 0x009b }
        goto L_0x0010;
    L_0x009b:
        r0 = move-exception;
        r1 = com.baidu.mapapi.common.Logger.debugEnable();
        if (r1 == 0) goto L_0x017b;
    L_0x00a2:
        r0.printStackTrace();
    L_0x00a5:
        r0 = "HttpClient";
        r1 = "Catch connection exception, INNER_ERROR";
        android.util.Log.e(r0, r1);
        r0 = r7.g;
        r1 = com.baidu.mapapi.http.HttpClient.HttpStateError.INNER_ERROR;
        r0.onFailed(r1);
        goto L_0x0010;
    L_0x00b5:
        r0 = r0.toString();	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        r7.c = r0;	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        r0 = r7.c;	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        r7.a(r0);	 Catch:{ Exception -> 0x006d, all -> 0x018d }
        if (r1 == 0) goto L_0x00ca;
    L_0x00c2:
        if (r3 == 0) goto L_0x00ca;
    L_0x00c4:
        r3.close();	 Catch:{ Exception -> 0x009b }
        r1.close();	 Catch:{ Exception -> 0x009b }
    L_0x00ca:
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        if (r0 == 0) goto L_0x00d3;
    L_0x00ce:
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        r0.disconnect();	 Catch:{ Exception -> 0x009b }
    L_0x00d3:
        r0 = r7.g;
        r1 = r7.c;
        r0.onSuccess(r1);
        goto L_0x0010;
    L_0x00dc:
        r0 = "HttpClient";
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r4.<init>();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r5 = "responseCode is: ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r4 = r4.append(r1);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r4 = r4.toString();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        android.util.Log.e(r0, r4);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r0 = com.baidu.mapapi.http.HttpClient.HttpStateError.NO_ERROR;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r0 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        if (r1 < r0) goto L_0x012b;
    L_0x00fa:
        r0 = com.baidu.mapapi.http.HttpClient.HttpStateError.SERVER_ERROR;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
    L_0x00fc:
        r4 = com.baidu.mapapi.common.Logger.debugEnable();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        if (r4 == 0) goto L_0x0135;
    L_0x0102:
        r1 = r7.a;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r1.getErrorStream();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r4 = "HttpClient";
        r5 = r1.toString();	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        com.baidu.mapapi.common.Logger.logW(r4, r5);	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
    L_0x0111:
        r4 = r7.g;	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        r4.onFailed(r0);	 Catch:{ Exception -> 0x0194, all -> 0x0189 }
        if (r1 == 0) goto L_0x0120;
    L_0x0118:
        if (r2 == 0) goto L_0x0120;
    L_0x011a:
        r3.close();	 Catch:{ Exception -> 0x009b }
        r1.close();	 Catch:{ Exception -> 0x009b }
    L_0x0120:
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        if (r0 == 0) goto L_0x0010;
    L_0x0124:
        r0 = r7.a;	 Catch:{ Exception -> 0x009b }
        r0.disconnect();	 Catch:{ Exception -> 0x009b }
        goto L_0x0010;
    L_0x012b:
        r0 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r1 < r0) goto L_0x0132;
    L_0x012f:
        r0 = com.baidu.mapapi.http.HttpClient.HttpStateError.REQUEST_ERROR;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        goto L_0x00fc;
    L_0x0132:
        r0 = com.baidu.mapapi.http.HttpClient.HttpStateError.INNER_ERROR;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        goto L_0x00fc;
    L_0x0135:
        r4 = "HttpClient";
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r5.<init>();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r6 = "Get response from server failed, http response code=";
        r5 = r5.append(r6);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r5.append(r1);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r5 = ", error=";
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r1.append(r0);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r1.toString();	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        com.baidu.mapapi.common.Logger.logW(r4, r1);	 Catch:{ Exception -> 0x0190, all -> 0x0186 }
        r1 = r2;
        goto L_0x0111;
    L_0x0159:
        r3 = "HttpClient";
        r0 = r0.getMessage();	 Catch:{ all -> 0x0164 }
        com.baidu.mapapi.common.Logger.logW(r3, r0);	 Catch:{ all -> 0x0164 }
        goto L_0x0078;
    L_0x0164:
        r0 = move-exception;
        r3 = r2;
        r2 = r1;
    L_0x0167:
        if (r2 == 0) goto L_0x0171;
    L_0x0169:
        if (r3 == 0) goto L_0x0171;
    L_0x016b:
        r3.close();	 Catch:{ Exception -> 0x009b }
        r2.close();	 Catch:{ Exception -> 0x009b }
    L_0x0171:
        r1 = r7.a;	 Catch:{ Exception -> 0x009b }
        if (r1 == 0) goto L_0x017a;
    L_0x0175:
        r1 = r7.a;	 Catch:{ Exception -> 0x009b }
        r1.disconnect();	 Catch:{ Exception -> 0x009b }
    L_0x017a:
        throw r0;	 Catch:{ Exception -> 0x009b }
    L_0x017b:
        r1 = "HttpClient";
        r0 = r0.getMessage();
        com.baidu.mapapi.common.Logger.logW(r1, r0);
        goto L_0x00a5;
    L_0x0186:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0167;
    L_0x0189:
        r0 = move-exception;
        r3 = r2;
        r2 = r1;
        goto L_0x0167;
    L_0x018d:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0167;
    L_0x0190:
        r0 = move-exception;
        r1 = r2;
        goto L_0x006f;
    L_0x0194:
        r0 = move-exception;
        goto L_0x006f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapapi.http.HttpClient.request(java.lang.String):void");
    }

    public void setMaxTimeOut(int i) {
        this.d = i;
    }

    public void setReadTimeOut(int i) {
        this.e = i;
    }
}
