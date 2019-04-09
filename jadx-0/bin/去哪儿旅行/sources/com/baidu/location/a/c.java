package com.baidu.location.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.baidu.android.bbalbs.common.util.CommonParam;
import com.baidu.location.BDLocation;
import com.baidu.location.Jni;
import com.baidu.location.LocationClientOption;
import com.baidu.location.d.e;
import com.baidu.location.d.j;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mqunar.libtask.ProgressType;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

public class c {
    private static Method g = null;
    private static Method h = null;
    private static Method i = null;
    private static Method j = null;
    private static Method k = null;
    private static Class<?> l = null;
    String a = null;
    String b = null;
    b c = new b();
    private Context d = null;
    private TelephonyManager e = null;
    private com.baidu.location.b.a f = new com.baidu.location.b.a();
    private WifiManager m = null;
    private c n = null;
    private String o = null;
    private LocationClientOption p;
    private a q;
    private String r = null;
    private String s = null;
    private String t = null;

    public interface a {
        void onReceiveLocation(BDLocation bDLocation);
    }

    class b extends e {
        String a;

        b() {
            this.a = null;
            this.k = new HashMap();
        }

        public void a() {
            this.h = j.c();
            if (!(c.this.s == null || c.this.t == null)) {
                this.a += String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[]{c.this.s, c.this.t});
            }
            String encodeTp4 = Jni.encodeTp4(this.a);
            this.a = null;
            this.k.put("bloc", encodeTp4);
            this.k.put("trtm", String.format(Locale.CHINA, "%d", new Object[]{Long.valueOf(System.currentTimeMillis())}));
        }

        public void a(String str) {
            this.a = str;
            b(j.f);
        }

        public void a(boolean z) {
            BDLocation bDLocation;
            if (z && this.j != null) {
                try {
                    try {
                        bDLocation = new BDLocation(this.j);
                    } catch (Exception e) {
                        bDLocation = new BDLocation();
                        bDLocation.setLocType(63);
                    }
                    if (bDLocation != null) {
                        if (bDLocation.getLocType() == BDLocation.TypeNetWorkLocation) {
                            bDLocation.setCoorType(c.this.p.coorType);
                            bDLocation.setLocationID(Jni.en1(c.this.a + VoiceWakeuperAidl.PARAMS_SEPARATE + c.this.b + VoiceWakeuperAidl.PARAMS_SEPARATE + bDLocation.getTime()));
                            c.this.q.onReceiveLocation(bDLocation);
                        }
                    }
                } catch (Exception e2) {
                }
            }
            if (this.k != null) {
                this.k.clear();
            }
        }
    }

    public class c {
        public List<ScanResult> a = null;
        private long c = 0;

        public c(List<ScanResult> list) {
            this.a = list;
            this.c = System.currentTimeMillis();
            c();
        }

        private String b() {
            WifiInfo connectionInfo = c.this.m.getConnectionInfo();
            if (connectionInfo == null) {
                return null;
            }
            try {
                String bssid = connectionInfo.getBSSID();
                String replace = bssid != null ? bssid.replace(":", "") : null;
                return (replace == null || replace.length() == 12) ? new String(replace) : null;
            } catch (Exception e) {
                return null;
            }
        }

        private void c() {
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

        /* JADX WARNING: Removed duplicated region for block: B:13:0x0049  */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x00e4  */
        /* JADX WARNING: Removed duplicated region for block: B:45:0x00fc  */
        /* JADX WARNING: Removed duplicated region for block: B:41:0x00ee  */
        /* JADX WARNING: Missing block: B:35:0x00dc, code skipped:
            if (r8 > r11) goto L_0x00de;
     */
        public java.lang.String a(int r23) {
            /*
            r22 = this;
            r1 = r22.a();
            r2 = 2;
            if (r1 >= r2) goto L_0x0009;
        L_0x0007:
            r1 = 0;
        L_0x0008:
            return r1;
        L_0x0009:
            r14 = new java.util.ArrayList;
            r14.<init>();
            r2 = 0;
            r11 = 0;
            r1 = 0;
            r4 = android.os.Build.VERSION.SDK_INT;
            r5 = 19;
            if (r4 < r5) goto L_0x018d;
        L_0x0019:
            r2 = android.os.SystemClock.elapsedRealtimeNanos();	 Catch:{ Error -> 0x005f }
            r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
            r2 = r2 / r4;
        L_0x0020:
            r4 = 0;
            r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r4 <= 0) goto L_0x018d;
        L_0x0026:
            r1 = 1;
            r20 = r2;
            r3 = r20;
            r2 = r1;
        L_0x002c:
            r15 = new java.lang.StringBuffer;
            r1 = 512; // 0x200 float:7.175E-43 double:2.53E-321;
            r15.<init>(r1);
            r0 = r22;
            r1 = r0.a;
            r16 = r1.size();
            r5 = 1;
            r8 = 0;
            r17 = r22.b();
            r7 = 0;
            r6 = 0;
            r1 = 0;
            r13 = r1;
        L_0x0045:
            r0 = r16;
            if (r13 >= r0) goto L_0x018a;
        L_0x0049:
            r0 = r22;
            r1 = r0.a;
            r1 = r1.get(r13);
            r1 = (android.net.wifi.ScanResult) r1;
            r1 = r1.level;
            if (r1 != 0) goto L_0x0063;
        L_0x0057:
            r1 = r8;
            r8 = r11;
        L_0x0059:
            r10 = r13 + 1;
            r13 = r10;
            r11 = r8;
            r8 = r1;
            goto L_0x0045;
        L_0x005f:
            r2 = move-exception;
            r2 = 0;
            goto L_0x0020;
        L_0x0063:
            r7 = r7 + 1;
            if (r5 == 0) goto L_0x00f1;
        L_0x0067:
            r1 = 0;
            r5 = "&wf=";
            r15.append(r5);
            r5 = r1;
        L_0x006e:
            r0 = r22;
            r1 = r0.a;
            r1 = r1.get(r13);
            r1 = (android.net.wifi.ScanResult) r1;
            r1 = r1.BSSID;
            r9 = ":";
            r10 = "";
            r1 = r1.replace(r9, r10);
            r15.append(r1);
            if (r17 == 0) goto L_0x0090;
        L_0x0087:
            r0 = r17;
            r1 = r1.equals(r0);
            if (r1 == 0) goto L_0x0090;
        L_0x008f:
            r6 = r7;
        L_0x0090:
            r0 = r22;
            r1 = r0.a;
            r1 = r1.get(r13);
            r1 = (android.net.wifi.ScanResult) r1;
            r1 = r1.level;
            if (r1 >= 0) goto L_0x009f;
        L_0x009e:
            r1 = -r1;
        L_0x009f:
            r9 = java.util.Locale.CHINA;
            r10 = ";%d;";
            r18 = 1;
            r0 = r18;
            r0 = new java.lang.Object[r0];
            r18 = r0;
            r19 = 0;
            r1 = java.lang.Integer.valueOf(r1);
            r18[r19] = r1;
            r0 = r18;
            r1 = java.lang.String.format(r9, r10, r0);
            r15.append(r1);
            r10 = r8 + 1;
            if (r2 == 0) goto L_0x0187;
        L_0x00c0:
            r0 = r22;
            r1 = r0.a;	 Catch:{ Throwable -> 0x00f8 }
            r1 = r1.get(r13);	 Catch:{ Throwable -> 0x00f8 }
            r1 = (android.net.wifi.ScanResult) r1;	 Catch:{ Throwable -> 0x00f8 }
            r8 = r1.timestamp;	 Catch:{ Throwable -> 0x00f8 }
            r8 = r3 - r8;
            r18 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
            r8 = r8 / r18;
        L_0x00d3:
            r1 = java.lang.Long.valueOf(r8);
            r14.add(r1);
            r1 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1));
            if (r1 <= 0) goto L_0x0187;
        L_0x00de:
            r0 = r23;
            if (r10 <= r0) goto L_0x0184;
        L_0x00e2:
            if (r6 <= 0) goto L_0x00ec;
        L_0x00e4:
            r1 = "&wf_n=";
            r15.append(r1);
            r15.append(r6);
        L_0x00ec:
            if (r5 == 0) goto L_0x00fc;
        L_0x00ee:
            r1 = 0;
            goto L_0x0008;
        L_0x00f1:
            r1 = "|";
            r15.append(r1);
            goto L_0x006e;
        L_0x00f8:
            r1 = move-exception;
            r8 = 0;
            goto L_0x00d3;
        L_0x00fc:
            r1 = 10;
            r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1));
            if (r1 <= 0) goto L_0x017e;
        L_0x0102:
            r1 = r14.size();
            if (r1 <= 0) goto L_0x017e;
        L_0x0108:
            r1 = 0;
            r1 = r14.get(r1);
            r1 = (java.lang.Long) r1;
            r1 = r1.longValue();
            r3 = 0;
            r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
            if (r1 <= 0) goto L_0x017e;
        L_0x0119:
            r4 = new java.lang.StringBuffer;
            r1 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
            r4.<init>(r1);
            r1 = "&wf_ut=";
            r4.append(r1);
            r2 = 1;
            r1 = 0;
            r1 = r14.get(r1);
            r1 = (java.lang.Long) r1;
            r5 = r14.iterator();
            r3 = r2;
        L_0x0132:
            r2 = r5.hasNext();
            if (r2 == 0) goto L_0x0177;
        L_0x0138:
            r2 = r5.next();
            r2 = (java.lang.Long) r2;
            if (r3 == 0) goto L_0x0150;
        L_0x0140:
            r3 = 0;
            r6 = r2.longValue();
            r4.append(r6);
            r2 = r3;
        L_0x0149:
            r3 = "|";
            r4.append(r3);
            r3 = r2;
            goto L_0x0132;
        L_0x0150:
            r6 = r2.longValue();
            r8 = r1.longValue();
            r6 = r6 - r8;
            r8 = 0;
            r2 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
            if (r2 == 0) goto L_0x0175;
        L_0x015f:
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r8 = "";
            r2 = r2.append(r8);
            r2 = r2.append(r6);
            r2 = r2.toString();
            r4.append(r2);
        L_0x0175:
            r2 = r3;
            goto L_0x0149;
        L_0x0177:
            r1 = r4.toString();
            r15.append(r1);
        L_0x017e:
            r1 = r15.toString();
            goto L_0x0008;
        L_0x0184:
            r1 = r10;
            goto L_0x0059;
        L_0x0187:
            r8 = r11;
            goto L_0x00de;
        L_0x018a:
            r8 = r11;
            goto L_0x00e2;
        L_0x018d:
            r20 = r2;
            r3 = r20;
            r2 = r1;
            goto L_0x002c;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.a.c$c.a(int):java.lang.String");
        }
    }

    public c(Context context, LocationClientOption locationClientOption, a aVar) {
        String deviceId;
        this.d = context.getApplicationContext();
        this.p = new LocationClientOption(locationClientOption);
        this.q = aVar;
        this.a = this.d.getPackageName();
        this.b = null;
        try {
            this.e = (TelephonyManager) this.d.getSystemService("phone");
            deviceId = this.e.getDeviceId();
        } catch (Exception e) {
            deviceId = null;
        }
        try {
            this.b = CommonParam.a(this.d);
        } catch (Exception e2) {
            this.b = null;
        }
        if (this.b != null) {
            j.n = "" + this.b;
            this.o = "&prod=" + this.p.prodName + ":" + this.a + "|&cu=" + this.b + "&coor=" + locationClientOption.getCoorType();
        } else {
            this.o = "&prod=" + this.p.prodName + ":" + this.a + "|&im=" + deviceId + "&coor=" + locationClientOption.getCoorType();
        }
        StringBuffer stringBuffer = new StringBuffer(256);
        stringBuffer.append("&fw=");
        stringBuffer.append("7.52");
        stringBuffer.append("&sdk=");
        stringBuffer.append("7.52");
        stringBuffer.append("&lt=1");
        stringBuffer.append("&mb=");
        stringBuffer.append(Build.MODEL);
        stringBuffer.append("&resid=");
        stringBuffer.append("12");
        if (locationClientOption.getAddrType() != null) {
        }
        if (locationClientOption.getAddrType() != null && locationClientOption.getAddrType().equals(SpeechConstant.PLUS_LOCAL_ALL)) {
            this.o += "&addr=allj";
        }
        if (locationClientOption.isNeedAptag || locationClientOption.isNeedAptagd) {
            this.o += "&sema=";
            if (locationClientOption.isNeedAptag) {
                this.o += "aptag|";
            }
            if (locationClientOption.isNeedAptagd) {
                this.o += "aptagd|";
            }
            this.s = j.b(this.d);
            this.t = j.c(this.d);
        }
        stringBuffer.append("&first=1");
        stringBuffer.append("&os=A");
        stringBuffer.append(VERSION.SDK);
        this.o += stringBuffer.toString();
        this.m = (WifiManager) this.d.getApplicationContext().getSystemService("wifi");
        CharSequence a = a();
        if (!TextUtils.isEmpty(a)) {
            a = a.replace(":", "");
        }
        if (!(TextUtils.isEmpty(a) || a.equals("020000000000"))) {
            this.o += "&mac=" + a;
        }
        b();
    }

    private int a(int i) {
        return i == ProgressType.PRO_END ? -1 : i;
    }

    @SuppressLint({"NewApi"})
    private com.baidu.location.b.a a(CellInfo cellInfo) {
        Object obj = null;
        int i = -1;
        int intValue = Integer.valueOf(VERSION.SDK_INT).intValue();
        if (intValue < 17) {
            return null;
        }
        com.baidu.location.b.a aVar = new com.baidu.location.b.a();
        int intValue2;
        if (cellInfo instanceof CellInfoGsm) {
            CellIdentityGsm cellIdentity = ((CellInfoGsm) cellInfo).getCellIdentity();
            aVar.c = a(cellIdentity.getMcc());
            aVar.d = a(cellIdentity.getMnc());
            aVar.a = a(cellIdentity.getLac());
            aVar.b = a(cellIdentity.getCid());
            aVar.i = 'g';
            aVar.h = ((CellInfoGsm) cellInfo).getCellSignalStrength().getAsuLevel();
            obj = 1;
        } else if (cellInfo instanceof CellInfoCdma) {
            CellIdentityCdma cellIdentity2 = ((CellInfoCdma) cellInfo).getCellIdentity();
            aVar.e = cellIdentity2.getLatitude();
            aVar.f = cellIdentity2.getLongitude();
            aVar.d = a(cellIdentity2.getSystemId());
            aVar.a = a(cellIdentity2.getNetworkId());
            aVar.b = a(cellIdentity2.getBasestationId());
            aVar.i = 'c';
            aVar.h = ((CellInfoCdma) cellInfo).getCellSignalStrength().getCdmaDbm();
            if (this.f == null || this.f.c <= 0) {
                try {
                    String networkOperator = this.e.getNetworkOperator();
                    if (networkOperator != null && networkOperator.length() > 0 && networkOperator.length() >= 3) {
                        intValue2 = Integer.valueOf(networkOperator.substring(0, 3)).intValue();
                        if (intValue2 < 0) {
                            intValue2 = -1;
                        }
                        i = intValue2;
                    }
                } catch (Exception e) {
                }
                if (i > 0) {
                    aVar.c = i;
                }
            } else {
                aVar.c = this.f.c;
            }
            intValue2 = 1;
        } else if (cellInfo instanceof CellInfoLte) {
            CellIdentityLte cellIdentity3 = ((CellInfoLte) cellInfo).getCellIdentity();
            aVar.c = a(cellIdentity3.getMcc());
            aVar.d = a(cellIdentity3.getMnc());
            aVar.a = a(cellIdentity3.getTac());
            aVar.b = a(cellIdentity3.getCi());
            aVar.i = 'g';
            aVar.h = ((CellInfoLte) cellInfo).getCellSignalStrength().getAsuLevel();
            intValue2 = 1;
        }
        if (intValue >= 18 && obj == null) {
            try {
                if (cellInfo instanceof CellInfoWcdma) {
                    CellIdentityWcdma cellIdentity4 = ((CellInfoWcdma) cellInfo).getCellIdentity();
                    aVar.c = a(cellIdentity4.getMcc());
                    aVar.d = a(cellIdentity4.getMnc());
                    aVar.a = a(cellIdentity4.getLac());
                    aVar.b = a(cellIdentity4.getCid());
                    aVar.i = 'g';
                    aVar.h = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getAsuLevel();
                }
            } catch (Exception e2) {
            }
        }
        try {
            aVar.g = System.currentTimeMillis() - ((SystemClock.elapsedRealtimeNanos() - cellInfo.getTimeStamp()) / 1000000);
        } catch (Error e3) {
            aVar.g = System.currentTimeMillis();
        }
        return aVar;
    }

    private void a(CellLocation cellLocation) {
        int i = 0;
        if (cellLocation != null && this.e != null) {
            com.baidu.location.b.a aVar = new com.baidu.location.b.a();
            String networkOperator = this.e.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0) {
                try {
                    if (networkOperator.length() >= 3) {
                        int intValue = Integer.valueOf(networkOperator.substring(0, 3)).intValue();
                        if (intValue < 0) {
                            intValue = this.f.c;
                        }
                        aVar.c = intValue;
                    }
                    String substring = networkOperator.substring(3);
                    if (substring != null) {
                        char[] toCharArray = substring.toCharArray();
                        while (i < toCharArray.length && Character.isDigit(toCharArray[i])) {
                            i++;
                        }
                    }
                    i = Integer.valueOf(substring.substring(0, i)).intValue();
                    if (i < 0) {
                        i = this.f.d;
                    }
                    aVar.d = i;
                } catch (Exception e) {
                }
            }
            if (cellLocation instanceof GsmCellLocation) {
                aVar.a = ((GsmCellLocation) cellLocation).getLac();
                aVar.b = ((GsmCellLocation) cellLocation).getCid();
                aVar.i = 'g';
            } else if (cellLocation instanceof CdmaCellLocation) {
                aVar.i = 'c';
                if (l == null) {
                    try {
                        l = Class.forName("android.telephony.cdma.CdmaCellLocation");
                        g = l.getMethod("getBaseStationId", new Class[0]);
                        h = l.getMethod("getNetworkId", new Class[0]);
                        i = l.getMethod("getSystemId", new Class[0]);
                        j = l.getMethod("getBaseStationLatitude", new Class[0]);
                        k = l.getMethod("getBaseStationLongitude", new Class[0]);
                    } catch (Exception e2) {
                        l = null;
                        return;
                    }
                }
                if (l != null && l.isInstance(cellLocation)) {
                    try {
                        i = ((Integer) i.invoke(cellLocation, new Object[0])).intValue();
                        if (i < 0) {
                            i = this.f.d;
                        }
                        aVar.d = i;
                        aVar.b = ((Integer) g.invoke(cellLocation, new Object[0])).intValue();
                        aVar.a = ((Integer) h.invoke(cellLocation, new Object[0])).intValue();
                        Object invoke = j.invoke(cellLocation, new Object[0]);
                        if (((Integer) invoke).intValue() < ProgressType.PRO_END) {
                            aVar.e = ((Integer) invoke).intValue();
                        }
                        invoke = k.invoke(cellLocation, new Object[0]);
                        if (((Integer) invoke).intValue() < ProgressType.PRO_END) {
                            aVar.f = ((Integer) invoke).intValue();
                        }
                    } catch (Exception e3) {
                        return;
                    }
                }
            }
            if (aVar.b()) {
                this.f = aVar;
            } else {
                this.f = null;
            }
        }
    }

    private String b(int i) {
        String g;
        String a;
        try {
            com.baidu.location.b.a d = d();
            if (d == null || !d.b()) {
                a(this.e.getCellLocation());
            } else {
                this.f = d;
            }
            g = (this.f == null || !this.f.b()) ? null : this.f.g();
            try {
                if (!(TextUtils.isEmpty(g) || this.f.j == null)) {
                    g = g + this.f.j;
                }
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            g = null;
        }
        try {
            this.n = null;
            this.n = new c(this.m.getScanResults());
            a = this.n.a(i);
        } catch (Exception e) {
            a = null;
        }
        if (g == null && a == null) {
            this.r = null;
            return null;
        }
        if (a != null) {
            g = g == null ? a : g + a;
        }
        if (g == null) {
            return null;
        }
        this.r = g;
        if (this.o != null) {
            this.r += this.o;
        }
        return g + this.o;
    }

    /* JADX WARNING: Missing block: B:21:0x0047, code skipped:
            if (r1 == null) goto L_0x0049;
     */
    @android.annotation.SuppressLint({"NewApi"})
    private com.baidu.location.b.a d() {
        /*
        r6 = this;
        r2 = 0;
        r0 = android.os.Build.VERSION.SDK_INT;
        r0 = java.lang.Integer.valueOf(r0);
        r0 = r0.intValue();
        r1 = 17;
        if (r0 >= r1) goto L_0x0011;
    L_0x000f:
        r1 = r2;
    L_0x0010:
        return r1;
    L_0x0011:
        r0 = r6.e;	 Catch:{ Throwable -> 0x0054 }
        r0 = r0.getAllCellInfo();	 Catch:{ Throwable -> 0x0054 }
        if (r0 == 0) goto L_0x0059;
    L_0x0019:
        r1 = r0.size();	 Catch:{ Throwable -> 0x0054 }
        if (r1 <= 0) goto L_0x0059;
    L_0x001f:
        r4 = r0.iterator();	 Catch:{ Throwable -> 0x0054 }
        r1 = r2;
    L_0x0024:
        r0 = r4.hasNext();	 Catch:{ Throwable -> 0x0054 }
        if (r0 == 0) goto L_0x0010;
    L_0x002a:
        r0 = r4.next();	 Catch:{ Throwable -> 0x0054 }
        r0 = (android.telephony.CellInfo) r0;	 Catch:{ Throwable -> 0x0054 }
        r3 = r0.isRegistered();	 Catch:{ Throwable -> 0x0054 }
        if (r3 == 0) goto L_0x0057;
    L_0x0036:
        r3 = 0;
        if (r1 == 0) goto L_0x003a;
    L_0x0039:
        r3 = 1;
    L_0x003a:
        r0 = r6.a(r0);	 Catch:{ Throwable -> 0x0054 }
        if (r0 == 0) goto L_0x0024;
    L_0x0040:
        r5 = r0.b();	 Catch:{ Throwable -> 0x0054 }
        if (r5 != 0) goto L_0x004b;
    L_0x0046:
        r0 = r2;
    L_0x0047:
        if (r1 != 0) goto L_0x0057;
    L_0x0049:
        r1 = r0;
        goto L_0x0024;
    L_0x004b:
        if (r3 == 0) goto L_0x0047;
    L_0x004d:
        r0 = r0.h();	 Catch:{ Throwable -> 0x0054 }
        r1.j = r0;	 Catch:{ Throwable -> 0x0054 }
        goto L_0x0010;
    L_0x0054:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0010;
    L_0x0057:
        r0 = r1;
        goto L_0x0049;
    L_0x0059:
        r1 = r2;
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.a.c.d():com.baidu.location.b.a");
    }

    public String a() {
        try {
            WifiInfo connectionInfo = this.m.getConnectionInfo();
            return connectionInfo != null ? connectionInfo.getMacAddress() : null;
        } catch (Error | Exception e) {
            return null;
        }
    }

    public String b() {
        try {
            return b(15);
        } catch (Exception e) {
            return null;
        }
    }

    public void c() {
        if (this.r != null && null == null) {
            this.c.a(this.r);
        }
    }
}
