package com.taobao.android.runtime;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

class c implements Runnable {
    private final Context a;
    private final String b;
    private final String c;

    public c(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    public void run() {
        try {
            Intent intent = new Intent(this.a, Dex2OatService.class);
            intent.putExtra("sourcePathName", this.b);
            intent.putExtra("outputPathName", this.c);
            this.a.startService(intent);
        } catch (Exception e) {
            Log.e("Dex2OatService", "- Dex2OatService start fail: sourcePathName=" + this.b + ", outputPathName=" + this.c, e);
        }
    }
}
