package com.baidu.location.b;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.os.Handler;
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
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import com.baidu.location.d.j;
import com.baidu.location.f;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mqunar.libtask.ProgressType;
import com.mqunar.tools.DateTimeUtils;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@SuppressLint({"NewApi"})
public class b {
    public static int a = 0;
    public static int b = 0;
    private static b c = null;
    private static Method k = null;
    private static Method l = null;
    private static Method m = null;
    private static Method n = null;
    private static Method o = null;
    private static Class<?> p = null;
    private TelephonyManager d = null;
    private Object e = null;
    private a f = new a();
    private a g = null;
    private List<a> h = null;
    private a i = null;
    private boolean j = false;
    private boolean q = false;
    private Handler r = new Handler();

    class a extends PhoneStateListener {
        public void onCellLocationChanged(CellLocation cellLocation) {
            if (cellLocation != null) {
                b.this.r.post(new c(this));
            }
        }

        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (b.this.f == null) {
                return;
            }
            if (b.this.f.i == 'g') {
                b.this.f.h = signalStrength.getGsmSignalStrength();
            } else if (b.this.f.i == 'c') {
                b.this.f.h = signalStrength.getCdmaDbm();
            }
        }
    }

    private b() {
    }

    private int a(int i) {
        return i == ProgressType.PRO_END ? -1 : i;
    }

    private CellLocation a(List<?> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int i;
        CellLocation cdmaCellLocation;
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        CellLocation cellLocation = null;
        int i2 = 0;
        CellLocation cellLocation2 = null;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object obj = list.get(i3);
            if (obj != null) {
                try {
                    Class loadClass = systemClassLoader.loadClass("android.telephony.CellInfoGsm");
                    Class loadClass2 = systemClassLoader.loadClass("android.telephony.CellInfoWcdma");
                    Class loadClass3 = systemClassLoader.loadClass("android.telephony.CellInfoLte");
                    Class loadClass4 = systemClassLoader.loadClass("android.telephony.CellInfoCdma");
                    i = loadClass.isInstance(obj) ? 1 : loadClass2.isInstance(obj) ? 2 : loadClass3.isInstance(obj) ? 3 : loadClass4.isInstance(obj) ? 4 : 0;
                    if (i > 0) {
                        Object obj2 = null;
                        if (i == 1) {
                            try {
                                obj2 = loadClass.cast(obj);
                            } catch (Exception e) {
                                i2 = i;
                            }
                        } else if (i == 2) {
                            obj2 = loadClass2.cast(obj);
                        } else if (i == 3) {
                            obj2 = loadClass3.cast(obj);
                        } else if (i == 4) {
                            obj2 = loadClass4.cast(obj);
                        }
                        obj = j.a(obj2, "getCellIdentity", new Object[0]);
                        int b;
                        int b2;
                        CellLocation cellLocation3;
                        if (obj == null) {
                            i2 = i;
                        } else if (i == 4) {
                            cdmaCellLocation = new CdmaCellLocation();
                            try {
                                cdmaCellLocation.setCellLocationData(j.b(obj, "getBasestationId", new Object[0]), j.b(obj, "getLatitude", new Object[0]), j.b(obj, "getLongitude", new Object[0]), j.b(obj, "getSystemId", new Object[0]), j.b(obj, "getNetworkId", new Object[0]));
                                cellLocation2 = cellLocation;
                                break;
                            } catch (Exception e2) {
                                cellLocation2 = cdmaCellLocation;
                                i2 = i;
                            }
                        } else if (i == 3) {
                            b = j.b(obj, "getTac", new Object[0]);
                            b2 = j.b(obj, "getCi", new Object[0]);
                            cdmaCellLocation = new GsmCellLocation();
                            try {
                                cdmaCellLocation.setLacAndCid(b, b2);
                                cellLocation3 = cellLocation2;
                                cellLocation2 = cdmaCellLocation;
                                cdmaCellLocation = cellLocation3;
                                break;
                            } catch (Exception e3) {
                                cellLocation = cdmaCellLocation;
                                i2 = i;
                            }
                        } else {
                            b = j.b(obj, "getLac", new Object[0]);
                            b2 = j.b(obj, "getCid", new Object[0]);
                            cdmaCellLocation = new GsmCellLocation();
                            try {
                                cdmaCellLocation.setLacAndCid(b, b2);
                                cellLocation3 = cellLocation2;
                                cellLocation2 = cdmaCellLocation;
                                cdmaCellLocation = cellLocation3;
                                break;
                            } catch (Exception e4) {
                                cellLocation = cdmaCellLocation;
                                i2 = i;
                            }
                        }
                    } else {
                        i2 = i;
                    }
                } catch (Exception e5) {
                }
            }
        }
        i = i2;
        cdmaCellLocation = cellLocation2;
        cellLocation2 = cellLocation;
        return i != 4 ? cellLocation2 : cdmaCellLocation;
    }

    @SuppressLint({"NewApi"})
    private a a(CellInfo cellInfo) {
        Object obj = null;
        int i = -1;
        int intValue = Integer.valueOf(VERSION.SDK_INT).intValue();
        if (intValue < 17) {
            return null;
        }
        a aVar = new a();
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
                    String networkOperator = this.d.getNetworkOperator();
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

    private a a(CellLocation cellLocation) {
        return a(cellLocation, false);
    }

    private a a(CellLocation cellLocation, boolean z) {
        int i = 0;
        if (cellLocation == null || this.d == null) {
            return null;
        }
        a aVar = new a();
        if (z) {
            aVar.f();
        }
        aVar.g = System.currentTimeMillis();
        try {
            String networkOperator = this.d.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0) {
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
            }
            a = this.d.getSimState();
        } catch (Exception e) {
            b = 1;
        }
        if (cellLocation instanceof GsmCellLocation) {
            aVar.a = ((GsmCellLocation) cellLocation).getLac();
            aVar.b = ((GsmCellLocation) cellLocation).getCid();
            aVar.i = 'g';
        } else if (cellLocation instanceof CdmaCellLocation) {
            aVar.i = 'c';
            if (Integer.valueOf(VERSION.SDK_INT).intValue() < 5) {
                return aVar;
            }
            if (p == null) {
                try {
                    p = Class.forName("android.telephony.cdma.CdmaCellLocation");
                    k = p.getMethod("getBaseStationId", new Class[0]);
                    l = p.getMethod("getNetworkId", new Class[0]);
                    m = p.getMethod("getSystemId", new Class[0]);
                    n = p.getMethod("getBaseStationLatitude", new Class[0]);
                    o = p.getMethod("getBaseStationLongitude", new Class[0]);
                } catch (Exception e2) {
                    p = null;
                    b = 2;
                    return aVar;
                }
            }
            if (p != null && p.isInstance(cellLocation)) {
                try {
                    int intValue2 = ((Integer) m.invoke(cellLocation, new Object[0])).intValue();
                    if (intValue2 < 0) {
                        intValue2 = this.f.d;
                    }
                    aVar.d = intValue2;
                    aVar.b = ((Integer) k.invoke(cellLocation, new Object[0])).intValue();
                    aVar.a = ((Integer) l.invoke(cellLocation, new Object[0])).intValue();
                    Object invoke = n.invoke(cellLocation, new Object[0]);
                    if (((Integer) invoke).intValue() < ProgressType.PRO_END) {
                        aVar.e = ((Integer) invoke).intValue();
                    }
                    invoke = o.invoke(cellLocation, new Object[0]);
                    if (((Integer) invoke).intValue() < ProgressType.PRO_END) {
                        aVar.f = ((Integer) invoke).intValue();
                    }
                } catch (Exception e3) {
                    b = 3;
                    return aVar;
                }
            }
        }
        c(aVar);
        return aVar;
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (c == null) {
                c = new b();
            }
            bVar = c;
        }
        return bVar;
    }

    private void c(a aVar) {
        if (!aVar.b()) {
            return;
        }
        if (this.f == null || !this.f.a(aVar)) {
            this.f = aVar;
            if (aVar.b()) {
                int size = this.h.size();
                a aVar2 = size == 0 ? null : (a) this.h.get(size - 1);
                if (aVar2 == null || aVar2.b != this.f.b || aVar2.a != this.f.a) {
                    this.h.add(this.f);
                    if (this.h.size() > 3) {
                        this.h.remove(0);
                    }
                    j();
                    this.q = false;
                }
            } else if (this.h != null) {
                this.h.clear();
            }
        }
    }

    @SuppressLint({"NewApi"})
    private String d(a aVar) {
        StringBuilder stringBuilder = new StringBuilder();
        if (Integer.valueOf(VERSION.SDK_INT).intValue() >= 17) {
            try {
                List<CellInfo> allCellInfo = this.d.getAllCellInfo();
                if (allCellInfo != null && allCellInfo.size() > 0) {
                    stringBuilder.append("&nc=");
                    for (CellInfo cellInfo : allCellInfo) {
                        if (!cellInfo.isRegistered()) {
                            a a = a(cellInfo);
                            if (!(a == null || a.a == -1 || a.b == -1)) {
                                if (aVar.a != a.a) {
                                    stringBuilder.append(a.a + "|" + a.b + "|" + a.h + VoiceWakeuperAidl.PARAMS_SEPARATE);
                                } else {
                                    stringBuilder.append("|" + a.b + "|" + a.h + VoiceWakeuperAidl.PARAMS_SEPARATE);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
        return stringBuilder.toString();
    }

    private void i() {
        String g = j.g();
        if (g != null) {
            File file = new File(g + File.separator + "lcvif.dat");
            if (file.exists()) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    if (System.currentTimeMillis() - randomAccessFile.readLong() > DateTimeUtils.ONE_MINUTE) {
                        randomAccessFile.close();
                        file.delete();
                        return;
                    }
                    randomAccessFile.readInt();
                    for (int i = 0; i < 3; i++) {
                        long readLong = randomAccessFile.readLong();
                        int readInt = randomAccessFile.readInt();
                        int readInt2 = randomAccessFile.readInt();
                        int readInt3 = randomAccessFile.readInt();
                        int readInt4 = randomAccessFile.readInt();
                        int readInt5 = randomAccessFile.readInt();
                        char c = 0;
                        if (readInt5 == 1) {
                            c = 'g';
                        }
                        if (readInt5 == 2) {
                            c = 'c';
                        }
                        if (readLong != 0) {
                            a aVar = new a(readInt3, readInt4, readInt, readInt2, 0, c);
                            aVar.g = readLong;
                            if (aVar.b()) {
                                this.q = true;
                                this.h.add(aVar);
                            }
                        }
                    }
                    randomAccessFile.close();
                } catch (Exception e) {
                    file.delete();
                }
            }
        }
    }

    private void j() {
        int i = 0;
        if (this.h != null || this.g != null) {
            if (this.h == null && this.g != null) {
                this.h = new LinkedList();
                this.h.add(this.g);
            }
            String g = j.g();
            if (g != null) {
                File file = new File(g + File.separator + "lcvif.dat");
                int size = this.h.size();
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    randomAccessFile.writeLong(((a) this.h.get(size - 1)).g);
                    randomAccessFile.writeInt(size);
                    for (int i2 = 0; i2 < 3 - size; i2++) {
                        randomAccessFile.writeLong(0);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(2);
                    }
                    while (i < size) {
                        randomAccessFile.writeLong(((a) this.h.get(i)).g);
                        randomAccessFile.writeInt(((a) this.h.get(i)).c);
                        randomAccessFile.writeInt(((a) this.h.get(i)).d);
                        randomAccessFile.writeInt(((a) this.h.get(i)).a);
                        randomAccessFile.writeInt(((a) this.h.get(i)).b);
                        if (((a) this.h.get(i)).i == 'g') {
                            randomAccessFile.writeInt(1);
                        } else if (((a) this.h.get(i)).i == 'c') {
                            randomAccessFile.writeInt(2);
                        } else {
                            randomAccessFile.writeInt(3);
                        }
                        i++;
                    }
                    randomAccessFile.close();
                } catch (Exception e) {
                }
            }
        }
    }

    private void k() {
        a aVar = null;
        a n = n();
        if (n != null) {
            c(n);
        }
        if (n == null || !n.b()) {
            CellLocation cellLocation;
            try {
                cellLocation = this.d.getCellLocation();
            } catch (Throwable th) {
                cellLocation = null;
            }
            if (cellLocation != null) {
                aVar = a(cellLocation);
            }
            if (aVar == null || !aVar.b()) {
                CellLocation l = l();
                if (l != null) {
                    a(l, true);
                }
            }
        }
    }

    private CellLocation l() {
        Object obj = this.e;
        if (obj == null) {
            return null;
        }
        CellLocation cellLocation;
        try {
            Class m = m();
            if (m.isInstance(obj)) {
                Object cast = m.cast(obj);
                String str = "getCellLocation";
                try {
                    obj = j.a(cast, str, new Object[0]);
                } catch (NoSuchMethodException e) {
                    obj = null;
                } catch (Exception e2) {
                    obj = null;
                }
                if (obj == null) {
                    try {
                        obj = j.a(cast, str, Integer.valueOf(1));
                    } catch (Exception | NoSuchMethodException e3) {
                    }
                }
                if (obj == null) {
                    try {
                        obj = j.a(cast, "getCellLocationGemini", Integer.valueOf(1));
                    } catch (Exception | NoSuchMethodException e4) {
                    }
                }
                if (obj == null) {
                    List list;
                    try {
                        list = (List) j.a(cast, "getAllCellInfo", new Object[0]);
                    } catch (NoSuchMethodException e5) {
                        list = null;
                    } catch (Exception e6) {
                        list = null;
                    }
                    obj = a(list);
                    if (obj != null) {
                    }
                }
            } else {
                obj = null;
            }
            cellLocation = obj != null ? (CellLocation) obj : null;
        } catch (Exception e7) {
            cellLocation = null;
        }
        return cellLocation;
    }

    private Class<?> m() {
        String str;
        Class<?> cls = null;
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        switch (o()) {
            case 0:
                str = "android.telephony.TelephonyManager";
                break;
            case 1:
                str = "android.telephony.MSimTelephonyManager";
                break;
            case 2:
                str = "android.telephony.TelephonyManager2";
                break;
            default:
                str = cls;
                break;
        }
        try {
            return systemClassLoader.loadClass(str);
        } catch (Exception e) {
            return cls;
        }
    }

    /* JADX WARNING: Missing block: B:21:0x004f, code skipped:
            if (r1 == null) goto L_0x0051;
     */
    @android.annotation.SuppressLint({"NewApi"})
    private com.baidu.location.b.a n() {
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
        r0 = r6.d;	 Catch:{ Throwable -> 0x005c }
        r0 = r0.getSimState();	 Catch:{ Throwable -> 0x005c }
        a = r0;	 Catch:{ Throwable -> 0x005c }
        r0 = r6.d;	 Catch:{ Throwable -> 0x005c }
        r0 = r0.getAllCellInfo();	 Catch:{ Throwable -> 0x005c }
        if (r0 == 0) goto L_0x0061;
    L_0x0021:
        r1 = r0.size();	 Catch:{ Throwable -> 0x005c }
        if (r1 <= 0) goto L_0x0061;
    L_0x0027:
        r4 = r0.iterator();	 Catch:{ Throwable -> 0x005c }
        r1 = r2;
    L_0x002c:
        r0 = r4.hasNext();	 Catch:{ Throwable -> 0x005c }
        if (r0 == 0) goto L_0x0010;
    L_0x0032:
        r0 = r4.next();	 Catch:{ Throwable -> 0x005c }
        r0 = (android.telephony.CellInfo) r0;	 Catch:{ Throwable -> 0x005c }
        r3 = r0.isRegistered();	 Catch:{ Throwable -> 0x005c }
        if (r3 == 0) goto L_0x005f;
    L_0x003e:
        r3 = 0;
        if (r1 == 0) goto L_0x0042;
    L_0x0041:
        r3 = 1;
    L_0x0042:
        r0 = r6.a(r0);	 Catch:{ Throwable -> 0x005c }
        if (r0 == 0) goto L_0x002c;
    L_0x0048:
        r5 = r0.b();	 Catch:{ Throwable -> 0x005c }
        if (r5 != 0) goto L_0x0053;
    L_0x004e:
        r0 = r2;
    L_0x004f:
        if (r1 != 0) goto L_0x005f;
    L_0x0051:
        r1 = r0;
        goto L_0x002c;
    L_0x0053:
        if (r3 == 0) goto L_0x004f;
    L_0x0055:
        r0 = r0.h();	 Catch:{ Throwable -> 0x005c }
        r1.j = r0;	 Catch:{ Throwable -> 0x005c }
        goto L_0x0010;
    L_0x005c:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0010;
    L_0x005f:
        r0 = r1;
        goto L_0x0051;
    L_0x0061:
        r1 = r2;
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.b.b.n():com.baidu.location.b.a");
    }

    private int o() {
        int i = 0;
        try {
            Class.forName("android.telephony.MSimTelephonyManager");
            i = 1;
        } catch (Exception e) {
        }
        if (i != 0) {
            return i;
        }
        try {
            Class.forName("android.telephony.TelephonyManager2");
            return 2;
        } catch (Exception e2) {
            return i;
        }
    }

    public String a(a aVar) {
        String str = "";
        try {
            str = d(aVar);
            int intValue = Integer.valueOf(VERSION.SDK_INT).intValue();
            if ((str != null && !str.equals("") && !str.equals("&nc=")) || intValue >= 17) {
                return str;
            }
            List<NeighboringCellInfo> neighboringCellInfo = this.d.getNeighboringCellInfo();
            if (neighboringCellInfo != null && !neighboringCellInfo.isEmpty()) {
                String str2 = "&nc=";
                int i = 0;
                for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                    int lac = neighboringCellInfo2.getLac();
                    str = (lac == -1 || neighboringCellInfo2.getCid() == -1) ? str2 : aVar.a != lac ? str2 + lac + "|" + neighboringCellInfo2.getCid() + "|" + neighboringCellInfo2.getRssi() + VoiceWakeuperAidl.PARAMS_SEPARATE : str2 + "|" + neighboringCellInfo2.getCid() + "|" + neighboringCellInfo2.getRssi() + VoiceWakeuperAidl.PARAMS_SEPARATE;
                    intValue = i + 1;
                    if (intValue >= 8) {
                        break;
                    }
                    i = intValue;
                    str2 = str;
                }
                str = str2;
            }
            return (str == null || !str.equals("&nc=")) ? str : null;
        } catch (Throwable th) {
            th.printStackTrace();
            str = "";
        }
    }

    public String b(a aVar) {
        StringBuffer stringBuffer = new StringBuffer(128);
        stringBuffer.append("&nw=");
        stringBuffer.append(aVar.i);
        stringBuffer.append(String.format(Locale.CHINA, "&cl=%d|%d|%d|%d&cl_s=%d", new Object[]{Integer.valueOf(aVar.c), Integer.valueOf(aVar.d), Integer.valueOf(aVar.a), Integer.valueOf(aVar.b), Integer.valueOf(aVar.h)}));
        if (aVar.e < ProgressType.PRO_END && aVar.f < ProgressType.PRO_END) {
            stringBuffer.append(String.format(Locale.CHINA, "&cdmall=%.6f|%.6f", new Object[]{Double.valueOf(((double) aVar.f) / 14400.0d), Double.valueOf(((double) aVar.e) / 14400.0d)}));
        }
        stringBuffer.append("&cl_t=");
        stringBuffer.append(aVar.g);
        try {
            if (this.h != null && this.h.size() > 0) {
                int size = this.h.size();
                stringBuffer.append("&clt=");
                for (int i = 0; i < size; i++) {
                    a aVar2 = (a) this.h.get(i);
                    if (aVar2 != null) {
                        if (aVar2.c != aVar.c) {
                            stringBuffer.append(aVar2.c);
                        }
                        stringBuffer.append("|");
                        if (aVar2.d != aVar.d) {
                            stringBuffer.append(aVar2.d);
                        }
                        stringBuffer.append("|");
                        if (aVar2.a != aVar.a) {
                            stringBuffer.append(aVar2.a);
                        }
                        stringBuffer.append("|");
                        if (aVar2.b != aVar.b) {
                            stringBuffer.append(aVar2.b);
                        }
                        stringBuffer.append("|");
                        stringBuffer.append((System.currentTimeMillis() - aVar2.g) / 1000);
                        stringBuffer.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                    }
                }
            }
        } catch (Exception e) {
        }
        if (a > 100) {
            a = 0;
        }
        stringBuffer.append("&cs=" + ((b << 8) + a));
        if (aVar.j != null) {
            stringBuffer.append(aVar.j);
        }
        return stringBuffer.toString();
    }

    public synchronized void b() {
        /*
        r3 = this;
        r1 = 1;
        monitor-enter(r3);
        r0 = r3.j;	 Catch:{ all -> 0x0047 }
        if (r0 != r1) goto L_0x0008;
    L_0x0006:
        monitor-exit(r3);
        return;
    L_0x0008:
        r0 = com.baidu.location.f.isServing;	 Catch:{ all -> 0x0047 }
        if (r0 == 0) goto L_0x0006;
    L_0x000c:
        r0 = com.baidu.location.f.getServiceContext();	 Catch:{ all -> 0x0047 }
        r1 = "phone";
        r0 = r0.getSystemService(r1);	 Catch:{ all -> 0x0047 }
        r0 = (android.telephony.TelephonyManager) r0;	 Catch:{ all -> 0x0047 }
        r3.d = r0;	 Catch:{ all -> 0x0047 }
        r0 = new java.util.LinkedList;	 Catch:{ all -> 0x0047 }
        r0.<init>();	 Catch:{ all -> 0x0047 }
        r3.h = r0;	 Catch:{ all -> 0x0047 }
        r0 = new com.baidu.location.b.b$a;	 Catch:{ all -> 0x0047 }
        r0.<init>();	 Catch:{ all -> 0x0047 }
        r3.i = r0;	 Catch:{ all -> 0x0047 }
        r3.i();	 Catch:{ all -> 0x0047 }
        r0 = r3.d;	 Catch:{ all -> 0x0047 }
        if (r0 == 0) goto L_0x0006;
    L_0x002f:
        r0 = r3.i;	 Catch:{ all -> 0x0047 }
        if (r0 == 0) goto L_0x0006;
    L_0x0033:
        r0 = r3.d;	 Catch:{ Exception -> 0x0076 }
        r1 = r3.i;	 Catch:{ Exception -> 0x0076 }
        r2 = 272; // 0x110 float:3.81E-43 double:1.344E-321;
        r0.listen(r1, r2);	 Catch:{ Exception -> 0x0076 }
    L_0x003c:
        r0 = r3.o();	 Catch:{ Throwable -> 0x0057 }
        switch(r0) {
            case 0: goto L_0x0069;
            case 1: goto L_0x004a;
            case 2: goto L_0x005c;
            default: goto L_0x0043;
        };
    L_0x0043:
        r0 = 1;
        r3.j = r0;	 Catch:{ all -> 0x0047 }
        goto L_0x0006;
    L_0x0047:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
    L_0x004a:
        r0 = com.baidu.location.f.getServiceContext();	 Catch:{ Throwable -> 0x0057 }
        r1 = "phone_msim";
        r0 = com.baidu.location.d.j.a(r0, r1);	 Catch:{ Throwable -> 0x0057 }
        r3.e = r0;	 Catch:{ Throwable -> 0x0057 }
        goto L_0x0043;
    L_0x0057:
        r0 = move-exception;
        r0 = 0;
        r3.e = r0;	 Catch:{ all -> 0x0047 }
        goto L_0x0043;
    L_0x005c:
        r0 = com.baidu.location.f.getServiceContext();	 Catch:{ Throwable -> 0x0057 }
        r1 = "phone2";
        r0 = com.baidu.location.d.j.a(r0, r1);	 Catch:{ Throwable -> 0x0057 }
        r3.e = r0;	 Catch:{ Throwable -> 0x0057 }
        goto L_0x0043;
    L_0x0069:
        r0 = com.baidu.location.f.getServiceContext();	 Catch:{ Throwable -> 0x0057 }
        r1 = "phone2";
        r0 = com.baidu.location.d.j.a(r0, r1);	 Catch:{ Throwable -> 0x0057 }
        r3.e = r0;	 Catch:{ Throwable -> 0x0057 }
        goto L_0x0043;
    L_0x0076:
        r0 = move-exception;
        goto L_0x003c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.b.b.b():void");
    }

    public synchronized void c() {
        if (this.j) {
            if (!(this.i == null || this.d == null)) {
                this.d.listen(this.i, 0);
            }
            this.i = null;
            this.d = null;
            this.h.clear();
            this.h = null;
            j();
            this.j = false;
        }
    }

    public boolean d() {
        return this.q;
    }

    public int e() {
        int i = 0;
        if (this.d == null) {
            return i;
        }
        try {
            return this.d.getNetworkType();
        } catch (Exception e) {
            return i;
        }
    }

    public a f() {
        if (!((this.f != null && this.f.a() && this.f.b()) || this.d == null)) {
            try {
                k();
            } catch (Exception e) {
            }
        }
        if (this.f.e()) {
            this.g = null;
            this.g = new a(this.f.a, this.f.b, this.f.c, this.f.d, this.f.h, this.f.i);
        }
        if (this.f.d() && this.g != null && this.f.i == 'g') {
            this.f.d = this.g.d;
            this.f.c = this.g.c;
        }
        return this.f;
    }

    public String g() {
        int i = -1;
        try {
            if (this.d != null) {
                i = this.d.getSimState();
            }
        } catch (Exception e) {
        }
        return "&sim=" + i;
    }

    public int h() {
        String subscriberId;
        try {
            subscriberId = ((TelephonyManager) f.getServiceContext().getSystemService("phone")).getSubscriberId();
        } catch (Exception e) {
            subscriberId = null;
        }
        if (subscriberId != null) {
            if (subscriberId.startsWith("46000") || subscriberId.startsWith("46002") || subscriberId.startsWith("46007")) {
                return 1;
            }
            if (subscriberId.startsWith("46001")) {
                return 2;
            }
            if (subscriberId.startsWith("46003")) {
                return 3;
            }
        }
        return 0;
    }
}
