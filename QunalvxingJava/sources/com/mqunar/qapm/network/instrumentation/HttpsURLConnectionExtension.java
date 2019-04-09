package com.mqunar.qapm.network.instrumentation;

import com.mqunar.qapm.QAPM;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import com.mqunar.qapm.network.instrumentation.io.CountingInputStream;
import com.mqunar.qapm.network.instrumentation.io.CountingOutputStream;
import com.mqunar.qapm.utils.AndroidUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

public class HttpsURLConnectionExtension extends HttpsURLConnection {
    private static final AgentLog c = AgentLogManager.getAgentLog();
    private HttpsURLConnection a;
    private TransactionState b;

    public HttpsURLConnectionExtension(HttpsURLConnection httpsURLConnection) {
        super(httpsURLConnection.getURL());
        this.a = httpsURLConnection;
        this.a.addRequestProperty("L-Uuid", AndroidUtils.getTraceId(QAPM.mContext));
    }

    public String getCipherSuite() {
        return this.a.getCipherSuite();
    }

    public Certificate[] getLocalCertificates() {
        return this.a.getLocalCertificates();
    }

    public Certificate[] getServerCertificates() {
        try {
            return this.a.getServerCertificates();
        } catch (SSLPeerUnverifiedException e) {
            a(e);
            throw e;
        }
    }

    public void addRequestProperty(String str, String str2) {
        this.a.addRequestProperty(str, str2);
    }

    public void disconnect() {
        if (!(this.b == null || this.b.isComplete())) {
            a(this.b);
        }
        this.a.disconnect();
    }

    public boolean usingProxy() {
        return this.a.usingProxy();
    }

    public void connect() {
        c();
        try {
            this.a.connect();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public boolean getAllowUserInteraction() {
        return this.a.getAllowUserInteraction();
    }

    public int getConnectTimeout() {
        return this.a.getConnectTimeout();
    }

    public Object getContent() {
        c();
        try {
            Object content = this.a.getContent();
            int contentLength = this.a.getContentLength();
            if (contentLength >= 0) {
                TransactionState c = c();
                if (!c.isComplete()) {
                    c.setBytesReceived((long) contentLength);
                    a(c);
                }
            }
            return content;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public Object getContent(Class[] clsArr) {
        c();
        try {
            Object content = this.a.getContent(clsArr);
            b();
            return content;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public String getContentEncoding() {
        c();
        String contentEncoding = this.a.getContentEncoding();
        b();
        return contentEncoding;
    }

    public int getContentLength() {
        c();
        int contentLength = this.a.getContentLength();
        b();
        return contentLength;
    }

    public String getContentType() {
        c();
        String contentType = this.a.getContentType();
        b();
        return contentType;
    }

    public long getDate() {
        c();
        long date = this.a.getDate();
        b();
        return date;
    }

    public InputStream getErrorStream() {
        c();
        try {
            return new CountingInputStream(this.a.getErrorStream(), true);
        } catch (Exception e) {
            c.error(e.toString());
            return this.a.getErrorStream();
        }
    }

    public long getHeaderFieldDate(String str, long j) {
        c();
        long headerFieldDate = this.a.getHeaderFieldDate(str, j);
        b();
        return headerFieldDate;
    }

    public boolean getInstanceFollowRedirects() {
        return this.a.getInstanceFollowRedirects();
    }

    public Permission getPermission() {
        return this.a.getPermission();
    }

    public String getRequestMethod() {
        return this.a.getRequestMethod();
    }

    public int getResponseCode() {
        c();
        try {
            int responseCode = this.a.getResponseCode();
            b();
            return responseCode;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public String getResponseMessage() {
        c();
        try {
            String responseMessage = this.a.getResponseMessage();
            b();
            return responseMessage;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void setChunkedStreamingMode(int i) {
        this.a.setChunkedStreamingMode(i);
    }

    public void setFixedLengthStreamingMode(int i) {
        this.a.setFixedLengthStreamingMode(i);
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.a.setInstanceFollowRedirects(z);
    }

    public void setRequestMethod(String str) {
        try {
            this.a.setRequestMethod(str);
        } catch (ProtocolException e) {
            a(e);
            throw e;
        }
    }

    public boolean getDefaultUseCaches() {
        return this.a.getDefaultUseCaches();
    }

    public boolean getDoInput() {
        return this.a.getDoInput();
    }

    public boolean getDoOutput() {
        return this.a.getDoOutput();
    }

    public long getExpiration() {
        c();
        long expiration = this.a.getExpiration();
        b();
        return expiration;
    }

    public String getHeaderField(int i) {
        c();
        String headerField = this.a.getHeaderField(i);
        b();
        return headerField;
    }

    public String getHeaderField(String str) {
        c();
        String headerField = this.a.getHeaderField(str);
        b();
        return headerField;
    }

    public int getHeaderFieldInt(String str, int i) {
        c();
        int headerFieldInt = this.a.getHeaderFieldInt(str, i);
        b();
        return headerFieldInt;
    }

    public String getHeaderFieldKey(int i) {
        c();
        String headerFieldKey = this.a.getHeaderFieldKey(i);
        b();
        return headerFieldKey;
    }

    public Map<String, List<String>> getHeaderFields() {
        c();
        Map headerFields = this.a.getHeaderFields();
        b();
        return headerFields;
    }

    public long getIfModifiedSince() {
        c();
        long ifModifiedSince = this.a.getIfModifiedSince();
        b();
        return ifModifiedSince;
    }

    public InputStream getInputStream() {
        TransactionState c = c();
        try {
            CountingInputStream countingInputStream = new CountingInputStream(this.a.getInputStream());
            countingInputStream.addStreamCompleteListener(new c(this, c));
            return countingInputStream;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public long getLastModified() {
        c();
        long lastModified = this.a.getLastModified();
        b();
        return lastModified;
    }

    public OutputStream getOutputStream() {
        TransactionState c = c();
        TransactionStateUtil.a(c, this.a);
        try {
            CountingOutputStream countingOutputStream = new CountingOutputStream(this.a.getOutputStream());
            countingOutputStream.addStreamCompleteListener(new d(this, c));
            return countingOutputStream;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public int getReadTimeout() {
        return this.a.getReadTimeout();
    }

    public Map<String, List<String>> getRequestProperties() {
        return this.a.getRequestProperties();
    }

    public String getRequestProperty(String str) {
        return this.a.getRequestProperty(str);
    }

    public URL getURL() {
        return this.a.getURL();
    }

    public boolean getUseCaches() {
        return this.a.getUseCaches();
    }

    public void setAllowUserInteraction(boolean z) {
        this.a.setAllowUserInteraction(z);
    }

    public void setConnectTimeout(int i) {
        this.a.setConnectTimeout(i);
    }

    public void setDefaultUseCaches(boolean z) {
        this.a.setDefaultUseCaches(z);
    }

    public void setDoInput(boolean z) {
        this.a.setDoInput(z);
    }

    public void setDoOutput(boolean z) {
        this.a.setDoOutput(z);
    }

    public void setIfModifiedSince(long j) {
        this.a.setIfModifiedSince(j);
    }

    public void setReadTimeout(int i) {
        this.a.setReadTimeout(i);
    }

    public void setRequestProperty(String str, String str2) {
        this.a.setRequestProperty(str, str2);
    }

    public void setUseCaches(boolean z) {
        this.a.setUseCaches(z);
    }

    public String toString() {
        return this.a.toString();
    }

    public Principal getPeerPrincipal() {
        return this.a.getPeerPrincipal();
    }

    public Principal getLocalPrincipal() {
        return this.a.getLocalPrincipal();
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.a.setHostnameVerifier(hostnameVerifier);
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.a.getHostnameVerifier();
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.a.setSSLSocketFactory(sSLSocketFactory);
    }

    public SSLSocketFactory getSSLSocketFactory() {
        return this.a.getSSLSocketFactory();
    }

    private void b() {
        if (!c().isComplete()) {
            TransactionStateUtil.inspectAndInstrumentResponse(c(), this.a);
        }
    }

    private TransactionState c() {
        if (this.b == null) {
            this.b = new TransactionState();
            TransactionStateUtil.inspectAndInstrument(this.b, this.a);
        }
        return this.b;
    }

    private void a(Exception exception) {
        TransactionState c = c();
        TransactionStateUtil.setErrorCodeFromException(c, exception);
        if (!c.isComplete()) {
            TransactionStateUtil.inspectAndInstrumentResponse(c, this.a);
            TransactionStateUtil.end(c);
        }
    }

    private void a(TransactionState transactionState) {
        TransactionStateUtil.end(transactionState);
    }
}
