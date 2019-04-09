package com.baidu.tts.m;

import com.baidu.tts.b.a.b.e;
import com.baidu.tts.b.a.b.f.b;
import com.baidu.tts.f.c;
import com.baidu.tts.f.d;
import com.baidu.tts.f.g;
import com.baidu.tts.n.a;

public class j extends a<j> {
    private b a = new b();
    private a b = new a();

    public b a() {
        return this.a;
    }

    public a b() {
        return this.b;
    }

    public b c() {
        return this.a.a();
    }

    public e.b d() {
        return this.a.b();
    }

    public com.baidu.tts.b.b.b.b.a e() {
        return this.b.a();
    }

    public int a(g gVar, String str) {
        return b(gVar, str);
    }

    private int b(g gVar, String str) {
        e.b b = this.a.b();
        b a = this.a.a();
        com.baidu.tts.b.b.b.b.a a2 = this.b.a();
        switch (gVar) {
            case SPEED:
                this.a.a(str);
                break;
            case VOLUME:
                this.a.b(str);
                break;
            case PITCH:
                this.a.c(str);
                break;
            case TEXT_DAT_PATH:
                b.d(str);
                break;
            case SPEECH_DAT_PATH:
                b.e(str);
                break;
            case TTS_LICENSE_FILE_PATH:
                b.f(str);
                break;
            case APP_CODE:
                b.g(str);
                break;
            case TEXT_ENCODE:
                a.a(d.a(str));
                break;
            case NOTIFICATION_COUNT_PER_SECOND:
                a2.a(str);
                break;
            case PRODUCT_ID:
                a.c(str);
                break;
            case AUDIO_ENCODE:
                return a.a(com.baidu.tts.f.b.a(str));
            case BITRATE:
                a.a(c.a(str));
                break;
            case BACKGROUND:
                a.f(str);
                break;
            case CUSTOM_SYNTH:
                return b.c(str);
            case LANGUAGE:
                a.i(str);
                b.i(str);
                break;
            case OPEN_XML:
                return this.a.d(str);
            case PUNCTUATION:
                a.h(str);
                break;
            case SPEAKER:
                a.d(str);
                break;
            case STYLE:
                a.e(str);
                break;
            case TERRITORY:
                a.g(str);
                break;
            case TTS_VOCODER_OPTIMIZATION:
                return b.a(str);
            case API_KEY:
                a.a(str);
                break;
            case SECRET_KEY:
                a.b(str);
                break;
            case STREAM_TYPE:
                this.b.a(Integer.parseInt(str));
                break;
            case MIX_MODE:
                com.baidu.tts.f.j valueOf;
                try {
                    valueOf = com.baidu.tts.f.j.valueOf(str);
                } catch (Exception e) {
                    valueOf = com.baidu.tts.f.j.DEFAULT;
                }
                this.a.a(valueOf);
                break;
            case SAMPLE_RATE:
                b.b(str);
                break;
            case SPEC:
                b.h(str);
                break;
        }
        return 0;
    }
}
