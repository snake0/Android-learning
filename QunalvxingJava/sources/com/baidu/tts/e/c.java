package com.baidu.tts.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.iflytek.cloud.SpeechUtility;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import qunar.sdk.mapapi.utils.MapConstant.QUNAR_GPS_FIELD;

public class c {
    private static c a;
    private a b;
    private ReadWriteLock c = new ReentrantReadWriteLock();
    private Lock d = this.c.writeLock();
    private Lock e = this.c.readLock();
    private Context f;

    class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "ttsdata", null, 1);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("create table result (_id integer primary key autoincrement, time text, code integer, cmd_type integer, cmd_id integer, result text);");
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS result");
            onCreate(sQLiteDatabase);
        }
    }

    private c(Context context) {
        this.f = context;
        this.b = new a(this.f);
    }

    public static c a(Context context) {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c(context);
                }
            }
        }
        return a;
    }

    public void a(long j, int i, int i2, int i3, String str) {
        this.d.lock();
        SQLiteDatabase c = c();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(QUNAR_GPS_FIELD.TIME_FIELD, Long.valueOf(j));
            contentValues.put("code", Integer.valueOf(i));
            contentValues.put("cmd_type", Integer.valueOf(i2));
            contentValues.put("cmd_id", Integer.valueOf(i3));
            contentValues.put(SpeechUtility.TAG_RESOURCE_RESULT, str);
            c.insert(SpeechUtility.TAG_RESOURCE_RESULT, null, contentValues);
        } catch (SQLiteException e) {
            LoggerProxy.d("SynthesizeResultDb", "exception:" + e.toString());
        } catch (IllegalStateException e2) {
            LoggerProxy.d("SynthesizeResultDb", "exception:" + e2.toString());
        } catch (Exception e3) {
            LoggerProxy.d("SynthesizeResultDb", "exception:" + e3.toString());
        } finally {
            c.close();
            this.d.unlock();
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:12:0x0074=Splitter:B:12:0x0074, B:8:0x004b=Splitter:B:8:0x004b, B:16:0x009d=Splitter:B:16:0x009d} */
    public int a() {
        /*
        r10 = this;
        r9 = 0;
        r8 = 0;
        r0 = r10.e;
        r0.lock();
        r0 = r10.d();
        if (r0 == 0) goto L_0x00e3;
    L_0x000d:
        r1 = "result";
        r2 = 6;
        r2 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 0;
        r4 = "_id";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 1;
        r4 = "time";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 2;
        r4 = "code";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 3;
        r4 = "cmd_type";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 4;
        r4 = "cmd_id";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 5;
        r4 = "result";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ SQLiteException -> 0x004a, IllegalStateException -> 0x0073, Exception -> 0x009c }
        r2 = r1.getCount();	 Catch:{ SQLiteException -> 0x00de, IllegalStateException -> 0x00da, Exception -> 0x00d6, all -> 0x00d2 }
    L_0x003d:
        r1.close();
        r0.close();
        r0 = r10.e;
        r0.unlock();
        r9 = r2;
    L_0x0049:
        return r9;
    L_0x004a:
        r1 = move-exception;
    L_0x004b:
        r2 = "SynthesizeResultDb";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c5 }
        r3.<init>();	 Catch:{ all -> 0x00c5 }
        r4 = "exception:";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00c5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c5 }
        r1 = r3.append(r1);	 Catch:{ all -> 0x00c5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c5 }
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r1);	 Catch:{ all -> 0x00c5 }
        r8.close();
        r0.close();
        r0 = r10.e;
        r0.unlock();
        goto L_0x0049;
    L_0x0073:
        r1 = move-exception;
    L_0x0074:
        r2 = "SynthesizeResultDb";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c5 }
        r3.<init>();	 Catch:{ all -> 0x00c5 }
        r4 = "exception:";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00c5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c5 }
        r1 = r3.append(r1);	 Catch:{ all -> 0x00c5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c5 }
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r1);	 Catch:{ all -> 0x00c5 }
        r8.close();
        r0.close();
        r0 = r10.e;
        r0.unlock();
        goto L_0x0049;
    L_0x009c:
        r1 = move-exception;
    L_0x009d:
        r2 = "SynthesizeResultDb";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c5 }
        r3.<init>();	 Catch:{ all -> 0x00c5 }
        r4 = "exception:";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00c5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c5 }
        r1 = r3.append(r1);	 Catch:{ all -> 0x00c5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c5 }
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r1);	 Catch:{ all -> 0x00c5 }
        r8.close();
        r0.close();
        r0 = r10.e;
        r0.unlock();
        goto L_0x0049;
    L_0x00c5:
        r1 = move-exception;
    L_0x00c6:
        r8.close();
        r0.close();
        r0 = r10.e;
        r0.unlock();
        throw r1;
    L_0x00d2:
        r2 = move-exception;
        r8 = r1;
        r1 = r2;
        goto L_0x00c6;
    L_0x00d6:
        r2 = move-exception;
        r8 = r1;
        r1 = r2;
        goto L_0x009d;
    L_0x00da:
        r2 = move-exception;
        r8 = r1;
        r1 = r2;
        goto L_0x0074;
    L_0x00de:
        r2 = move-exception;
        r8 = r1;
        r1 = r2;
        goto L_0x004b;
    L_0x00e3:
        r1 = r8;
        r2 = r9;
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.e.c.a():int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0095 A:{ExcHandler: SQLiteException (r0_8 'e' android.database.sqlite.SQLiteException), Splitter:B:1:0x001f} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00c4 A:{ExcHandler: IllegalStateException (r0_12 'e' java.lang.IllegalStateException), Splitter:B:1:0x001f} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:13:0x0095, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:15:?, code skipped:
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d("SynthesizeResultDb", "exception:" + r0.toString());
     */
    /* JADX WARNING: Missing block: B:20:0x00c4, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:22:?, code skipped:
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d("SynthesizeResultDb", "exception:" + r0.toString());
     */
    /* JADX WARNING: Missing block: B:25:0x0103, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:27:?, code skipped:
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d("SynthesizeResultDb", "exception:" + r0.toString());
     */
    /* JADX WARNING: Missing block: B:29:0x012d, code skipped:
            r5.close();
            r4.close();
            r1 = r15.e;
            r1.unlock();
     */
    public java.util.Map<java.lang.String, java.util.ArrayList> b() {
        /*
        r15 = this;
        r1 = new java.util.HashMap;
        r1.<init>();
        r2 = new java.util.ArrayList;
        r2.<init>();
        r3 = new java.util.ArrayList;
        r3.<init>();
        r0 = r15.e;
        r0.lock();
        r4 = r15.d();
        r0 = "select * from result limit 0,500";
        r5 = 0;
        r5 = r4.rawQuery(r0, r5);
    L_0x001f:
        r0 = r5.moveToNext();	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        if (r0 == 0) goto L_0x00ed;
    L_0x0025:
        r0 = new org.json.JSONObject;	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        r0.<init>();	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        r6 = "_id";
        r6 = r5.getColumnIndex(r6);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r6 = r5.getInt(r6);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r7 = "time";
        r7 = r5.getColumnIndex(r7);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r7 = r5.getString(r7);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r8 = "code";
        r8 = r5.getColumnIndex(r8);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r8 = r5.getInt(r8);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r9 = "cmd_type";
        r9 = r5.getColumnIndex(r9);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r9 = r5.getInt(r9);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r10 = "cmd_id";
        r10 = r5.getColumnIndex(r10);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r10 = r5.getInt(r10);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r11 = "result";
        r11 = r5.getColumnIndex(r11);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r11 = r5.getString(r11);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r12 = "time";
        r13 = java.lang.Long.parseLong(r7);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r0.put(r12, r13);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r7 = "error_code";
        r0.put(r7, r8);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        if (r8 != 0) goto L_0x0085;
    L_0x0076:
        r7 = "cmd_type";
        r0.put(r7, r9);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r7 = "cmd_id";
        r0.put(r7, r10);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r7 = "voice_to_text_result";
        r0.put(r7, r11);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
    L_0x0085:
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r3.add(r6);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        r2.add(r0);	 Catch:{ JSONException -> 0x0090, Exception -> 0x00be, SQLiteException -> 0x0095, IllegalStateException -> 0x00c4 }
        goto L_0x001f;
    L_0x0090:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        goto L_0x001f;
    L_0x0095:
        r0 = move-exception;
        r2 = "SynthesizeResultDb";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x012c }
        r3.<init>();	 Catch:{ all -> 0x012c }
        r6 = "exception:";
        r3 = r3.append(r6);	 Catch:{ all -> 0x012c }
        r0 = r0.toString();	 Catch:{ all -> 0x012c }
        r0 = r3.append(r0);	 Catch:{ all -> 0x012c }
        r0 = r0.toString();	 Catch:{ all -> 0x012c }
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r0);	 Catch:{ all -> 0x012c }
        r5.close();
        r4.close();
        r0 = r15.e;
        r0.unlock();
    L_0x00bd:
        return r1;
    L_0x00be:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        goto L_0x001f;
    L_0x00c4:
        r0 = move-exception;
        r2 = "SynthesizeResultDb";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x012c }
        r3.<init>();	 Catch:{ all -> 0x012c }
        r6 = "exception:";
        r3 = r3.append(r6);	 Catch:{ all -> 0x012c }
        r0 = r0.toString();	 Catch:{ all -> 0x012c }
        r0 = r3.append(r0);	 Catch:{ all -> 0x012c }
        r0 = r0.toString();	 Catch:{ all -> 0x012c }
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r0);	 Catch:{ all -> 0x012c }
        r5.close();
        r4.close();
        r0 = r15.e;
        r0.unlock();
        goto L_0x00bd;
    L_0x00ed:
        r0 = "listId";
        r1.put(r0, r3);	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        r0 = "list";
        r1.put(r0, r2);	 Catch:{ SQLiteException -> 0x0095, IllegalStateException -> 0x00c4, Exception -> 0x0103 }
        r5.close();
        r4.close();
        r0 = r15.e;
        r0.unlock();
        goto L_0x00bd;
    L_0x0103:
        r0 = move-exception;
        r2 = "SynthesizeResultDb";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x012c }
        r3.<init>();	 Catch:{ all -> 0x012c }
        r6 = "exception:";
        r3 = r3.append(r6);	 Catch:{ all -> 0x012c }
        r0 = r0.toString();	 Catch:{ all -> 0x012c }
        r0 = r3.append(r0);	 Catch:{ all -> 0x012c }
        r0 = r0.toString();	 Catch:{ all -> 0x012c }
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r0);	 Catch:{ all -> 0x012c }
        r5.close();
        r4.close();
        r0 = r15.e;
        r0.unlock();
        goto L_0x00bd;
    L_0x012c:
        r0 = move-exception;
        r5.close();
        r4.close();
        r1 = r15.e;
        r1.unlock();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.e.c.b():java.util.Map");
    }

    public void a(List<Integer> list) {
        if (list != null && list.size() != 0) {
            this.d.lock();
            SQLiteDatabase d = d();
            try {
                String str = "";
                for (int i = 0; i < list.size(); i++) {
                    str = str + list.get(i) + ",";
                }
                if (str.length() > 0) {
                    d.delete(SpeechUtility.TAG_RESOURCE_RESULT, "_id in (" + str.substring(0, str.length() - 1) + ")", null);
                }
                d.close();
                this.d.unlock();
            } catch (SQLiteException e) {
                LoggerProxy.d("SynthesizeResultDb", "exception:" + e.toString());
                d.close();
                this.d.unlock();
            } catch (IllegalStateException e2) {
                LoggerProxy.d("SynthesizeResultDb", "exception:" + e2.toString());
                d.close();
                this.d.unlock();
            } catch (Exception e3) {
                LoggerProxy.d("SynthesizeResultDb", "exception:" + e3.toString());
                d.close();
                this.d.unlock();
            } catch (Throwable th) {
                d.close();
                this.d.unlock();
                throw th;
            }
        }
    }

    private SQLiteDatabase c() {
        return this.b.getWritableDatabase();
    }

    private SQLiteDatabase d() {
        return this.b.getReadableDatabase();
    }
}
