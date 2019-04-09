package com.iflytek.cloud.thirdparty;

import android.content.Context;
import com.iflytek.aiui.AIUIMessage;
import com.iflytek.cloud.SpeechConstant;
import org.json.JSONException;
import org.json.JSONObject;

public class s extends r {
    public s(Context context, af afVar) {
        super(context, afVar);
    }

    private void a(int i, String str) {
        if (this.a != null) {
            this.a.a(i, str);
        }
    }

    private void a(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (this.a != null) {
            ah c = this.a.c();
            if (c != null) {
                c.a(bArr, bArr2, i, i2);
            }
        }
    }

    public void a(AIUIMessage aIUIMessage) {
        try {
            JSONObject jSONObject = new JSONObject(aIUIMessage.params);
            if (3 != aIUIMessage.arg1) {
                return;
            }
            if (jSONObject.has(SpeechConstant.IST_SESSION_ID)) {
                jSONObject.put("query_str", "csid=" + jSONObject.getString(SpeechConstant.IST_SESSION_ID));
                cb.a("SyncDataModule", jSONObject.toString());
                a(jSONObject.toString().getBytes(), new byte[1], 1, 4);
                return;
            }
            cb.c("SyncDataModule", "query params does not have sid.");
        } catch (JSONException e) {
            e.printStackTrace();
            a(10106, "query sync: params invalid json format.");
        } catch (n e2) {
            e2.printStackTrace();
            a(e2.b(), e2.a());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b9 A:{Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }} */
    public void b(com.iflytek.aiui.AIUIMessage r9) {
        /*
        r8 = this;
        r0 = "";
        r1 = r9.params;	 Catch:{ JSONException -> 0x00c0 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ JSONException -> 0x00c0 }
        if (r1 != 0) goto L_0x0015;
    L_0x000a:
        r0 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00c0 }
        r1 = r9.params;	 Catch:{ JSONException -> 0x00c0 }
        r0.<init>(r1);	 Catch:{ JSONException -> 0x00c0 }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x00c0 }
    L_0x0015:
        r1 = "utf-8";
        r2 = r0.getBytes(r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = r9.data;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = 3;
        r3 = r9.arg1;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r1 != r3) goto L_0x00fd;
    L_0x0022:
        r3 = new org.json.JSONObject;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1.<init>(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3.<init>(r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = "param";
        r4 = r3.getJSONObject(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = "appid";
        r0 = r4.has(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 != 0) goto L_0x00d4;
    L_0x003a:
        r0 = r8.a;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 != 0) goto L_0x00cc;
    L_0x003e:
        r0 = "";
    L_0x0040:
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r1 != 0) goto L_0x01d1;
    L_0x0046:
        r1 = "appid";
        r4.put(r1, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = r0;
    L_0x004c:
        r0 = "uid";
        r0 = r4.has(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 != 0) goto L_0x00dd;
    L_0x0054:
        r0 = com.iflytek.cloud.thirdparty.ac.b();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r5 = android.text.TextUtils.isEmpty(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r5 != 0) goto L_0x0063;
    L_0x005e:
        r5 = "uid";
        r4.put(r5, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x0063:
        r5 = "id_name";
        r5 = r4.has(r5);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r5 == 0) goto L_0x008a;
    L_0x006b:
        r5 = "id_name";
        r5 = r4.getString(r5);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r6 = "id_value";
        r6 = r4.optString(r6);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r7 = "appid";
        r7 = r7.equals(r5);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r7 == 0) goto L_0x00e4;
    L_0x007f:
        r5 = android.text.TextUtils.isEmpty(r6);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r5 == 0) goto L_0x008a;
    L_0x0085:
        r5 = "id_value";
        r4.put(r5, r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x008a:
        r4 = "csid";
        r5 = "atn";
        r0 = com.iflytek.cloud.thirdparty.al.a(r1, r5, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3.put(r4, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = r3.toString();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = r1.getBytes();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3 = "SyncDataModule";
        r4 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r4.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r5 = "schema data:";
        r4 = r4.append(r5);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = r4.append(r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = r1.toString();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        com.iflytek.cloud.thirdparty.cb.a(r3, r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x00b5:
        r1 = r0;
    L_0x00b6:
        r0 = 0;
        if (r1 == 0) goto L_0x00ba;
    L_0x00b9:
        r0 = r1.length;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x00ba:
        r3 = r9.arg1;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r8.a(r2, r1, r0, r3);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x00bf:
        return;
    L_0x00c0:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = 10106; // 0x277a float:1.4162E-41 double:4.993E-320;
        r1 = "sync data: params invalid json format.";
        r8.a(r0, r1);
        goto L_0x00bf;
    L_0x00cc:
        r0 = r8.a;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = r0.d();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        goto L_0x0040;
    L_0x00d4:
        r0 = "appid";
        r0 = r4.optString(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = r0;
        goto L_0x004c;
    L_0x00dd:
        r0 = "uid";
        r0 = r4.optString(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        goto L_0x0063;
    L_0x00e4:
        r7 = "uid";
        r5 = r7.equals(r5);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r5 == 0) goto L_0x008a;
    L_0x00ec:
        r5 = android.text.TextUtils.isEmpty(r6);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r5 == 0) goto L_0x008a;
    L_0x00f2:
        r5 = "id_value";
        r4.put(r5, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        goto L_0x008a;
    L_0x00f8:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x00bf;
    L_0x00fd:
        r1 = 5;
        r3 = r9.arg1;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r1 != r3) goto L_0x00b5;
    L_0x0102:
        r1 = new org.json.JSONObject;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3.<init>(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1.<init>(r3);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = "iat_user_data";
        r0 = r1.has(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 == 0) goto L_0x0125;
    L_0x0114:
        r0 = "audioparams";
        r3 = "rec_user_data";
        r4 = "iat_user_data";
        r4 = r1.getJSONObject(r4);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r4 = r4.toString();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        com.iflytek.cloud.thirdparty.ac.b(r0, r3, r4);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x0125:
        r0 = "nlp_user_data";
        r0 = r1.has(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 == 0) goto L_0x00bf;
    L_0x012d:
        r0 = "nlp_user_data";
        r3 = r1.getJSONObject(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = "appid";
        r0 = r3.has(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 != 0) goto L_0x01a7;
    L_0x013b:
        r0 = r8.a;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r0 != 0) goto L_0x01a0;
    L_0x013f:
        r0 = "";
    L_0x0141:
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r1 != 0) goto L_0x014c;
    L_0x0147:
        r1 = "appid";
        r3.put(r1, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x014c:
        r1 = "uid";
        r1 = r3.has(r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r1 != 0) goto L_0x01ae;
    L_0x0154:
        r1 = com.iflytek.cloud.thirdparty.ac.b();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r4 = "uid";
        r3.put(r4, r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
    L_0x015d:
        r4 = "csid";
        r5 = "atn";
        r0 = com.iflytek.cloud.thirdparty.al.a(r0, r5, r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3.put(r4, r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = r3.toString();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = r0.getBytes();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = "SyncDataModule";
        r4 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r4.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r5 = "nlp_user_data:";
        r4 = r4.append(r5);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3 = r3.toString();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3 = r4.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r3 = r3.toString();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        com.iflytek.cloud.thirdparty.cb.a(r1, r3);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r1 = r0;
        goto L_0x00b6;
    L_0x018f:
        r0 = move-exception;
        r0.printStackTrace();
        r1 = r0.b();
        r0 = r0.a();
        r8.a(r1, r0);
        goto L_0x00bf;
    L_0x01a0:
        r0 = r8.a;	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r0 = r0.d();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        goto L_0x0141;
    L_0x01a7:
        r0 = "appid";
        r0 = r3.optString(r0);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        goto L_0x014c;
    L_0x01ae:
        r1 = "uid";
        r1 = r3.getString(r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r4 = android.text.TextUtils.isEmpty(r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        if (r4 == 0) goto L_0x015d;
    L_0x01ba:
        r1 = com.iflytek.cloud.thirdparty.ac.b();	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        r4 = "uid";
        r3.put(r4, r1);	 Catch:{ UnsupportedEncodingException -> 0x00f8, n -> 0x018f, JSONException -> 0x01c4 }
        goto L_0x015d;
    L_0x01c4:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = 10107; // 0x277b float:1.4163E-41 double:4.9935E-320;
        r1 = "sync data error, invalid data json.";
        r8.a(r0, r1);
        goto L_0x00bf;
    L_0x01d1:
        r1 = r0;
        goto L_0x004c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.s.b(com.iflytek.aiui.AIUIMessage):void");
    }
}
