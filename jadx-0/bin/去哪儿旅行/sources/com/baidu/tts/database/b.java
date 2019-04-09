package com.baidu.tts.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class b extends SQLiteOpenHelper {
    public b(Context context) {
        this(context, "ttsModel.db", null, 1);
    }

    public b(Context context, String str, CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(SpeechModelTable.a());
        sQLiteDatabase.execSQL(ModelFileTable.a());
        sQLiteDatabase.execSQL(FsFileInfoTable.a());
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(SpeechModelTable.b());
        sQLiteDatabase.execSQL(ModelFileTable.b());
        sQLiteDatabase.execSQL(FsFileInfoTable.b());
        onCreate(sQLiteDatabase);
    }
}
