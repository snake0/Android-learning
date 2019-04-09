package com.baidu.location.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.baidu.location.Jni;
import com.baidu.location.b.b;
import com.baidu.location.b.g;
import com.baidu.location.d.e;
import com.baidu.location.d.j;
import com.iflytek.aiui.AIUIConstant;
import java.io.File;
import java.util.HashMap;
import org.apache.http.HttpStatus;
import org.json.JSONObject;

public class h {
    private static Object c = new Object();
    private static h d = null;
    private static final String e = (j.h() + "/hst.db");
    a a = null;
    a b = null;
    private SQLiteDatabase f = null;
    private boolean g = false;

    class a extends e {
        private String b;
        private String c;
        private boolean d;
        private boolean e;

        a() {
            this.b = null;
            this.c = null;
            this.d = true;
            this.e = false;
            this.k = new HashMap();
        }

        public void a() {
            this.i = 1;
            this.h = j.c();
            String encodeTp4 = Jni.encodeTp4(this.c);
            this.c = null;
            this.k.put("bloc", encodeTp4);
        }

        public void a(String str, String str2) {
            if (!h.this.g) {
                h.this.g = true;
                this.b = str;
                this.c = str2;
                b(j.f);
            }
        }

        public void a(boolean z) {
            JSONObject jSONObject = null;
            if (z && this.j != null) {
                try {
                    String str = this.j;
                    if (this.d) {
                        JSONObject jSONObject2 = new JSONObject(str);
                        if (jSONObject2.has(AIUIConstant.KEY_CONTENT)) {
                            jSONObject = jSONObject2.getJSONObject(AIUIConstant.KEY_CONTENT);
                        }
                        if (jSONObject != null && jSONObject.has("imo")) {
                            Long valueOf = Long.valueOf(jSONObject.getJSONObject("imo").getString("mac"));
                            int i = jSONObject.getJSONObject("imo").getInt("mv");
                            if (Jni.encode3(this.b).longValue() == valueOf.longValue()) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("tt", Integer.valueOf((int) (System.currentTimeMillis() / 1000)));
                                contentValues.put("hst", Integer.valueOf(i));
                                try {
                                    if (h.this.f.update("hstdata", contentValues, "id = \"" + valueOf + "\"", null) <= 0) {
                                        contentValues.put("id", valueOf);
                                        h.this.f.insert("hstdata", null, contentValues);
                                    }
                                } catch (Exception e) {
                                }
                                Bundle bundle = new Bundle();
                                bundle.putByteArray("mac", this.b.getBytes());
                                bundle.putInt("hotspot", i);
                                h.this.a(bundle);
                            }
                        }
                    }
                } catch (Exception e2) {
                }
            } else if (this.d) {
                h.this.f();
            }
            if (this.k != null) {
                this.k.clear();
            }
            h.this.g = false;
        }
    }

    public static h a() {
        h hVar;
        synchronized (c) {
            if (d == null) {
                d = new h();
            }
            hVar = d;
        }
        return hVar;
    }

    private String a(boolean z) {
        com.baidu.location.b.a f = b.a().f();
        g o = com.baidu.location.b.h.a().o();
        StringBuffer stringBuffer = new StringBuffer(1024);
        if (f != null && f.b()) {
            stringBuffer.append(f.g());
        }
        if (o != null && o.a() > 1) {
            stringBuffer.append(o.a(15));
        } else if (com.baidu.location.b.h.a().l() != null) {
            stringBuffer.append(com.baidu.location.b.h.a().l());
        }
        if (z) {
            stringBuffer.append("&imo=1");
        }
        stringBuffer.append(com.baidu.location.d.b.a().a(false));
        stringBuffer.append(a.a().c());
        return stringBuffer.toString();
    }

    private void a(Bundle bundle) {
        a.a().a(bundle, (int) HttpStatus.SC_NOT_ACCEPTABLE);
    }

    private void f() {
        Bundle bundle = new Bundle();
        bundle.putInt("hotspot", -1);
        a(bundle);
    }

    public void a(String str) {
        JSONObject jSONObject = null;
        if (!this.g) {
            try {
                JSONObject jSONObject2 = new JSONObject(str);
                if (jSONObject2.has(AIUIConstant.KEY_CONTENT)) {
                    jSONObject = jSONObject2.getJSONObject(AIUIConstant.KEY_CONTENT);
                }
                if (jSONObject != null && jSONObject.has("imo")) {
                    Long valueOf = Long.valueOf(jSONObject.getJSONObject("imo").getString("mac"));
                    int i = jSONObject.getJSONObject("imo").getInt("mv");
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("tt", Integer.valueOf((int) (System.currentTimeMillis() / 1000)));
                    contentValues.put("hst", Integer.valueOf(i));
                    try {
                        if (this.f.update("hstdata", contentValues, "id = \"" + valueOf + "\"", null) <= 0) {
                            contentValues.put("id", valueOf);
                            this.f.insert("hstdata", null, contentValues);
                        }
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e2) {
            }
        }
    }

    public void b() {
        try {
            File file = new File(e);
            if (!file.exists()) {
                file.createNewFile();
            }
            if (file.exists()) {
                this.f = SQLiteDatabase.openOrCreateDatabase(file, null);
                this.f.execSQL("CREATE TABLE IF NOT EXISTS hstdata(id Long PRIMARY KEY,hst INT,tt INT);");
                this.f.setVersion(1);
            }
        } catch (Exception e) {
            this.f = null;
        }
    }

    public void c() {
        if (this.f != null) {
            try {
                this.f.close();
            } catch (Exception e) {
            } finally {
                this.f = null;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0060 A:{SYNTHETIC, Splitter:B:21:0x0060} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0068 A:{ExcHandler: Exception (e java.lang.Exception), Splitter:B:13:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0077 A:{SYNTHETIC, Splitter:B:33:0x0077} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:26:0x0069, code skipped:
            if (r1 != null) goto L_0x006b;
     */
    /* JADX WARNING: Missing block: B:28:?, code skipped:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:34:?, code skipped:
            r2.close();
     */
    /* JADX WARNING: Missing block: B:39:0x007f, code skipped:
            r2 = move-exception;
     */
    /* JADX WARNING: Missing block: B:40:0x0080, code skipped:
            r6 = r2;
            r2 = r1;
            r1 = r6;
     */
    public int d() {
        /*
        r7 = this;
        r1 = 0;
        r0 = -3;
        r2 = r7.g;
        if (r2 == 0) goto L_0x0007;
    L_0x0006:
        return r0;
    L_0x0007:
        r2 = com.baidu.location.b.h.i();	 Catch:{ Exception -> 0x007b }
        if (r2 == 0) goto L_0x0006;
    L_0x000d:
        r2 = r7.f;	 Catch:{ Exception -> 0x007b }
        if (r2 == 0) goto L_0x0006;
    L_0x0011:
        r2 = com.baidu.location.b.h.a();	 Catch:{ Exception -> 0x007b }
        r2 = r2.k();	 Catch:{ Exception -> 0x007b }
        if (r2 == 0) goto L_0x0006;
    L_0x001b:
        r3 = r2.getBSSID();	 Catch:{ Exception -> 0x007b }
        if (r3 == 0) goto L_0x0006;
    L_0x0021:
        r2 = r2.getBSSID();	 Catch:{ Exception -> 0x007b }
        r3 = ":";
        r4 = "";
        r2 = r2.replace(r3, r4);	 Catch:{ Exception -> 0x007b }
        r2 = com.baidu.location.Jni.encode3(r2);	 Catch:{ Exception -> 0x007b }
        r3 = r7.f;	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r4.<init>();	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r5 = "select * from hstdata where id = \"";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r2 = r4.append(r2);	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r4 = "\";";
        r2 = r2.append(r4);	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        r4 = 0;
        r1 = r3.rawQuery(r2, r4);	 Catch:{ Exception -> 0x0068, all -> 0x0071 }
        if (r1 == 0) goto L_0x0066;
    L_0x0053:
        r2 = r1.moveToFirst();	 Catch:{ Exception -> 0x0068, all -> 0x007f }
        if (r2 == 0) goto L_0x0066;
    L_0x0059:
        r2 = 1;
        r0 = r1.getInt(r2);	 Catch:{ Exception -> 0x0068, all -> 0x007f }
    L_0x005e:
        if (r1 == 0) goto L_0x0006;
    L_0x0060:
        r1.close();	 Catch:{ Exception -> 0x0064 }
        goto L_0x0006;
    L_0x0064:
        r1 = move-exception;
        goto L_0x0006;
    L_0x0066:
        r0 = -2;
        goto L_0x005e;
    L_0x0068:
        r2 = move-exception;
        if (r1 == 0) goto L_0x0006;
    L_0x006b:
        r1.close();	 Catch:{ Exception -> 0x006f }
        goto L_0x0006;
    L_0x006f:
        r1 = move-exception;
        goto L_0x0006;
    L_0x0071:
        r2 = move-exception;
        r6 = r2;
        r2 = r1;
        r1 = r6;
    L_0x0075:
        if (r2 == 0) goto L_0x007a;
    L_0x0077:
        r2.close();	 Catch:{ Exception -> 0x007d }
    L_0x007a:
        throw r1;	 Catch:{ Exception -> 0x007b }
    L_0x007b:
        r1 = move-exception;
        goto L_0x0006;
    L_0x007d:
        r2 = move-exception;
        goto L_0x007a;
    L_0x007f:
        r2 = move-exception;
        r6 = r2;
        r2 = r1;
        r1 = r6;
        goto L_0x0075;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.a.h.d():int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0078 A:{SYNTHETIC, Splitter:B:24:0x0078} */
    /* JADX WARNING: Removed duplicated region for block: B:58:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x007d A:{SYNTHETIC, Splitter:B:27:0x007d} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00bf A:{ExcHandler: all (th java.lang.Throwable), Splitter:B:13:0x0032} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x007d A:{SYNTHETIC, Splitter:B:27:0x007d} */
    /* JADX WARNING: Removed duplicated region for block: B:58:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Missing block: B:46:0x00c0, code skipped:
            if (r2 != null) goto L_0x00c2;
     */
    /* JADX WARNING: Missing block: B:48:?, code skipped:
            r2.close();
     */
    public void e() {
        /*
        r10 = this;
        r2 = 0;
        r0 = 1;
        r1 = r10.g;
        if (r1 == 0) goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        r1 = com.baidu.location.b.h.i();	 Catch:{ Exception -> 0x0098 }
        if (r1 == 0) goto L_0x00cb;
    L_0x000d:
        r1 = r10.f;	 Catch:{ Exception -> 0x0098 }
        if (r1 == 0) goto L_0x00cb;
    L_0x0011:
        r1 = com.baidu.location.b.h.a();	 Catch:{ Exception -> 0x0098 }
        r1 = r1.k();	 Catch:{ Exception -> 0x0098 }
        if (r1 == 0) goto L_0x00c6;
    L_0x001b:
        r3 = r1.getBSSID();	 Catch:{ Exception -> 0x0098 }
        if (r3 == 0) goto L_0x00c6;
    L_0x0021:
        r1 = r1.getBSSID();	 Catch:{ Exception -> 0x0098 }
        r3 = ":";
        r4 = "";
        r3 = r1.replace(r3, r4);	 Catch:{ Exception -> 0x0098 }
        r4 = com.baidu.location.Jni.encode3(r3);	 Catch:{ Exception -> 0x0098 }
        r1 = 0;
        r5 = r10.f;	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r6 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r6.<init>();	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r7 = "select * from hstdata where id = \"";
        r6 = r6.append(r7);	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r4 = r6.append(r4);	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r6 = "\";";
        r4 = r4.append(r6);	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r4 = r4.toString();	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        r6 = 0;
        r2 = r5.rawQuery(r4, r6);	 Catch:{ Exception -> 0x00b5, all -> 0x00bf }
        if (r2 == 0) goto L_0x00b3;
    L_0x0054:
        r4 = r2.moveToFirst();	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        if (r4 == 0) goto L_0x00b3;
    L_0x005a:
        r4 = 1;
        r4 = r2.getInt(r4);	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r5 = 2;
        r5 = r2.getInt(r5);	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r6 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r8 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r6 = r6 / r8;
        r8 = (long) r5;
        r5 = r6 - r8;
        r7 = 259200; // 0x3f480 float:3.63217E-40 double:1.28062E-318;
        r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r5 <= 0) goto L_0x009b;
    L_0x0075:
        r1 = r0;
    L_0x0076:
        if (r2 == 0) goto L_0x007b;
    L_0x0078:
        r2.close();	 Catch:{ Exception -> 0x00d0 }
    L_0x007b:
        if (r1 == 0) goto L_0x0006;
    L_0x007d:
        r0 = r10.a;	 Catch:{ Exception -> 0x0098 }
        if (r0 != 0) goto L_0x0088;
    L_0x0081:
        r0 = new com.baidu.location.a.h$a;	 Catch:{ Exception -> 0x0098 }
        r0.<init>();	 Catch:{ Exception -> 0x0098 }
        r10.a = r0;	 Catch:{ Exception -> 0x0098 }
    L_0x0088:
        r0 = r10.a;	 Catch:{ Exception -> 0x0098 }
        if (r0 == 0) goto L_0x0006;
    L_0x008c:
        r0 = r10.a;	 Catch:{ Exception -> 0x0098 }
        r1 = 1;
        r1 = r10.a(r1);	 Catch:{ Exception -> 0x0098 }
        r0.a(r3, r1);	 Catch:{ Exception -> 0x0098 }
        goto L_0x0006;
    L_0x0098:
        r0 = move-exception;
        goto L_0x0006;
    L_0x009b:
        r0 = new android.os.Bundle;	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r0.<init>();	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r5 = "mac";
        r6 = r3.getBytes();	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r0.putByteArray(r5, r6);	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r5 = "hotspot";
        r0.putInt(r5, r4);	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r10.a(r0);	 Catch:{ Exception -> 0x00d4, all -> 0x00bf }
        r0 = r1;
        goto L_0x0075;
    L_0x00b3:
        r1 = r0;
        goto L_0x0076;
    L_0x00b5:
        r0 = move-exception;
        r0 = r2;
    L_0x00b7:
        if (r0 == 0) goto L_0x007b;
    L_0x00b9:
        r0.close();	 Catch:{ Exception -> 0x00bd }
        goto L_0x007b;
    L_0x00bd:
        r0 = move-exception;
        goto L_0x007b;
    L_0x00bf:
        r0 = move-exception;
        if (r2 == 0) goto L_0x00c5;
    L_0x00c2:
        r2.close();	 Catch:{ Exception -> 0x00d2 }
    L_0x00c5:
        throw r0;	 Catch:{ Exception -> 0x0098 }
    L_0x00c6:
        r10.f();	 Catch:{ Exception -> 0x0098 }
        goto L_0x0006;
    L_0x00cb:
        r10.f();	 Catch:{ Exception -> 0x0098 }
        goto L_0x0006;
    L_0x00d0:
        r0 = move-exception;
        goto L_0x007b;
    L_0x00d2:
        r1 = move-exception;
        goto L_0x00c5;
    L_0x00d4:
        r0 = move-exception;
        r0 = r2;
        goto L_0x00b7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.a.h.e():void");
    }
}
