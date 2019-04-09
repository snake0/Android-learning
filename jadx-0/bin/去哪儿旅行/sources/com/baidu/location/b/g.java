package com.baidu.location.b;

import android.net.wifi.ScanResult;
import android.text.TextUtils;
import com.baidu.location.d.j;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.List;
import java.util.regex.Pattern;

public class g {
    public List<ScanResult> a = null;
    private long b = 0;
    private long c = 0;
    private boolean d = false;
    private boolean e;

    public g(List<ScanResult> list, long j) {
        this.b = j;
        this.a = list;
        this.c = System.currentTimeMillis();
        l();
    }

    private boolean a(String str) {
        return TextUtils.isEmpty(str) ? false : Pattern.compile("wpa|wep", 2).matcher(str).find();
    }

    private String b(String str) {
        return str != null ? (str.contains("&") || str.contains(VoiceWakeuperAidl.PARAMS_SEPARATE)) ? str.replace("&", "_").replace(VoiceWakeuperAidl.PARAMS_SEPARATE, "_") : str : str;
    }

    private void l() {
        if (a() >= 1) {
            Object obj = 1;
            for (int size = this.a.size() - 1; size >= 1 && obj != null; size--) {
                int i = 0;
                obj = null;
                while (i < size) {
                    Object obj2;
                    if (((ScanResult) this.a.get(i)).level < ((ScanResult) this.a.get(i + 1)).level) {
                        ScanResult scanResult = (ScanResult) this.a.get(i + 1);
                        this.a.set(i + 1, this.a.get(i));
                        this.a.set(i, scanResult);
                        obj2 = 1;
                    } else {
                        obj2 = obj;
                    }
                    i++;
                    obj = obj2;
                }
            }
        }
    }

    public int a() {
        return this.a == null ? 0 : this.a.size();
    }

    public String a(int i) {
        return a(i, false, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:140:0x03a6  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x03a2  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0089 A:{Catch:{ Error -> 0x01ef, Exception -> 0x039b }} */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x0398  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x026d A:{Catch:{ Error -> 0x01ef, Exception -> 0x039b }} */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x01ef A:{ExcHandler: Error (e java.lang.Error), Splitter:B:4:0x000a} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:37:0x00ae, code skipped:
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:95:0x023e, code skipped:
            r2 = r4;
            r4 = r6;
            r25 = r5;
            r5 = r7;
            r6 = r8;
            r8 = r3;
            r3 = r25;
     */
    /* JADX WARNING: Missing block: B:153:?, code skipped:
            return null;
     */
    /* JADX WARNING: Missing block: B:155:?, code skipped:
            return null;
     */
    @android.annotation.SuppressLint({"NewApi"})
    public java.lang.String a(int r27, boolean r28, boolean r29) {
        /*
        r26 = this;
        r2 = r26.a();
        r3 = 1;
        if (r2 >= r3) goto L_0x0009;
    L_0x0007:
        r2 = 0;
    L_0x0008:
        return r2;
    L_0x0009:
        r3 = 0;
        r19 = new java.util.Random;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r19.<init>();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r20 = new java.lang.StringBuffer;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = 512; // 0x200 float:7.175E-43 double:2.53E-321;
        r0 = r20;
        r0.<init>(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r21 = new java.util.ArrayList;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r21.<init>();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = com.baidu.location.b.h.a();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r6 = r2.k();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r5 = 0;
        r4 = 0;
        r2 = -1;
        if (r6 == 0) goto L_0x03b4;
    L_0x002a:
        r7 = r6.getBSSID();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r7 == 0) goto L_0x03b4;
    L_0x0030:
        r2 = r6.getBSSID();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r4 = ":";
        r5 = "";
        r5 = r2.replace(r4, r5);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r6.getRssi();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r4 = com.baidu.location.b.h.a();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r4 = r4.m();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r2 >= 0) goto L_0x03ac;
    L_0x004a:
        r2 = -r2;
        r16 = r2;
        r17 = r4;
        r18 = r5;
    L_0x0051:
        r4 = 0;
        r8 = 0;
        r2 = 0;
        r6 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r7 = 17;
        if (r6 < r7) goto L_0x03a9;
    L_0x005c:
        r4 = android.os.SystemClock.elapsedRealtimeNanos();	 Catch:{ Error -> 0x00ad, Exception -> 0x039b }
        r6 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r4 = r4 / r6;
    L_0x0063:
        r6 = 0;
        r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r6 <= 0) goto L_0x03a9;
    L_0x0069:
        r2 = 1;
        r14 = r4;
    L_0x006b:
        if (r2 == 0) goto L_0x03a6;
    L_0x006d:
        if (r2 == 0) goto L_0x00b1;
    L_0x006f:
        if (r28 == 0) goto L_0x00b1;
    L_0x0071:
        r2 = 1;
    L_0x0072:
        r13 = r2;
    L_0x0073:
        r7 = 0;
        r6 = 0;
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.size();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r5 = 1;
        r0 = r27;
        if (r2 <= r0) goto L_0x03a2;
    L_0x0082:
        r4 = 0;
        r2 = 0;
        r12 = r2;
    L_0x0085:
        r0 = r27;
        if (r12 >= r0) goto L_0x026b;
    L_0x0089:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.level;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r2 != 0) goto L_0x00b3;
    L_0x0097:
        r2 = r4;
        r4 = r6;
        r25 = r5;
        r5 = r7;
        r6 = r8;
        r8 = r3;
        r3 = r25;
    L_0x00a0:
        r9 = r12 + 1;
        r12 = r9;
        r25 = r3;
        r3 = r8;
        r8 = r6;
        r6 = r4;
        r7 = r5;
        r4 = r2;
        r5 = r25;
        goto L_0x0085;
    L_0x00ad:
        r4 = move-exception;
        r4 = 0;
        goto L_0x0063;
    L_0x00b1:
        r2 = 0;
        goto L_0x0072;
    L_0x00b3:
        if (r13 == 0) goto L_0x00d6;
    L_0x00b5:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x01c5, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x01c5, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x01c5, Error -> 0x01ef }
        r10 = r2.timestamp;	 Catch:{ Exception -> 0x01c5, Error -> 0x01ef }
        r10 = r14 - r10;
        r22 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
        r10 = r10 / r22;
    L_0x00c8:
        r2 = java.lang.Long.valueOf(r10);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r21;
        r0.add(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1));
        if (r2 <= 0) goto L_0x00d6;
    L_0x00d5:
        r8 = r10;
    L_0x00d6:
        if (r5 == 0) goto L_0x01ca;
    L_0x00d8:
        r5 = 0;
        r2 = "&wf=";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r29 == 0) goto L_0x0101;
    L_0x00e2:
        r4 = new java.lang.StringBuffer;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r4.<init>();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = "&wf_ch=";
        r4.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.frequency;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.b(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r4.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x0101:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.BSSID;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r2 == 0) goto L_0x0260;
    L_0x010f:
        r10 = ":";
        r11 = "";
        r10 = r2.replace(r10, r11);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r10);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.level;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r2 >= 0) goto L_0x012b;
    L_0x012a:
        r2 = -r2;
    L_0x012b:
        r11 = java.util.Locale.CHINA;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r22 = ";%d;";
        r23 = 1;
        r0 = r23;
        r0 = new java.lang.Object[r0];	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r23 = r0;
        r24 = 0;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r23[r24] = r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r22;
        r1 = r23;
        r2 = java.lang.String.format(r11, r0, r1);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r7 = r7 + 1;
        r2 = 0;
        if (r18 == 0) goto L_0x0171;
    L_0x0151:
        r0 = r18;
        r10 = r0.equals(r10);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r10 == 0) goto L_0x0171;
    L_0x0159:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.capabilities;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.a(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r0.e = r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = 1;
        r6 = r7;
    L_0x0171:
        if (r2 != 0) goto L_0x0249;
    L_0x0173:
        if (r3 != 0) goto L_0x01f3;
    L_0x0175:
        r2 = 10;
        r0 = r19;
        r2 = r0.nextInt(r2);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r10 = 2;
        if (r2 != r10) goto L_0x039f;
    L_0x0180:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.SSID;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        if (r2 == 0) goto L_0x039f;
    L_0x018e:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.SSID;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.length();	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r10 = 30;
        if (r2 >= r10) goto L_0x039f;
    L_0x01a2:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.SSID;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r0 = r26;
        r2 = r0.b(r2);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r0 = r20;
        r0.append(r2);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = 1;
    L_0x01ba:
        r3 = r5;
        r5 = r7;
        r25 = r6;
        r6 = r8;
        r8 = r2;
        r2 = r4;
        r4 = r25;
        goto L_0x00a0;
    L_0x01c5:
        r2 = move-exception;
        r10 = 0;
        goto L_0x00c8;
    L_0x01ca:
        r2 = "|";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r29 == 0) goto L_0x0101;
    L_0x01d3:
        r2 = "|";
        r4.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.frequency;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.b(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r4.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        goto L_0x0101;
    L_0x01ef:
        r2 = move-exception;
        r2 = 0;
        goto L_0x0008;
    L_0x01f3:
        r2 = 1;
        if (r3 != r2) goto L_0x039f;
    L_0x01f6:
        r2 = 20;
        r0 = r19;
        r2 = r0.nextInt(r2);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r10 = 1;
        if (r2 != r10) goto L_0x039f;
    L_0x0201:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.SSID;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        if (r2 == 0) goto L_0x039f;
    L_0x020f:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.SSID;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.length();	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r10 = 30;
        if (r2 >= r10) goto L_0x039f;
    L_0x0223:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.get(r12);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = r2.SSID;	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r0 = r26;
        r2 = r0.b(r2);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r0 = r20;
        r0.append(r2);	 Catch:{ Exception -> 0x023d, Error -> 0x01ef }
        r2 = 2;
        goto L_0x01ba;
    L_0x023d:
        r2 = move-exception;
        r2 = r4;
        r4 = r6;
        r25 = r5;
        r5 = r7;
        r6 = r8;
        r8 = r3;
        r3 = r25;
        goto L_0x00a0;
    L_0x0249:
        r0 = r26;
        r2 = r0.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.get(r12);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (android.net.wifi.ScanResult) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.SSID;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.b(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x0260:
        r2 = r4;
        r4 = r6;
        r25 = r5;
        r5 = r7;
        r6 = r8;
        r8 = r3;
        r3 = r25;
        goto L_0x00a0;
    L_0x026b:
        if (r5 != 0) goto L_0x0398;
    L_0x026d:
        r2 = new java.lang.StringBuilder;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2.<init>();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3 = "&wf_n=";
        r2 = r2.append(r3);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.append(r6);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.toString();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r18 == 0) goto L_0x02a6;
    L_0x0287:
        r2 = -1;
        r0 = r16;
        if (r0 == r2) goto L_0x02a6;
    L_0x028c:
        r2 = new java.lang.StringBuilder;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2.<init>();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3 = "&wf_rs=";
        r2 = r2.append(r3);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r16;
        r2 = r2.append(r0);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.toString();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x02a6:
        r2 = 10;
        r2 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
        if (r2 <= 0) goto L_0x032d;
    L_0x02ac:
        r2 = r21.size();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r2 <= 0) goto L_0x032d;
    L_0x02b2:
        r2 = 0;
        r0 = r21;
        r2 = r0.get(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (java.lang.Long) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = r2.longValue();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r7 = 0;
        r2 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1));
        if (r2 <= 0) goto L_0x032d;
    L_0x02c5:
        r7 = new java.lang.StringBuffer;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r7.<init>(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = "&wf_ut=";
        r7.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r5 = 1;
        r2 = 0;
        r0 = r21;
        r2 = r0.get(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = (java.lang.Long) r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r8 = r21.iterator();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x02df:
        r3 = r8.hasNext();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r3 == 0) goto L_0x0324;
    L_0x02e5:
        r3 = r8.next();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3 = (java.lang.Long) r3;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r5 == 0) goto L_0x02fd;
    L_0x02ed:
        r5 = 0;
        r9 = r3.longValue();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r7.append(r9);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3 = r5;
    L_0x02f6:
        r5 = "|";
        r7.append(r5);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r5 = r3;
        goto L_0x02df;
    L_0x02fd:
        r9 = r3.longValue();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r11 = r2.longValue();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r9 = r9 - r11;
        r11 = 0;
        r3 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
        if (r3 == 0) goto L_0x0322;
    L_0x030c:
        r3 = new java.lang.StringBuilder;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3.<init>();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r11 = "";
        r3 = r3.append(r11);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3 = r3.append(r9);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r3 = r3.toString();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r7.append(r3);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x0322:
        r3 = r5;
        goto L_0x02f6;
    L_0x0324:
        r2 = r7.toString();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x032d:
        r2 = "&wf_st=";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.b;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = "&wf_et=";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.c;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = "&wf_vt=";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = com.baidu.location.b.h.a;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r6 <= 0) goto L_0x0375;
    L_0x035d:
        r2 = 1;
        r0 = r26;
        r0.d = r2;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r2 = "&wf_en=";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r26;
        r2 = r0.e;	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        if (r2 == 0) goto L_0x0396;
    L_0x036f:
        r2 = 1;
    L_0x0370:
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x0375:
        if (r17 == 0) goto L_0x0385;
    L_0x0377:
        r2 = "&wf_gw=";
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r1 = r17;
        r0.append(r1);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x0385:
        if (r4 == 0) goto L_0x0390;
    L_0x0387:
        r2 = r4.toString();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        r0 = r20;
        r0.append(r2);	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
    L_0x0390:
        r2 = r20.toString();	 Catch:{ Error -> 0x01ef, Exception -> 0x039b }
        goto L_0x0008;
    L_0x0396:
        r2 = 0;
        goto L_0x0370;
    L_0x0398:
        r2 = 0;
        goto L_0x0008;
    L_0x039b:
        r2 = move-exception;
        r2 = 0;
        goto L_0x0008;
    L_0x039f:
        r2 = r3;
        goto L_0x01ba;
    L_0x03a2:
        r27 = r2;
        goto L_0x0082;
    L_0x03a6:
        r13 = r2;
        goto L_0x0073;
    L_0x03a9:
        r14 = r4;
        goto L_0x006b;
    L_0x03ac:
        r16 = r2;
        r17 = r4;
        r18 = r5;
        goto L_0x0051;
    L_0x03b4:
        r16 = r2;
        r17 = r4;
        r18 = r5;
        goto L_0x0051;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.b.g.a(int, boolean, boolean):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0046  */
    public boolean a(long r16) {
        /*
        r15 = this;
        r8 = 0;
        r6 = 0;
        r4 = 0;
        r2 = 0;
        r0 = 0;
        r1 = android.os.Build.VERSION.SDK_INT;
        r9 = 17;
        if (r1 < r9) goto L_0x008f;
    L_0x000e:
        r6 = android.os.SystemClock.elapsedRealtimeNanos();	 Catch:{ Error -> 0x0021, Exception -> 0x0025 }
        r9 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r6 = r6 / r9;
    L_0x0015:
        r9 = 0;
        r1 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1));
        if (r1 <= 0) goto L_0x008f;
    L_0x001b:
        r0 = 1;
        r10 = r0;
        r11 = r6;
    L_0x001e:
        if (r10 != 0) goto L_0x0029;
    L_0x0020:
        return r8;
    L_0x0021:
        r1 = move-exception;
        r6 = 0;
        goto L_0x0015;
    L_0x0025:
        r1 = move-exception;
        r6 = 0;
        goto L_0x0015;
    L_0x0029:
        r0 = r15.a;
        if (r0 == 0) goto L_0x0020;
    L_0x002d:
        r0 = r15.a;
        r0 = r0.size();
        if (r0 == 0) goto L_0x0020;
    L_0x0035:
        r0 = r15.a;
        r0 = r0.size();
        r1 = 16;
        if (r0 <= r1) goto L_0x008d;
    L_0x003f:
        r0 = 16;
        r1 = r0;
    L_0x0042:
        r0 = 0;
        r9 = r0;
    L_0x0044:
        if (r9 >= r1) goto L_0x0077;
    L_0x0046:
        r0 = r15.a;
        r0 = r0.get(r9);
        r0 = (android.net.wifi.ScanResult) r0;
        r0 = r0.level;
        if (r0 != 0) goto L_0x0056;
    L_0x0052:
        r0 = r9 + 1;
        r9 = r0;
        goto L_0x0044;
    L_0x0056:
        if (r10 == 0) goto L_0x0052;
    L_0x0058:
        r0 = r15.a;	 Catch:{ Exception -> 0x006f, Error -> 0x0073 }
        r0 = r0.get(r9);	 Catch:{ Exception -> 0x006f, Error -> 0x0073 }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ Exception -> 0x006f, Error -> 0x0073 }
        r6 = r0.timestamp;	 Catch:{ Exception -> 0x006f, Error -> 0x0073 }
        r6 = r11 - r6;
        r13 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
        r6 = r6 / r13;
    L_0x0068:
        r2 = r2 + r6;
        r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1));
        if (r0 <= 0) goto L_0x0052;
    L_0x006d:
        r4 = r6;
        goto L_0x0052;
    L_0x006f:
        r0 = move-exception;
        r6 = 0;
        goto L_0x0068;
    L_0x0073:
        r0 = move-exception;
        r6 = 0;
        goto L_0x0068;
    L_0x0077:
        r0 = (long) r1;
        r0 = r2 / r0;
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r2 = r2 * r4;
        r2 = (r2 > r16 ? 1 : (r2 == r16 ? 0 : -1));
        if (r2 > 0) goto L_0x0088;
    L_0x0081:
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r0 = r0 * r2;
        r0 = (r0 > r16 ? 1 : (r0 == r16 ? 0 : -1));
        if (r0 <= 0) goto L_0x008b;
    L_0x0088:
        r0 = 1;
    L_0x0089:
        r8 = r0;
        goto L_0x0020;
    L_0x008b:
        r0 = r8;
        goto L_0x0089;
    L_0x008d:
        r1 = r0;
        goto L_0x0042;
    L_0x008f:
        r10 = r0;
        r11 = r6;
        goto L_0x001e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.b.g.a(long):boolean");
    }

    public boolean a(g gVar) {
        if (this.a == null || gVar == null || gVar.a == null) {
            return false;
        }
        int size = this.a.size() < gVar.a.size() ? this.a.size() : gVar.a.size();
        for (int i = 0; i < size; i++) {
            if (!((ScanResult) this.a.get(i)).BSSID.equals(((ScanResult) gVar.a.get(i)).BSSID)) {
                return false;
            }
        }
        return true;
    }

    public int b(int i) {
        return (i <= 2400 || i >= 2500) ? (i <= 4900 || i >= 5900) ? 0 : 5 : 2;
    }

    public String b() {
        try {
            return a(j.N, true, true);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean b(g gVar) {
        if (this.a == null || gVar == null || gVar.a == null) {
            return false;
        }
        int size = this.a.size() < gVar.a.size() ? this.a.size() : gVar.a.size();
        for (int i = 0; i < size; i++) {
            String str = ((ScanResult) this.a.get(i)).BSSID;
            int i2 = ((ScanResult) this.a.get(i)).level;
            String str2 = ((ScanResult) gVar.a.get(i)).BSSID;
            int i3 = ((ScanResult) gVar.a.get(i)).level;
            if (!str.equals(str2) || i2 != i3) {
                return false;
            }
        }
        return true;
    }

    public String c() {
        try {
            return a(j.N, true, false);
        } catch (Exception e) {
            return null;
        }
    }

    public String c(int i) {
        int i2 = 0;
        if (i == 0 || a() < 1) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(256);
        int size = this.a.size();
        int i3 = size > j.N ? j.N : size;
        int i4 = 1;
        int i5 = 0;
        while (i5 < i3) {
            if ((i4 & i) == 0 || ((ScanResult) this.a.get(i5)).BSSID == null) {
                size = i2;
            } else {
                if (i2 == 0) {
                    stringBuffer.append("&ssid=");
                } else {
                    stringBuffer.append("|");
                }
                stringBuffer.append(((ScanResult) this.a.get(i5)).BSSID.replace(":", ""));
                stringBuffer.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                stringBuffer.append(b(((ScanResult) this.a.get(i5)).SSID));
                size = i2 + 1;
            }
            i4 <<= 1;
            i5++;
            i2 = size;
        }
        return stringBuffer.toString();
    }

    public boolean c(g gVar) {
        return h.a(gVar, this);
    }

    public String d() {
        try {
            return a(15);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean e() {
        return a((long) j.ae);
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x008e  */
    @android.annotation.SuppressLint({"NewApi"})
    public long f() {
        /*
        r19 = this;
        r10 = 0;
        r0 = r19;
        r1 = r0.a;
        if (r1 == 0) goto L_0x0012;
    L_0x0008:
        r0 = r19;
        r1 = r0.a;
        r1 = r1.size();
        if (r1 != 0) goto L_0x0013;
    L_0x0012:
        return r10;
    L_0x0013:
        r2 = 0;
        r10 = 0;
        r8 = 0;
        r6 = 0;
        r1 = 0;
        r4 = android.os.Build.VERSION.SDK_INT;
        r5 = 17;
        if (r4 < r5) goto L_0x009a;
    L_0x0022:
        r2 = android.os.SystemClock.elapsedRealtimeNanos();	 Catch:{ Error -> 0x005a, Exception -> 0x005e }
        r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r2 = r2 / r4;
    L_0x0029:
        r4 = 0;
        r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r4 <= 0) goto L_0x009a;
    L_0x002f:
        r1 = 1;
        r17 = r2;
        r3 = r17;
        r2 = r1;
    L_0x0035:
        r0 = r19;
        r1 = r0.a;
        r1 = r1.size();
        r5 = 16;
        if (r1 <= r5) goto L_0x0098;
    L_0x0041:
        r1 = 16;
        r5 = r1;
    L_0x0044:
        r1 = 0;
        r14 = r1;
    L_0x0046:
        if (r14 >= r5) goto L_0x0088;
    L_0x0048:
        r0 = r19;
        r1 = r0.a;
        r1 = r1.get(r14);
        r1 = (android.net.wifi.ScanResult) r1;
        r1 = r1.level;
        if (r1 != 0) goto L_0x0062;
    L_0x0056:
        r1 = r14 + 1;
        r14 = r1;
        goto L_0x0046;
    L_0x005a:
        r2 = move-exception;
        r2 = 0;
        goto L_0x0029;
    L_0x005e:
        r2 = move-exception;
        r2 = 0;
        goto L_0x0029;
    L_0x0062:
        if (r2 == 0) goto L_0x0056;
    L_0x0064:
        r0 = r19;
        r1 = r0.a;	 Catch:{ Exception -> 0x0080, Error -> 0x0084 }
        r1 = r1.get(r14);	 Catch:{ Exception -> 0x0080, Error -> 0x0084 }
        r1 = (android.net.wifi.ScanResult) r1;	 Catch:{ Exception -> 0x0080, Error -> 0x0084 }
        r12 = r1.timestamp;	 Catch:{ Exception -> 0x0080, Error -> 0x0084 }
        r12 = r3 - r12;
        r15 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
        r12 = r12 / r15;
    L_0x0076:
        r8 = r8 + r12;
        r15 = 1;
        r6 = r6 + r15;
        r1 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1));
        if (r1 <= 0) goto L_0x0056;
    L_0x007e:
        r10 = r12;
        goto L_0x0056;
    L_0x0080:
        r1 = move-exception;
        r12 = 0;
        goto L_0x0076;
    L_0x0084:
        r1 = move-exception;
        r12 = 0;
        goto L_0x0076;
    L_0x0088:
        r1 = 1;
        r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1));
        if (r1 <= 0) goto L_0x0012;
    L_0x008e:
        r1 = r8 - r10;
        r3 = 1;
        r3 = r6 - r3;
        r10 = r1 / r3;
        goto L_0x0012;
    L_0x0098:
        r5 = r1;
        goto L_0x0044;
    L_0x009a:
        r17 = r2;
        r3 = r17;
        r2 = r1;
        goto L_0x0035;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.b.g.f():long");
    }

    public int g() {
        for (int i = 0; i < a(); i++) {
            int i2 = -((ScanResult) this.a.get(i)).level;
            if (i2 > 0) {
                return i2;
            }
        }
        return 0;
    }

    public boolean h() {
        return this.d;
    }

    public boolean i() {
        return System.currentTimeMillis() - this.c > 0 && System.currentTimeMillis() - this.c < 5000;
    }

    public boolean j() {
        return System.currentTimeMillis() - this.c > 0 && System.currentTimeMillis() - this.c < 5000;
    }

    public boolean k() {
        return System.currentTimeMillis() - this.c > 0 && System.currentTimeMillis() - this.b < 5000;
    }
}
