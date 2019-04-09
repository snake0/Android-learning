package com.baidu.tts.f;

public enum k {
    HZ8K(8000, "8k"),
    HZ16K(16000, "16k");
    
    private final int c;
    private final String d;

    private k(int i, String str) {
        this.c = i;
        this.d = str;
    }

    public int a() {
        return this.c;
    }
}
