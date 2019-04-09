package com.baidu.tts.f;

public enum l {
    DEFAULT(6, 6000),
    FAST_SWITCH(1, 1200),
    MIX_ONLINE_REQUEST_TIMEOUT(4, 4000);
    
    private final long d;
    private final long e;

    private l(long j, long j2) {
        this.d = j;
        this.e = j2;
    }

    public long a() {
        return this.e;
    }

    public int b() {
        return (int) a();
    }
}
