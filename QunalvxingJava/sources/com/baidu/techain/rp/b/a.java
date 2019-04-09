package com.baidu.techain.rp.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Base64;
import com.baidu.techain.ac.F;
import com.baidu.techain.e;
import java.util.List;

public final class a {
    private static a a;
    private a b;
    private e c;
    private SQLiteDatabase d;
    private Context e;

    final class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "techain_d.db", null, 3);
        }

        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("create table if not exists r(a integer primary key autoincrement, b text, c integer, e integer,f integer,h text, g integer, i integer, j text, d long);");
            sQLiteDatabase.execSQL("create table if not exists c(a integer primary key autoincrement, b text); ");
        }

        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i <= 1) {
                sQLiteDatabase.execSQL("alter table r add i integer default 0;");
            }
            if (i <= 2) {
                sQLiteDatabase.execSQL("ALTER TABLE r ADD COLUMN j TEXT");
            }
        }
    }

    private a(Context context) {
        this.e = context;
        this.b = new a(context);
        this.c = new e(context);
        try {
            this.d = this.b.getWritableDatabase();
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a(context);
            }
            aVar = a;
        }
        return aVar;
    }

    public final long a(com.baidu.techain.rp.c.a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("b", aVar.b);
        contentValues.put("c", Integer.valueOf(aVar.c));
        contentValues.put("d", Long.valueOf(aVar.e));
        contentValues.put("e", Integer.valueOf(aVar.g));
        contentValues.put("g", Integer.valueOf(aVar.f));
        contentValues.put("f", Integer.valueOf(aVar.h));
        contentValues.put("i", Integer.valueOf(aVar.i));
        contentValues.put("j", aVar.j);
        String str = aVar.d;
        try {
            str = Base64.encodeToString(F.getInstance().ae(str.getBytes(), "xVOTuxgN3lkRN2v4".getBytes("utf-8")), 0);
        } catch (Exception e) {
            com.baidu.techain.b.e.a();
        }
        contentValues.put("h", str);
        long j = -1;
        try {
            return this.d.insert("r", null, contentValues);
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return j;
        }
    }

    public final long a(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("b", str);
        long j = -1;
        try {
            return this.d.insert("c", null, contentValues);
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return j;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0022 A:{SYNTHETIC, Splitter:B:9:0x0022} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0040 A:{SYNTHETIC, Splitter:B:25:0x0040} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0040 A:{SYNTHETIC, Splitter:B:25:0x0040} */
    public final boolean b(java.lang.String r12) {
        /*
        r11 = this;
        r8 = 1;
        r10 = 0;
        r9 = 0;
        r3 = "b=?";
        r0 = 1;
        r4 = new java.lang.String[r0];	 Catch:{ Throwable -> 0x002b, all -> 0x003d }
        r0 = 0;
        r4[r0] = r12;	 Catch:{ Throwable -> 0x002b, all -> 0x003d }
        r0 = r11.d;	 Catch:{ Throwable -> 0x002b, all -> 0x003d }
        r1 = "c";
        r2 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x002b, all -> 0x003d }
        if (r1 == 0) goto L_0x0055;
    L_0x0019:
        r0 = r1.getCount();	 Catch:{ Throwable -> 0x0050, all -> 0x0049 }
        if (r0 <= 0) goto L_0x0055;
    L_0x001f:
        r0 = r10;
    L_0x0020:
        if (r1 == 0) goto L_0x0025;
    L_0x0022:
        r1.close();	 Catch:{ Exception -> 0x0026 }
    L_0x0025:
        return r0;
    L_0x0026:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0025;
    L_0x002b:
        r0 = move-exception;
        r0 = r9;
    L_0x002d:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x004c }
        if (r0 == 0) goto L_0x0053;
    L_0x0032:
        r0.close();	 Catch:{ Exception -> 0x0037 }
        r0 = r8;
        goto L_0x0025;
    L_0x0037:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r8;
        goto L_0x0025;
    L_0x003d:
        r0 = move-exception;
    L_0x003e:
        if (r9 == 0) goto L_0x0043;
    L_0x0040:
        r9.close();	 Catch:{ Exception -> 0x0044 }
    L_0x0043:
        throw r0;
    L_0x0044:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0043;
    L_0x0049:
        r0 = move-exception;
        r9 = r1;
        goto L_0x003e;
    L_0x004c:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
        goto L_0x003e;
    L_0x0050:
        r0 = move-exception;
        r0 = r1;
        goto L_0x002d;
    L_0x0053:
        r0 = r8;
        goto L_0x0025;
    L_0x0055:
        r0 = r8;
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.rp.b.a.b(java.lang.String):boolean");
    }

    private int b(int i) {
        int i2 = -1;
        try {
            return this.d.delete("r", "a=?", new String[]{String.valueOf(i)});
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return i2;
        }
    }

    public final int a(List<Integer> list) {
        try {
            this.d.beginTransaction();
            for (Integer intValue : list) {
                b(intValue.intValue());
            }
            this.d.setTransactionSuccessful();
            try {
                this.d.endTransaction();
            } catch (Exception e) {
                com.baidu.techain.b.e.a();
            }
        } catch (Throwable th) {
            try {
                this.d.endTransaction();
            } catch (Exception e2) {
                com.baidu.techain.b.e.a();
            }
            throw th;
        }
        return -1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x013e A:{SYNTHETIC, Splitter:B:34:0x013e} */
    public final java.util.List<com.baidu.techain.rp.c.a> a(int r12) {
        /*
        r11 = this;
        r8 = 2;
        r9 = 0;
        r10 = new java.util.ArrayList;
        r10.<init>();
        r0 = java.lang.System.currentTimeMillis();
        r2 = new com.baidu.techain.e;
        r3 = r11.e;
        r2.<init>(r3);
        r3 = r2.e;
        r4 = "re_net_wt";
        r5 = 3;
        r3 = r3.getInt(r4, r5);
        r4 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
        r3 = r3 * r4;
        if (r12 != r8) goto L_0x00fa;
    L_0x0021:
        r3 = new java.lang.StringBuilder;
        r4 = "(d <= (";
        r3.<init>(r4);
        r0 = r3.append(r0);
        r1 = "-e*3600000) or e=0 )";
        r0 = r0.append(r1);
        r3 = r0.toString();
    L_0x0036:
        r7 = "d desc";
        if (r12 != r8) goto L_0x011d;
    L_0x003a:
        r0 = r11.d;	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
        r1 = "r";
        r2 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r8 = 100;
        r8 = java.lang.Integer.toString(r8);	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
    L_0x004c:
        if (r0 == 0) goto L_0x0142;
    L_0x004e:
        r1 = r0.moveToNext();	 Catch:{ Exception -> 0x00f0 }
        if (r1 == 0) goto L_0x0142;
    L_0x0054:
        r3 = new com.baidu.techain.rp.c.a;	 Catch:{ Exception -> 0x00f0 }
        r3.<init>();	 Catch:{ Exception -> 0x00f0 }
        r1 = "a";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.a = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "b";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.b = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "c";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.c = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "d";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getLong(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.e = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "g";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.f = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "e";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.g = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "f";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.h = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "i";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.i = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "j";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x00f0 }
        r3.j = r1;	 Catch:{ Exception -> 0x00f0 }
        r1 = "h";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00f0 }
        r2 = r0.getString(r1);	 Catch:{ Exception -> 0x00f0 }
        r1 = com.baidu.techain.ac.F.getInstance();	 Catch:{ Exception -> 0x0133 }
        r4 = 0;
        r4 = android.util.Base64.decode(r2, r4);	 Catch:{ Exception -> 0x0133 }
        r5 = "xVOTuxgN3lkRN2v4";
        r6 = "utf-8";
        r5 = r5.getBytes(r6);	 Catch:{ Exception -> 0x0133 }
        r4 = r1.ad(r4, r5);	 Catch:{ Exception -> 0x0133 }
        r1 = new java.lang.String;	 Catch:{ Exception -> 0x0133 }
        r1.<init>(r4);	 Catch:{ Exception -> 0x0133 }
    L_0x00e9:
        r3.d = r1;	 Catch:{ Exception -> 0x00f0 }
        r10.add(r3);	 Catch:{ Exception -> 0x00f0 }
        goto L_0x004e;
    L_0x00f0:
        r1 = move-exception;
    L_0x00f1:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0139 }
        if (r0 == 0) goto L_0x00f9;
    L_0x00f6:
        r0.close();	 Catch:{ Exception -> 0x014d }
    L_0x00f9:
        return r10;
    L_0x00fa:
        r4 = new java.lang.StringBuilder;
        r5 = "(d <= (";
        r4.<init>(r5);
        r4 = r4.append(r0);
        r5 = "-e*3600000) or e=0 ) and (g!=2 or d<=";
        r4 = r4.append(r5);
        r5 = (long) r3;
        r0 = r0 - r5;
        r0 = r4.append(r0);
        r1 = ")";
        r0 = r0.append(r1);
        r3 = r0.toString();
        goto L_0x0036;
    L_0x011d:
        r8 = r2.y();	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
        r0 = r11.d;	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
        r1 = "r";
        r2 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r8 = java.lang.Integer.toString(r8);	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x0159, all -> 0x0157 }
        goto L_0x004c;
    L_0x0133:
        r1 = move-exception;
        r1 = r2;
        com.baidu.techain.b.e.a();	 Catch:{ Exception -> 0x00f0 }
        goto L_0x00e9;
    L_0x0139:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
    L_0x013c:
        if (r9 == 0) goto L_0x0141;
    L_0x013e:
        r9.close();	 Catch:{ Exception -> 0x0152 }
    L_0x0141:
        throw r0;
    L_0x0142:
        if (r0 == 0) goto L_0x00f9;
    L_0x0144:
        r0.close();	 Catch:{ Exception -> 0x0148 }
        goto L_0x00f9;
    L_0x0148:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00f9;
    L_0x014d:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00f9;
    L_0x0152:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0141;
    L_0x0157:
        r0 = move-exception;
        goto L_0x013c;
    L_0x0159:
        r0 = move-exception;
        r0 = r9;
        goto L_0x00f1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.rp.b.a.a(int):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d1 A:{SYNTHETIC, Splitter:B:27:0x00d1} */
    public final java.util.List<com.baidu.techain.rp.c.a> a() {
        /*
        r11 = this;
        r9 = 0;
        r10 = new java.util.ArrayList;
        r10.<init>();
        r3 = "i=5";
        r7 = "d desc";
        r0 = r11.d;	 Catch:{ Exception -> 0x00ec, all -> 0x00ea }
        r1 = "r";
        r2 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r8 = "100";
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x00ec, all -> 0x00ea }
        if (r0 == 0) goto L_0x00d5;
    L_0x001a:
        r1 = r0.moveToNext();	 Catch:{ Exception -> 0x00bc }
        if (r1 == 0) goto L_0x00d5;
    L_0x0020:
        r3 = new com.baidu.techain.rp.c.a;	 Catch:{ Exception -> 0x00bc }
        r3.<init>();	 Catch:{ Exception -> 0x00bc }
        r1 = "a";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00bc }
        r3.a = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "b";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x00bc }
        r3.b = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "c";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00bc }
        r3.c = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "d";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getLong(r1);	 Catch:{ Exception -> 0x00bc }
        r3.e = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "g";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00bc }
        r3.f = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "e";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00bc }
        r3.g = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "f";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00bc }
        r3.h = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "i";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00bc }
        r3.i = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "j";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x00bc }
        r3.j = r1;	 Catch:{ Exception -> 0x00bc }
        r1 = "h";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00bc }
        r2 = r0.getString(r1);	 Catch:{ Exception -> 0x00bc }
        r1 = com.baidu.techain.ac.F.getInstance();	 Catch:{ Exception -> 0x00c6 }
        r4 = 0;
        r4 = android.util.Base64.decode(r2, r4);	 Catch:{ Exception -> 0x00c6 }
        r5 = "xVOTuxgN3lkRN2v4";
        r6 = "utf-8";
        r5 = r5.getBytes(r6);	 Catch:{ Exception -> 0x00c6 }
        r4 = r1.ad(r4, r5);	 Catch:{ Exception -> 0x00c6 }
        r1 = new java.lang.String;	 Catch:{ Exception -> 0x00c6 }
        r1.<init>(r4);	 Catch:{ Exception -> 0x00c6 }
    L_0x00b5:
        r3.d = r1;	 Catch:{ Exception -> 0x00bc }
        r10.add(r3);	 Catch:{ Exception -> 0x00bc }
        goto L_0x001a;
    L_0x00bc:
        r1 = move-exception;
    L_0x00bd:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x00cc }
        if (r0 == 0) goto L_0x00c5;
    L_0x00c2:
        r0.close();	 Catch:{ Exception -> 0x00e0 }
    L_0x00c5:
        return r10;
    L_0x00c6:
        r1 = move-exception;
        r1 = r2;
        com.baidu.techain.b.e.a();	 Catch:{ Exception -> 0x00bc }
        goto L_0x00b5;
    L_0x00cc:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
    L_0x00cf:
        if (r9 == 0) goto L_0x00d4;
    L_0x00d1:
        r9.close();	 Catch:{ Exception -> 0x00e5 }
    L_0x00d4:
        throw r0;
    L_0x00d5:
        if (r0 == 0) goto L_0x00c5;
    L_0x00d7:
        r0.close();	 Catch:{ Exception -> 0x00db }
        goto L_0x00c5;
    L_0x00db:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00c5;
    L_0x00e0:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00c5;
    L_0x00e5:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00d4;
    L_0x00ea:
        r0 = move-exception;
        goto L_0x00cf;
    L_0x00ec:
        r0 = move-exception;
        r0 = r9;
        goto L_0x00bd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.rp.b.a.a():java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x012f A:{SYNTHETIC, Splitter:B:34:0x012f} */
    public final java.util.List<com.baidu.techain.rp.c.a> a(boolean r12, int r13) {
        /*
        r11 = this;
        r9 = 0;
        r10 = new java.util.ArrayList;
        r10.<init>();
        r0 = java.lang.System.currentTimeMillis();
        if (r12 == 0) goto L_0x00e1;
    L_0x000c:
        r2 = new java.lang.StringBuilder;
        r3 = "(d < (";
        r2.<init>(r3);
        r0 = r2.append(r0);
        r1 = "-f*3600000) and f!= 0)";
        r0 = r0.append(r1);
        r3 = r0.toString();
    L_0x0021:
        r7 = "d desc";
        r0 = 2;
        if (r13 != r0) goto L_0x00f6;
    L_0x0026:
        r0 = r11.d;	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r1 = "r";
        r2 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r8 = 0;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
    L_0x0033:
        if (r0 == 0) goto L_0x0133;
    L_0x0035:
        r1 = r0.moveToNext();	 Catch:{ Exception -> 0x00d7 }
        if (r1 == 0) goto L_0x0133;
    L_0x003b:
        r3 = new com.baidu.techain.rp.c.a;	 Catch:{ Exception -> 0x00d7 }
        r3.<init>();	 Catch:{ Exception -> 0x00d7 }
        r1 = "a";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.a = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "b";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.b = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "c";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.c = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "d";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getLong(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.e = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "g";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.f = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "e";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.g = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "f";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.h = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "i";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getInt(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.i = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "j";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x00d7 }
        r3.j = r1;	 Catch:{ Exception -> 0x00d7 }
        r1 = "h";
        r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x00d7 }
        r2 = r0.getString(r1);	 Catch:{ Exception -> 0x00d7 }
        r1 = com.baidu.techain.ac.F.getInstance();	 Catch:{ Exception -> 0x0124 }
        r4 = 0;
        r4 = android.util.Base64.decode(r2, r4);	 Catch:{ Exception -> 0x0124 }
        r5 = "xVOTuxgN3lkRN2v4";
        r6 = "utf-8";
        r5 = r5.getBytes(r6);	 Catch:{ Exception -> 0x0124 }
        r4 = r1.ad(r4, r5);	 Catch:{ Exception -> 0x0124 }
        r1 = new java.lang.String;	 Catch:{ Exception -> 0x0124 }
        r1.<init>(r4);	 Catch:{ Exception -> 0x0124 }
    L_0x00d0:
        r3.d = r1;	 Catch:{ Exception -> 0x00d7 }
        r10.add(r3);	 Catch:{ Exception -> 0x00d7 }
        goto L_0x0035;
    L_0x00d7:
        r1 = move-exception;
    L_0x00d8:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x012a }
        if (r0 == 0) goto L_0x00e0;
    L_0x00dd:
        r0.close();	 Catch:{ Exception -> 0x013e }
    L_0x00e0:
        return r10;
    L_0x00e1:
        r2 = new java.lang.StringBuilder;
        r3 = "d<=";
        r2.<init>(r3);
        r3 = 259200000; // 0xf731400 float:1.1984677E-29 double:1.280618154E-315;
        r0 = r0 - r3;
        r0 = r2.append(r0);
        r3 = r0.toString();
        goto L_0x0021;
    L_0x00f6:
        r0 = new com.baidu.techain.e;	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r1 = r11.e;	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r0.<init>(r1);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r8 = r0.y();	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r1 = " 3g limit";
        r0.<init>(r1);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r1 = java.lang.Integer.toString(r8);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r0.append(r1);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        com.baidu.techain.b.a();	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r0 = r11.d;	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r1 = "r";
        r2 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r8 = java.lang.Integer.toString(r8);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x014a, all -> 0x0148 }
        goto L_0x0033;
    L_0x0124:
        r1 = move-exception;
        r1 = r2;
        com.baidu.techain.b.e.a();	 Catch:{ Exception -> 0x00d7 }
        goto L_0x00d0;
    L_0x012a:
        r1 = move-exception;
        r9 = r0;
        r0 = r1;
    L_0x012d:
        if (r9 == 0) goto L_0x0132;
    L_0x012f:
        r9.close();	 Catch:{ Exception -> 0x0143 }
    L_0x0132:
        throw r0;
    L_0x0133:
        if (r0 == 0) goto L_0x00e0;
    L_0x0135:
        r0.close();	 Catch:{ Exception -> 0x0139 }
        goto L_0x00e0;
    L_0x0139:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00e0;
    L_0x013e:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00e0;
    L_0x0143:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0132;
    L_0x0148:
        r0 = move-exception;
        goto L_0x012d;
    L_0x014a:
        r0 = move-exception;
        r0 = r9;
        goto L_0x00d8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.rp.b.a.a(boolean, int):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0037 A:{SYNTHETIC, Splitter:B:23:0x0037} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0037 A:{SYNTHETIC, Splitter:B:23:0x0037} */
    public final int b() {
        /*
        r11 = this;
        r10 = 0;
        r9 = 0;
        r0 = r11.d;	 Catch:{ Exception -> 0x0022, all -> 0x0034 }
        r1 = "r";
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x0022, all -> 0x0034 }
        if (r1 == 0) goto L_0x004c;
    L_0x0013:
        r0 = r1.getCount();	 Catch:{ Exception -> 0x0047, all -> 0x0040 }
    L_0x0017:
        if (r1 == 0) goto L_0x001c;
    L_0x0019:
        r1.close();	 Catch:{ Exception -> 0x001d }
    L_0x001c:
        return r0;
    L_0x001d:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x001c;
    L_0x0022:
        r0 = move-exception;
        r0 = r10;
    L_0x0024:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0043 }
        if (r0 == 0) goto L_0x004a;
    L_0x0029:
        r0.close();	 Catch:{ Exception -> 0x002e }
        r0 = r9;
        goto L_0x001c;
    L_0x002e:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r9;
        goto L_0x001c;
    L_0x0034:
        r0 = move-exception;
    L_0x0035:
        if (r10 == 0) goto L_0x003a;
    L_0x0037:
        r10.close();	 Catch:{ Exception -> 0x003b }
    L_0x003a:
        throw r0;
    L_0x003b:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x003a;
    L_0x0040:
        r0 = move-exception;
        r10 = r1;
        goto L_0x0035;
    L_0x0043:
        r1 = move-exception;
        r10 = r0;
        r0 = r1;
        goto L_0x0035;
    L_0x0047:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0024;
    L_0x004a:
        r0 = r9;
        goto L_0x001c;
    L_0x004c:
        r0 = r9;
        goto L_0x0017;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.rp.b.a.b():int");
    }

    public final int c() {
        int i = -1;
        e eVar = new e(this.e);
        int i2 = eVar.e.getInt("re_net_over", 7) * 86400000;
        try {
            return this.d.delete("r", "(d <= ? or (d < (" + System.currentTimeMillis() + "-f*3600000) and f!= 0)) and b != '1001001'and i != 5 ", new String[]{String.valueOf(r2 - ((long) i2))});
        } catch (Exception e) {
            com.baidu.techain.b.e.a();
            return i;
        }
    }
}
