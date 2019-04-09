package com.taobao.android.runtime;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.taobao.android.dex.interpret.ARTUtils;
import dalvik.system.DexFile;
import java.util.ArrayList;
import java.util.List;

public class Dex2OatService extends IntentService {
    public static boolean a = true;
    private static List<Runnable> b = new ArrayList();
    private final Boolean c = ARTUtils.a(true);

    public Dex2OatService() {
        super("Dex2OatService");
        a.a().a(true);
    }

    /* Access modifiers changed, original: protected */
    public void onHandleIntent(Intent intent) {
        if (this.c != null && this.c.booleanValue() && intent != null) {
            String stringExtra = intent.getStringExtra("sourcePathName");
            String stringExtra2 = intent.getStringExtra("outputPathName");
            try {
                long currentTimeMillis = System.currentTimeMillis();
                DexFile.loadDex(stringExtra, stringExtra2, 0);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            } catch (Exception e) {
                Log.e("Dex2OatService", "- DexFile loadDex fail: sourcePathName=" + stringExtra + ", outputPathName=" + stringExtra2, e);
            }
        }
    }

    static synchronized void a(Context context, String str, String str2) {
        synchronized (Dex2OatService.class) {
            Log.d("Dex2OatService", "- Dex2OatService start: sourcePathName=" + str + ", outputPathName=" + str2);
            if (a) {
                AsyncTask.execute(new c(context, str, str2));
            } else if (b != null) {
                b.add(new c(context, str, str2));
            }
        }
    }
}
