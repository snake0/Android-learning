package com.mapquest.android.maps;

import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

@Instrumented
public final class HttpUtil {
    private static final int CONNECTION_TIMEOUT = 10000;
    private static final String LOG_TAG = HttpUtil.class.getName();
    private static final int READ_TIMEOUT = 30000;

    HttpUtil() {
    }

    public static String runPost(String str, Map<String, String> map) {
        InputStream executePostAsStream = executePostAsStream(str, map);
        if (executePostAsStream == null) {
            return null;
        }
        String convertStreamToString = convertStreamToString(executePostAsStream);
        try {
            executePostAsStream.close();
            return convertStreamToString;
        } catch (IOException e) {
            return convertStreamToString;
        }
    }

    public static String runRequest(String str, Map<String, String> map) {
        InputStream executeAsStream = executeAsStream(str, (Map) map);
        if (executeAsStream == null) {
            return null;
        }
        String convertStreamToString = convertStreamToString(executeAsStream);
        try {
            executeAsStream.close();
            return convertStreamToString;
        } catch (IOException e) {
            return convertStreamToString;
        }
    }

    public static String runRequest(String str) {
        return runRequest(str, (Map) null);
    }

    private static HttpParams getHttpConnectionParams(int i, int i2) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "utf-8");
        HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
        if (i <= 0) {
            i = 10000;
        }
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i);
        if (i2 <= 0) {
            i2 = 3000;
        }
        HttpConnectionParams.setSoTimeout(basicHttpParams, i2);
        return basicHttpParams;
    }

    public static InputStream executePostAsStream(String str, Map<String, String> map) {
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(getHttpConnectionParams(10000, 3000));
        HttpPost httpPost = new HttpPost(str);
        try {
            ArrayList arrayList = new ArrayList(map.size());
            for (String str2 : map.keySet()) {
                arrayList.add(new BasicNameValuePair(str2, (String) map.get(str2)));
            }
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList));
            HttpResponse execute = !(defaultHttpClient instanceof HttpClient) ? defaultHttpClient.execute(httpPost) : HttpInstrumentation.execute(defaultHttpClient, httpPost);
            int statusCode = execute.getStatusLine().getStatusCode();
            if (statusCode != 200 && statusCode != HttpStatus.SC_NO_CONTENT) {
                return null;
            }
            if (statusCode == HttpStatus.SC_NO_CONTENT) {
                return null;
            }
            HttpEntity entity = execute.getEntity();
            if (entity != null) {
                return entity.getContent();
            }
            return null;
        } catch (Exception e) {
            httpPost.abort();
        }
    }

    public static InputStream executeAsStream(String str) {
        return executeAsStream(str, (Map) null);
    }

    public static InputStream executeAsStream(String str, int i) {
        return executeAsStream(str, (Map) null, i);
    }

    public static InputStream executeAsStream(String str, Map<String, String> map) {
        return executeAsStream(str, map, 10000);
    }

    public static InputStream executeAsStream(String str, Map<String, String> map, int i) {
        InputStream content;
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(getHttpConnectionParams(i, i));
        HttpGet httpGet = new HttpGet(str);
        if (map != null) {
            try {
                for (String str2 : map.keySet()) {
                    httpGet.addHeader(str2, (String) map.get(str2));
                }
            } catch (Exception e) {
                httpGet.abort();
                return null;
            }
        }
        HttpEntity entity = (!(defaultHttpClient instanceof HttpClient) ? defaultHttpClient.execute(httpGet) : HttpInstrumentation.execute(defaultHttpClient, httpGet)).getEntity();
        if (entity != null) {
            content = entity.getContent();
        } else {
            content = null;
        }
        return content;
    }

    private static String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuilder.append(readLine + IOUtils.LINE_SEPARATOR_UNIX);
                } else {
                    try {
                        break;
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                try {
                    inputStream.close();
                } catch (IOException e22) {
                    e22.printStackTrace();
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                throw th;
            }
        }
        inputStream.close();
        return stringBuilder.toString();
    }
}
