package com.mqunar.hy.res.model;

public class QpPathInfo {
    private String qpMd5Path;
    private String qpPath;

    public QpPathInfo(String str, String str2) {
        this.qpPath = str;
        this.qpMd5Path = str2;
    }

    public String getQpPath() {
        return this.qpPath;
    }

    public void setQpPath(String str) {
        this.qpPath = str;
    }

    public String getQpMd5Path() {
        return this.qpMd5Path;
    }

    public void setQpMd5Path(String str) {
        this.qpMd5Path = str;
    }
}
