package com.baidu.tts.aop.tts;

import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.auth.a;
import com.baidu.tts.auth.b;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.m;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;
import com.baidu.tts.o.a.c;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

public class OfflineAuthNotificationInterceptor extends AInterceptor {
    private AtomicInteger b = new AtomicInteger(-1);

    /* Access modifiers changed, original: protected */
    public void a() {
        this.a.add("speak");
    }

    /* Access modifiers changed, original: protected */
    public Object a(Object obj, Method method, Object[] objArr) {
        c cVar = (c) obj;
        if (cVar.q()) {
            m mode = cVar.getMode();
            if (mode == null) {
                cVar.p();
                return AInterceptorHandler.END;
            }
            switch (mode) {
                case MIX:
                case OFFLINE:
                    int incrementAndGet = this.b.incrementAndGet();
                    LoggerProxy.d("OfflineAuthNotificationInterceptor", "currentCount=" + incrementAndGet);
                    if (incrementAndGet % 20 == 0) {
                        i iVar = (i) objArr[0];
                        j ttsParams = cVar.getTtsParams();
                        if (ttsParams != null) {
                            return a(cVar, ttsParams, iVar);
                        }
                        cVar.p();
                        return AInterceptorHandler.END;
                    }
                    break;
            }
            return AInterceptorHandler.DEFAULT;
        }
        cVar.p();
        return AInterceptorHandler.END;
    }

    private Object a(c cVar, j jVar, i iVar) {
        a(a.a().a(jVar.d()), iVar);
        return AInterceptorHandler.DEFAULT;
    }

    private void a(b.a aVar, i iVar) {
        if (aVar.d()) {
            int a = aVar.a();
            iVar.a(String.format(Locale.US, "百度语音试用服务%d天后到期，", new Object[]{Integer.valueOf(a)}));
        }
        if (aVar.f()) {
            iVar.a("百度语音试用服务已经到期，请及时更新授权，");
        }
        iVar.a();
    }
}
