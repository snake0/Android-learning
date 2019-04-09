package com.mqunar.necro.agent.instrumentation;

import android.location.Location;
import com.mqunar.necro.agent.bean.NetworkData;
import com.mqunar.necro.agent.logging.AgentLog;
import com.mqunar.necro.agent.logging.AgentLogManager;
import com.mqunar.necro.agent.tracing.AbsBackgroundTrace;
import com.mqunar.necro.agent.tracing.BackgroundTrace;
import com.mqunar.necro.agent.tracing.TraceMachine;
import com.mqunar.necro.agent.util.Util;
import java.util.HashMap;

public final class TransactionState {
    private static final int BACKGROUND_START_TIME = -1;
    private static final String ERROR = "error";
    private static final String SUCCESS = "success";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private String appData;
    private long bytesReceived;
    private long bytesSent;
    private String carrier = "Unknown";
    private String contentType;
    private long endTime;
    private String errMsg;
    private HashMap<String, String> headers;
    private String httpMethod;
    private String netStatus = "error";
    private long startTime;
    private State state = State.READY;
    private int statusCode = -1;
    private String url;
    private String wanType = "Unknown";

    enum State {
        READY,
        SENT,
        COMPLETE
    }

    public TransactionState() {
        this.startTime = !BackgroundTrace.appIsForeground() ? -1 : System.currentTimeMillis();
    }

    public void setCarrier(String str) {
        if (isSent()) {
            log.warning("setCarrier(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.carrier = str;
        }
    }

    public void setWanType(String str) {
        if (isSent()) {
            log.warning("setWanType(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.wanType = str;
        }
    }

    public void setAppData(String str) {
        if (isComplete()) {
            log.warning("setAppData(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.appData = str;
        }
    }

    public void setUrl(String str) {
        log.debug("setUrl urlString " + str);
        String sanitizeUrl = Util.sanitizeUrl(str);
        log.debug("setUrl sanitizeUrl url " + sanitizeUrl);
        if (sanitizeUrl == null) {
            return;
        }
        if (isSent()) {
            log.warning("setUrl(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.url = sanitizeUrl;
        }
    }

    public void setHttpMethod(String str) {
        if (isSent()) {
            log.warning("setHttpMethod(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.httpMethod = str;
        }
    }

    public String getUrl() {
        return this.url;
    }

    public String getHttpMethod() {
        return this.httpMethod;
    }

    public boolean isSent() {
        return this.state.ordinal() >= State.SENT.ordinal();
    }

    public boolean isComplete() {
        return this.state.ordinal() >= State.COMPLETE.ordinal();
    }

    public void setStatusCode(int i) {
        if (isComplete()) {
            log.warning("setStatusCode(...) called on TransactionState in " + this.state.toString() + " state");
            return;
        }
        this.statusCode = i;
        String str = (i <= 100 || i >= 399) ? "error" : "success";
        this.netStatus = str;
    }

    public void setErrorMsg(String str) {
        if (isComplete()) {
            log.warning("setErrorCode(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.errMsg = str;
        }
    }

    public void setBytesSent(long j) {
        if (isComplete()) {
            log.warning("setBytesSent(...) called on TransactionState in " + this.state.toString() + " state");
            return;
        }
        this.bytesSent = j;
        this.state = State.SENT;
    }

    public void setBytesReceived(long j) {
        if (isComplete()) {
            log.warning("setBytesReceived(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.bytesReceived = j;
        }
    }

    public void setHeaders(HashMap<String, String> hashMap) {
        if (isComplete()) {
            log.warning("setHeaders(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.headers = hashMap;
        }
    }

    public NetworkData end() {
        if (!isComplete()) {
            this.state = State.COMPLETE;
            this.endTime = System.currentTimeMillis();
            TraceMachine.exitMethod();
        }
        return toSaveData();
    }

    private NetworkData toSaveData() {
        if (!isComplete()) {
            log.warning("toTransactionData() called on incomplete TransactionState");
        }
        if (this.url == null) {
            log.error("Attempted to convert a TransactionState instance with no URL into a TransactionData");
            return null;
        }
        NetworkData networkData = new NetworkData();
        networkData.reqUrl = this.url;
        networkData.startTime = String.valueOf(this.startTime);
        networkData.endTime = String.valueOf(this.endTime);
        networkData.reqSize = String.valueOf(this.bytesSent);
        networkData.resSize = String.valueOf(this.bytesReceived);
        networkData.httpCode = this.statusCode == -1 ? "Unknown" : String.valueOf(this.statusCode);
        networkData.netStatus = this.netStatus;
        networkData.topPage = AbsBackgroundTrace.getCurrentActivityName();
        networkData.hf = this.errMsg;
        networkData.netType = this.wanType;
        networkData.loc = getLocation();
        networkData.mno = this.carrier;
        networkData.headers = this.headers;
        return networkData;
    }

    private String getLocation() {
        try {
            Location location = (Location) Class.forName("qunar.sdk.location.LocationFacade").getDeclaredMethod("getNewestCacheLocation", new Class[0]).invoke(null, new Object[0]);
            if (location != null) {
                return location.getLongitude() + "," + location.getLatitude();
            }
        } catch (Throwable th) {
        }
        return "";
    }

    public String getContentType() {
        return this.contentType;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }
}
