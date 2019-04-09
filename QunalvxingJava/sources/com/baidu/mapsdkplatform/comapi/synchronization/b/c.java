package com.baidu.mapsdkplatform.comapi.synchronization.b;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.baidu.mapapi.JNIInitializer;
import com.baidu.mapsdkplatform.comapi.util.PermissionCheck;
import com.mqunar.hy.res.utils.ErrorCodeAndMessage;
import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

@Instrumented
public class c {
    public static boolean b = true;
    private static final String c = c.class.getSimpleName();
    HttpURLConnection a;
    private String d = null;
    private String e = null;
    private int f;
    private int g;
    private String h;
    private e i;

    public enum a {
        SUCCESS,
        NETWORK_ERROR,
        INNER_ERROR,
        REQUEST_ERROR,
        SERVER_ERROR
    }

    public c(String str, e eVar) {
        this.h = str;
        this.i = eVar;
    }

    private void a(InputStream inputStream, BufferedReader bufferedReader, HttpURLConnection httpURLConnection) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "IOException happened when release res", e);
            }
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    private void a(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "responseCode is: " + responseCode);
            if (200 != responseCode) {
                a(httpURLConnection, responseCode);
            } else {
                b(httpURLConnection);
            }
        } catch (IOException e) {
            httpURLConnection.disconnect();
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "Catch connection exception, INNER_ERROR");
            this.i.a(a.INNER_ERROR);
        }
    }

    private void a(HttpURLConnection httpURLConnection, int i) {
        a aVar = a.SUCCESS;
        aVar = i >= 500 ? a.SERVER_ERROR : i >= HttpStatus.SC_BAD_REQUEST ? a.REQUEST_ERROR : a.INNER_ERROR;
        InputStream errorStream = httpURLConnection.getErrorStream();
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, errorStream.toString());
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Response error, response code = " + i + ", error = " + aVar);
        if (errorStream != null) {
            try {
                errorStream.close();
            } catch (IOException e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "IOException caught", e);
            }
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.i.a(aVar);
    }

    private boolean a() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) JNIInitializer.getCachedContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        } catch (Exception e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Exception happened when check network", e);
            e.printStackTrace();
            return false;
        }
    }

    private HttpURLConnection b() {
        try {
            HttpURLConnection httpURLConnection;
            URL url = new URL(this.d);
            if (b) {
                httpURLConnection = (HttpsURLConnection) HttpInstrumentation.openConnection(url.openConnection());
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new d(this));
            } else {
                httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(url.openConnection());
            }
            httpURLConnection.setRequestMethod(this.h);
            httpURLConnection.setDoOutput(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setConnectTimeout(this.f);
            httpURLConnection.setReadTimeout(this.g);
            return httpURLConnection;
        } catch (Exception e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "url connect failed", e);
            return null;
        }
    }

    private void b(HttpURLConnection httpURLConnection) {
        Throwable e;
        BufferedReader bufferedReader = null;
        InputStream inputStream;
        try {
            BufferedReader bufferedReader2;
            inputStream = httpURLConnection.getInputStream();
            try {
                bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            } catch (IOException e2) {
                e = e2;
                try {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Catch exception. INNER_ERROR", e);
                    this.i.a(a.INNER_ERROR);
                    a(inputStream, bufferedReader, httpURLConnection);
                } catch (Throwable th) {
                    e = th;
                    a(inputStream, bufferedReader, httpURLConnection);
                    throw e;
                }
            }
            try {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    int read = bufferedReader2.read();
                    if (read != -1) {
                        stringBuffer.append((char) read);
                    } else {
                        this.e = stringBuffer.toString();
                        c(this.e);
                        a(inputStream, bufferedReader2, httpURLConnection);
                        this.i.a(this.e);
                        return;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                bufferedReader = bufferedReader2;
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Catch exception. INNER_ERROR", e);
                this.i.a(a.INNER_ERROR);
                a(inputStream, bufferedReader, httpURLConnection);
            } catch (Throwable th2) {
                e = th2;
                bufferedReader = bufferedReader2;
                a(inputStream, bufferedReader, httpURLConnection);
                throw e;
            }
        } catch (IOException e4) {
            e = e4;
            inputStream = null;
        } catch (Throwable th3) {
            e = th3;
            inputStream = null;
            a(inputStream, bufferedReader, httpURLConnection);
            throw e;
        }
    }

    private boolean b(String str) {
        if (!TextUtils.isEmpty(str) && this.i != null) {
            return true;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "RequestUrl or ResultCallback is null. RequestUrl = " + str + "; ResultCallback is: " + this.i);
        this.i.a(a.REQUEST_ERROR);
        return false;
    }

    private void c(String str) {
        if (d(str)) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "Permission check failed, try again");
            int permissionCheck = PermissionCheck.permissionCheck();
            if (permissionCheck != 0) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "The authorized result is: " + permissionCheck);
            }
        }
    }

    private boolean d(String str) {
        return e(str) || f(str);
    }

    private boolean e(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("status") || jSONObject.has("status_sp")) {
                int i = jSONObject.has("status") ? jSONObject.getInt("status") : jSONObject.getInt("status_sp");
                if (ErrorCodeAndMessage.QP_DOWNLOAD_ERROR_CODE == i || ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_CODE == i) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Permission check failed due token");
                    return true;
                }
            }
        } catch (JSONException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Parse json happened exception", e);
        }
        return false;
    }

    private boolean f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("SDK_InnerError") && jSONObject.optJSONObject("SDK_InnerError").has("PermissionCheckError")) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "Permission check error due other");
                return true;
            }
        } catch (JSONException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(c, "Parse json happened exception", e);
        }
        return false;
    }

    public void a(int i) {
        this.g = i;
    }

    /* Access modifiers changed, original: protected */
    public void a(String str) {
        if (b(str)) {
            this.d = str;
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "mRequestUrl is: " + this.d);
            if (a()) {
                this.a = b();
                if (this.a == null) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(c, "url connection failed");
                    this.i.a(a.INNER_ERROR);
                    return;
                }
                a(this.a);
                return;
            }
            this.i.a(a.NETWORK_ERROR);
        }
    }

    public void b(int i) {
        this.f = i;
    }
}
