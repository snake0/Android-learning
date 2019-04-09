package com.baidu.tts.e;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.h.b.b;
import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.SyncHttpClient;
import com.iflytek.cloud.SpeechConstant;
import com.mqunar.tools.DateTimeUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    public static synchronized void a(Context context, String str) {
        synchronized (a.class) {
            if (d.h(context)) {
                long a = d.a(context);
                long currentTimeMillis = System.currentTimeMillis();
                Date date = new Date(a);
                Date date2 = new Date(currentTimeMillis);
                if (currentTimeMillis - a >= DateTimeUtils.ONE_DAY || currentTimeMillis - a <= 0) {
                    LoggerProxy.d("StatHelper", "updated " + b(context, str));
                } else {
                    LoggerProxy.d("StatHelper", "lastTime " + a + ", curTime " + System.currentTimeMillis());
                    LoggerProxy.d("StatHelper", "lastDate " + date + "\ncurDate " + date2);
                }
            }
        }
    }

    private static boolean b(Context context, String str) {
        boolean z = false;
        try {
            c a = c.a(context);
            int a2 = a.a();
            if (a2 >= 1) {
                int i;
                LoggerProxy.d("StatHelper", "cursor.getCount: " + a2);
                if (a2 % 500 == 0) {
                    i = a2 / 500;
                } else {
                    i = (a2 / 500) + 1;
                }
                int i2 = 0;
                while (i2 < i) {
                    boolean z2;
                    JSONObject jSONObject = new JSONObject();
                    Map b = a.b();
                    List list = (ArrayList) b.get("listId");
                    jSONObject.put("recog_results", new JSONArray((ArrayList) b.get("list")));
                    LoggerProxy.d("StatHelper", "jsonObj all: " + jSONObject.toString());
                    byte[] a3 = d.a(jSONObject.toString());
                    if (a3.length >= 2) {
                        a3[0] = (byte) 117;
                        a3[1] = (byte) 123;
                    }
                    String a4 = d.a(a3);
                    LoggerProxy.d("StatHelper", " postContent:" + a4);
                    boolean a5 = a(context, str, a4);
                    d.a(context, System.currentTimeMillis());
                    if (a5) {
                        a.a(list);
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                    i2++;
                    z = z2;
                }
            }
        } catch (SQLiteException e) {
            LoggerProxy.d("StatHelper", "exception:" + e.toString());
        } catch (IllegalStateException e2) {
            LoggerProxy.d("StatHelper", "exception:" + e2.toString());
        } catch (Exception e3) {
            LoggerProxy.d("StatHelper", "exception:" + e3.toString());
        }
        return z;
    }

    private static boolean a(Context context, String str, String str2) {
        final boolean[] zArr = new boolean[]{false};
        String c = c(context, str);
        LoggerProxy.d("StatHelper", "statHelper url:" + c);
        new SyncHttpClient(true, 80, 443).post(null, c, a(str2), null, new AsyncHttpResponseHandler() {
            public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                String str = new String(bArr);
                LoggerProxy.d("StatHelper", "response=" + new String(bArr));
                if (!TextUtils.isEmpty(str)) {
                    try {
                        if ("0".equals(new JSONObject(str).optString("errno"))) {
                            zArr[0] = true;
                            LoggerProxy.d("StatHelper", "ret=" + zArr[0]);
                        }
                    } catch (JSONException e) {
                        LoggerProxy.d("StatHelper", "parse:" + e.toString());
                    } catch (Exception e2) {
                        LoggerProxy.d("StatHelper", "parse:" + e2.toString());
                    }
                }
            }

            public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                LoggerProxy.d("StatHelper", "statusCode: " + i + "responseBody: " + bArr);
            }
        });
        return zArr[0];
    }

    private static String c(Context context, String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new BasicNameValuePair("wise_cuid", b.a().i()));
        linkedList.add(new BasicNameValuePair("sdk_version", d.a()));
        linkedList.add(new BasicNameValuePair("app_name", d.b(context)));
        linkedList.add(new BasicNameValuePair("platform", d.c(context)));
        linkedList.add(new BasicNameValuePair("os", d.b()));
        linkedList.add(new BasicNameValuePair(SpeechConstant.NET_TYPE, d.d(context) + ""));
        linkedList.add(new BasicNameValuePair("appid", str));
        linkedList.add(new BasicNameValuePair("screen", d.e(context)));
        linkedList.add(new BasicNameValuePair("sdk_name", d.c()));
        linkedList.add(new BasicNameValuePair("app_signature", d.f(context)));
        return "https://upl.baidu.com/voice?osname=voiceopen&action=usereventflow&" + URLEncodedUtils.format(linkedList, "utf-8");
    }

    private static UrlEncodedFormEntity a(String str) {
        UrlEncodedFormEntity urlEncodedFormEntity;
        UnsupportedEncodingException e;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("records", str));
        try {
            urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "utf-8");
            try {
                urlEncodedFormEntity.setContentType(URLEncodedUtils.CONTENT_TYPE);
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                e.printStackTrace();
                return urlEncodedFormEntity;
            }
        } catch (UnsupportedEncodingException e3) {
            UnsupportedEncodingException unsupportedEncodingException = e3;
            urlEncodedFormEntity = null;
            e = unsupportedEncodingException;
            e.printStackTrace();
            return urlEncodedFormEntity;
        }
        return urlEncodedFormEntity;
    }
}
