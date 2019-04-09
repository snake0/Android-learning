package com.baidu.techain;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.baidu.techain.b.e;
import com.baidu.techain.b.r;

public class TechainProvider extends ContentProvider {
    public boolean onCreate() {
        b.a();
        return false;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, final String str2) {
        b.a();
        try {
            if ("p".equals(str)) {
                final Context context = getContext();
                r.a().a(new Runnable() {
                    public final void run() {
                        try {
                            new StringBuilder().append(str2);
                            b.a();
                            Intent intent = new Intent();
                            intent.putExtra("t", "p");
                            intent.putExtra("c", str2);
                            a.a(context, intent);
                        } catch (Throwable th) {
                            e.a();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            e.a();
        }
        return null;
    }

    public Bundle call(String str, String str2, Bundle bundle) {
        return com.baidu.techain.core.e.a(getContext().getApplicationContext(), str, bundle);
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
