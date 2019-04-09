package com.baidu.tts.f;

public enum f {
    ONLINE(0, "online engine"),
    OFFLINE(1, "offline engine"),
    MIX(2, "online and offline mix engine");
    
    private final int d;
    private final String e;

    private f(int i, String str) {
        this.d = i;
        this.e = str;
    }

    public int a() {
        return this.d;
    }
}
