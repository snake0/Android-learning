package com.baidu.tts.f;

public enum m {
    ONLINE(0, "just online"),
    OFFLINE(1, "just offline"),
    MIX(2, "if online cannot use switch from online to offline");
    
    private final int d;
    private final String e;

    private m(int i, String str) {
        this.d = i;
        this.e = str;
    }

    public int a() {
        return this.d;
    }

    public String b() {
        return this.e;
    }
}
