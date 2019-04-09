package com.baidu.tts.f;

import com.mqunar.yvideo.BuildConfig;

public enum d {
    GB18030("gb18030", "0"),
    BIG5("big5", BuildConfig.VERSION_NAME),
    UTF8("utf-8", "2"),
    GBK("gbk", "4"),
    UNICODE("unicode", "5");
    
    private final String f;
    private final String g;

    private d(String str, String str2) {
        this.f = str;
        this.g = str2;
    }

    public String a() {
        return this.f;
    }

    public String b() {
        return this.g;
    }

    public static d a(String str) {
        for (d dVar : values()) {
            if (dVar.b().equals(str)) {
                return dVar;
            }
        }
        return null;
    }
}
