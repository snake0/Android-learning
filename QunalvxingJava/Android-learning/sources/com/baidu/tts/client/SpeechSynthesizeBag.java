package com.baidu.tts.client;

import com.baidu.tts.f.n;
import com.baidu.tts.tools.ResourceTools;

public class SpeechSynthesizeBag {
    private String a;
    private String b;

    public String getText() {
        return this.a;
    }

    public int setText(String str) {
        n isTextValid = ResourceTools.isTextValid(str);
        if (isTextValid != null) {
            return isTextValid.b();
        }
        this.a = str;
        return 0;
    }

    public String getUtteranceId() {
        return this.b;
    }

    public void setUtteranceId(String str) {
        this.b = str;
    }
}
