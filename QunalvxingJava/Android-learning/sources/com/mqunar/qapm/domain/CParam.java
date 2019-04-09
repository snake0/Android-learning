package com.mqunar.qapm.domain;

public class CParam implements BaseData {
    private static final long serialVersionUID = 1;
    public String cid;
    public String key;
    public String loc;
    public String mno;
    public String model;
    public String osVersion;
    public String pid;
    public String uid;
    public String vid;

    public String toString() {
        return "CParam{vid='" + this.vid + '\'' + ", pid='" + this.pid + '\'' + ", cid='" + this.cid + '\'' + ", uid='" + this.uid + '\'' + ", loc='" + this.loc + '\'' + ", mno='" + this.mno + '\'' + ", osVersion='" + this.osVersion + '\'' + ", model='" + this.model + '\'' + ", key='" + this.key + '\'' + '}';
    }
}
