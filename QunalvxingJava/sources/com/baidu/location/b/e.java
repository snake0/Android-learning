package com.baidu.location.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.location.GnssStatus;
import android.location.GnssStatus.Callback;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.http.Headers;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.baidu.location.BDLocation;
import com.baidu.location.Jni;
import com.baidu.location.a.g;
import com.baidu.location.a.t;
import com.baidu.location.a.v;
import com.baidu.location.d.j;
import com.baidu.location.f;
import com.mqunar.tools.DateTimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.HttpStatus;

public class e {
    private static double C = 100.0d;
    private static String D = "";
    private static e c = null;
    private static int m = 0;
    private static int n = 0;
    private static String u = null;
    private int A;
    private int B;
    private long E = 0;
    private ArrayList<ArrayList<Float>> F = new ArrayList();
    private final long a = 1000;
    private final long b = 9000;
    private Context d;
    private LocationManager e = null;
    private Location f;
    private c g = null;
    private d h = null;
    private GpsStatus i;
    private a j;
    private boolean k = false;
    private b l = null;
    private long o = 0;
    private boolean p = false;
    private boolean q = false;
    private String r = null;
    private boolean s = false;
    private long t = 0;
    private Handler v = null;
    private final int w = 1;
    private final int x = 2;
    private final int y = 3;
    private final int z = 4;

    @TargetApi(24)
    class a extends Callback {
        private a() {
        }

        /* synthetic */ a(e eVar, f fVar) {
            this();
        }

        public void onFirstFix(int i) {
        }

        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            int i = 0;
            if (e.this.e != null) {
                int satelliteCount = gnssStatus.getSatelliteCount();
                e.this.F.clear();
                int i2 = 0;
                for (int i3 = 0; i3 < satelliteCount; i3++) {
                    ArrayList arrayList = new ArrayList();
                    if (gnssStatus.usedInFix(i3)) {
                        i2++;
                        if (gnssStatus.getConstellationType(i3) == 1) {
                            i++;
                            arrayList.add(Float.valueOf(gnssStatus.getCn0DbHz(i3)));
                            arrayList.add(Float.valueOf(0.0f));
                            arrayList.add(Float.valueOf(gnssStatus.getAzimuthDegrees(i3)));
                            arrayList.add(Float.valueOf(gnssStatus.getElevationDegrees(i3)));
                            arrayList.add(Float.valueOf(1.0f));
                        }
                        e.this.F.add(arrayList);
                    }
                }
                e.m = i2;
                e.n = i;
            }
        }

        public void onStarted() {
        }

        public void onStopped() {
            e.this.d(null);
            e.this.b(false);
            e.m = 0;
            e.n = 0;
        }
    }

    class b implements Listener {
        long a;
        private long c;
        private final int d;
        private boolean e;
        private List<String> f;
        private String g;
        private String h;
        private String i;
        private long j;

        private b() {
            this.a = 0;
            this.c = 0;
            this.d = HttpStatus.SC_BAD_REQUEST;
            this.e = false;
            this.f = new ArrayList();
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = 0;
        }

        /* synthetic */ b(e eVar, f fVar) {
            this();
        }

        public void onGpsStatusChanged(int i) {
            int i2 = 0;
            if (e.this.e != null) {
                switch (i) {
                    case 2:
                        e.this.d(null);
                        e.this.b(false);
                        e.m = 0;
                        e.n = 0;
                        return;
                    case 4:
                        if (e.this.q) {
                            try {
                                if (e.this.i == null) {
                                    e.this.i = e.this.e.getGpsStatus(null);
                                } else {
                                    e.this.e.getGpsStatus(e.this.i);
                                }
                                e.this.A = 0;
                                e.this.B = 0;
                                double d = 0.0d;
                                e.this.F.clear();
                                int i3 = 0;
                                for (GpsSatellite gpsSatellite : e.this.i.getSatellites()) {
                                    ArrayList arrayList = new ArrayList();
                                    if (gpsSatellite.usedInFix()) {
                                        i3++;
                                        if (gpsSatellite.getPrn() <= 65) {
                                            i2++;
                                            d += (double) gpsSatellite.getSnr();
                                            arrayList.add(Float.valueOf(0.0f));
                                            arrayList.add(Float.valueOf(gpsSatellite.getSnr()));
                                            arrayList.add(Float.valueOf(gpsSatellite.getAzimuth()));
                                            arrayList.add(Float.valueOf(gpsSatellite.getElevation()));
                                            arrayList.add(Float.valueOf(1.0f));
                                        }
                                        e.this.F.add(arrayList);
                                        if (gpsSatellite.getSnr() >= ((float) j.G)) {
                                            e.this.B = e.this.B + 1;
                                        }
                                    }
                                }
                                if (i2 > 0) {
                                    e.n = i2;
                                    e.C = d / ((double) i2);
                                }
                                if (i3 > 0) {
                                    this.j = System.currentTimeMillis();
                                    e.m = i3;
                                    return;
                                } else if (System.currentTimeMillis() - this.j > 100) {
                                    this.j = System.currentTimeMillis();
                                    e.m = i3;
                                    return;
                                } else {
                                    return;
                                }
                            } catch (Exception e) {
                                return;
                            }
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    class c implements LocationListener {
        private c() {
        }

        /* synthetic */ c(e eVar, f fVar) {
            this();
        }

        public void onLocationChanged(Location location) {
            e.this.t = System.currentTimeMillis();
            e.this.b(true);
            e.this.d(location);
            e.this.p = false;
        }

        public void onProviderDisabled(String str) {
            e.this.d(null);
            e.this.b(false);
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
            switch (i) {
                case 0:
                    e.this.d(null);
                    e.this.b(false);
                    return;
                case 1:
                    e.this.o = System.currentTimeMillis();
                    e.this.p = true;
                    e.this.b(false);
                    return;
                case 2:
                    e.this.p = false;
                    return;
                default:
                    return;
            }
        }
    }

    class d implements LocationListener {
        private long b;

        private d() {
            this.b = 0;
        }

        /* synthetic */ d(e eVar, f fVar) {
            this();
        }

        public void onLocationChanged(Location location) {
            if (!e.this.q && location != null && location.getProvider() == "gps" && System.currentTimeMillis() - this.b >= 10000 && v.a(location, false)) {
                this.b = System.currentTimeMillis();
                e.this.v.sendMessage(e.this.v.obtainMessage(4, location));
            }
        }

        public void onProviderDisabled(String str) {
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    private e() {
        if (VERSION.SDK_INT >= 24) {
            try {
                Class.forName("android.location.GnssStatus");
                this.k = true;
            } catch (ClassNotFoundException e) {
                this.k = false;
            }
        }
    }

    public static synchronized e a() {
        e eVar;
        synchronized (e.class) {
            if (c == null) {
                c = new e();
            }
            eVar = c;
        }
        return eVar;
    }

    public static String a(Location location) {
        float f = -1.0f;
        if (location == null) {
            return null;
        }
        float speed = (float) (((double) location.getSpeed()) * 3.6d);
        if (!location.hasSpeed()) {
            speed = -1.0f;
        }
        int accuracy = (int) (location.hasAccuracy() ? location.getAccuracy() : -1.0f);
        double altitude = location.hasAltitude() ? location.getAltitude() : 555.0d;
        if (location.hasBearing()) {
            f = location.getBearing();
        }
        return String.format(Locale.CHINA, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d&ll_sn=%d|%d&ll_snr=%.1f", new Object[]{Double.valueOf(location.getLongitude()), Double.valueOf(location.getLatitude()), Float.valueOf(speed), Float.valueOf(f), Integer.valueOf(accuracy), Integer.valueOf(m), Double.valueOf(altitude), Long.valueOf(location.getTime() / 1000), Integer.valueOf(m), Integer.valueOf(n), Double.valueOf(C)});
    }

    private void a(double d, double d2, float f) {
        int i = 0;
        if (d >= 73.146973d && d <= 135.252686d && d2 <= 54.258807d && d2 >= 14.604847d && f <= 18.0f) {
            int i2 = (int) ((d - j.s) * 1000.0d);
            int i3 = (int) ((j.t - d2) * 1000.0d);
            if (i2 <= 0 || i2 >= 50 || i3 <= 0 || i3 >= 50) {
                String.format(Locale.CHINA, "&ll=%.5f|%.5f", new Object[]{Double.valueOf(d), Double.valueOf(d2)}) + "&im=" + com.baidu.location.d.b.a().b();
                j.q = d;
                j.r = d2;
            } else {
                i2 += i3 * 50;
                i3 = i2 >> 2;
                i2 &= 3;
                if (j.w) {
                    i = (j.v[i3] >> (i2 * 2)) & 3;
                }
            }
        }
        if (j.u != i) {
            j.u = i;
        }
    }

    private void a(String str, Location location) {
        if (location != null) {
            String str2 = str + com.baidu.location.a.a.a().c();
            boolean e = h.a().e();
            t.a(new a(b.a().f()));
            t.a(System.currentTimeMillis());
            t.a(new Location(location));
            t.a(str2);
            if (!e) {
                v.a(t.c(), null, t.d(), str2);
            }
        }
    }

    public static boolean a(Location location, Location location2, boolean z) {
        if (location == location2) {
            return false;
        }
        if (location == null || location2 == null) {
            return true;
        }
        float speed = location2.getSpeed();
        if (z && ((j.u == 3 || !com.baidu.location.d.d.a().a(location2.getLongitude(), location2.getLatitude())) && speed < 5.0f)) {
            return true;
        }
        float distanceTo = location2.distanceTo(location);
        return speed > j.K ? distanceTo > j.M : speed > j.J ? distanceTo > j.L : distanceTo > 5.0f;
    }

    public static String b(Location location) {
        String a = a(location);
        return a != null ? a + "&g_tp=0" : a;
    }

    private void b(boolean z) {
        this.s = z;
        if (!(z && i())) {
        }
    }

    public static String c(Location location) {
        String a = a(location);
        return a != null ? a + u : a;
    }

    private void d(Location location) {
        this.v.sendMessage(this.v.obtainMessage(1, location));
    }

    private void e(Location location) {
        if (location != null) {
            int i = m;
            if (i == 0) {
                try {
                    i = location.getExtras().getInt("satellites");
                } catch (Exception e) {
                }
            }
            if (i != 0 || j.l) {
                Location location2;
                this.f = location;
                i = m;
                if (this.f == null) {
                    this.r = null;
                    location2 = null;
                } else {
                    Location location3 = new Location(this.f);
                    this.f.setTime(System.currentTimeMillis());
                    float speed = (float) (((double) this.f.getSpeed()) * 3.6d);
                    if (!this.f.hasSpeed()) {
                        speed = -1.0f;
                    }
                    if (i == 0) {
                        try {
                            i = this.f.getExtras().getInt("satellites");
                        } catch (Exception e2) {
                        }
                    }
                    this.r = String.format(Locale.CHINA, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d", new Object[]{Double.valueOf(this.f.getLongitude()), Double.valueOf(this.f.getLatitude()), Float.valueOf(speed), Float.valueOf(this.f.getBearing()), Integer.valueOf(i), Long.valueOf(r1)});
                    a(this.f.getLongitude(), this.f.getLatitude(), speed);
                    location2 = location3;
                }
                try {
                    g.a().a(this.f);
                } catch (Exception e3) {
                }
                if (location2 != null) {
                    com.baidu.location.a.d.a().a(location2);
                }
                if (i() && this.f != null) {
                    D = j();
                    com.baidu.location.a.a.a().a(f());
                    if (m > 2 && v.a(this.f, true)) {
                        boolean e4 = h.a().e();
                        t.a(new a(b.a().f()));
                        t.a(System.currentTimeMillis());
                        t.a(new Location(this.f));
                        t.a(com.baidu.location.a.a.a().c());
                        if (!e4) {
                            v.a(t.c(), null, t.d(), com.baidu.location.a.a.a().c());
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        this.f = null;
    }

    private String j() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.F.size() > 32 || this.F.size() == 0) {
            return stringBuilder.toString();
        }
        Iterator it = this.F.iterator();
        int i = 1;
        while (it.hasNext()) {
            if (((ArrayList) it.next()).size() == 5) {
                if (i != 0) {
                    i = 0;
                } else {
                    stringBuilder.append("|");
                }
                stringBuilder.append(String.format("%.1f;", new Object[]{r0.get(0)}));
                stringBuilder.append(String.format("%.1f;", new Object[]{r0.get(2)}));
                stringBuilder.append(String.format("%.0f;", new Object[]{r0.get(2)}));
                stringBuilder.append(String.format("%.0f;", new Object[]{r0.get(3)}));
                stringBuilder.append(String.format("%.0f", new Object[]{r0.get(4)}));
            }
        }
        return stringBuilder.toString();
    }

    public void a(boolean z) {
        if (z) {
            c();
        } else {
            d();
        }
    }

    public synchronized void b() {
        if (f.isServing) {
            this.d = f.getServiceContext();
            try {
                this.e = (LocationManager) this.d.getSystemService(Headers.LOCATION);
                if (this.k) {
                    this.j = new a(this, null);
                    this.e.registerGnssStatusCallback(this.j);
                } else {
                    this.l = new b(this, null);
                    this.e.addGpsStatusListener(this.l);
                }
                this.h = new d(this, null);
                this.e.requestLocationUpdates("passive", 9000, 0.0f, this.h);
            } catch (Exception e) {
            }
            this.v = new f(this);
        }
    }

    public void c() {
        Log.d(com.baidu.location.d.a.a, "start gps...");
        if (!this.q) {
            try {
                this.g = new c(this, null);
                try {
                    this.e.sendExtraCommand("gps", "force_xtra_injection", new Bundle());
                } catch (Exception e) {
                }
                this.e.requestLocationUpdates("gps", 1000, 0.0f, this.g);
                this.E = System.currentTimeMillis();
                this.q = true;
            } catch (Exception e2) {
            }
        }
    }

    public void d() {
        if (this.q) {
            if (this.e != null) {
                try {
                    if (this.g != null) {
                        this.e.removeUpdates(this.g);
                    }
                } catch (Exception e) {
                }
            }
            j.d = 0;
            j.u = 0;
            this.g = null;
            this.q = false;
            b(false);
        }
    }

    public synchronized void e() {
        d();
        if (this.e != null) {
            try {
                if (this.l != null) {
                    this.e.removeGpsStatusListener(this.l);
                }
                if (this.k && this.j != null) {
                    this.e.unregisterGnssStatusCallback(this.j);
                }
                this.e.removeUpdates(this.h);
            } catch (Exception e) {
            }
            this.l = null;
            this.e = null;
        }
    }

    public String f() {
        if (this.f == null) {
            return null;
        }
        double[] dArr;
        int i;
        String str = "{\"result\":{\"time\":\"" + j.a() + "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":" + "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\"," + "\"s\":\"%f\",\"n\":\"%d\"";
        int accuracy = (int) (this.f.hasAccuracy() ? this.f.getAccuracy() : 10.0f);
        float speed = (float) (((double) this.f.getSpeed()) * 3.6d);
        if (!this.f.hasSpeed()) {
            speed = -1.0f;
        }
        double[] dArr2 = new double[2];
        if (com.baidu.location.d.d.a().a(this.f.getLongitude(), this.f.getLatitude())) {
            dArr2 = Jni.coorEncrypt(this.f.getLongitude(), this.f.getLatitude(), BDLocation.BDLOCATION_WGS84_TO_GCJ02);
            if (dArr2[0] > 0.0d || dArr2[1] > 0.0d) {
                dArr = dArr2;
                i = 1;
            } else {
                dArr2[0] = this.f.getLongitude();
                dArr2[1] = this.f.getLatitude();
                dArr = dArr2;
                i = 1;
            }
        } else {
            dArr2[0] = this.f.getLongitude();
            dArr2[1] = this.f.getLatitude();
            dArr = dArr2;
            i = 0;
        }
        String format = String.format(Locale.CHINA, str, new Object[]{Double.valueOf(dArr[0]), Double.valueOf(dArr[1]), Integer.valueOf(accuracy), Float.valueOf(this.f.getBearing()), Float.valueOf(speed), Integer.valueOf(m)});
        if (i == 0) {
            format = format + ",\"in_cn\":\"0\"";
        }
        if (!this.f.hasAltitude()) {
            return format + "}}";
        }
        return format + String.format(Locale.CHINA, ",\"h\":%.2f}}", new Object[]{Double.valueOf(this.f.getAltitude())});
    }

    public Location g() {
        return (this.f != null && Math.abs(System.currentTimeMillis() - this.f.getTime()) <= DateTimeUtils.ONE_MINUTE) ? this.f : null;
    }

    public boolean h() {
        try {
            return (this.f == null || this.f.getLatitude() == 0.0d || this.f.getLongitude() == 0.0d || (m <= 2 && this.f.getExtras().getInt("satellites", 3) <= 2)) ? false : true;
        } catch (Exception e) {
            return (this.f == null || this.f.getLatitude() == 0.0d || this.f.getLongitude() == 0.0d) ? false : true;
        }
    }

    public boolean i() {
        if (!h() || System.currentTimeMillis() - this.t > 10000) {
            return false;
        }
        return (!this.p || System.currentTimeMillis() - this.o >= 3000) ? this.s : true;
    }
}
