package com.baidu.mapapi.search.poi;

public class PoiDetailSearchOption {
    public String mUid = "";
    public String mUids = "";

    public PoiDetailSearchOption poiUid(String str) {
        this.mUid = str;
        return this;
    }
}
