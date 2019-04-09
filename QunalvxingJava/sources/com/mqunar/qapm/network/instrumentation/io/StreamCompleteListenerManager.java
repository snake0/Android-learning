package com.mqunar.qapm.network.instrumentation.io;

import java.util.ArrayList;
import java.util.List;

public class StreamCompleteListenerManager {
    private boolean a = false;
    private ArrayList<StreamCompleteListener> b = new ArrayList();

    StreamCompleteListenerManager() {
    }

    public boolean isComplete() {
        boolean z;
        synchronized (this) {
            z = this.a;
        }
        return z;
    }

    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        ArrayList arrayList = this.b;
        synchronized (this.b) {
            this.b.add(streamCompleteListener);
        }
    }

    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        ArrayList arrayList = this.b;
        synchronized (this.b) {
            this.b.remove(streamCompleteListener);
        }
    }

    public void notifyStreamComplete(StreamCompleteEvent streamCompleteEvent) {
        if (!a()) {
            for (StreamCompleteListener streamComplete : b()) {
                streamComplete.streamComplete(streamCompleteEvent);
            }
        }
    }

    public void notifyStreamError(StreamCompleteEvent streamCompleteEvent) {
        if (!a()) {
            for (StreamCompleteListener streamError : b()) {
                streamError.streamError(streamCompleteEvent);
            }
        }
    }

    private boolean a() {
        boolean isComplete;
        synchronized (this) {
            isComplete = isComplete();
            if (!isComplete) {
                this.a = true;
            }
        }
        return isComplete;
    }

    private List<StreamCompleteListener> b() {
        ArrayList arrayList = this.b;
        synchronized (this.b) {
            arrayList = new ArrayList(this.b);
            this.b.clear();
        }
        return arrayList;
    }
}
