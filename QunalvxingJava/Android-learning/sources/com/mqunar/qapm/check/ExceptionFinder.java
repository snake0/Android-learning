package com.mqunar.qapm.check;

import android.content.Context;
import com.mqunar.BuildConfig;

public class ExceptionFinder {
    private static ExceptionFinder e;
    private boolean a = false;
    private boolean b = false;
    private boolean c = false;
    private int d = 0;

    class NotSetSenderException extends IllegalArgumentException {
        public NotSetSenderException(String str) {
            super(str);
        }
    }

    public static ExceptionFinder getInstance() {
        if (e == null) {
            synchronized (ExceptionFinder.class) {
                if (e == null) {
                    e = new ExceptionFinder();
                }
            }
        }
        return e;
    }

    public void setSender() {
        this.c = true;
    }

    public void setPid() {
        this.a = true;
    }

    public void setVid() {
        this.b = true;
    }

    public boolean runOnQunar(Context context) {
        if (this.d == 0) {
            if (BuildConfig.APPLICATION_ID.equals(context.getPackageName())) {
                this.d = 1;
            } else {
                this.d = 2;
            }
        }
        if (this.d == 1) {
            return true;
        }
        return false;
    }

    public void checkForThrows(Context context) {
        if (runOnQunar(context) && !this.c) {
            throw new NotSetSenderException("没有设置Sender!");
        }
    }
}
