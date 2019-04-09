package com.mqunar.qapm.logging;

import android.util.Log;

public class AndroidAgentLog implements AgentLog {
    private int a = 3;

    public void debug(String str) {
        if (this.a == 5) {
            Log.d("qapm", str);
        }
    }

    public void verbose(String str) {
        if (this.a >= 4) {
            Log.v("qapm", str);
        }
    }

    public void info(String str) {
        if (this.a >= 3) {
            Log.i("qapm", str);
        }
    }

    public void warning(String str) {
        if (this.a >= 2) {
            Log.w("qapm", str);
        }
    }

    public void error(String str) {
        if (this.a >= 1) {
            Log.e("qapm", str);
        }
    }

    public void error(String str, Throwable th) {
        if (this.a >= 1) {
            Log.e("qapm", str, th);
        }
    }

    public int getLevel() {
        return this.a;
    }

    public void setLevel(int i) {
        if (i > 5 || i < 1) {
            throw new IllegalArgumentException("Log level is not between ERROR and DEBUG");
        }
        this.a = i;
    }
}
