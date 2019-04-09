package com.mqunar.necro.agent.bean;

import android.text.TextUtils;
import com.mqunar.necro.agent.tracing.BackgroundTrace;
import com.mqunar.necro.agent.util.Config;
import java.util.HashMap;

public class NetworkData implements BaseData {
    private static final int BACKGROUND_START_TIME = -1;
    private static final long MAX_TIEM = 100000;
    private static final long serialVersionUID = 1;
    public String endTime;
    public HashMap<String, String> headers = new HashMap();
    public String hf;
    public String httpCode;
    public String loc;
    public String mno;
    public String netStatus;
    public String netType;
    public String reqSize;
    public String reqUrl;
    public String resSize;
    public String startTime;
    public String topPage;

    public boolean excludeImageData() {
        if (TextUtils.isEmpty(this.reqUrl) || this.reqUrl.contains(Config.t) || this.reqUrl.contains("http://mloganalysts.corp.qunar.com/api/log/unifiedLog") || this.reqUrl.contains("http://l-acra1.wap.beta.cn0.qunar.com:9099/api/log/unifiedLog")) {
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
        long parseLong2 = Long.parseLong(this.endTime);
        return parseLong == -1 || ((BackgroundTrace.getBackgroundTime() > parseLong && BackgroundTrace.getBackgroundTime() < parseLong2) || this.httpCode.equals("Unknown") || parseLong2 - parseLong > MAX_TIEM || this.netStatus == null);
    }

    public String toString() {
        return "reqUrl=" + this.reqUrl + ",startTime=" + this.startTime + ",endTime=" + this.endTime + ",reqSize=" + this.reqSize + ",resSize=" + this.resSize + ",httpCode=" + this.httpCode + ",hf=" + this.hf + ",netType=" + this.netType + ",netStatus=" + this.netStatus + ",loc=" + this.loc + ",mno=" + this.mno + ",topPage=" + this.topPage;
    }
}
