package com.baidu.tts.database;

import android.database.sqlite.SQLiteDatabase;

public class f {
    private SQLiteDatabase a;
    private a b;

    public interface a {
        boolean a(SQLiteDatabase sQLiteDatabase);
    }

    public f(SQLiteDatabase sQLiteDatabase, a aVar) {
        this.a = sQLiteDatabase;
        this.b = aVar;
    }

    public boolean a() {
        boolean z = false;
        if (!(this.b == null || this.a == null)) {
            try {
                this.a.beginTransaction();
                z = this.b.a(this.a);
                if (z) {
                    this.a.setTransactionSuccessful();
                }
                if (this.a != null) {
                    this.a.endTransaction();
                    this.a.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (this.a != null) {
                    this.a.endTransaction();
                    this.a.close();
                }
            } catch (Throwable th) {
                if (this.a != null) {
                    this.a.endTransaction();
                    this.a.close();
                }
            }
        }
        return z;
    }
}
