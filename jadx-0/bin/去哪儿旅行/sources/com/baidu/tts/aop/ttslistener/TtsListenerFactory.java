package com.baidu.tts.aop.ttslistener;

import com.baidu.tts.aop.AProxyFactory;
import com.baidu.tts.aop.IInterceptor;
import com.baidu.tts.aop.IInterceptorHandler;
import java.util.ArrayList;
import java.util.List;

public class TtsListenerFactory extends AProxyFactory<TtsListener> {
    private TtsListener a;

    public TtsListenerFactory(TtsListener ttsListener) {
        this.a = ttsListener;
    }

    public TtsListener createProxied() {
        return this.a;
    }

    public IInterceptorHandler createInterceptorHandler() {
        TtsListenerInterceptorHandler ttsListenerInterceptorHandler = new TtsListenerInterceptorHandler();
        ttsListenerInterceptorHandler.registerMethods();
        return ttsListenerInterceptorHandler;
    }

    public List<IInterceptor> createInterceptors() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ProgressCorrectInterceptor());
        return arrayList;
    }
}
