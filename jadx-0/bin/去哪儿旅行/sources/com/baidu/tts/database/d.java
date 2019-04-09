package com.baidu.tts.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.l.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONException;
import org.json.JSONObject;

public class d {
    private a a;
    private c b;
    private ReadWriteLock c = new ReentrantReadWriteLock();
    private Lock d = this.c.writeLock();
    private Lock e = this.c.readLock();

    public d(a aVar) {
        this.a = aVar;
        this.b = new c(this.a.d());
    }

    public long a(String str) {
        this.d.lock();
        SQLiteDatabase b = b();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("uuid", str);
            long insert = b.insert("StatisticsInfo", null, contentValues);
            return insert;
        } finally {
            b.close();
            this.d.unlock();
        }
    }

    public int a(String str, String str2, String str3) {
        this.d.lock();
        SQLiteDatabase b = b();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(str2, str3);
            int update = b.update("StatisticsInfo", contentValues, "uuid=?", new String[]{str});
            if (update == 0) {
                b.insert("StatisticsInfo", null, contentValues);
            }
            b.close();
            this.d.unlock();
            return update;
        } catch (Throwable th) {
            b.close();
            this.d.unlock();
        }
    }

    public Map<String, ArrayList> a() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.e.lock();
        SQLiteDatabase c = c();
        Cursor rawQuery = c.rawQuery("select * from StatisticsInfo limit 0,100", null);
        while (rawQuery.moveToNext()) {
            try {
                JSONObject jSONObject = new JSONObject();
                int i = rawQuery.getInt(rawQuery.getColumnIndex("id"));
                jSONObject.put("uuid", rawQuery.getString(rawQuery.getColumnIndex("uuid")));
                jSONObject.put("startInfo", rawQuery.getString(rawQuery.getColumnIndex("startInfo")));
                jSONObject.put("endInfo", rawQuery.getString(rawQuery.getColumnIndex("endInfo")));
                arrayList2.add(Integer.valueOf(i));
                arrayList.add(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (Throwable th) {
                rawQuery.close();
                c.close();
                this.e.unlock();
            }
        }
        hashMap.put("listId", arrayList2);
        hashMap.put("list", arrayList);
        rawQuery.close();
        c.close();
        this.e.unlock();
        return hashMap;
    }

    public int a(int i, int i2) {
        this.d.lock();
        SQLiteDatabase c = c();
        try {
            int delete = c.delete("StatisticsInfo", "id between ? and ?", new String[]{Integer.toString(i), Integer.toString(i2)});
            LoggerProxy.d("StatisticsDbManager", "delete database=" + delete + "=" + i + "=" + i2);
            return delete;
        } finally {
            c.close();
            this.d.unlock();
        }
    }

    private SQLiteDatabase b() {
        return this.b.getWritableDatabase();
    }

    private SQLiteDatabase c() {
        return this.b.getReadableDatabase();
    }
}
