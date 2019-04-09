package com.baidu.tts.p;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class b {
    private c a;
    private Context b;
    private FutureTask<Integer> c;

    public b(Context context) {
        this.b = context;
        this.a = new c(context);
    }

    public void a() {
        int intValue;
        this.c = this.a.a();
        try {
            intValue = ((Integer) this.c.get()).intValue();
        } catch (InterruptedException e) {
            e.printStackTrace();
            intValue = -1;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            intValue = -1;
        }
        LoggerProxy.d("StatisticsClient", "Statistics uploade result=" + intValue);
    }

    public void b() {
        if (this.c != null) {
            this.a.b();
        }
    }
}
