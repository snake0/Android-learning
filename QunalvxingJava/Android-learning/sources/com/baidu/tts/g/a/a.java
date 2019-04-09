package com.baidu.tts.g.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.ThreadFactory;

public class a implements ThreadFactory {
    private String a;
    private int b;

    public a(String str) {
        this.a = str;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        this.b++;
        String str = this.a + "(" + this.b + ")";
        thread.setName(str);
        LoggerProxy.d("NameThreadFactory", "threadName=" + str);
        return thread;
    }
}
