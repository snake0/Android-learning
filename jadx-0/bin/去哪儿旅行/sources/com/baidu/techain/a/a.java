package com.baidu.techain.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.baidu.techain.b;
import com.baidu.techain.b.e;
import com.baidu.techain.core.ApkInfo;
import com.baidu.techain.core.g;
import java.util.ArrayList;

public final class a {
    public static a d;
    int a = 5;
    String b = "create table pgntechain(k INTEGER PRIMARY KEY ON CONFLICT ABORT,p TEXT UNIQUE ON CONFLICT ABORT,v TEXT,n INTEGER,s INTEGER,i INTEGER,u INTEGER,la INTEGER,o INTEGER,r INTEGER,ap INTEGER,apk TEXT,cl TEXT,b TEXT,t TEXT,ac BLOB,st INTEGER,du INTEGER,th INTEGER,m5 TEXT,rs INTEGER,l TEXT,pr INTEGER DEFAULT -1,pdld INTEGER DEFAULT 0,a TEXT)";
    public SQLiteDatabase c;
    private a e;
    private Context f;

    final class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "btechainh.db", null, a.this.a);
            new StringBuilder().append(a.this.a);
            b.a();
        }

        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL(a.this.b);
            } catch (Throwable th) {
                e.a();
            }
        }

        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            try {
                new StringBuilder("o=").append(i).append(", n=").append(i2);
                b.a();
                if (i < 3 && i2 >= 3) {
                    sQLiteDatabase.beginTransaction();
                    sQLiteDatabase.execSQL("ALTER TABLE pgntechain ADD COLUMN pr INTEGER  DEFAULT -1");
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable th) {
                e.a();
                return;
            }
            if (i < 5 && i2 >= 5) {
                sQLiteDatabase.beginTransaction();
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE pgntechain ADD COLUMN pdld INTEGER  DEFAULT -1");
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Throwable th2) {
                    e.a();
                    if (i < 4) {
                        return;
                    }
                } finally {
                    sQLiteDatabase.endTransaction();
                }
            }
            if (i < 4 && i2 >= 4) {
                try {
                    sQLiteDatabase.execSQL("drop table if exists tbchtechain");
                } catch (Throwable th3) {
                    e.a();
                }
            }
        }
    }

    private a(Context context) {
        b.a();
        this.f = context.getApplicationContext();
        this.e = new a(context.getApplicationContext());
        try {
            this.c = this.e.getWritableDatabase();
        } catch (Throwable th) {
            e.a();
        }
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            new StringBuilder("i=").append(d);
            b.a();
            if (d == null) {
                d = new a(context);
            }
            aVar = d;
        }
        return aVar;
    }

    public final long a(ApkInfo apkInfo) {
        if (apkInfo == null) {
            return 0;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("n", Integer.valueOf(apkInfo.initStatus));
        contentValues.put("p", apkInfo.packageName);
        contentValues.put("a", apkInfo.pkgPath);
        contentValues.put("l", apkInfo.libPath);
        contentValues.put("v", apkInfo.versionName);
        contentValues.put("apk", apkInfo.dexPath);
        contentValues.put("ap", Integer.valueOf(apkInfo.apkParseSuc));
        contentValues.put("cl", apkInfo.className);
        contentValues.put("st", Long.valueOf(apkInfo.startTime));
        contentValues.put("du", Integer.valueOf(apkInfo.duration));
        contentValues.put("m5", apkInfo.apkMD5);
        contentValues.put("th", Integer.valueOf(apkInfo.applicationTheme));
        contentValues.put("pr", Integer.valueOf(apkInfo.priority));
        if (apkInfo.activities != null) {
            contentValues.put("ac", new com.baidu.techain.core.a(apkInfo.activities).a());
        }
        if (b(apkInfo.key)) {
            try {
                return (long) this.c.update("pgntechain", contentValues, "k=" + apkInfo.key, null);
            } catch (Throwable th) {
                return 0;
            }
        }
        contentValues.put("k", Integer.valueOf(apkInfo.key));
        return this.c.insert("pgntechain", null, contentValues);
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00ae A:{SYNTHETIC, Splitter:B:29:0x00ae} */
    public final java.util.List<com.baidu.techain.core.ApkInfo> a() {
        /*
        r10 = this;
        r8 = 0;
        r9 = new java.util.ArrayList;
        r9.<init>();
        r0 = r10.c;	 Catch:{ Throwable -> 0x00c1, all -> 0x00ab }
        r1 = "pgntechain";
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x00c1, all -> 0x00ab }
        if (r0 == 0) goto L_0x0095;
    L_0x0016:
        r1 = r0.moveToNext();	 Catch:{ Throwable -> 0x0085 }
        if (r1 == 0) goto L_0x0095;
    L_0x001c:
        r1 = new com.baidu.techain.core.ApkInfo;	 Catch:{ Throwable -> 0x0085 }
        r1.<init>();	 Catch:{ Throwable -> 0x0085 }
        r2 = "k";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getInt(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.key = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "p";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getString(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.packageName = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "a";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getString(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.pkgPath = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "l";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getString(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.libPath = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "v";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getString(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.versionName = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "st";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getLong(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.startTime = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "du";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getInt(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.duration = r2;	 Catch:{ Throwable -> 0x0085 }
        r2 = "pr";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0085 }
        r2 = r0.getInt(r2);	 Catch:{ Throwable -> 0x0085 }
        r1.priority = r2;	 Catch:{ Throwable -> 0x0085 }
        r9.add(r1);	 Catch:{ Throwable -> 0x0085 }
        goto L_0x0016;
    L_0x0085:
        r1 = move-exception;
    L_0x0086:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x00bd }
        if (r0 == 0) goto L_0x0094;
    L_0x008b:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x00a6 }
        if (r1 != 0) goto L_0x0094;
    L_0x0091:
        r0.close();	 Catch:{ Throwable -> 0x00a6 }
    L_0x0094:
        return r9;
    L_0x0095:
        if (r0 == 0) goto L_0x0094;
    L_0x0097:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x00a1 }
        if (r1 != 0) goto L_0x0094;
    L_0x009d:
        r0.close();	 Catch:{ Throwable -> 0x00a1 }
        goto L_0x0094;
    L_0x00a1:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0094;
    L_0x00a6:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0094;
    L_0x00ab:
        r0 = move-exception;
    L_0x00ac:
        if (r8 == 0) goto L_0x00b7;
    L_0x00ae:
        r1 = r8.isClosed();	 Catch:{ Throwable -> 0x00b8 }
        if (r1 != 0) goto L_0x00b7;
    L_0x00b4:
        r8.close();	 Catch:{ Throwable -> 0x00b8 }
    L_0x00b7:
        throw r0;
    L_0x00b8:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00b7;
    L_0x00bd:
        r1 = move-exception;
        r8 = r0;
        r0 = r1;
        goto L_0x00ac;
    L_0x00c1:
        r0 = move-exception;
        r0 = r8;
        goto L_0x0086;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.a():java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0077 A:{SYNTHETIC, Splitter:B:29:0x0077} */
    public final java.util.Map<java.lang.Integer, java.lang.String> b() {
        /*
        r10 = this;
        r8 = 0;
        r9 = new java.util.HashMap;
        r9.<init>();
        r0 = r10.c;	 Catch:{ Throwable -> 0x008a, all -> 0x0074 }
        r1 = "pgntechain";
        r2 = 0;
        r3 = "n=1";
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x008a, all -> 0x0074 }
        if (r0 == 0) goto L_0x005e;
    L_0x0017:
        r1 = r0.moveToNext();	 Catch:{ Throwable -> 0x004e }
        if (r1 == 0) goto L_0x005e;
    L_0x001d:
        r1 = "k";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Throwable -> 0x004e }
        r1 = r0.getInt(r1);	 Catch:{ Throwable -> 0x004e }
        r2 = "v";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x004e }
        r2 = r0.getString(r2);	 Catch:{ Throwable -> 0x004e }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ Throwable -> 0x004e }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x004e }
        r4 = "'";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x004e }
        r2 = r3.append(r2);	 Catch:{ Throwable -> 0x004e }
        r3 = "'";
        r2 = r2.append(r3);	 Catch:{ Throwable -> 0x004e }
        r2 = r2.toString();	 Catch:{ Throwable -> 0x004e }
        r9.put(r1, r2);	 Catch:{ Throwable -> 0x004e }
        goto L_0x0017;
    L_0x004e:
        r1 = move-exception;
    L_0x004f:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0086 }
        if (r0 == 0) goto L_0x005d;
    L_0x0054:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x006f }
        if (r1 != 0) goto L_0x005d;
    L_0x005a:
        r0.close();	 Catch:{ Throwable -> 0x006f }
    L_0x005d:
        return r9;
    L_0x005e:
        if (r0 == 0) goto L_0x005d;
    L_0x0060:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x006a }
        if (r1 != 0) goto L_0x005d;
    L_0x0066:
        r0.close();	 Catch:{ Throwable -> 0x006a }
        goto L_0x005d;
    L_0x006a:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x005d;
    L_0x006f:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x005d;
    L_0x0074:
        r0 = move-exception;
    L_0x0075:
        if (r8 == 0) goto L_0x0080;
    L_0x0077:
        r1 = r8.isClosed();	 Catch:{ Throwable -> 0x0081 }
        if (r1 != 0) goto L_0x0080;
    L_0x007d:
        r8.close();	 Catch:{ Throwable -> 0x0081 }
    L_0x0080:
        throw r0;
    L_0x0081:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0080;
    L_0x0086:
        r1 = move-exception;
        r8 = r0;
        r0 = r1;
        goto L_0x0075;
    L_0x008a:
        r0 = move-exception;
        r0 = r8;
        goto L_0x004f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.b():java.util.Map");
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0062 A:{SYNTHETIC, Splitter:B:29:0x0062} */
    public final java.util.Map<java.lang.Integer, java.lang.String> c() {
        /*
        r10 = this;
        r8 = 0;
        r9 = new java.util.HashMap;
        r9.<init>();
        r0 = r10.c;	 Catch:{ Throwable -> 0x0075, all -> 0x005f }
        r1 = "pgntechain";
        r2 = 0;
        r3 = "n=1";
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0075, all -> 0x005f }
        if (r0 == 0) goto L_0x0049;
    L_0x0017:
        r1 = r0.moveToNext();	 Catch:{ Throwable -> 0x0039 }
        if (r1 == 0) goto L_0x0049;
    L_0x001d:
        r1 = "k";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Throwable -> 0x0039 }
        r1 = r0.getInt(r1);	 Catch:{ Throwable -> 0x0039 }
        r2 = "p";
        r2 = r0.getColumnIndex(r2);	 Catch:{ Throwable -> 0x0039 }
        r2 = r0.getString(r2);	 Catch:{ Throwable -> 0x0039 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ Throwable -> 0x0039 }
        r9.put(r1, r2);	 Catch:{ Throwable -> 0x0039 }
        goto L_0x0017;
    L_0x0039:
        r1 = move-exception;
    L_0x003a:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0071 }
        if (r0 == 0) goto L_0x0048;
    L_0x003f:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x005a }
        if (r1 != 0) goto L_0x0048;
    L_0x0045:
        r0.close();	 Catch:{ Throwable -> 0x005a }
    L_0x0048:
        return r9;
    L_0x0049:
        if (r0 == 0) goto L_0x0048;
    L_0x004b:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x0055 }
        if (r1 != 0) goto L_0x0048;
    L_0x0051:
        r0.close();	 Catch:{ Throwable -> 0x0055 }
        goto L_0x0048;
    L_0x0055:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0048;
    L_0x005a:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0048;
    L_0x005f:
        r0 = move-exception;
    L_0x0060:
        if (r8 == 0) goto L_0x006b;
    L_0x0062:
        r1 = r8.isClosed();	 Catch:{ Throwable -> 0x006c }
        if (r1 != 0) goto L_0x006b;
    L_0x0068:
        r8.close();	 Catch:{ Throwable -> 0x006c }
    L_0x006b:
        throw r0;
    L_0x006c:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x006b;
    L_0x0071:
        r1 = move-exception;
        r8 = r0;
        r0 = r1;
        goto L_0x0060;
    L_0x0075:
        r0 = move-exception;
        r0 = r8;
        goto L_0x003a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.c():java.util.Map");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x017b A:{SYNTHETIC, Splitter:B:21:0x017b} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0192 A:{SYNTHETIC, Splitter:B:33:0x0192} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x01a5 A:{SYNTHETIC, Splitter:B:42:0x01a5} */
    public final com.baidu.techain.core.ApkInfo a(int r10) {
        /*
        r9 = this;
        r8 = 0;
        r0 = r9.c;	 Catch:{ Throwable -> 0x018a, all -> 0x01a1 }
        r1 = "pgntechain";
        r2 = 0;
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x018a, all -> 0x01a1 }
        r4 = "k=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x018a, all -> 0x01a1 }
        r3 = r3.append(r10);	 Catch:{ Throwable -> 0x018a, all -> 0x01a1 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x018a, all -> 0x01a1 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x018a, all -> 0x01a1 }
        if (r1 == 0) goto L_0x01bc;
    L_0x001f:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x01b6 }
        if (r0 == 0) goto L_0x01bc;
    L_0x0025:
        r2 = new com.baidu.techain.core.ApkInfo;	 Catch:{ Throwable -> 0x01b6 }
        r2.<init>();	 Catch:{ Throwable -> 0x01b6 }
        r2.key = r10;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "n";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.initStatus = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "p";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.packageName = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "a";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.pkgPath = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "l";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.libPath = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "v";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.versionName = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "apk";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.dexPath = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "ap";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.apkParseSuc = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "cl";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.className = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "th";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.applicationTheme = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "st";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r3 = r1.getLong(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.startTime = r3;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "du";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.duration = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "m5";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.apkMD5 = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "pr";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01b9 }
        r2.priority = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = "ac";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01b9 }
        r0 = r1.getBlob(r0);	 Catch:{ Throwable -> 0x01b9 }
        if (r0 == 0) goto L_0x0178;
    L_0x00d4:
        r4 = com.baidu.techain.core.a.a(r0);	 Catch:{ Throwable -> 0x01b9 }
        if (r4 == 0) goto L_0x0178;
    L_0x00da:
        r5 = r4.size();	 Catch:{ Throwable -> 0x01b9 }
        if (r5 <= 0) goto L_0x0178;
    L_0x00e0:
        r0 = new android.content.pm.ActivityInfo[r5];	 Catch:{ Throwable -> 0x01b9 }
        r2.activities = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = 0;
        r3 = r0;
    L_0x00e6:
        if (r3 >= r5) goto L_0x0178;
    L_0x00e8:
        r6 = new android.content.pm.ActivityInfo;	 Catch:{ Throwable -> 0x01b9 }
        r6.<init>();	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.a;	 Catch:{ Throwable -> 0x01b9 }
        r6.theme = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.j;	 Catch:{ Throwable -> 0x01b9 }
        r6.name = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.h;	 Catch:{ Throwable -> 0x01b9 }
        r6.configChanges = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.f;	 Catch:{ Throwable -> 0x01b9 }
        r6.flags = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.l;	 Catch:{ Throwable -> 0x01b9 }
        r6.labelRes = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.b;	 Catch:{ Throwable -> 0x01b9 }
        r6.launchMode = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.m;	 Catch:{ Throwable -> 0x01b9 }
        r6.nonLocalizedLabel = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.k;	 Catch:{ Throwable -> 0x01b9 }
        r6.packageName = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.c;	 Catch:{ Throwable -> 0x01b9 }
        r6.permission = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.g;	 Catch:{ Throwable -> 0x01b9 }
        r6.screenOrientation = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.i;	 Catch:{ Throwable -> 0x01b9 }
        r6.softInputMode = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.e;	 Catch:{ Throwable -> 0x01b9 }
        r6.targetActivity = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01b9 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r0.d;	 Catch:{ Throwable -> 0x01b9 }
        r6.taskAffinity = r0;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r2.activities;	 Catch:{ Throwable -> 0x01b9 }
        r0[r3] = r6;	 Catch:{ Throwable -> 0x01b9 }
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x00e6;
    L_0x0178:
        r0 = r2;
    L_0x0179:
        if (r1 == 0) goto L_0x0184;
    L_0x017b:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x0185 }
        if (r2 != 0) goto L_0x0184;
    L_0x0181:
        r1.close();	 Catch:{ Throwable -> 0x0185 }
    L_0x0184:
        return r0;
    L_0x0185:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0184;
    L_0x018a:
        r0 = move-exception;
        r1 = r8;
        r0 = r8;
    L_0x018d:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x01b4 }
        if (r1 == 0) goto L_0x0184;
    L_0x0192:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x019c }
        if (r2 != 0) goto L_0x0184;
    L_0x0198:
        r1.close();	 Catch:{ Throwable -> 0x019c }
        goto L_0x0184;
    L_0x019c:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0184;
    L_0x01a1:
        r0 = move-exception;
        r1 = r8;
    L_0x01a3:
        if (r1 == 0) goto L_0x01ae;
    L_0x01a5:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x01af }
        if (r2 != 0) goto L_0x01ae;
    L_0x01ab:
        r1.close();	 Catch:{ Throwable -> 0x01af }
    L_0x01ae:
        throw r0;
    L_0x01af:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x01ae;
    L_0x01b4:
        r0 = move-exception;
        goto L_0x01a3;
    L_0x01b6:
        r0 = move-exception;
        r0 = r8;
        goto L_0x018d;
    L_0x01b9:
        r0 = move-exception;
        r0 = r2;
        goto L_0x018d;
    L_0x01bc:
        r0 = r8;
        goto L_0x0179;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.a(int):com.baidu.techain.core.ApkInfo");
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0031 A:{SYNTHETIC, Splitter:B:9:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x005b A:{SYNTHETIC, Splitter:B:29:0x005b} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x005b A:{SYNTHETIC, Splitter:B:29:0x005b} */
    public final boolean b(int r12) {
        /*
        r11 = this;
        r10 = 1;
        r8 = 0;
        r9 = 0;
        r1 = "pgntechain";
        r0 = r11.c;	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r3 = 0;
        r4 = "p";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r4 = "k=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r3 = r3.append(r12);	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0040, all -> 0x0058 }
        if (r1 == 0) goto L_0x0074;
    L_0x0028:
        r0 = r1.getCount();	 Catch:{ Throwable -> 0x0071, all -> 0x006a }
        if (r0 <= 0) goto L_0x0074;
    L_0x002e:
        r0 = r10;
    L_0x002f:
        if (r1 == 0) goto L_0x003a;
    L_0x0031:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x003b }
        if (r2 != 0) goto L_0x003a;
    L_0x0037:
        r1.close();	 Catch:{ Throwable -> 0x003b }
    L_0x003a:
        return r0;
    L_0x003b:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x003a;
    L_0x0040:
        r0 = move-exception;
        r0 = r9;
    L_0x0042:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x006d }
        if (r0 == 0) goto L_0x0050;
    L_0x0047:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x0052 }
        if (r1 != 0) goto L_0x0050;
    L_0x004d:
        r0.close();	 Catch:{ Throwable -> 0x0052 }
    L_0x0050:
        r0 = r8;
        goto L_0x003a;
    L_0x0052:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r8;
        goto L_0x003a;
    L_0x0058:
        r0 = move-exception;
    L_0x0059:
        if (r9 == 0) goto L_0x0064;
    L_0x005b:
        r1 = r9.isClosed();	 Catch:{ Throwable -> 0x0065 }
        if (r1 != 0) goto L_0x0064;
    L_0x0061:
        r9.close();	 Catch:{ Throwable -> 0x0065 }
    L_0x0064:
        throw r0;
    L_0x0065:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0064;
    L_0x006a:
        r0 = move-exception;
        r9 = r1;
        goto L_0x0059;
    L_0x006d:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
        goto L_0x0059;
    L_0x0071:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0042;
    L_0x0074:
        r0 = r8;
        goto L_0x002f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.b(int):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x003a A:{SYNTHETIC, Splitter:B:10:0x003a} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0064 A:{SYNTHETIC, Splitter:B:30:0x0064} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0064 A:{SYNTHETIC, Splitter:B:30:0x0064} */
    public final int c(int r11) {
        /*
        r10 = this;
        r8 = 0;
        r9 = 0;
        r0 = r10.c;	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r1 = "pgntechain";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = 0;
        r4 = "n";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r4 = "k=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = r3.append(r11);	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        if (r1 == 0) goto L_0x007d;
    L_0x0027:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x007a, all -> 0x0073 }
        if (r0 == 0) goto L_0x007d;
    L_0x002d:
        r0 = "n";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x007a, all -> 0x0073 }
        r8 = r1.getInt(r0);	 Catch:{ Throwable -> 0x007a, all -> 0x0073 }
        r0 = r8;
    L_0x0038:
        if (r1 == 0) goto L_0x0043;
    L_0x003a:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x0044 }
        if (r2 != 0) goto L_0x0043;
    L_0x0040:
        r1.close();	 Catch:{ Throwable -> 0x0044 }
    L_0x0043:
        return r0;
    L_0x0044:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0043;
    L_0x0049:
        r0 = move-exception;
        r0 = r9;
    L_0x004b:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0076 }
        if (r0 == 0) goto L_0x0059;
    L_0x0050:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x005b }
        if (r1 != 0) goto L_0x0059;
    L_0x0056:
        r0.close();	 Catch:{ Throwable -> 0x005b }
    L_0x0059:
        r0 = r8;
        goto L_0x0043;
    L_0x005b:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r8;
        goto L_0x0043;
    L_0x0061:
        r0 = move-exception;
    L_0x0062:
        if (r9 == 0) goto L_0x006d;
    L_0x0064:
        r1 = r9.isClosed();	 Catch:{ Throwable -> 0x006e }
        if (r1 != 0) goto L_0x006d;
    L_0x006a:
        r9.close();	 Catch:{ Throwable -> 0x006e }
    L_0x006d:
        throw r0;
    L_0x006e:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x006d;
    L_0x0073:
        r0 = move-exception;
        r9 = r1;
        goto L_0x0062;
    L_0x0076:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
        goto L_0x0062;
    L_0x007a:
        r0 = move-exception;
        r0 = r1;
        goto L_0x004b;
    L_0x007d:
        r0 = r8;
        goto L_0x0038;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.c(int):int");
    }

    public final void a(String str) {
        new StringBuilder().append(str);
        b.a();
        if (!TextUtils.isEmpty(str)) {
            try {
                this.c.delete("pgntechain", "p=?", new String[]{str});
            } catch (Throwable th) {
                e.a();
            }
        }
    }

    public final void d() {
        try {
            ArrayList<ApkInfo> arrayList = new ArrayList();
            for (ApkInfo apkInfo : a()) {
                if (!(e.c(apkInfo.pkgPath) || g.b == null || g.b.contains(Integer.valueOf(apkInfo.key)))) {
                    arrayList.add(apkInfo);
                }
            }
            g a = g.a();
            for (ApkInfo apkInfo2 : arrayList) {
                if (a != null) {
                    a.b(apkInfo2.packageName);
                }
                new StringBuilder().append(apkInfo2.packageName).append(this.c.delete("pgntechain", "k=" + apkInfo2.key, null));
                b.a();
                e.d(this.f.getFilesDir().getCanonicalPath() + "/.techain_" + apkInfo2.key);
                if (this.f != null) {
                    e.d(this.f.getFileStreamPath(apkInfo2.packageName).getAbsolutePath());
                }
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0068 A:{SYNTHETIC, Splitter:B:33:0x0068} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0068 A:{SYNTHETIC, Splitter:B:33:0x0068} */
    public final boolean d(int r12) {
        /*
        r11 = this;
        r8 = 1;
        r9 = 0;
        r10 = 0;
        r0 = r11.c;	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r1 = "pgntechain";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = 0;
        r4 = "u";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r4 = "k=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = r3.append(r12);	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        if (r1 == 0) goto L_0x003c;
    L_0x0028:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x007e, all -> 0x0077 }
        if (r0 == 0) goto L_0x003c;
    L_0x002e:
        r0 = "u";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x007e, all -> 0x0077 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x007e, all -> 0x0077 }
        if (r0 != r8) goto L_0x0048;
    L_0x003a:
        r0 = r8;
    L_0x003b:
        r9 = r0;
    L_0x003c:
        if (r1 == 0) goto L_0x0047;
    L_0x003e:
        r0 = r1.isClosed();	 Catch:{ Throwable -> 0x004a }
        if (r0 != 0) goto L_0x0047;
    L_0x0044:
        r1.close();	 Catch:{ Throwable -> 0x004a }
    L_0x0047:
        return r9;
    L_0x0048:
        r0 = r9;
        goto L_0x003b;
    L_0x004a:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0047;
    L_0x004f:
        r0 = move-exception;
        r0 = r10;
    L_0x0051:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x007a }
        if (r0 == 0) goto L_0x0047;
    L_0x0056:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x0060 }
        if (r1 != 0) goto L_0x0047;
    L_0x005c:
        r0.close();	 Catch:{ Throwable -> 0x0060 }
        goto L_0x0047;
    L_0x0060:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0047;
    L_0x0065:
        r0 = move-exception;
    L_0x0066:
        if (r10 == 0) goto L_0x0071;
    L_0x0068:
        r1 = r10.isClosed();	 Catch:{ Throwable -> 0x0072 }
        if (r1 != 0) goto L_0x0071;
    L_0x006e:
        r10.close();	 Catch:{ Throwable -> 0x0072 }
    L_0x0071:
        throw r0;
    L_0x0072:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0071;
    L_0x0077:
        r0 = move-exception;
        r10 = r1;
        goto L_0x0066;
    L_0x007a:
        r1 = move-exception;
        r10 = r0;
        r0 = r1;
        goto L_0x0066;
    L_0x007e:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0051;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.d(int):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0068 A:{SYNTHETIC, Splitter:B:33:0x0068} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0068 A:{SYNTHETIC, Splitter:B:33:0x0068} */
    public final boolean e(int r12) {
        /*
        r11 = this;
        r8 = 1;
        r9 = 0;
        r10 = 0;
        r0 = r11.c;	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r1 = "pgntechain";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = 0;
        r4 = "s";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r4 = "k=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = r3.append(r12);	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x004f, all -> 0x0065 }
        if (r1 == 0) goto L_0x003c;
    L_0x0028:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x007e, all -> 0x0077 }
        if (r0 == 0) goto L_0x003c;
    L_0x002e:
        r0 = "s";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x007e, all -> 0x0077 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x007e, all -> 0x0077 }
        if (r0 != r8) goto L_0x0048;
    L_0x003a:
        r0 = r8;
    L_0x003b:
        r9 = r0;
    L_0x003c:
        if (r1 == 0) goto L_0x0047;
    L_0x003e:
        r0 = r1.isClosed();	 Catch:{ Throwable -> 0x004a }
        if (r0 != 0) goto L_0x0047;
    L_0x0044:
        r1.close();	 Catch:{ Throwable -> 0x004a }
    L_0x0047:
        return r9;
    L_0x0048:
        r0 = r9;
        goto L_0x003b;
    L_0x004a:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0047;
    L_0x004f:
        r0 = move-exception;
        r0 = r10;
    L_0x0051:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x007a }
        if (r0 == 0) goto L_0x0047;
    L_0x0056:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x0060 }
        if (r1 != 0) goto L_0x0047;
    L_0x005c:
        r0.close();	 Catch:{ Throwable -> 0x0060 }
        goto L_0x0047;
    L_0x0060:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0047;
    L_0x0065:
        r0 = move-exception;
    L_0x0066:
        if (r10 == 0) goto L_0x0071;
    L_0x0068:
        r1 = r10.isClosed();	 Catch:{ Throwable -> 0x0072 }
        if (r1 != 0) goto L_0x0071;
    L_0x006e:
        r10.close();	 Catch:{ Throwable -> 0x0072 }
    L_0x0071:
        throw r0;
    L_0x0072:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0071;
    L_0x0077:
        r0 = move-exception;
        r10 = r1;
        goto L_0x0066;
    L_0x007a:
        r1 = move-exception;
        r10 = r0;
        r0 = r1;
        goto L_0x0066;
    L_0x007e:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0051;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.e(int):boolean");
    }

    public final int a(int i, int i2) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("u", Integer.valueOf(i2));
            return this.c.update("pgntechain", contentValues, "k=" + i, null);
        } catch (Throwable th) {
            return 0;
        }
    }

    public final void f(int i) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("n", Integer.valueOf(-1));
            this.c.update("pgntechain", contentValues, "k=" + i, null);
        } catch (Throwable th) {
            e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x006b A:{SYNTHETIC, Splitter:B:22:0x006b} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0097 A:{SYNTHETIC, Splitter:B:44:0x0097} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0084 A:{SYNTHETIC, Splitter:B:35:0x0084} */
    public final java.lang.String[] b(java.lang.String r12) {
        /*
        r11 = this;
        r10 = 0;
        r8 = 0;
        r9 = 1;
        r0 = r11.c;	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r1 = "pgntechain";
        r2 = 3;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r3 = 0;
        r4 = "r";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r3 = 1;
        r4 = "b";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r3 = 2;
        r4 = "t";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r3 = "p=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r5 = 0;
        r4[r5] = r12;	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x007c, all -> 0x0093 }
        if (r1 == 0) goto L_0x00ae;
    L_0x002a:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x00a8 }
        if (r0 == 0) goto L_0x00ae;
    L_0x0030:
        r0 = "r";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x00a8 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x00a8 }
        if (r0 != r9) goto L_0x0075;
    L_0x003c:
        r0 = r9;
    L_0x003d:
        r2 = "b";
        r2 = r1.getColumnIndex(r2);	 Catch:{ Throwable -> 0x00a8 }
        r2 = r1.getString(r2);	 Catch:{ Throwable -> 0x00a8 }
        r3 = "t";
        r3 = r1.getColumnIndex(r3);	 Catch:{ Throwable -> 0x00a8 }
        r3 = r1.getString(r3);	 Catch:{ Throwable -> 0x00a8 }
        if (r0 == 0) goto L_0x00ae;
    L_0x0053:
        r0 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Throwable -> 0x00a8 }
        if (r0 != 0) goto L_0x00ae;
    L_0x0059:
        r0 = android.text.TextUtils.isEmpty(r3);	 Catch:{ Throwable -> 0x00a8 }
        if (r0 != 0) goto L_0x00ae;
    L_0x005f:
        r0 = 2;
        r8 = new java.lang.String[r0];	 Catch:{ Throwable -> 0x00a8 }
        r0 = 0;
        r8[r0] = r2;	 Catch:{ Throwable -> 0x00ab }
        r0 = 1;
        r8[r0] = r3;	 Catch:{ Throwable -> 0x00ab }
        r0 = r8;
    L_0x0069:
        if (r1 == 0) goto L_0x0074;
    L_0x006b:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x0077 }
        if (r2 != 0) goto L_0x0074;
    L_0x0071:
        r1.close();	 Catch:{ Throwable -> 0x0077 }
    L_0x0074:
        return r0;
    L_0x0075:
        r0 = r10;
        goto L_0x003d;
    L_0x0077:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0074;
    L_0x007c:
        r0 = move-exception;
        r1 = r8;
        r0 = r8;
    L_0x007f:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x00a6 }
        if (r1 == 0) goto L_0x0074;
    L_0x0084:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x008e }
        if (r2 != 0) goto L_0x0074;
    L_0x008a:
        r1.close();	 Catch:{ Throwable -> 0x008e }
        goto L_0x0074;
    L_0x008e:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0074;
    L_0x0093:
        r0 = move-exception;
        r1 = r8;
    L_0x0095:
        if (r1 == 0) goto L_0x00a0;
    L_0x0097:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x00a1 }
        if (r2 != 0) goto L_0x00a0;
    L_0x009d:
        r1.close();	 Catch:{ Throwable -> 0x00a1 }
    L_0x00a0:
        throw r0;
    L_0x00a1:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00a0;
    L_0x00a6:
        r0 = move-exception;
        goto L_0x0095;
    L_0x00a8:
        r0 = move-exception;
        r0 = r8;
        goto L_0x007f;
    L_0x00ab:
        r0 = move-exception;
        r0 = r8;
        goto L_0x007f;
    L_0x00ae:
        r0 = r8;
        goto L_0x0069;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.b(java.lang.String):java.lang.String[]");
    }

    public final void b(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("pdld", Integer.valueOf(i2));
        try {
            this.c.update("pgntechain", contentValues, "k=" + i, null);
        } catch (Throwable th) {
            e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x003a A:{SYNTHETIC, Splitter:B:10:0x003a} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0064 A:{SYNTHETIC, Splitter:B:30:0x0064} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0064 A:{SYNTHETIC, Splitter:B:30:0x0064} */
    public final int g(int r11) {
        /*
        r10 = this;
        r8 = 0;
        r9 = 0;
        r0 = r10.c;	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r1 = "pgntechain";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = 0;
        r4 = "pdld";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r4 = "k=";
        r3.<init>(r4);	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = r3.append(r11);	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0049, all -> 0x0061 }
        if (r1 == 0) goto L_0x007d;
    L_0x0027:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x007a, all -> 0x0073 }
        if (r0 == 0) goto L_0x007d;
    L_0x002d:
        r0 = "pdld";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x007a, all -> 0x0073 }
        r8 = r1.getInt(r0);	 Catch:{ Throwable -> 0x007a, all -> 0x0073 }
        r0 = r8;
    L_0x0038:
        if (r1 == 0) goto L_0x0043;
    L_0x003a:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x0044 }
        if (r2 != 0) goto L_0x0043;
    L_0x0040:
        r1.close();	 Catch:{ Throwable -> 0x0044 }
    L_0x0043:
        return r0;
    L_0x0044:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0043;
    L_0x0049:
        r0 = move-exception;
        r0 = r9;
    L_0x004b:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0076 }
        if (r0 == 0) goto L_0x0059;
    L_0x0050:
        r1 = r0.isClosed();	 Catch:{ Throwable -> 0x005b }
        if (r1 != 0) goto L_0x0059;
    L_0x0056:
        r0.close();	 Catch:{ Throwable -> 0x005b }
    L_0x0059:
        r0 = r8;
        goto L_0x0043;
    L_0x005b:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r8;
        goto L_0x0043;
    L_0x0061:
        r0 = move-exception;
    L_0x0062:
        if (r9 == 0) goto L_0x006d;
    L_0x0064:
        r1 = r9.isClosed();	 Catch:{ Throwable -> 0x006e }
        if (r1 != 0) goto L_0x006d;
    L_0x006a:
        r9.close();	 Catch:{ Throwable -> 0x006e }
    L_0x006d:
        throw r0;
    L_0x006e:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x006d;
    L_0x0073:
        r0 = move-exception;
        r9 = r1;
        goto L_0x0062;
    L_0x0076:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
        goto L_0x0062;
    L_0x007a:
        r0 = move-exception;
        r0 = r1;
        goto L_0x004b;
    L_0x007d:
        r0 = r8;
        goto L_0x0038;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.g(int):int");
    }

    public final void h(int i) {
        new StringBuilder().append(i);
        b.a();
        if (i > 0) {
            try {
                new StringBuilder().append(this.c.delete("pgntechain", "k=" + i, null));
                b.a();
            } catch (Throwable th) {
                e.a();
            }
        }
    }

    public final void c(int i, int i2) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("pr", Integer.valueOf(i2));
            this.c.update("pgntechain", contentValues, "k=" + i, null);
        } catch (Throwable th) {
            e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0185 A:{SYNTHETIC, Splitter:B:23:0x0185} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x01b2 A:{SYNTHETIC, Splitter:B:43:0x01b2} */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x019d A:{SYNTHETIC, Splitter:B:34:0x019d} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x01c1 A:{ExcHandler: all (th java.lang.Throwable), Splitter:B:6:0x0020} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x01b2 A:{SYNTHETIC, Splitter:B:43:0x01b2} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:36:0x01a1, code skipped:
            if (r8.isClosed() == false) goto L_0x01a3;
     */
    /* JADX WARNING: Missing block: B:37:0x01a3, code skipped:
            r8.close();
     */
    /* JADX WARNING: Missing block: B:39:0x01a9, code skipped:
            com.baidu.techain.b.e.a();
     */
    /* JADX WARNING: Missing block: B:45:0x01b6, code skipped:
            if (r1.isClosed() == false) goto L_0x01b8;
     */
    /* JADX WARNING: Missing block: B:46:0x01b8, code skipped:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:49:0x01bd, code skipped:
            com.baidu.techain.b.e.a();
     */
    /* JADX WARNING: Missing block: B:50:0x01c1, code skipped:
            r0 = th;
     */
    /* JADX WARNING: Missing block: B:54:0x01c7, code skipped:
            r0 = null;
            r8 = r1;
     */
    /* JADX WARNING: Missing block: B:63:?, code skipped:
            return r0;
     */
    /* JADX WARNING: Missing block: B:64:?, code skipped:
            return r0;
     */
    /* JADX WARNING: Missing block: B:65:?, code skipped:
            return r0;
     */
    /* JADX WARNING: Missing block: B:67:?, code skipped:
            return r0;
     */
    public final com.baidu.techain.core.ApkInfo c(java.lang.String r11) {
        /*
        r10 = this;
        r9 = 0;
        r8 = 0;
        r0 = android.text.TextUtils.isEmpty(r11);
        if (r0 == 0) goto L_0x000a;
    L_0x0008:
        r0 = r8;
    L_0x0009:
        return r0;
    L_0x000a:
        r0 = r10.c;	 Catch:{ Throwable -> 0x0196, all -> 0x01ae }
        r1 = "pgntechain";
        r2 = 0;
        r3 = "p=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Throwable -> 0x0196, all -> 0x01ae }
        r5 = 0;
        r4[r5] = r11;	 Catch:{ Throwable -> 0x0196, all -> 0x01ae }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0196, all -> 0x01ae }
        if (r1 == 0) goto L_0x01ce;
    L_0x0020:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x01c6, all -> 0x01c1 }
        if (r0 == 0) goto L_0x01ce;
    L_0x0026:
        r2 = new com.baidu.techain.core.ApkInfo;	 Catch:{ Throwable -> 0x01c6, all -> 0x01c1 }
        r2.<init>();	 Catch:{ Throwable -> 0x01c6, all -> 0x01c1 }
        r0 = "k";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.key = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "n";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.initStatus = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "p";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.packageName = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "a";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.pkgPath = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "l";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.libPath = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "v";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.versionName = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "apk";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.dexPath = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "ap";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.apkParseSuc = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "cl";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.className = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "th";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.applicationTheme = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "st";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r3 = r1.getLong(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.startTime = r3;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "du";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.duration = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "m5";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.apkMD5 = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "pr";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.priority = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = "ac";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r1.getBlob(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        if (r0 == 0) goto L_0x0182;
    L_0x00df:
        r4 = com.baidu.techain.core.a.a(r0);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        if (r4 == 0) goto L_0x0182;
    L_0x00e5:
        r5 = r4.size();	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        if (r5 <= 0) goto L_0x0182;
    L_0x00eb:
        r0 = new android.content.pm.ActivityInfo[r5];	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r2.activities = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r3 = r9;
    L_0x00f0:
        if (r3 >= r5) goto L_0x0182;
    L_0x00f2:
        r6 = new android.content.pm.ActivityInfo;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.<init>();	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.a;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.theme = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.j;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.name = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.h;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.configChanges = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.f;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.flags = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.l;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.labelRes = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.b;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.launchMode = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.m;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.nonLocalizedLabel = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.k;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.packageName = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.c;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.permission = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.g;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.screenOrientation = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.i;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.softInputMode = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.e;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.targetActivity = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r4.get(r3);	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = (com.baidu.techain.core.b) r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r0.d;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r6.taskAffinity = r0;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r2.activities;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0[r3] = r6;	 Catch:{ Throwable -> 0x01ca, all -> 0x01c1 }
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x00f0;
    L_0x0182:
        r0 = r2;
    L_0x0183:
        if (r1 == 0) goto L_0x0009;
    L_0x0185:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x0190 }
        if (r2 != 0) goto L_0x0009;
    L_0x018b:
        r1.close();	 Catch:{ Throwable -> 0x0190 }
        goto L_0x0009;
    L_0x0190:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0009;
    L_0x0196:
        r0 = move-exception;
        r0 = r8;
    L_0x0198:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x01c3 }
        if (r8 == 0) goto L_0x0009;
    L_0x019d:
        r1 = r8.isClosed();	 Catch:{ Throwable -> 0x01a8 }
        if (r1 != 0) goto L_0x0009;
    L_0x01a3:
        r8.close();	 Catch:{ Throwable -> 0x01a8 }
        goto L_0x0009;
    L_0x01a8:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0009;
    L_0x01ae:
        r0 = move-exception;
        r1 = r8;
    L_0x01b0:
        if (r1 == 0) goto L_0x01bb;
    L_0x01b2:
        r2 = r1.isClosed();	 Catch:{ Throwable -> 0x01bc }
        if (r2 != 0) goto L_0x01bb;
    L_0x01b8:
        r1.close();	 Catch:{ Throwable -> 0x01bc }
    L_0x01bb:
        throw r0;
    L_0x01bc:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x01bb;
    L_0x01c1:
        r0 = move-exception;
        goto L_0x01b0;
    L_0x01c3:
        r0 = move-exception;
        r1 = r8;
        goto L_0x01b0;
    L_0x01c6:
        r0 = move-exception;
        r0 = r8;
        r8 = r1;
        goto L_0x0198;
    L_0x01ca:
        r0 = move-exception;
        r8 = r1;
        r0 = r2;
        goto L_0x0198;
    L_0x01ce:
        r0 = r8;
        goto L_0x0183;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.a.a.c(java.lang.String):com.baidu.techain.core.ApkInfo");
    }
}
