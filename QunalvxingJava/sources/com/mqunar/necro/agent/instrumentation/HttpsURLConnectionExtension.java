package com.mqunar.necro.agent.instrumentation;

import android.net.http.Headers;
import com.mqunar.necro.agent.NecroUtils;
import com.mqunar.necro.agent.instrumentation.io.CountingInputStream;
import com.mqunar.necro.agent.instrumentation.io.CountingOutputStream;
import com.mqunar.necro.agent.instrumentation.io.StreamCompleteEvent;
import com.mqunar.necro.agent.instrumentation.io.StreamCompleteListener;
import com.mqunar.necro.agent.logging.AgentLog;
import com.mqunar.necro.agent.logging.AgentLogManager;
import com.mqunar.necro.agent.util.AndroidUtils;
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
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private HttpsURLConnection impl;
    private TransactionState transactionState;

    public HttpsURLConnectionExtension(HttpsURLConnection httpsURLConnection) {
        super(httpsURLConnection.getURL());
        this.impl = httpsURLConnection;
        this.impl.addRequestProperty("L-Uuid", AndroidUtils.getTraceId(NecroUtils.mContext));
    }

    public String getCipherSuite() {
        return this.impl.getCipherSuite();
    }

    public Certificate[] getLocalCertificates() {
        return this.impl.getLocalCertificates();
    }

    public Certificate[] getServerCertificates() {
        try {
            return this.impl.getServerCertificates();
        } catch (SSLPeerUnverifiedException e) {
            error(e);
            throw e;
        }
    }

    public void addRequestProperty(String str, String str2) {
        this.impl.addRequestProperty(str, str2);
    }

    public void disconnect() {
        if (!(this.transactionState == null || this.transactionState.isComplete())) {
            addTransactionAndErrorData(this.transactionState);
        }
        this.impl.disconnect();
    }

    public boolean usingProxy() {
        return this.impl.usingProxy();
    }

    public void connect() {
        getTransactionState();
        try {
            this.impl.connect();
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public boolean getAllowUserInteraction() {
        return this.impl.getAllowUserInteraction();
    }

    public int getConnectTimeout() {
        return this.impl.getConnectTimeout();
    }

    public Object getContent() {
        getTransactionState();
        try {
            Object content = this.impl.getContent();
            int contentLength = this.impl.getContentLength();
            if (contentLength >= 0) {
                TransactionState transactionState = getTransactionState();
                if (!transactionState.isComplete()) {
                    transactionState.setBytesReceived((long) contentLength);
                    addTransactionAndErrorData(transactionState);
                }
            }
            return content;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public Object getContent(Class[] clsArr) {
        getTransactionState();
        try {
            Object content = this.impl.getContent(clsArr);
            checkResponse();
            return content;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public String getContentEncoding() {
        getTransactionState();
        String contentEncoding = this.impl.getContentEncoding();
        checkResponse();
        return contentEncoding;
    }

    public int getContentLength() {
        getTransactionState();
        int contentLength = this.impl.getContentLength();
        checkResponse();
        return contentLength;
    }

    public String getContentType() {
        getTransactionState();
        String contentType = this.impl.getContentType();
        checkResponse();
        return contentType;
    }

    public long getDate() {
        getTransactionState();
        long date = this.impl.getDate();
        checkResponse();
        return date;
    }

    public InputStream getErrorStream() {
        getTransactionState();
        try {
            return new CountingInputStream(this.impl.getErrorStream(), true);
        } catch (Exception e) {
            log.error(e.toString());
            return this.impl.getErrorStream();
        }
    }

    public long getHeaderFieldDate(String str, long j) {
        getTransactionState();
        long headerFieldDate = this.impl.getHeaderFieldDate(str, j);
        checkResponse();
        return headerFieldDate;
    }

    public boolean getInstanceFollowRedirects() {
        return this.impl.getInstanceFollowRedirects();
    }

    public Permission getPermission() {
        return this.impl.getPermission();
    }

    public String getRequestMethod() {
        return this.impl.getRequestMethod();
    }

    public int getResponseCode() {
        getTransactionState();
        try {
            int responseCode = this.impl.getResponseCode();
            checkResponse();
            return responseCode;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public String getResponseMessage() {
        getTransactionState();
        try {
            String responseMessage = this.impl.getResponseMessage();
            checkResponse();
            return responseMessage;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public void setChunkedStreamingMode(int i) {
        this.impl.setChunkedStreamingMode(i);
    }

    public void setFixedLengthStreamingMode(int i) {
        this.impl.setFixedLengthStreamingMode(i);
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.impl.setInstanceFollowRedirects(z);
    }

    public void setRequestMethod(String str) {
        try {
            this.impl.setRequestMethod(str);
        } catch (ProtocolException e) {
            error(e);
            throw e;
        }
    }

    public boolean getDefaultUseCaches() {
        return this.impl.getDefaultUseCaches();
    }

    public boolean getDoInput() {
        return this.impl.getDoInput();
    }

    public boolean getDoOutput() {
        return this.impl.getDoOutput();
    }

    public long getExpiration() {
        getTransactionState();
        long expiration = this.impl.getExpiration();
        checkResponse();
        return expiration;
    }

    public String getHeaderField(int i) {
        getTransactionState();
        String headerField = this.impl.getHeaderField(i);
        checkResponse();
        return headerField;
    }

    public String getHeaderField(String str) {
        getTransactionState();
        String headerField = this.impl.getHeaderField(str);
        checkResponse();
        return headerField;
    }

    public int getHeaderFieldInt(String str, int i) {
        getTransactionState();
        int headerFieldInt = this.impl.getHeaderFieldInt(str, i);
        checkResponse();
        return headerFieldInt;
    }

    public String getHeaderFieldKey(int i) {
        getTransactionState();
        String headerFieldKey = this.impl.getHeaderFieldKey(i);
        checkResponse();
        return headerFieldKey;
    }

    public Map<String, List<String>> getHeaderFields() {
        getTransactionState();
        Map headerFields = this.impl.getHeaderFields();
        checkResponse();
        return headerFields;
    }

    public long getIfModifiedSince() {
        getTransactionState();
        long ifModifiedSince = this.impl.getIfModifiedSince();
        checkResponse();
        return ifModifiedSince;
    }

    public InputStream getInputStream() {
        final TransactionState transactionState = getTransactionState();
        try {
            CountingInputStream countingInputStream = new CountingInputStream(this.impl.getInputStream());
            countingInputStream.addStreamCompleteListener(new StreamCompleteListener() {
                public void streamError(StreamCompleteEvent streamCompleteEvent) {
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesReceived(streamCompleteEvent.getBytes());
                    }
                    HttpsURLConnectionExtension.this.error(streamCompleteEvent.getException());
                }

                public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
                    if (!transactionState.isComplete()) {
                        long contentLength = (long) HttpsURLConnectionExtension.this.impl.getContentLength();
                        long bytes = streamCompleteEvent.getBytes();
                        if (contentLength < 0) {
                            contentLength = bytes;
                        }
                        transactionState.setBytesReceived(contentLength);
                        try {
                            TransactionStateUtil.inspectAndInstrumentResponse(transactionState, HttpsURLConnectionExtension.this.impl);
                        } catch (Throwable th) {
                            HttpsURLConnectionExtension.log.error("TransactionStateUtil.inspectAndInstrumentResponse error " + th.toString());
                        }
                        HttpsURLConnectionExtension.this.addTransactionAndErrorData(transactionState);
                    }
                }
            });
            return countingInputStream;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public long getLastModified() {
        getTransactionState();
        long lastModified = this.impl.getLastModified();
        checkResponse();
        return lastModified;
    }

    public OutputStream getOutputStream() {
        final TransactionState transactionState = getTransactionState();
        TransactionStateUtil.parseConnectionHeader(transactionState, this.impl);
        try {
            CountingOutputStream countingOutputStream = new CountingOutputStream(this.impl.getOutputStream());
            countingOutputStream.addStreamCompleteListener(new StreamCompleteListener() {
                public void streamError(StreamCompleteEvent streamCompleteEvent) {
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesSent(streamCompleteEvent.getBytes());
                    }
                    HttpsURLConnectionExtension.this.error(streamCompleteEvent.getException());
                }

                public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
                    if (!transactionState.isComplete()) {
                        String requestProperty = HttpsURLConnectionExtension.this.impl.getRequestProperty(Headers.CONTENT_LEN);
                        long bytes = streamCompleteEvent.getBytes();
                        if (requestProperty != null) {
                            try {
                                bytes = Long.parseLong(requestProperty);
                            } catch (NumberFormatException e) {
                            }
                        }
                        transactionState.setBytesSent(bytes);
                    }
                }
            });
            return countingOutputStream;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public int getReadTimeout() {
        return this.impl.getReadTimeout();
    }

    public Map<String, List<String>> getRequestProperties() {
        return this.impl.getRequestProperties();
    }

    public String getRequestProperty(String str) {
        return this.impl.getRequestProperty(str);
    }

    public URL getURL() {
        return this.impl.getURL();
    }

    public boolean getUseCaches() {
        return this.impl.getUseCaches();
    }

    public void setAllowUserInteraction(boolean z) {
        this.impl.setAllowUserInteraction(z);
    }

    public void setConnectTimeout(int i) {
        this.impl.setConnectTimeout(i);
    }

    public void setDefaultUseCaches(boolean z) {
        this.impl.setDefaultUseCaches(z);
    }

    public void setDoInput(boolean z) {
        this.impl.setDoInput(z);
    }

    public void setDoOutput(boolean z) {
        this.impl.setDoOutput(z);
    }

    public void setIfModifiedSince(long j) {
        this.impl.setIfModifiedSince(j);
    }

    public void setReadTimeout(int i) {
        this.impl.setReadTimeout(i);
    }

    public void setRequestProperty(String str, String str2) {
        this.impl.setRequestProperty(str, str2);
    }

    public void setUseCaches(boolean z) {
        this.impl.setUseCaches(z);
    }

    public String toString() {
        return this.impl.toString();
    }

    public Principal getPeerPrincipal() {
        return this.impl.getPeerPrincipal();
    }

    public Principal getLocalPrincipal() {
        return this.impl.getLocalPrincipal();
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.impl.setHostnameVerifier(hostnameVerifier);
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.impl.getHostnameVerifier();
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.impl.setSSLSocketFactory(sSLSocketFactory);
    }

    public SSLSocketFactory getSSLSocketFactory() {
        return this.impl.getSSLSocketFactory();
    }

    private void checkResponse() {
        if (!getTransactionState().isComplete()) {
            TransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), this.impl);
        }
    }

    private TransactionState getTransactionState() {
        if (this.transactionState == null) {
            this.transactionState = new TransactionState();
            TransactionStateUtil.inspectAndInstrument(this.transactionState, this.impl);
        }
        return this.transactionState;
    }

    private void error(Exception exception) {
        TransactionState transactionState = getTransactionState();
        TransactionStateUtil.setErrorCodeFromException(transactionState, exception);
        if (!transactionState.isComplete()) {
            TransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
            TransactionStateUtil.end(transactionState);
        }
    }

    private void addTransactionAndErrorData(TransactionState transactionState) {
        TransactionStateUtil.end(transactionState);
    }
}
