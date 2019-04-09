package com.baidu.tts.f;

import java.net.InetAddress;

public enum o {
    TTS_SERVER("https://tts.baidu.com/text2audio") {
        public String b() {
            String a = o.a("tts.baidu.com");
            if (a != null) {
                return "https://" + a + "/text2audio";
            }
            return null;
        }
    },
    MODEL_SERVER("https://tts.baidu.com/bos/story.php?") {
        public String b() {
            return null;
        }
    },
    STATISTICS_SERVER("https://upl.baidu.com/ttsdlstats.php") {
        public String b() {
            return null;
        }
    };
    
    private final String d;

    public abstract String b();

    private o(String str) {
        this.d = str;
    }

    public String a() {
        return this.d;
    }

    public static String a(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
