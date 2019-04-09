package com.mqunar.qapm.network.instrumentation;

import com.mqunar.qapm.network.instrumentation.io.StreamCompleteEvent;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteListener;

class a implements StreamCompleteListener {
    final /* synthetic */ TransactionState a;
    final /* synthetic */ HttpURLConnectionExtension b;

    a(HttpURLConnectionExtension httpURLConnectionExtension, TransactionState transactionState) {
        this.b = httpURLConnectionExtension;
        this.a = transactionState;
    }

    public void streamError(StreamCompleteEvent streamCompleteEvent) {
        if (!this.a.isComplete()) {
            this.a.setBytesReceived(streamCompleteEvent.getBytes());
        }
        this.b.a(streamCompleteEvent.getException());
    }

    public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
        if (!this.a.isComplete()) {
            long contentLength = (long) this.b.a.getContentLength();
            long bytes = streamCompleteEvent.getBytes();
            if (contentLength < 0) {
                contentLength = bytes;
            }
            this.a.setBytesReceived(contentLength);
            try {
                TransactionStateUtil.inspectAndInstrumentResponse(this.a, this.b.a);
            } catch (Throwable th) {
                HttpURLConnectionExtension.c.error("TransactionStateUtil.inspectAndInstrumentResponse error " + th.toString());
            }
            this.b.a(this.a);
        }
    }
}
