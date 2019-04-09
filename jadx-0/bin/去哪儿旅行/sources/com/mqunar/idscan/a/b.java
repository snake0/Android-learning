package com.mqunar.idscan.a;

import android.os.AsyncTask;
import com.mqunar.tools.log.QLog;

final class b extends AsyncTask {
    final /* synthetic */ a a;

    private b(a aVar) {
        this.a = aVar;
    }

    /* synthetic */ b(a aVar, byte b) {
        this(aVar);
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final Object doInBackground(Object... objArr) {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            QLog.e(e);
        }
        synchronized (this.a) {
            if (this.a.b) {
                this.a.a();
            }
        }
        return null;
    }
}
