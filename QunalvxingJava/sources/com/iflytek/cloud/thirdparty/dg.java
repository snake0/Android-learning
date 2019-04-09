package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.net.Uri;
import com.iflytek.aiui.AIUIConstant;

public abstract class dg {
    protected static final String[] a = new String[]{"number", AIUIConstant.KEY_NAME, "date"};
    protected static String[] c;
    protected Context b = null;

    public dg(Context context) {
        this.b = context;
    }

    public abstract Uri a();

    /* Access modifiers changed, original: protected */
    public void a(Context context) {
        c = new String[100];
        c[0] = "其他";
        c[1] = "住宅";
        c[2] = "手机";
        c[3] = "工作";
        c[4] = "工作传真";
        c[5] = "住宅传真";
        c[6] = "寻呼机";
        c[7] = "其他";
        c[9] = "SIM卡";
        for (int i = 10; i < c.length; i++) {
            c[i] = "自定义电话";
        }
    }

    public abstract String[] b();

    public abstract String c();

    /* JADX WARNING: Removed duplicated region for block: B:27:0x006a  */
    public java.util.HashMap<java.lang.String, java.lang.String> d() {
        /*
        r8 = this;
        r6 = 0;
        r2 = r8.b();
        r7 = new java.util.HashMap;
        r7.<init>();
        r0 = r8.b;	 Catch:{ Exception -> 0x008e, all -> 0x008b }
        r0 = r0.getContentResolver();	 Catch:{ Exception -> 0x008e, all -> 0x008b }
        r1 = r8.a();	 Catch:{ Exception -> 0x008e, all -> 0x008b }
        r3 = 0;
        r4 = 0;
        r5 = r8.c();	 Catch:{ Exception -> 0x008e, all -> 0x008b }
        r1 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x008e, all -> 0x008b }
        if (r1 != 0) goto L_0x002d;
    L_0x0020:
        r0 = "iFly_ContactManager";
        r2 = "queryContacts------cursor is null";
        com.iflytek.cloud.thirdparty.cb.a(r0, r2);	 Catch:{ Exception -> 0x003b }
    L_0x0027:
        if (r1 == 0) goto L_0x002c;
    L_0x0029:
        r1.close();
    L_0x002c:
        return r7;
    L_0x002d:
        r0 = r1.getCount();	 Catch:{ Exception -> 0x003b }
        if (r0 != 0) goto L_0x0045;
    L_0x0033:
        r0 = "iFly_ContactManager";
        r2 = "queryContacts------cursor getCount == 0";
        com.iflytek.cloud.thirdparty.cb.a(r0, r2);	 Catch:{ Exception -> 0x003b }
        goto L_0x0027;
    L_0x003b:
        r0 = move-exception;
    L_0x003c:
        com.iflytek.cloud.thirdparty.cb.a(r0);	 Catch:{ all -> 0x0067 }
        if (r1 == 0) goto L_0x002c;
    L_0x0041:
        r1.close();
        goto L_0x002c;
    L_0x0045:
        r0 = r1.moveToNext();	 Catch:{ Exception -> 0x003b }
        if (r0 == 0) goto L_0x006e;
    L_0x004b:
        r0 = 0;
        r0 = r2[r0];	 Catch:{ Exception -> 0x003b }
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x003b }
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x003b }
        r3 = 1;
        r3 = r2[r3];	 Catch:{ Exception -> 0x003b }
        r3 = r1.getColumnIndex(r3);	 Catch:{ Exception -> 0x003b }
        r3 = r1.getString(r3);	 Catch:{ Exception -> 0x003b }
        if (r0 == 0) goto L_0x0045;
    L_0x0063:
        r7.put(r3, r0);	 Catch:{ Exception -> 0x003b }
        goto L_0x0045;
    L_0x0067:
        r0 = move-exception;
    L_0x0068:
        if (r1 == 0) goto L_0x006d;
    L_0x006a:
        r1.close();
    L_0x006d:
        throw r0;
    L_0x006e:
        r0 = "iFly_ContactManager";
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x003b }
        r2.<init>();	 Catch:{ Exception -> 0x003b }
        r3 = "queryContacts_20------count = ";
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x003b }
        r3 = r1.getCount();	 Catch:{ Exception -> 0x003b }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x003b }
        r2 = r2.toString();	 Catch:{ Exception -> 0x003b }
        com.iflytek.cloud.thirdparty.cb.a(r0, r2);	 Catch:{ Exception -> 0x003b }
        goto L_0x0027;
    L_0x008b:
        r0 = move-exception;
        r1 = r6;
        goto L_0x0068;
    L_0x008e:
        r0 = move-exception;
        r1 = r6;
        goto L_0x003c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.dg.d():java.util.HashMap");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0099  */
    public java.util.List<com.iflytek.cloud.thirdparty.dd> e() {
        /*
        r10 = this;
        r6 = 0;
        r8 = new java.util.ArrayList;
        r8.<init>();
        r0 = r10.b;	 Catch:{ Exception -> 0x00a3, all -> 0x009d }
        r0 = r0.getContentResolver();	 Catch:{ Exception -> 0x00a3, all -> 0x009d }
        r1 = "content://icc/adn";
        r1 = android.net.Uri.parse(r1);	 Catch:{ Exception -> 0x00a3, all -> 0x009d }
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r7 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x00a3, all -> 0x009d }
        if (r7 == 0) goto L_0x008e;
    L_0x001c:
        r0 = r7.getCount();	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        if (r0 <= 0) goto L_0x008e;
    L_0x0022:
        r0 = r7.moveToNext();	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        if (r0 == 0) goto L_0x006c;
    L_0x0028:
        r0 = "name";
        r0 = r7.getColumnIndex(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r2 = r7.getString(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r0 = "_id";
        r0 = r7.getColumnIndex(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r1 = r7.getString(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r0 = "number";
        r0 = r7.getColumnIndex(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r0 = r7.getString(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r0 = com.iflytek.cloud.thirdparty.dc.a(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r4 = com.iflytek.cloud.thirdparty.bu.a(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        if (r2 == 0) goto L_0x0022;
    L_0x0050:
        r0 = new com.iflytek.cloud.thirdparty.dd;	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r3 = 0;
        r5 = 0;
        r6 = c;	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r9 = 9;
        r6 = r6[r9];	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r0.<init>(r1, r2, r3, r4, r5, r6);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r8.add(r0);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        goto L_0x0022;
    L_0x0061:
        r0 = move-exception;
        r1 = r7;
    L_0x0063:
        com.iflytek.cloud.thirdparty.cb.a(r0);	 Catch:{ all -> 0x00a0 }
        if (r1 == 0) goto L_0x006b;
    L_0x0068:
        r1.close();
    L_0x006b:
        return r8;
    L_0x006c:
        r0 = "iFly_ContactManager";
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r1.<init>();	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r2 = "querySIM-------count = ";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r2 = r7.getCount();	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        r1 = r1.toString();	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        com.iflytek.cloud.thirdparty.cb.a(r0, r1);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
    L_0x0088:
        if (r7 == 0) goto L_0x006b;
    L_0x008a:
        r7.close();
        goto L_0x006b;
    L_0x008e:
        r0 = "iFly_ContactManager";
        r1 = "querySIM-------cursor getCount = 0 or cursor is null";
        com.iflytek.cloud.thirdparty.cb.a(r0, r1);	 Catch:{ Exception -> 0x0061, all -> 0x0096 }
        goto L_0x0088;
    L_0x0096:
        r0 = move-exception;
    L_0x0097:
        if (r7 == 0) goto L_0x009c;
    L_0x0099:
        r7.close();
    L_0x009c:
        throw r0;
    L_0x009d:
        r0 = move-exception;
        r7 = r6;
        goto L_0x0097;
    L_0x00a0:
        r0 = move-exception;
        r7 = r1;
        goto L_0x0097;
    L_0x00a3:
        r0 = move-exception;
        r1 = r6;
        goto L_0x0063;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.dg.e():java.util.List");
    }
}
