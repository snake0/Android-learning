package com.mqunar.qapm.network.instrumentation;

import com.baidu.tts.loopj.AsyncHttpClient;
import com.mqunar.qapm.QAPM;
import com.mqunar.qapm.dao.Storage;
import com.mqunar.qapm.domain.NetworkData;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import com.mqunar.qapm.network.instrumentation.httpclient.HttpRequestEntityImpl;
import com.mqunar.qapm.network.instrumentation.httpclient.HttpResponseEntityImpl;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.cookie.SM;
import org.apache.http.protocol.HTTP;

public class TransactionStateUtil {
    public static final String APP_DATA_HEADER = "X-NewNecro-App-Data";
    public static final String CONTENT_TYPE_HEADER = "Content-Type";
    public static final String CROSS_PROCESS_ID_HEADER = "X-NewNecro-ID";
    public static final String REQUEST_HEADER_HOST = "Host";
    public static final String REQUEST_HEADER_PITCHER_TYPE = "Pitcher-Type";
    private static final AgentLog a = AgentLogManager.getAgentLog();

    private static void a(TransactionState transactionState, String str, String str2) {
        a.debug("inspectAndInstrument url " + str);
        transactionState.setUrl(str);
        transactionState.setHttpMethod(str2);
        transactionState.setCarrier(QAPM.getActiveNetworkCarrier());
        transactionState.setWanType(QAPM.getActiveNetworkWanType());
    }

    public static void inspectAndInstrument(TransactionState transactionState, HttpURLConnection httpURLConnection) {
        a(transactionState, httpURLConnection.getURL().toString(), httpURLConnection.getRequestMethod());
    }

    private static void a(TransactionState transactionState, String str, int i, int i2) {
        if (!(str == null || "".equals(str))) {
            transactionState.setAppData(str);
        }
        if (i >= 0) {
            transactionState.setBytesReceived((long) i);
        }
        transactionState.setStatusCode(i2);
    }

    public static void inspectAndInstrumentResponse(TransactionState transactionState, HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-NewNecro-App-Data");
        int contentLength = httpURLConnection.getContentLength();
        int i = -1;
        try {
            i = httpURLConnection.getResponseCode();
        } catch (IOException e) {
            a.debug("Failed to retrieve response code due to an I/O exception: " + e.getMessage());
        } catch (NullPointerException e2) {
            a.error("Failed to retrieve response code due to underlying (Harmony?) NPE", e2);
        }
        a(transactionState, headerField, contentLength, i);
    }

    public static HttpRequest inspectAndInstrument(TransactionState transactionState, HttpHost httpHost, HttpRequest httpRequest) {
        String str = null;
        RequestLine requestLine = httpRequest.getRequestLine();
        if (requestLine != null) {
            String uri = requestLine.getUri();
            int i = (uri == null || uri.length() < 10 || uri.substring(0, 10).indexOf("://") < 0) ? 0 : 1;
            if (i == 0 && uri != null && httpHost != null) {
                str = httpHost.toURI().toString();
                StringBuilder append = new StringBuilder().append(str);
                str = (str.endsWith("/") || uri.startsWith("/")) ? "" : "/";
                str = append.append(str).append(uri).toString();
            } else if (i != 0) {
                str = uri;
            }
        }
        a.debug("inspectAndInstrument url " + str);
        if (transactionState.getUrl() == null || transactionState.getHttpMethod() == null) {
            try {
                throw new Exception("TransactionData constructor was not provided with a valid URL, host or HTTP method");
            } catch (Exception e) {
                AgentLogManager.getAgentLog().error(MessageFormat.format("TransactionStateUtil.inspectAndInstrument(...) for {0} could not determine request URL or HTTP method [host={1}, requestLine={2}]", new Object[]{httpRequest.getClass().getCanonicalName(), httpHost, requestLine}), e);
            }
        } else {
            a(transactionState, str, requestLine.getMethod());
            b(transactionState, httpRequest);
            a(transactionState, httpRequest);
            return httpRequest;
        }
    }

    public static HttpUriRequest inspectAndInstrument(TransactionState transactionState, HttpUriRequest httpUriRequest) {
        a(transactionState, httpUriRequest.getURI().toString(), httpUriRequest.getMethod());
        b(transactionState, httpUriRequest);
        a(transactionState, (HttpRequest) httpUriRequest);
        return httpUriRequest;
    }

    private static void a(TransactionState transactionState, HttpRequest httpRequest) {
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            HttpEntityEnclosingRequest httpEntityEnclosingRequest = (HttpEntityEnclosingRequest) httpRequest;
            if (httpEntityEnclosingRequest.getEntity() != null) {
                httpEntityEnclosingRequest.setEntity(new HttpRequestEntityImpl(httpEntityEnclosingRequest.getEntity(), transactionState));
            }
        }
    }

    private static void b(TransactionState transactionState, HttpRequest httpRequest) {
        try {
            Header[] allHeaders = httpRequest.getAllHeaders();
            if (allHeaders != null) {
                HashMap hashMap = new HashMap();
                for (Header header : allHeaders) {
                    if (!(header == null || "".equals(header.getValue()))) {
                        String name = header.getName();
                        if (!("Content-Type".equals(name) || "X-ClientEncoding".equals(name) || "Host".equals(name) || HTTP.CONN_DIRECTIVE.equals(name) || AsyncHttpClient.HEADER_ACCEPT_ENCODING.equals(name) || HTTP.CONTENT_LEN.equals(name) || SM.COOKIE.equals(name))) {
                            hashMap.put(header.getName(), header.getValue());
                        }
                    }
                }
                if (hashMap.size() > 0) {
                    transactionState.setHeaders(hashMap);
                }
            }
        } catch (Throwable th) {
            a.warning("parseRequestHeader Failed parse header: " + th.toString());
        }
    }

    static void a(TransactionState transactionState, HttpURLConnection httpURLConnection) {
        try {
            Map requestProperties = httpURLConnection.getRequestProperties();
            if (requestProperties != null) {
                HashMap hashMap = new HashMap();
                for (Entry entry : requestProperties.entrySet()) {
                    if (!(entry == null || "".equals(((List) entry.getValue()).toString()))) {
                        String str = (String) entry.getKey();
                        if (!("Content-Type".equals(str) || "X-ClientEncoding".equals(str) || "Host".equals(str) || HTTP.CONN_DIRECTIVE.equals(str) || AsyncHttpClient.HEADER_ACCEPT_ENCODING.equals(str) || HTTP.CONTENT_LEN.equals(str) || SM.COOKIE.equals(str))) {
                            hashMap.put(entry.getKey(), ((List) entry.getValue()).toString().replace("[", "").replace("]", ""));
                        }
                    }
                }
                if (hashMap.size() > 0) {
                    transactionState.setHeaders(hashMap);
                }
            }
        } catch (Throwable th) {
            a.warning("parseConnectionHeader Failed parse header: " + th.toString());
        }
    }

    public static HttpResponse inspectAndInstrument(TransactionState transactionState, HttpResponse httpResponse) {
        a.debug("statuscode " + httpResponse.getStatusLine().getStatusCode());
        transactionState.setStatusCode(httpResponse.getStatusLine().getStatusCode());
        Header[] headers = httpResponse.getHeaders("X-NewNecro-App-Data");
        if (!(headers == null || headers.length <= 0 || "".equals(headers[0].getValue()))) {
            transactionState.setAppData(headers[0].getValue());
        }
        headers = httpResponse.getHeaders(HTTP.CONTENT_LEN);
        if (headers != null && headers.length > 0) {
            try {
                transactionState.setBytesReceived(Long.parseLong(headers[0].getValue()));
                a(transactionState, httpResponse);
            } catch (NumberFormatException e) {
                a.warning("Failed to parse content length: " + e.toString());
            }
        } else if (httpResponse.getEntity() != null) {
            httpResponse.setEntity(new HttpResponseEntityImpl(httpResponse.getEntity(), transactionState, -1));
        } else {
            transactionState.setBytesReceived(0);
            a(transactionState, (HttpResponse) null);
        }
        return httpResponse;
    }

    public static void setErrorCodeFromException(TransactionState transactionState, Exception exception) {
        a.error("TransactionStateUtil: Attempting to convert network exception " + exception.getClass().getName() + " to error code.");
        transactionState.setErrorMsg(exception.getMessage());
    }

    private static void a(TransactionState transactionState, HttpResponse httpResponse) {
        end(transactionState);
    }

    public static void end(TransactionState transactionState) {
        NetworkData end = transactionState.end();
        if (end != null && !end.excludeImageData() && !end.excludeIllegalData()) {
            Storage.newStorage(QAPM.mContext).putData(end);
        }
    }
}
