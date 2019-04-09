package com.baidu.location.a;

import android.location.Location;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.baidu.location.Address;
import com.baidu.location.BDLocation;
import com.baidu.location.Poi;
import com.baidu.location.b.e;
import com.baidu.location.b.g;
import com.baidu.location.b.h;
import com.baidu.location.d.j;
import com.baidu.location.f;
import com.iflytek.cloud.SpeechConstant;
import com.mqunar.tools.DateTimeUtils;
import java.util.List;

public class l extends i {
    public static boolean h = false;
    private static l i = null;
    private double A;
    private boolean B;
    private long C;
    private long D;
    private a E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private b K;
    private boolean L;
    private int M;
    private long N;
    private boolean O;
    final int e;
    public b f;
    public final Handler g;
    private boolean j;
    private String k;
    private BDLocation l;
    private BDLocation m;
    private g n;
    private com.baidu.location.b.a o;
    private g p;
    private com.baidu.location.b.a q;
    private boolean r;
    private volatile boolean s;
    private boolean t;
    private long u;
    private long v;
    private Address w;
    private String x;
    private List<Poi> y;
    private double z;

    class a implements Runnable {
        final /* synthetic */ l a;

        public void run() {
            if (this.a.F) {
                this.a.F = false;
                if (!this.a.G) {
                }
            }
        }
    }

    class b implements Runnable {
        private b() {
        }

        public void run() {
            if (l.this.L) {
                l.this.L = false;
            }
            if (l.this.t) {
                l.this.t = false;
                l.this.h(null);
            }
        }
    }

    private l() {
        this.e = 1000;
        this.j = true;
        this.f = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = true;
        this.s = false;
        this.t = false;
        this.u = 0;
        this.v = 0;
        this.w = null;
        this.x = null;
        this.y = null;
        this.B = false;
        this.C = 0;
        this.D = 0;
        this.E = null;
        this.F = false;
        this.G = false;
        this.H = true;
        this.g = new com.baidu.location.a.i.a();
        this.I = false;
        this.J = false;
        this.K = null;
        this.L = false;
        this.M = 0;
        this.N = 0;
        this.O = true;
        this.f = new b();
    }

    private boolean a(com.baidu.location.b.a aVar) {
        this.b = com.baidu.location.b.b.a().f();
        return this.b == aVar ? false : this.b == null || aVar == null || !aVar.a(this.b);
    }

    private boolean a(g gVar) {
        this.a = h.a().o();
        return gVar == this.a ? false : this.a == null || gVar == null || !gVar.c(this.a);
    }

    public static synchronized l c() {
        l lVar;
        synchronized (l.class) {
            if (i == null) {
                i = new l();
            }
            lVar = i;
        }
        return lVar;
    }

    private void c(Message message) {
        boolean z = message.getData().getBoolean("isWaitingLocTag", false);
        if (z) {
            h = true;
        }
        if (z) {
        }
        switch (a.a().d(message)) {
            case 1:
                d(message);
                return;
            case 2:
                g(message);
                return;
            case 3:
                if (e.a().i()) {
                    e(message);
                    return;
                }
                return;
            default:
                throw new IllegalArgumentException(String.format("this type %d is illegal", new Object[]{Integer.valueOf(a.a().d(message))}));
        }
    }

    private void d(Message message) {
        if (e.a().i()) {
            e(message);
            n.a().c();
            return;
        }
        g(message);
        n.a().b();
    }

    private void e(Message message) {
        BDLocation bDLocation = new BDLocation(e.a().f());
        if (j.g.equals(SpeechConstant.PLUS_LOCAL_ALL) || j.h || j.i) {
            float[] fArr = new float[2];
            Location.distanceBetween(this.A, this.z, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
            if (fArr[0] < 100.0f) {
                if (this.w != null) {
                    bDLocation.setAddr(this.w);
                }
                if (this.x != null) {
                    bDLocation.setLocationDescribe(this.x);
                }
                if (this.y != null) {
                    bDLocation.setPoiList(this.y);
                }
            } else {
                this.B = true;
                g(null);
            }
        }
        this.l = bDLocation;
        this.m = null;
        a.a().a(bDLocation);
    }

    private void f(Message message) {
        if (h.a().f()) {
            this.t = true;
            if (this.K == null) {
                this.K = new b();
            }
            if (this.L && this.K != null) {
                this.g.removeCallbacks(this.K);
            }
            this.g.postDelayed(this.K, 3500);
            this.L = true;
            return;
        }
        h(message);
    }

    private void g(Message message) {
        this.M = 0;
        if (this.r) {
            this.M = 1;
            this.D = SystemClock.uptimeMillis();
            if (h.a().j()) {
                f(message);
                return;
            } else {
                h(message);
                return;
            }
        }
        f(message);
        this.D = SystemClock.uptimeMillis();
    }

    private void h(Message message) {
        long j = 0;
        long currentTimeMillis = System.currentTimeMillis() - this.u;
        if (this.s && currentTimeMillis <= 12000) {
            return;
        }
        if (System.currentTimeMillis() - this.u <= 0 || System.currentTimeMillis() - this.u >= 1000) {
            this.s = true;
            this.j = a(this.o);
            if (!(a(this.n) || this.j || this.l == null || this.B)) {
                if (this.m != null && System.currentTimeMillis() - this.v > 30000) {
                    this.l = this.m;
                    this.m = null;
                }
                if (n.a().d()) {
                    this.l.setDirection(n.a().e());
                }
                if (this.l.getLocType() == 62) {
                    currentTimeMillis = System.currentTimeMillis() - this.N;
                    if (currentTimeMillis > 0) {
                        j = currentTimeMillis;
                    }
                }
                if (this.l.getLocType() == 61 || this.l.getLocType() == BDLocation.TypeNetWorkLocation || (this.l.getLocType() == 62 && j < 15000)) {
                    a.a().a(this.l);
                    k();
                    return;
                }
            }
            this.u = System.currentTimeMillis();
            String a = a(null);
            this.J = false;
            if (a == null) {
                this.J = true;
                this.N = System.currentTimeMillis();
                String[] j2 = j();
                long currentTimeMillis2 = System.currentTimeMillis();
                if (currentTimeMillis2 - this.C > DateTimeUtils.ONE_MINUTE) {
                    this.C = currentTimeMillis2;
                }
                String l = h.a().l();
                a = l != null ? l + b() + j2[0] : "" + b() + j2[0];
                if (!(this.b == null || this.b.g() == null)) {
                    a = this.b.g() + a;
                }
                l = com.baidu.location.d.b.a().a(true);
                if (l != null) {
                    a = a + l;
                }
            }
            if (this.k != null) {
                a = a + this.k;
                this.k = null;
            }
            this.f.a(a);
            this.o = this.b;
            this.n = this.a;
            if (this.r) {
                this.r = false;
                if (!h.i() || message == null || a.a().e(message) < 1000) {
                }
            }
            if (this.M > 0) {
                if (this.M == 2) {
                    h.a().f();
                }
                this.M = 0;
                return;
            }
            return;
        }
        if (this.l != null) {
            a.a().a(this.l);
        }
        k();
    }

    private String[] j() {
        int b;
        int i;
        String[] strArr = new String[]{"", "Location failed beacuse we can not get any loc information!"};
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("&apl=");
        int a = j.a(f.getServiceContext());
        if (a == 1) {
            strArr[1] = "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!";
        }
        stringBuffer.append(a);
        String c = j.c(f.getServiceContext());
        if (c.contains("0|0|")) {
            strArr[1] = "Location failed beacuse we can not get any loc information without any location permission!";
        }
        stringBuffer.append(c);
        if (VERSION.SDK_INT >= 23) {
            stringBuffer.append("&loc=");
            b = j.b(f.getServiceContext());
            if (b == 0) {
                strArr[1] = "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!";
                i = 1;
            } else {
                i = 0;
            }
            stringBuffer.append(b);
        } else {
            i = 0;
        }
        if (VERSION.SDK_INT >= 19) {
            stringBuffer.append("&lmd=");
            b = j.b(f.getServiceContext());
            if (b >= 0) {
                stringBuffer.append(b);
            }
        }
        String g = com.baidu.location.b.b.a().g();
        String g2 = h.a().g();
        stringBuffer.append(g2);
        stringBuffer.append(g);
        stringBuffer.append(j.d(f.getServiceContext()));
        if (a == 1) {
            b.a().a(62, 7, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!");
        } else if (c.contains("0|0|")) {
            b.a().a(62, 4, "Location failed beacuse we can not get any loc information without any location permission!");
        } else if (i != 0) {
            b.a().a(62, 5, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!");
        } else if (g == null || g2 == null || !g.equals("&sim=1") || g2.equals("&wifio=1")) {
            b.a().a(62, 9, "Location failed beacuse we can not get any loc information!");
        } else {
            b.a().a(62, 6, "Location failed beacuse we can not get any loc information , you can insert a sim card or open wifi and try again!");
        }
        strArr[0] = stringBuffer.toString();
        return strArr;
    }

    private void k() {
        this.s = false;
        this.G = false;
        this.H = false;
        this.B = false;
        l();
        if (this.O) {
            this.O = false;
        }
    }

    private void l() {
        if (this.l != null) {
            v.a().c();
        }
    }

    public Address a(BDLocation bDLocation) {
        if (j.g.equals(SpeechConstant.PLUS_LOCAL_ALL) || j.h || j.i) {
            float[] fArr = new float[2];
            Location.distanceBetween(this.A, this.z, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
            if (fArr[0] >= 100.0f) {
                this.x = null;
                this.y = null;
                this.B = true;
                g(null);
            } else if (this.w != null) {
                return this.w;
            }
        }
        return null;
    }

    public void a() {
        if (this.E != null && this.F) {
            this.F = false;
            this.g.removeCallbacks(this.E);
        }
        if (e.a().i()) {
            BDLocation bDLocation = new BDLocation(e.a().f());
            if (j.g.equals(SpeechConstant.PLUS_LOCAL_ALL) || j.h || j.i) {
                float[] fArr = new float[2];
                Location.distanceBetween(this.A, this.z, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
                if (fArr[0] < 100.0f) {
                    if (this.w != null) {
                        bDLocation.setAddr(this.w);
                    }
                    if (this.x != null) {
                        bDLocation.setLocationDescribe(this.x);
                    }
                    if (this.y != null) {
                        bDLocation.setPoiList(this.y);
                    }
                }
            }
            a.a().a(bDLocation);
            k();
        } else if (this.G) {
            k();
        } else {
            if (this.j || this.l == null) {
                BDLocation bDLocation2 = new BDLocation();
                bDLocation2.setLocType(63);
                this.l = null;
                a.a().a(bDLocation2);
            } else {
                a.a().a(this.l);
            }
            this.m = null;
            k();
        }
    }

    public void a(Message message) {
        if (this.E != null && this.F) {
            this.F = false;
            this.g.removeCallbacks(this.E);
        }
        BDLocation bDLocation = (BDLocation) message.obj;
        if (bDLocation != null && bDLocation.getLocType() == BDLocation.TypeServerError && this.J) {
            bDLocation.setLocType(62);
        }
        b(bDLocation);
    }

    public void b(Message message) {
        if (this.I) {
            c(message);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:85:0x01bd  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01b2  */
    public void b(com.baidu.location.BDLocation r12) {
        /*
        r11 = this;
        r6 = 0;
        r3 = 2;
        r0 = 1;
        r5 = 161; // 0xa1 float:2.26E-43 double:7.95E-322;
        r9 = 0;
        r1 = new com.baidu.location.BDLocation;
        r1.<init>(r12);
        r1 = r12.hasAddr();
        if (r1 == 0) goto L_0x0023;
    L_0x0011:
        r1 = r12.getAddress();
        r11.w = r1;
        r1 = r12.getLongitude();
        r11.z = r1;
        r1 = r12.getLatitude();
        r11.A = r1;
    L_0x0023:
        r1 = r12.getLocationDescribe();
        if (r1 == 0) goto L_0x003b;
    L_0x0029:
        r1 = r12.getLocationDescribe();
        r11.x = r1;
        r1 = r12.getLongitude();
        r11.z = r1;
        r1 = r12.getLatitude();
        r11.A = r1;
    L_0x003b:
        r1 = r12.getPoiList();
        if (r1 == 0) goto L_0x0053;
    L_0x0041:
        r1 = r12.getPoiList();
        r11.y = r1;
        r1 = r12.getLongitude();
        r11.z = r1;
        r1 = r12.getLatitude();
        r11.A = r1;
    L_0x0053:
        r1 = com.baidu.location.b.e.a();
        r1 = r1.i();
        if (r1 == 0) goto L_0x0211;
    L_0x005d:
        r1 = r0;
    L_0x005e:
        if (r1 == 0) goto L_0x00be;
    L_0x0060:
        r0 = com.baidu.location.b.e.a();
        r0 = r0.f();
        r10 = new com.baidu.location.BDLocation;
        r10.<init>(r0);
        r0 = com.baidu.location.d.j.g;
        r1 = "all";
        r0 = r0.equals(r1);
        if (r0 != 0) goto L_0x007f;
    L_0x0077:
        r0 = com.baidu.location.d.j.h;
        if (r0 != 0) goto L_0x007f;
    L_0x007b:
        r0 = com.baidu.location.d.j.i;
        if (r0 == 0) goto L_0x00b3;
    L_0x007f:
        r8 = new float[r3];
        r0 = r11.A;
        r2 = r11.z;
        r4 = r10.getLatitude();
        r6 = r10.getLongitude();
        android.location.Location.distanceBetween(r0, r2, r4, r6, r8);
        r0 = r8[r9];
        r1 = 1120403456; // 0x42c80000 float:100.0 double:5.53552857E-315;
        r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
        if (r0 >= 0) goto L_0x00b3;
    L_0x0098:
        r0 = r11.w;
        if (r0 == 0) goto L_0x00a1;
    L_0x009c:
        r0 = r11.w;
        r10.setAddr(r0);
    L_0x00a1:
        r0 = r11.x;
        if (r0 == 0) goto L_0x00aa;
    L_0x00a5:
        r0 = r11.x;
        r10.setLocationDescribe(r0);
    L_0x00aa:
        r0 = r11.y;
        if (r0 == 0) goto L_0x00b3;
    L_0x00ae:
        r0 = r11.y;
        r10.setPoiList(r0);
    L_0x00b3:
        r0 = com.baidu.location.a.a.a();
        r0.a(r10);
        r11.k();
    L_0x00bd:
        return;
    L_0x00be:
        r1 = r11.G;
        if (r1 == 0) goto L_0x010b;
    L_0x00c2:
        r8 = new float[r3];
        r0 = r11.l;
        if (r0 == 0) goto L_0x00df;
    L_0x00c8:
        r0 = r11.l;
        r0 = r0.getLatitude();
        r2 = r11.l;
        r2 = r2.getLongitude();
        r4 = r12.getLatitude();
        r6 = r12.getLongitude();
        android.location.Location.distanceBetween(r0, r2, r4, r6, r8);
    L_0x00df:
        r0 = r8[r9];
        r1 = 1092616192; // 0x41200000 float:10.0 double:5.398241246E-315;
        r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
        if (r0 <= 0) goto L_0x00fa;
    L_0x00e7:
        r11.l = r12;
        r0 = r11.H;
        if (r0 != 0) goto L_0x00f6;
    L_0x00ed:
        r11.H = r9;
        r0 = com.baidu.location.a.a.a();
        r0.a(r12);
    L_0x00f6:
        r11.k();
        goto L_0x00bd;
    L_0x00fa:
        r0 = r12.getUserIndoorState();
        r1 = -1;
        if (r0 <= r1) goto L_0x00f6;
    L_0x0101:
        r11.l = r12;
        r0 = com.baidu.location.a.a.a();
        r0.a(r12);
        goto L_0x00f6;
    L_0x010b:
        r1 = r12.getLocType();
        r2 = 167; // 0xa7 float:2.34E-43 double:8.25E-322;
        if (r1 != r2) goto L_0x0197;
    L_0x0113:
        r1 = com.baidu.location.a.b.a();
        r2 = 167; // 0xa7 float:2.34E-43 double:8.25E-322;
        r3 = 8;
        r4 = "NetWork location failed because baidu location service can not caculate the location!";
        r1.a(r2, r3, r4);
    L_0x0120:
        r11.m = r6;
        r1 = r12.getLocType();
        if (r1 != r5) goto L_0x020c;
    L_0x0128:
        r1 = "cl";
        r2 = r12.getNetworkLocationType();
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x020c;
    L_0x0134:
        r1 = r11.l;
        if (r1 == 0) goto L_0x020c;
    L_0x0138:
        r1 = r11.l;
        r1 = r1.getLocType();
        if (r1 != r5) goto L_0x020c;
    L_0x0140:
        r1 = "wf";
        r2 = r11.l;
        r2 = r2.getNetworkLocationType();
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x020c;
    L_0x014e:
        r1 = java.lang.System.currentTimeMillis();
        r3 = r11.v;
        r1 = r1 - r3;
        r3 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r1 >= 0) goto L_0x020c;
    L_0x015b:
        r11.m = r12;
    L_0x015d:
        if (r0 == 0) goto L_0x01f6;
    L_0x015f:
        r1 = com.baidu.location.a.a.a();
        r2 = r11.l;
        r1.a(r2);
    L_0x0168:
        r1 = com.baidu.location.d.j.a(r12);
        if (r1 == 0) goto L_0x0205;
    L_0x016e:
        if (r0 != 0) goto L_0x0172;
    L_0x0170:
        r11.l = r12;
    L_0x0172:
        r0 = c;
        r1 = "ssid\":\"";
        r2 = "\"";
        r0 = com.baidu.location.d.j.a(r0, r1, r2);
        r1 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r0 == r1) goto L_0x0209;
    L_0x0180:
        r1 = r11.n;
        if (r1 == 0) goto L_0x0209;
    L_0x0184:
        r1 = r11.n;
        r0 = r1.c(r0);
        r11.k = r0;
    L_0x018c:
        r0 = com.baidu.location.b.h.i();
        if (r0 == 0) goto L_0x0192;
    L_0x0192:
        r11.k();
        goto L_0x00bd;
    L_0x0197:
        r1 = r12.getLocType();
        if (r1 != r5) goto L_0x0120;
    L_0x019d:
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 19;
        if (r1 < r2) goto L_0x020f;
    L_0x01a3:
        r1 = com.baidu.location.f.getServiceContext();
        r1 = com.baidu.location.d.j.b(r1);
        if (r1 == 0) goto L_0x01af;
    L_0x01ad:
        if (r1 != r3) goto L_0x020f;
    L_0x01af:
        r1 = r0;
    L_0x01b0:
        if (r1 == 0) goto L_0x01bd;
    L_0x01b2:
        r1 = com.baidu.location.a.b.a();
        r2 = "NetWork location successful, open gps will be better!";
        r1.a(r5, r0, r2);
        goto L_0x0120;
    L_0x01bd:
        r1 = r12.getRadius();
        r2 = 1120403456; // 0x42c80000 float:100.0 double:5.53552857E-315;
        r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1));
        if (r1 < 0) goto L_0x0120;
    L_0x01c7:
        r1 = r12.getNetworkLocationType();
        if (r1 == 0) goto L_0x0120;
    L_0x01cd:
        r1 = r12.getNetworkLocationType();
        r2 = "cl";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x0120;
    L_0x01d9:
        r1 = com.baidu.location.b.h.a();
        r1 = r1.g();
        if (r1 == 0) goto L_0x0120;
    L_0x01e3:
        r2 = "&wifio=1";
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x0120;
    L_0x01eb:
        r1 = com.baidu.location.a.b.a();
        r2 = "NetWork location successful, open wifi will be better!";
        r1.a(r5, r3, r2);
        goto L_0x0120;
    L_0x01f6:
        r1 = com.baidu.location.a.a.a();
        r1.a(r12);
        r1 = java.lang.System.currentTimeMillis();
        r11.v = r1;
        goto L_0x0168;
    L_0x0205:
        r11.l = r6;
        goto L_0x0172;
    L_0x0209:
        r11.k = r6;
        goto L_0x018c;
    L_0x020c:
        r0 = r9;
        goto L_0x015d;
    L_0x020f:
        r1 = r9;
        goto L_0x01b0;
    L_0x0211:
        r1 = r9;
        goto L_0x005e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.a.l.b(com.baidu.location.BDLocation):void");
    }

    public void c(BDLocation bDLocation) {
        this.l = new BDLocation(bDLocation);
    }

    public void d() {
        this.r = true;
        this.s = false;
        this.I = true;
    }

    public void e() {
        this.s = false;
        this.t = false;
        this.G = false;
        this.H = true;
        i();
        this.I = false;
    }

    public String f() {
        return this.x;
    }

    public List<Poi> g() {
        return this.y;
    }

    public void h() {
        if (this.t) {
            h(null);
            this.t = false;
        }
    }

    public void i() {
        this.l = null;
    }
}
