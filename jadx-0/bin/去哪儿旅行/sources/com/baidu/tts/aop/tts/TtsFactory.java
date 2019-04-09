package com.baidu.tts.aop.tts;

import com.baidu.tts.aop.AProxyFactory;
import com.baidu.tts.aop.IInterceptor;
import com.baidu.tts.aop.IInterceptorHandler;
import com.baidu.tts.o.a.c;
import java.util.ArrayList;
import java.util.List;

public class TtsFactory extends AProxyFactory<ITts> {
    public ITts createProxied() {
        return new c();
    }

    public IInterceptorHandler createInterceptorHandler() {
        TtsInterceptorHandler ttsInterceptorHandler = new TtsInterceptorHandler();
        ttsInterceptorHandler.registerMethods();
        return ttsInterceptorHandler;
    }

    public List<IInterceptor> createInterceptors() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArgsCheckInterceptor());
        arrayList.add(new StatisticsInterceptor());
        arrayList.add(new OfflineAuthNotificationInterceptor());
        arrayList.add(new CallbackInterceptor());
        return arrayList;
    }
}
