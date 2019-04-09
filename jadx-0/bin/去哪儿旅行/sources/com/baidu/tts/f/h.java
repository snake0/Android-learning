package com.baidu.tts.f;

public enum h {
    ZH("chinese", "ZH"),
    EN("english", "EN");
    
    private final String c;
    private final String d;

    private h(String str, String str2) {
        this.c = str;
        this.d = str2;
    }

    public String a() {
        return this.d;
    }
}
