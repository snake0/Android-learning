package com.mqunar.qapm.domain;

import android.text.TextUtils;
import com.mqunar.qapm.QAPMConstant;
import com.mqunar.qapm.tracing.BackgroundTrace;
import java.util.HashMap;

public class NetworkData implements BaseData {
    private static final long serialVersionUID = 1;
    public String action;
    public String endTime;
    public HashMap<String, String> headers = new HashMap();
    public String hf;
    public String httpCode;
    public String netStatus;
    public String netType;
    public String reqSize;
    public String reqUrl;
    public String resSize;
    public String startTime;
    public String topPage;

    public boolean excludeImageData() {
        if (TextUtils.isEmpty(this.reqUrl) || this.reqUrl.contains(QAPMConstant.t)) {
            return true;
        }
        if (!this.reqUrl.contains(".jpg") && !this.reqUrl.contains(".JPG") && !this.reqUrl.contains(".png") && !this.reqUrl.contains(".PNG") && !this.reqUrl.contains(".jpeg") && !this.reqUrl.contains(".JPEG") && !this.reqUrl.contains(".webp") && !this.reqUrl.contains(".WEBP")) {
            return false;
        }
        if (Integer.parseInt(this.endTime) - Integer.parseInt(this.startTime) > 2000) {
            return false;
        }
        return true;
    }

    public boolean excludeIllegalData() {
        long parseLong = Long.parseLong(this.startTime);
        return parseLong == -1 || ((BackgroundTrace.getBackgroundTime() > parseLong && BackgroundTrace.getBackgroundTime() < Long.parseLong(this.endTime)) || this.httpCode.equals("Unknown") || this.netStatus == null);
    }

    public String toString() {
        return "NetworkData{action='" + this.action + '\'' + ", reqUrl='" + this.reqUrl + '\'' + ", startTime='" + this.startTime + '\'' + ", endTime='" + this.endTime + '\'' + ", reqSize='" + this.reqSize + '\'' + ", resSize='" + this.resSize + '\'' + ", httpCode='" + this.httpCode + '\'' + ", hf='" + this.hf + '\'' + ", netType='" + this.netType + '\'' + ", netStatus='" + this.netStatus + '\'' + ", topPage='" + this.topPage + '\'' + ", headers=" + this.headers + '}';
    }
}
