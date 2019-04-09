package com.baidu.tts.aop.ttslistener;

import android.text.TextUtils;
import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.m.h;
import java.lang.reflect.Method;

public class ProgressCorrectInterceptor extends AInterceptor {
    /* Access modifiers changed, original: protected */
    public void a() {
        this.a.add("onSynthesizeDataArrived");
        this.a.add("onPlayProgressUpdate");
    }

    /* Access modifiers changed, original: protected */
    public Object a(Object obj, Method method, Object[] objArr) {
        h hVar = (h) objArr[0];
        if (hVar != null) {
            String b = hVar.e().b();
            if (!TextUtils.isEmpty(b)) {
                int i;
                int length = b.length();
                int c = hVar.c();
                if (c > length) {
                    i = c - length;
                } else {
                    i = 0;
                }
                LoggerProxy.d("ProgressCorrectInterceptor", "prefixLength=" + length + "--progress=" + c);
                hVar = (h) hVar.y();
                hVar.d(i);
                objArr[0] = hVar;
            }
        }
        return AInterceptorHandler.DEFAULT;
    }
}
