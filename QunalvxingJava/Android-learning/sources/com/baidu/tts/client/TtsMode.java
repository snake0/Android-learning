package com.baidu.tts.client;

import com.baidu.tts.f.m;

public enum TtsMode {
    ONLINE(m.ONLINE),
    MIX(m.MIX);
    
    private final m a;

    private TtsMode(m mVar) {
        this.a = mVar;
    }

    public m getTtsEnum() {
        return this.a;
    }

    public int getMode() {
        return this.a.a();
    }

    public String getDescription() {
        return this.a.b();
    }
}
