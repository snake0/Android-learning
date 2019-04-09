package com.mqunar.qapm.domain;

public class UIData implements BaseData {
    public static final String ERROR = "error";
    public static final String SUCCESS = "success";
    private static final long serialVersionUID = 2;
    public String action;
    public long createTime;
    public long hiddenTime;
    public String netType;
    public String page;
    public long resumeTime;
    public long showTime;
    public String status;

    public String toString() {
        return "UIData{action='" + this.action + '\'' + ", page='" + this.page + '\'' + ", createTime='" + this.createTime + '\'' + ", resumeTime='" + this.resumeTime + '\'' + ", hiddenTime='" + this.hiddenTime + '\'' + ", showTime='" + this.showTime + '\'' + ", status='" + this.status + '\'' + ", netType='" + this.netType + '\'' + '}';
    }
}
