package com.baidu.mapsdkplatform.comapi.synchronization.b;

import android.os.Build.VERSION;
import com.baidu.mapapi.UIMsg.m_AppUI;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class a {
    private int a = m_AppUI.MSG_APP_SAVESCREEN;
    private int b = m_AppUI.MSG_APP_SAVESCREEN;
    private ExecutorService c = Executors.newCachedThreadPool();

    abstract class a implements Runnable {
        private a() {
        }

        /* synthetic */ a(b bVar) {
            this();
        }

        public abstract void a();

        public void run() {
            a();
        }
    }

    static {
        if (VERSION.SDK_INT <= 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }

    public void a(String str, e eVar) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Request URL cannot be null");
        }
        this.c.submit(new b(this, eVar, str));
    }
}
