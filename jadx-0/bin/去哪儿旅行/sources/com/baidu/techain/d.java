package com.baidu.techain;

import android.content.Context;
import android.os.FileObserver;
import com.baidu.techain.a.a;
import com.baidu.techain.b.e;
import java.io.File;

public class d extends FileObserver {
    private String a;
    private String b;
    private int c;
    private Context d;

    public d(Context context, int i, String str, String str2) {
        super(str, 4095);
        try {
            this.a = str;
            this.b = str2;
            this.c = i;
            this.d = context;
            new StringBuilder("f=").append(this.a).append(", e=").append(new File(this.a).exists()).append(", b=").append(this.b);
            b.a();
        } catch (Throwable th) {
            e.a();
        }
    }

    public final boolean a() {
        try {
            File file = new File(this.b);
            if (file.exists()) {
                return file.delete();
            }
            return false;
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }

    public void onEvent(int i, String str) {
        switch (i) {
            case 2:
            case 4:
            case 64:
            case 128:
            case 512:
            case 1024:
            case 2048:
                try {
                    new Thread() {
                        public final void run() {
                            try {
                                super.run();
                                b.a();
                                synchronized (d.class) {
                                    if (!e.c(d.this.a)) {
                                        b.a();
                                        e.b(d.this.b, d.this.a);
                                        e.a(d.this.a, true);
                                        c.a(new File(d.this.a));
                                        c.a(d.this.d, d.this.c, new File(d.this.a), new File(d.this.b));
                                        new StringBuilder().append(d.this.a.toString());
                                        b.a();
                                        a.a(d.this.d).b(d.this.c, -1);
                                    }
                                }
                            } catch (Throwable th) {
                                e.a();
                            }
                        }
                    }.start();
                    return;
                } catch (Throwable th) {
                    e.a();
                    return;
                }
            default:
                return;
        }
    }
}
