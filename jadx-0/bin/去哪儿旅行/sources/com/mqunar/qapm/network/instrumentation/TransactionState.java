package com.mqunar.qapm.network.instrumentation;

import com.mqunar.qapm.domain.NetworkData;
import com.mqunar.qapm.domain.UIData;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import com.mqunar.qapm.tracing.BackgroundTrace;
import com.mqunar.qapm.tracing.WatchMan;
import com.mqunar.qapm.utils.StringUtils;
import java.util.HashMap;

public final class TransactionState {
    private static final AgentLog a = AgentLogManager.getAgentLog();
    private String b;
    private String c;
    private String d;
    private String e;
    private String f = "Unknown";
    private String g = "Unknown";
    private State h = State.READY;
    private String i;
    private String j = UIData.ERROR;
    private int k = -1;
    private long l;
    private long m;
    private long n;
    private long o;
    private HashMap<String, String> p;

    enum State {
        READY,
        SENT,
        COMPLETE
    }

    public TransactionState() {
        this.n = !BackgroundTrace.appIsForeground() ? -1 : System.currentTimeMillis();
    }

    public void setCarrier(String str) {
        if (isSent()) {
            a.warning("setCarrier(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.f = str;
        }
    }

    public void setWanType(String str) {
        if (isSent()) {
            a.warning("setWanType(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.g = str;
        }
    }

    public void setAppData(String str) {
        if (isComplete()) {
            a.warning("setAppData(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.e = str;
        }
    }

    public void setUrl(String str) {
        a.debug("setUrl urlString " + str);
        String sanitizeUrl = StringUtils.sanitizeUrl(str);
        a.debug("setUrl sanitizeUrl url " + sanitizeUrl);
        if (sanitizeUrl == null) {
            return;
        }
        if (isSent()) {
            a.warning("setUrl(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.b = sanitizeUrl;
        }
    }

    public void setHttpMethod(String str) {
        if (isSent()) {
            a.warning("setHttpMethod(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.c = str;
        }
    }

    public String getUrl() {
        return this.b;
    }

    public String getHttpMethod() {
        return this.c;
    }

    public boolean isSent() {
        return this.h.ordinal() >= State.SENT.ordinal();
    }

    public boolean isComplete() {
        return this.h.ordinal() >= State.COMPLETE.ordinal();
    }

    public void setStatusCode(int i) {
        if (isComplete()) {
            a.warning("setStatusCode(...) called on TransactionState in " + this.h.toString() + " state");
            return;
        }
        this.k = i;
        String str = (i <= 100 || i >= 399) ? UIData.ERROR : UIData.SUCCESS;
        this.j = str;
    }

    public void setErrorMsg(String str) {
        if (isComplete()) {
            a.warning("setErrorCode(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.d = str;
        }
    }

    public void setBytesSent(long j) {
        if (isComplete()) {
            a.warning("setBytesSent(...) called on TransactionState in " + this.h.toString() + " state");
            return;
        }
        this.l = j;
        this.h = State.SENT;
    }

    public void setBytesReceived(long j) {
        if (isComplete()) {
            a.warning("setBytesReceived(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.m = j;
        }
    }

    public void setHeaders(HashMap<String, String> hashMap) {
        if (isComplete()) {
            a.warning("setHeaders(...) called on TransactionState in " + this.h.toString() + " state");
        } else {
            this.p = hashMap;
        }
    }

    public NetworkData end() {
        if (!isComplete()) {
            this.h = State.COMPLETE;
            this.o = System.currentTimeMillis();
        }
        return a();
    }

    private NetworkData a() {
        if (!isComplete()) {
            a.warning("toTransactionData() called on incomplete TransactionState");
        }
        if (this.b == null) {
            a.error("Attempted to convert a TransactionState instance with no URL into a TransactionData");
            return null;
        }
        NetworkData networkData = new NetworkData();
        networkData.reqUrl = this.b;
        networkData.startTime = String.valueOf(this.n);
        networkData.endTime = String.valueOf(this.o);
        networkData.reqSize = String.valueOf(this.l);
        networkData.resSize = String.valueOf(this.m);
        networkData.httpCode = this.k == -1 ? "Unknown" : String.valueOf(this.k);
        networkData.netStatus = this.j;
        networkData.topPage = WatchMan.getCurrentActivityName();
        networkData.hf = this.d;
        networkData.netType = this.g;
        networkData.headers = this.p;
        return networkData;
    }

    public String getContentType() {
        return this.i;
    }

    public void setContentType(String str) {
        this.i = str;
    }
}
