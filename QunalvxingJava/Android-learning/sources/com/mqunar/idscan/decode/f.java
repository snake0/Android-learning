package com.mqunar.idscan.decode;

import android.os.AsyncTask;
import com.mqunar.qav.uelog.QAVLog;
import com.mqunar.tools.log.QLog;

final class f extends AsyncTask {
    final /* synthetic */ e a;

    private f(e eVar) {
        this.a = eVar;
    }

    /* synthetic */ f(e eVar, byte b) {
        this(eVar);
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final Object doInBackground(Object... objArr) {
        try {
            Thread.sleep(180000);
            QLog.i(e.a, "Finishing activity due to inactivity", new Object[0]);
        } catch (InterruptedException e) {
        }
        return null;
    }

    /* Access modifiers changed, original: protected|final */
    public final void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        this.a.b.finish();
        QAVLog.getInstance(this.a.b.getApplicationContext()).log(e.a, "finish activity time out");
    }
}
