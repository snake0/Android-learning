package com.baidu.tts.database;

import android.database.sqlite.SQLiteDatabase;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.SqlTool;
import com.baidu.tts.tools.StringTool;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class a {
    private com.baidu.tts.l.a a;
    private b b;
    private ReadWriteLock c = new ReentrantReadWriteLock();
    private Lock d = this.c.writeLock();
    private Lock e = this.c.readLock();

    public a(com.baidu.tts.l.a aVar) {
        this.a = aVar;
        this.b = new b(this.a.d());
    }

    public int a(String str) {
        int a;
        this.d.lock();
        SQLiteDatabase a2;
        try {
            a2 = a();
            a = SpeechModelTable.a(a2, str);
            a2.close();
            this.d.unlock();
        } catch (Exception e) {
            a = -1;
            a2.close();
            this.d.unlock();
        } catch (Throwable th) {
            this.d.unlock();
        }
        return a;
    }

    public int b(String str) {
        int a;
        this.d.lock();
        SQLiteDatabase a2;
        try {
            a2 = a();
            a = ModelFileTable.a(a2, str);
            a2.close();
            this.d.unlock();
        } catch (Exception e) {
            a = -1;
            a2.close();
            this.d.unlock();
        } catch (Throwable th) {
            this.d.unlock();
        }
        return a;
    }

    public String a(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder("select b.absPath from speechModel a left join modelFile b on a.");
        stringBuilder.append(str);
        stringBuilder.append("=b.id where a.id=?");
        Map a = a(stringBuilder.toString(), new String[]{str2});
        if (a != null) {
            return (String) a.get(g.ABS_PATH.b());
        }
        return null;
    }

    public void a(String str, int i) {
        this.d.lock();
        SQLiteDatabase a;
        try {
            String str2 = "replace into fsFileInfo (absPath,state) values (?, ?)";
            String valueOf = String.valueOf(i);
            String[] strArr = new String[]{str, valueOf};
            a = a();
            a.execSQL(str2, strArr);
            a.close();
            this.d.unlock();
        } catch (Throwable th) {
            this.d.unlock();
        }
    }

    public Map<String, String> c(String str) {
        return a("select * from fsFileInfo where absPath=?", new String[]{str});
    }

    public Map<String, String> d(String str) {
        return a("select * from modelFile where id=?", new String[]{str});
    }

    public Map<String, String> e(String str) {
        return a("select * from speechModel where id=?", new String[]{str});
    }

    public void a(ModelFileBags modelFileBags) {
        this.d.lock();
        try {
            ModelFileTable.a(a(), modelFileBags);
        } finally {
            this.d.unlock();
        }
    }

    public void a(ModelBags modelBags) {
        this.d.lock();
        try {
            SpeechModelTable.a(a(), modelBags);
        } finally {
            this.d.unlock();
        }
    }

    public List<Map<String, String>> a(Conditions conditions) {
        String str = null;
        String[] strArr = null;
        if (!StringTool.isEmpty(conditions.getVersion())) {
            str = "version_min <= ? and version_max >= ?";
            strArr = new String[]{conditions.getVersion(), conditions.getVersion()};
        }
        String[] domainArray = conditions.getDomainArray();
        String[] languageArray = conditions.getLanguageArray();
        String[] qualityArray = conditions.getQualityArray();
        String[] genderArray = conditions.getGenderArray();
        String[] speakerArray = conditions.getSpeakerArray();
        String[] modelIdsArray = conditions.getModelIdsArray();
        String buildInCondition = SqlTool.buildInCondition("domain", domainArray);
        String buildInCondition2 = SqlTool.buildInCondition("language", languageArray);
        String buildInCondition3 = SqlTool.buildInCondition("quality", qualityArray);
        String buildInCondition4 = SqlTool.buildInCondition("gender", genderArray);
        String buildInCondition5 = SqlTool.buildInCondition("speaker", speakerArray);
        String buildInCondition6 = SqlTool.buildInCondition("id", modelIdsArray);
        str = SqlTool.buildConditions("and", str, buildInCondition, buildInCondition2, buildInCondition3, buildInCondition4, buildInCondition5, buildInCondition6);
        if (StringTool.isEmpty(str)) {
            return null;
        }
        return b("select * from speechModel where " + str, DataTool.connect(strArr, domainArray, languageArray, qualityArray, genderArray, speakerArray, modelIdsArray));
    }

    public List<Map<String, String>> a(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return null;
        }
        String[] fromSetToArray = DataTool.fromSetToArray(set);
        return b("select * from modelFile where " + SqlTool.buildInCondition("id", fromSetToArray), fromSetToArray);
    }

    private SQLiteDatabase a() {
        return this.b.getWritableDatabase();
    }

    private SQLiteDatabase b() {
        return this.b.getReadableDatabase();
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x004f A:{SYNTHETIC, Splitter:B:27:0x004f} */
    public java.util.Map<java.lang.String, java.lang.String> a(java.lang.String r10, java.lang.String[] r11) {
        /*
        r9 = this;
        r0 = r9.e;
        r0.lock();
        r2 = 0;
        r3 = r9.b();	 Catch:{ all -> 0x0053 }
        r4 = r3.rawQuery(r10, r11);	 Catch:{ Exception -> 0x0047 }
        if (r4 == 0) goto L_0x0066;
    L_0x0010:
        r0 = r4.moveToFirst();	 Catch:{ Exception -> 0x0047 }
        if (r0 == 0) goto L_0x0035;
    L_0x0016:
        r1 = new java.util.HashMap;	 Catch:{ Exception -> 0x0047 }
        r1.<init>();	 Catch:{ Exception -> 0x0047 }
        r2 = r4.getColumnNames();	 Catch:{ Exception -> 0x0061 }
        r5 = r2.length;	 Catch:{ Exception -> 0x0061 }
        r0 = 0;
    L_0x0021:
        if (r0 >= r5) goto L_0x0036;
    L_0x0023:
        r6 = r2[r0];	 Catch:{ Exception -> 0x0061 }
        r7 = r2[r0];	 Catch:{ Exception -> 0x0061 }
        r7 = r4.getColumnIndex(r7);	 Catch:{ Exception -> 0x0061 }
        r7 = r4.getString(r7);	 Catch:{ Exception -> 0x0061 }
        r1.put(r6, r7);	 Catch:{ Exception -> 0x0061 }
        r0 = r0 + 1;
        goto L_0x0021;
    L_0x0035:
        r1 = r2;
    L_0x0036:
        if (r4 == 0) goto L_0x003b;
    L_0x0038:
        r4.close();	 Catch:{ Exception -> 0x0061 }
    L_0x003b:
        r0 = r1;
    L_0x003c:
        if (r3 == 0) goto L_0x0041;
    L_0x003e:
        r3.close();	 Catch:{ all -> 0x0053 }
    L_0x0041:
        r1 = r9.e;
        r1.unlock();
        return r0;
    L_0x0047:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x004a:
        r1.printStackTrace();	 Catch:{ all -> 0x005a }
        if (r3 == 0) goto L_0x0041;
    L_0x004f:
        r3.close();	 Catch:{ all -> 0x0053 }
        goto L_0x0041;
    L_0x0053:
        r0 = move-exception;
        r1 = r9.e;
        r1.unlock();
        throw r0;
    L_0x005a:
        r0 = move-exception;
        if (r3 == 0) goto L_0x0060;
    L_0x005d:
        r3.close();	 Catch:{ all -> 0x0053 }
    L_0x0060:
        throw r0;	 Catch:{ all -> 0x0053 }
    L_0x0061:
        r0 = move-exception;
        r8 = r0;
        r0 = r1;
        r1 = r8;
        goto L_0x004a;
    L_0x0066:
        r0 = r2;
        goto L_0x003c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.database.a.a(java.lang.String, java.lang.String[]):java.util.Map");
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x005b A:{SYNTHETIC, Splitter:B:26:0x005b} */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:17:0x004a, B:23:0x0056] */
    /* JADX WARNING: Missing block: B:29:0x0060, code skipped:
            r9.e.unlock();
     */
    /* JADX WARNING: Missing block: B:32:0x0067, code skipped:
            if (r2 != null) goto L_0x0069;
     */
    /* JADX WARNING: Missing block: B:34:?, code skipped:
            r2.close();
     */
    public java.util.List<java.util.Map<java.lang.String, java.lang.String>> b(java.lang.String r10, java.lang.String[] r11) {
        /*
        r9 = this;
        r2 = 0;
        r0 = r9.e;
        r0.lock();
        r0 = new java.util.ArrayList;	 Catch:{ Exception -> 0x0053 }
        r0.<init>();	 Catch:{ Exception -> 0x0053 }
        r2 = r9.b();	 Catch:{ Exception -> 0x006d }
        r3 = r2.rawQuery(r10, r11);	 Catch:{ Exception -> 0x006d }
        if (r3 == 0) goto L_0x0048;
    L_0x0015:
        r1 = r3.moveToFirst();	 Catch:{ Exception -> 0x006d }
        if (r1 == 0) goto L_0x0043;
    L_0x001b:
        r4 = r3.getColumnNames();	 Catch:{ Exception -> 0x006d }
    L_0x001f:
        r5 = new java.util.HashMap;	 Catch:{ Exception -> 0x006d }
        r5.<init>();	 Catch:{ Exception -> 0x006d }
        r6 = r4.length;	 Catch:{ Exception -> 0x006d }
        r1 = 0;
    L_0x0026:
        if (r1 >= r6) goto L_0x003a;
    L_0x0028:
        r7 = r4[r1];	 Catch:{ Exception -> 0x006d }
        r8 = r4[r1];	 Catch:{ Exception -> 0x006d }
        r8 = r3.getColumnIndex(r8);	 Catch:{ Exception -> 0x006d }
        r8 = r3.getString(r8);	 Catch:{ Exception -> 0x006d }
        r5.put(r7, r8);	 Catch:{ Exception -> 0x006d }
        r1 = r1 + 1;
        goto L_0x0026;
    L_0x003a:
        r0.add(r5);	 Catch:{ Exception -> 0x006d }
        r1 = r3.moveToNext();	 Catch:{ Exception -> 0x006d }
        if (r1 != 0) goto L_0x001f;
    L_0x0043:
        if (r3 == 0) goto L_0x0048;
    L_0x0045:
        r3.close();	 Catch:{ Exception -> 0x006d }
    L_0x0048:
        if (r2 == 0) goto L_0x004d;
    L_0x004a:
        r2.close();	 Catch:{ all -> 0x005f }
    L_0x004d:
        r1 = r9.e;
        r1.unlock();
        return r0;
    L_0x0053:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x0056:
        r1.printStackTrace();	 Catch:{ all -> 0x0066 }
        if (r2 == 0) goto L_0x004d;
    L_0x005b:
        r2.close();	 Catch:{ all -> 0x005f }
        goto L_0x004d;
    L_0x005f:
        r0 = move-exception;
        r1 = r9.e;
        r1.unlock();
        throw r0;
    L_0x0066:
        r0 = move-exception;
        if (r2 == 0) goto L_0x006c;
    L_0x0069:
        r2.close();	 Catch:{ all -> 0x005f }
    L_0x006c:
        throw r0;	 Catch:{ all -> 0x005f }
    L_0x006d:
        r1 = move-exception;
        goto L_0x0056;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.database.a.b(java.lang.String, java.lang.String[]):java.util.List");
    }
}
