package com.iflytek.cloud;

import android.content.Context;
import com.iflytek.cloud.thirdparty.bi;
import com.iflytek.cloud.thirdparty.bi.a;
import com.iflytek.cloud.thirdparty.bk;
import com.iflytek.cloud.thirdparty.cb;
import com.mqunar.hy.res.logger.DevQPLog;

public class DataDownloader extends bi {
    public DataDownloader(Context context) {
        super(context);
    }

    /* Access modifiers changed, original: protected */
    public boolean b_() {
        return true;
    }

    public int downloadData(SpeechListener speechListener) {
        try {
            this.e = new bk(this.a, this.c, a(DevQPLog.TYPE_DOWNLOAD));
            ((bk) this.e).a(new a(speechListener));
            return 0;
        } catch (SpeechError e) {
            Throwable th = e;
            int errorCode = th.getErrorCode();
            cb.a(th);
            return errorCode;
        } catch (Throwable e2) {
            cb.a(e2);
            return 20999;
        }
    }
}
