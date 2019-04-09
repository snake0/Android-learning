package com.mqunar.qapm.network.instrumentation;

import android.net.http.Headers;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteEvent;
import com.mqunar.qapm.network.instrumentation.io.StreamCompleteListener;

class d implements StreamCompleteListener {
    final /* synthetic */ TransactionState a;
    final /* synthetic */ HttpsURLConnectionExtension b;

    d(HttpsURLConnectionExtension httpsURLConnectionExtension, TransactionState transactionState) {
        this.b = httpsURLConnectionExtension;
        this.a = transactionState;
    }

    public void streamError(StreamCompleteEvent streamCompleteEvent) {
        if (!this.a.isComplete()) {
            this.a.setBytesSent(streamCompleteEvent.getBytes());
        }
        this.b.a(streamCompleteEvent.getException());
    }

    public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
        if (!this.a.isComplete()) {
            String requestProperty = this.b.a.getRequestProperty(Headers.CONTENT_LEN);
            long bytes = streamCompleteEvent.getBytes();
            if (requestProperty != null) {
                try {
                    bytes = Long.parseLong(requestProperty);
                } catch (NumberFormatException e) {
                }
            }
            this.a.setBytesSent(bytes);
        }
    }
}
