package com.baidu.tts.aop.tts;

import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.lang.reflect.Method;

public class StatisticsInterceptor extends AInterceptor {
    /* Access modifiers changed, original: protected */
    public void a() {
        this.a.add("speak");
        this.a.add("synthesize");
    }

    /* Access modifiers changed, original: protected */
    public Object a(Object obj, Method method, Object[] objArr) {
        LoggerProxy.d("StatisticsInterceptor", "statistics");
        return AInterceptorHandler.DEFAULT;
    }
}
