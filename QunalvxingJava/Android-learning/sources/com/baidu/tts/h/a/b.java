package com.baidu.tts.h.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.n;

public class b extends a {
    public b(n nVar) {
        super(nVar);
    }

    public int a(TtsError ttsError) {
        return this.a.b();
    }

    public String b(TtsError ttsError) {
        int code = ttsError.getCode();
        String message = ttsError.getMessage();
        Throwable throwable = ttsError.getThrowable();
        int b = this.a.b();
        String str = "(" + b + ")" + this.a.c();
        if (message != null) {
            str = str + "[(" + code + ")" + message + "]";
        } else if (code != 0) {
            str = str + "[(" + code + ")]";
        }
        if (throwable == null) {
            return str;
        }
        return str + "[(cause)" + throwable.toString() + "]";
    }
}
