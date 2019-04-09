package com.baidu.tts.f;

import com.mqunar.yvideo.BuildConfig;

public enum c {
    BV_16K("BV_16K", "0", 8.0d),
    AMR_6K6("AMR_6K6", "0", 15.6d),
    AMR_8K85("AMR_8K85", BuildConfig.VERSION_NAME, 15.6d),
    AMR_12K65("AMR_12K65", "2", 15.6d),
    AMR_14K25("AMR_14K25", "3", 15.6d),
    AMR_15K85("AMR_15K85", "4", 15.6d),
    AMR_18K25("AMR_18K25", "5", 15.6d),
    AMR_19K85("AMR_19K85", "6", 15.6d),
    AMR_23K05("AMR_23K05", "7", 15.6d),
    AMR_23K85("AMR_23K85", "8", 15.6d),
    OPUS_8K("OPUS_8K", "0", 15.0d),
    OPUS_16K("OPUS_16K", BuildConfig.VERSION_NAME, 15.0d),
    OPUS_18K("OPUS_18K", "2", 15.0d),
    OPUS_20K("OPUS_20K", "3", 15.0d),
    OPUS_24K("OPUS_24K", "4", 15.0d),
    OPUS_32K("OPUS_32K", "5", 15.0d),
    MP3_8K("MP3_8K", "0", 10.0d),
    MP3_11K("MP3_11K", BuildConfig.VERSION_NAME, 10.0d),
    MP3_16K("MP3_16K", "2", 10.0d),
    MP3_24K("MP3_24K", "3", 10.0d),
    MP3_32K("MP3_32K", "4", 10.0d);
    
    private final String v;
    private final String w;
    private final double x;

    private c(String str, String str2, double d) {
        this.v = str;
        this.w = str2;
        this.x = d;
    }

    public String a() {
        return this.w;
    }

    public double b() {
        return this.x;
    }

    public static c a(String str) {
        for (c cVar : values()) {
            if (cVar.a().equals(str)) {
                return cVar;
            }
        }
        return null;
    }

    public static c[] c() {
        return new c[]{BV_16K};
    }

    public static c[] d() {
        return new c[]{AMR_6K6, AMR_8K85, AMR_12K65, AMR_14K25, AMR_15K85, AMR_18K25, AMR_19K85, AMR_23K05, AMR_23K85};
    }

    public static c[] e() {
        return new c[]{OPUS_8K, OPUS_16K, OPUS_18K, OPUS_20K, OPUS_24K, OPUS_32K};
    }
}
