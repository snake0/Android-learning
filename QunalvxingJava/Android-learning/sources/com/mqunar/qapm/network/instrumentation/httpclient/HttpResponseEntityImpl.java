package com.mqunar.qapm.network.instrumentation.httpclient;

import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import com.mqunar.qapm.network.instrumentation.TransactionState;
import com.mqunar.qapm.network.instrumentation.TransactionStateUtil;
import com.mqunar.qapm.network.instrumentation.io.CountingInputStream;
import com.mqunar.qapm.network.instrumentation.io.CountingOutputStream;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteEvent;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteListener;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteListenerSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.protocol.HTTP;

public class HttpResponseEntityImpl implements StreamCompleteListener, HttpEntity {
    private static final AgentLog e = AgentLogManager.getAgentLog();
    private final HttpEntity a;
    private final TransactionState b;
    private final long c;
    private CountingInputStream d;

    public HttpResponseEntityImpl(HttpEntity httpEntity, TransactionState transactionState, long j) {
        this.a = httpEntity;
        this.b = transactionState;
        this.c = j;
    }

    public void consumeContent() {
        try {
            this.a.consumeContent();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public InputStream getContent() {
        boolean z = true;
        if (this.d != null) {
            return this.d;
        }
        try {
            if (this.a instanceof AbstractHttpMessage) {
                boolean z2;
                Header lastHeader = ((AbstractHttpMessage) this.a).getLastHeader(HTTP.TRANSFER_ENCODING);
                if (lastHeader == null || !HTTP.CHUNK_CODING.equalsIgnoreCase(lastHeader.getValue())) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = z2;
            } else if ((this.a instanceof HttpEntityWrapper) && ((HttpEntityWrapper) this.a).isChunked()) {
                z = false;
            }
            this.d = new CountingInputStream(this.a.getContent(), z);
            this.d.addStreamCompleteListener(this);
            return this.d;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public Header getContentEncoding() {
        return this.a.getContentEncoding();
    }

    public long getContentLength() {
        return this.a.getContentLength();
    }

    public Header getContentType() {
        return this.a.getContentType();
    }

    public boolean isChunked() {
        return this.a.isChunked();
    }

    public boolean isRepeatable() {
        return this.a.isRepeatable();
    }

    public boolean isStreaming() {
        return this.a.isStreaming();
    }

    public void writeTo(OutputStream outputStream) {
        if (this.b.isComplete()) {
            this.a.writeTo(outputStream);
            return;
        }
        CountingOutputStream countingOutputStream = new CountingOutputStream(outputStream);
        try {
            this.a.writeTo(countingOutputStream);
            if (!this.b.isComplete()) {
                if (this.c >= 0) {
                    this.b.setBytesReceived(this.c);
                } else {
                    this.b.setBytesReceived(countingOutputStream.getCount());
                }
                a(this.b);
            }
        } catch (IOException e) {
            a(e, Long.valueOf(countingOutputStream.getCount()));
            e.printStackTrace();
            throw e;
        }
    }

    public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
        ((StreamCompleteListenerSource) streamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        if (!this.b.isComplete()) {
            if (this.c >= 0) {
                this.b.setBytesReceived(this.c);
            } else {
                this.b.setBytesReceived(streamCompleteEvent.getBytes());
            }
            a(this.b);
        }
    }

    public void streamError(StreamCompleteEvent streamCompleteEvent) {
        ((StreamCompleteListenerSource) streamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        TransactionStateUtil.setErrorCodeFromException(this.b, streamCompleteEvent.getException());
        if (!this.b.isComplete()) {
            this.b.setBytesReceived(streamCompleteEvent.getBytes());
        }
    }

    private void a(TransactionState transactionState) {
        TransactionStateUtil.end(transactionState);
    }

    private void a(Exception exception) {
        a(exception, (Long) null);
    }

    private void a(Exception exception, Long l) {
        TransactionStateUtil.setErrorCodeFromException(this.b, exception);
        if (!this.b.isComplete()) {
            if (l != null) {
                this.b.setBytesReceived(l.longValue());
            }
            TransactionStateUtil.end(this.b);
        }
    }
}
