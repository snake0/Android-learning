package com.baidu.location;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.baidu.location.a.c;
import com.baidu.location.a.j;
import com.baidu.location.a.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpStatus;

public final class LocationClient implements com.baidu.location.a.c.a {
    public static final int CONNECT_HOT_SPOT_FALSE = 0;
    public static final int CONNECT_HOT_SPOT_TRUE = 1;
    public static final int CONNECT_HOT_SPOT_UNKNOWN = -1;
    public static final int LOC_DIAGNOSTIC_TYPE_BETTER_OPEN_GPS = 1;
    public static final int LOC_DIAGNOSTIC_TYPE_BETTER_OPEN_WIFI = 2;
    public static final int LOC_DIAGNOSTIC_TYPE_FAIL_UNKNOWN = 9;
    public static final int LOC_DIAGNOSTIC_TYPE_NEED_CHECK_LOC_PERMISSION = 4;
    public static final int LOC_DIAGNOSTIC_TYPE_NEED_CHECK_NET = 3;
    public static final int LOC_DIAGNOSTIC_TYPE_NEED_CLOSE_FLYMODE = 7;
    public static final int LOC_DIAGNOSTIC_TYPE_NEED_INSERT_SIMCARD_OR_OPEN_WIFI = 6;
    public static final int LOC_DIAGNOSTIC_TYPE_NEED_OPEN_PHONE_LOC_SWITCH = 5;
    public static final int LOC_DIAGNOSTIC_TYPE_SERVER_FAIL = 8;
    private Boolean A = Boolean.valueOf(true);
    private boolean B;
    private c C = null;
    private boolean D = false;
    private boolean E = false;
    private boolean F = false;
    private ServiceConnection G = new b(this);
    private long a = 0;
    private String b = null;
    private LocationClientOption c = new LocationClientOption();
    private LocationClientOption d = new LocationClientOption();
    private boolean e = false;
    private Context f = null;
    private Messenger g = null;
    private a h;
    private final Messenger i;
    private ArrayList<BDLocationListener> j = null;
    private ArrayList<BDAbstractLocationListener> k = null;
    private BDLocation l = null;
    private boolean m = false;
    private boolean n = false;
    private boolean o = false;
    private b p = null;
    private boolean q = false;
    private final Object r = new Object();
    private long s = 0;
    private long t = 0;
    private String u = null;
    private String v;
    private boolean w = false;
    private boolean x = true;
    private Boolean y = Boolean.valueOf(false);
    private Boolean z = Boolean.valueOf(false);

    class a extends Handler {
        private final WeakReference<LocationClient> a;

        a(Looper looper, LocationClient locationClient) {
            super(looper);
            this.a = new WeakReference(locationClient);
        }

        public void handleMessage(Message message) {
            LocationClient locationClient = (LocationClient) this.a.get();
            if (locationClient != null) {
                Bundle data;
                int i;
                switch (message.what) {
                    case 1:
                        locationClient.a();
                        return;
                    case 2:
                        locationClient.b();
                        return;
                    case 3:
                        locationClient.a(message);
                        return;
                    case 4:
                        locationClient.d();
                        return;
                    case 5:
                        locationClient.b(message);
                        return;
                    case 6:
                        locationClient.e(message);
                        return;
                    case 21:
                        data = message.getData();
                        data.setClassLoader(BDLocation.class.getClassLoader());
                        BDLocation bDLocation = (BDLocation) data.getParcelable("locStr");
                        if (locationClient.E || !locationClient.D || bDLocation.getLocType() != 66) {
                            if (locationClient.E || !locationClient.D) {
                                if (!locationClient.E) {
                                    locationClient.E = true;
                                }
                                locationClient.a(message, 21);
                                return;
                            }
                            locationClient.E = true;
                            return;
                        }
                        return;
                    case 54:
                        if (locationClient.c.location_change_notify) {
                            locationClient.q = true;
                            return;
                        }
                        return;
                    case 55:
                        if (locationClient.c.location_change_notify) {
                            locationClient.q = false;
                            return;
                        }
                        return;
                    case HttpStatus.SC_SEE_OTHER /*303*/:
                        try {
                            data = message.getData();
                            i = data.getInt("loctype");
                            int i2 = data.getInt("diagtype");
                            byte[] byteArray = data.getByteArray("diagmessage");
                            if (i > 0 && i2 > 0 && byteArray != null && locationClient.k != null) {
                                Iterator it = locationClient.k.iterator();
                                while (it.hasNext()) {
                                    ((BDAbstractLocationListener) it.next()).onLocDiagnosticMessage(i, i2, new String(byteArray, "UTF-8"));
                                }
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            return;
                        }
                    case HttpStatus.SC_NOT_ACCEPTABLE /*406*/:
                        try {
                            Bundle data2 = message.getData();
                            byte[] byteArray2 = data2.getByteArray("mac");
                            String str = null;
                            if (byteArray2 != null) {
                                str = new String(byteArray2, "UTF-8");
                            }
                            i = data2.getInt("hotspot", -1);
                            if (locationClient.k != null) {
                                Iterator it2 = locationClient.k.iterator();
                                while (it2.hasNext()) {
                                    ((BDAbstractLocationListener) it2.next()).onConnectHotSpotMessage(str, i);
                                }
                                return;
                            }
                            return;
                        } catch (Exception e2) {
                            return;
                        }
                    case 701:
                        locationClient.a((BDLocation) message.obj);
                        return;
                    case 703:
                        try {
                            data = message.getData();
                            i = data.getInt("id", 0);
                            if (i > 0) {
                                locationClient.a(i, (Notification) data.getParcelable("notification"));
                                return;
                            }
                            return;
                        } catch (Exception e3) {
                            return;
                        }
                    case 704:
                        try {
                            locationClient.a(message.getData().getBoolean("removenotify"));
                            return;
                        } catch (Exception e4) {
                            return;
                        }
                    case 1300:
                        locationClient.c(message);
                        return;
                    case 1400:
                        locationClient.d(message);
                        return;
                    default:
                        super.handleMessage(message);
                        return;
                }
            }
        }
    }

    class b implements Runnable {
        private b() {
        }

        /* synthetic */ b(LocationClient locationClient, b bVar) {
            this();
        }

        /* JADX WARNING: Missing block: B:32:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:33:?, code skipped:
            return;
     */
        public void run() {
            /*
            r5 = this;
            r3 = 1;
            r0 = com.baidu.location.LocationClient.this;
            r1 = r0.r;
            monitor-enter(r1);
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r2 = 0;
            r0.o = r2;	 Catch:{ all -> 0x004a }
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.g;	 Catch:{ all -> 0x004a }
            if (r0 == 0) goto L_0x001e;
        L_0x0016:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.i;	 Catch:{ all -> 0x004a }
            if (r0 != 0) goto L_0x0020;
        L_0x001e:
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
        L_0x001f:
            return;
        L_0x0020:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.j;	 Catch:{ all -> 0x004a }
            if (r0 == 0) goto L_0x0034;
        L_0x0028:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.j;	 Catch:{ all -> 0x004a }
            r0 = r0.size();	 Catch:{ all -> 0x004a }
            if (r0 >= r3) goto L_0x004d;
        L_0x0034:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.k;	 Catch:{ all -> 0x004a }
            if (r0 == 0) goto L_0x0048;
        L_0x003c:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.k;	 Catch:{ all -> 0x004a }
            r0 = r0.size();	 Catch:{ all -> 0x004a }
            if (r0 >= r3) goto L_0x004d;
        L_0x0048:
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
            goto L_0x001f;
        L_0x004a:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
            throw r0;
        L_0x004d:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.n;	 Catch:{ all -> 0x004a }
            if (r0 == 0) goto L_0x0083;
        L_0x0055:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.p;	 Catch:{ all -> 0x004a }
            if (r0 != 0) goto L_0x0069;
        L_0x005d:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r2 = new com.baidu.location.LocationClient$b;	 Catch:{ all -> 0x004a }
            r3 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r2.<init>();	 Catch:{ all -> 0x004a }
            r0.p = r2;	 Catch:{ all -> 0x004a }
        L_0x0069:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.h;	 Catch:{ all -> 0x004a }
            r2 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r2 = r2.p;	 Catch:{ all -> 0x004a }
            r3 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r3 = r3.c;	 Catch:{ all -> 0x004a }
            r3 = r3.scanSpan;	 Catch:{ all -> 0x004a }
            r3 = (long) r3;	 Catch:{ all -> 0x004a }
            r0.postDelayed(r2, r3);	 Catch:{ all -> 0x004a }
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
            goto L_0x001f;
        L_0x0083:
            r0 = com.baidu.location.LocationClient.this;	 Catch:{ all -> 0x004a }
            r0 = r0.h;	 Catch:{ all -> 0x004a }
            r2 = 4;
            r0 = r0.obtainMessage(r2);	 Catch:{ all -> 0x004a }
            r0.sendToTarget();	 Catch:{ all -> 0x004a }
            monitor-exit(r1);	 Catch:{ all -> 0x004a }
            goto L_0x001f;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.LocationClient$b.run():void");
        }
    }

    public LocationClient(Context context) {
        this.f = context;
        this.c = new LocationClientOption();
        this.d = new LocationClientOption();
        this.h = new a(Looper.getMainLooper(), this);
        this.i = new Messenger(this.h);
    }

    public LocationClient(Context context, LocationClientOption locationClientOption) {
        this.f = context;
        this.c = locationClientOption;
        this.d = new LocationClientOption(locationClientOption);
        this.h = new a(Looper.getMainLooper(), this);
        this.i = new Messenger(this.h);
    }

    private void a() {
        if (!this.e) {
            if (this.A.booleanValue()) {
                new c(this).start();
                this.A = Boolean.valueOf(false);
            }
            this.b = this.f.getPackageName();
            this.u = this.b + "_bdls_v2.9";
            Intent intent = new Intent(this.f, f.class);
            try {
                intent.putExtra("debug_dev", this.B);
            } catch (Exception e) {
            }
            if (this.c == null) {
                this.c = new LocationClientOption();
            }
            intent.putExtra("cache_exception", this.c.isIgnoreCacheException);
            intent.putExtra("kill_process", this.c.isIgnoreKillProcess);
            try {
                this.f.bindService(intent, this.G, 1);
            } catch (Exception e2) {
                e2.printStackTrace();
                this.e = false;
            }
        }
    }

    private void a(int i) {
        if (this.l.getCoorType() == null) {
            this.l.setCoorType(this.c.coorType);
        }
        if (this.m || ((this.c.location_change_notify && this.l.getLocType() == 61) || this.l.getLocType() == 66 || this.l.getLocType() == 67 || this.w || this.l.getLocType() == BDLocation.TypeNetWorkLocation)) {
            Iterator it;
            if (this.j != null) {
                it = this.j.iterator();
                while (it.hasNext()) {
                    ((BDLocationListener) it.next()).onReceiveLocation(this.l);
                }
            }
            if (this.k != null) {
                it = this.k.iterator();
                while (it.hasNext()) {
                    ((BDAbstractLocationListener) it.next()).onReceiveLocation(this.l);
                }
            }
            if (this.l.getLocType() != 66 && this.l.getLocType() != 67) {
                this.m = false;
                this.t = System.currentTimeMillis();
            }
        }
    }

    private void a(int i, Notification notification) {
        try {
            Intent intent = new Intent(this.f, f.class);
            intent.putExtra("notification", notification);
            intent.putExtra("id", i);
            intent.putExtra("command", 1);
            if (VERSION.SDK_INT >= 26) {
                this.f.startForegroundService(intent);
            } else {
                this.f.startService(intent);
            }
            this.F = true;
        } catch (Exception e) {
        }
    }

    private void a(Message message) {
        this.n = false;
        if (message != null && message.obj != null) {
            LocationClientOption locationClientOption = (LocationClientOption) message.obj;
            if (!this.c.optionEquals(locationClientOption)) {
                if (this.c.scanSpan != locationClientOption.scanSpan) {
                    try {
                        synchronized (this.r) {
                            if (this.o) {
                                this.h.removeCallbacks(this.p);
                                this.o = false;
                            }
                            if (locationClientOption.scanSpan >= 1000 && !this.o) {
                                if (this.p == null) {
                                    this.p = new b(this, null);
                                }
                                this.h.postDelayed(this.p, (long) locationClientOption.scanSpan);
                                this.o = true;
                            }
                        }
                    } catch (Exception e) {
                    }
                }
                this.c = new LocationClientOption(locationClientOption);
                if (this.g != null) {
                    try {
                        Message obtain = Message.obtain(null, 15);
                        obtain.replyTo = this.i;
                        obtain.setData(c());
                        this.g.send(obtain);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    private void a(Message message, int i) {
        if (this.e) {
            try {
                Bundle data = message.getData();
                data.setClassLoader(BDLocation.class.getClassLoader());
                this.l = (BDLocation) data.getParcelable("locStr");
                if (this.l.getLocType() == 61) {
                    this.s = System.currentTimeMillis();
                }
                a(i);
            } catch (Exception e) {
            }
        }
    }

    private void a(BDLocation bDLocation) {
        if (!this.x) {
            Iterator it;
            this.l = bDLocation;
            if (!this.E && bDLocation.getLocType() == BDLocation.TypeNetWorkLocation) {
                this.D = true;
            }
            if (this.j != null) {
                it = this.j.iterator();
                while (it.hasNext()) {
                    ((BDLocationListener) it.next()).onReceiveLocation(bDLocation);
                }
            }
            if (this.k != null) {
                it = this.k.iterator();
                while (it.hasNext()) {
                    ((BDAbstractLocationListener) it.next()).onReceiveLocation(bDLocation);
                }
            }
        }
    }

    private void a(boolean z) {
        try {
            Intent intent = new Intent(this.f, f.class);
            intent.putExtra("removenotify", z);
            intent.putExtra("command", 2);
            this.f.startService(intent);
            this.F = true;
        } catch (Exception e) {
        }
    }

    private void b() {
        if (this.e && this.g != null) {
            Message obtain = Message.obtain(null, 12);
            obtain.replyTo = this.i;
            try {
                this.g.send(obtain);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                this.f.unbindService(this.G);
                if (this.F) {
                    try {
                        this.f.stopService(new Intent(this.f, f.class));
                    } catch (Exception e2) {
                    }
                    this.F = false;
                }
            } catch (Exception e3) {
            }
            synchronized (this.r) {
                try {
                    if (this.o) {
                        this.h.removeCallbacks(this.p);
                        this.o = false;
                    }
                } catch (Exception e4) {
                }
            }
            this.g = null;
            this.n = false;
            this.w = false;
            this.e = false;
            this.D = false;
            this.E = false;
        }
    }

    private void b(Message message) {
        if (message != null && message.obj != null) {
            BDLocationListener bDLocationListener = (BDLocationListener) message.obj;
            if (this.j == null) {
                this.j = new ArrayList();
            }
            if (!this.j.contains(bDLocationListener)) {
                this.j.add(bDLocationListener);
            }
        }
    }

    private Bundle c() {
        if (this.c == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("packName", this.b);
        bundle.putString("prodName", this.c.prodName);
        bundle.putString("coorType", this.c.coorType);
        bundle.putString("addrType", this.c.addrType);
        bundle.putBoolean("openGPS", this.c.openGps);
        bundle.putBoolean("location_change_notify", this.c.location_change_notify);
        bundle.putInt("scanSpan", this.c.scanSpan);
        bundle.putBoolean("enableSimulateGps", this.c.enableSimulateGps);
        bundle.putInt("timeOut", this.c.timeOut);
        bundle.putInt(LogFactory.PRIORITY_KEY, this.c.priority);
        bundle.putBoolean("map", this.y.booleanValue());
        bundle.putBoolean("import", this.z.booleanValue());
        bundle.putBoolean("needDirect", this.c.mIsNeedDeviceDirect);
        bundle.putBoolean("isneedaptag", this.c.isNeedAptag);
        bundle.putBoolean("isneedpoiregion", this.c.isNeedPoiRegion);
        bundle.putBoolean("isneedregular", this.c.isNeedRegular);
        bundle.putBoolean("isneedaptagd", this.c.isNeedAptagd);
        bundle.putBoolean("isneedaltitude", this.c.isNeedAltitude);
        bundle.putInt("autoNotifyMaxInterval", this.c.a());
        bundle.putInt("autoNotifyMinTimeInterval", this.c.getAutoNotifyMinTimeInterval());
        bundle.putInt("autoNotifyMinDistance", this.c.getAutoNotifyMinDistance());
        bundle.putFloat("autoNotifyLocSensitivity", this.c.b());
        bundle.putInt("wifitimeout", this.c.wifiCacheTimeOut);
        return bundle;
    }

    private void c(Message message) {
        if (message != null && message.obj != null) {
            BDAbstractLocationListener bDAbstractLocationListener = (BDAbstractLocationListener) message.obj;
            if (this.k == null) {
                this.k = new ArrayList();
            }
            if (!this.k.contains(bDAbstractLocationListener)) {
                this.k.add(bDAbstractLocationListener);
            }
        }
    }

    private void d() {
        if (this.g != null) {
            if ((System.currentTimeMillis() - this.s > 3000 || !this.c.location_change_notify || this.n) && (!this.w || System.currentTimeMillis() - this.t > 20000 || this.n)) {
                Message obtain = Message.obtain(null, 22);
                if (this.n) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("isWaitingLocTag", this.n);
                    this.n = false;
                    obtain.setData(bundle);
                }
                try {
                    obtain.replyTo = this.i;
                    this.g.send(obtain);
                    this.a = System.currentTimeMillis();
                    this.m = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            synchronized (this.r) {
                if (!(this.c == null || this.c.scanSpan < 1000 || this.o)) {
                    if (this.p == null) {
                        this.p = new b(this, null);
                    }
                    this.h.postDelayed(this.p, (long) this.c.scanSpan);
                    this.o = true;
                }
            }
        }
    }

    private void d(Message message) {
        if (message != null && message.obj != null) {
            BDAbstractLocationListener bDAbstractLocationListener = (BDAbstractLocationListener) message.obj;
            if (this.k != null && this.k.contains(bDAbstractLocationListener)) {
                this.k.remove(bDAbstractLocationListener);
            }
        }
    }

    private void e(Message message) {
        if (message != null && message.obj != null) {
            BDLocationListener bDLocationListener = (BDLocationListener) message.obj;
            if (this.j != null && this.j.contains(bDLocationListener)) {
                this.j.remove(bDLocationListener);
            }
        }
    }

    public static BDLocation getBDLocationInCoorType(BDLocation bDLocation, String str) {
        BDLocation bDLocation2 = new BDLocation(bDLocation);
        double[] coorEncrypt = Jni.coorEncrypt(bDLocation.getLongitude(), bDLocation.getLatitude(), str);
        bDLocation2.setLatitude(coorEncrypt[1]);
        bDLocation2.setLongitude(coorEncrypt[0]);
        return bDLocation2;
    }

    public void disableAssistantLocation() {
        k.a().b();
    }

    public void disableLocInForeground(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("removenotify", z);
        Message obtainMessage = this.h.obtainMessage(704);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }

    public void enableAssistantLocation(WebView webView) {
        k.a().a(this.f, webView, this);
    }

    public void enableLocInForeground(int i, Notification notification) {
        if (i <= 0 || notification == null) {
            Log.e("baidu_location_Client", "can not startLocInForeground if the param is unlegal");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("id", i);
        bundle.putParcelable("notification", notification);
        Message obtainMessage = this.h.obtainMessage(703);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }

    public String getAccessKey() {
        try {
            this.v = j.b(this.f);
            if (TextUtils.isEmpty(this.v)) {
                throw new IllegalStateException("please setting key from Manifest.xml");
            }
            return String.format("KEY=%s", new Object[]{this.v});
        } catch (Exception e) {
            return null;
        }
    }

    public BDLocation getLastKnownLocation() {
        return this.l;
    }

    public LocationClientOption getLocOption() {
        return this.c;
    }

    public String getVersion() {
        return "7.5.2";
    }

    public boolean isStarted() {
        return this.e;
    }

    public void onReceiveLocation(BDLocation bDLocation) {
        if ((!this.E || this.D) && bDLocation != null) {
            Message obtainMessage = this.h.obtainMessage(701);
            obtainMessage.obj = bDLocation;
            obtainMessage.sendToTarget();
        }
    }

    public void registerLocationListener(BDAbstractLocationListener bDAbstractLocationListener) {
        if (bDAbstractLocationListener == null) {
            throw new IllegalStateException("please set a non-null listener");
        }
        Message obtainMessage = this.h.obtainMessage(1300);
        obtainMessage.obj = bDAbstractLocationListener;
        obtainMessage.sendToTarget();
    }

    public void registerLocationListener(BDLocationListener bDLocationListener) {
        if (bDLocationListener == null) {
            throw new IllegalStateException("please set a non-null listener");
        }
        Message obtainMessage = this.h.obtainMessage(5);
        obtainMessage.obj = bDLocationListener;
        obtainMessage.sendToTarget();
    }

    public boolean requestHotSpotState() {
        if (this.g == null || !this.e) {
            return false;
        }
        try {
            this.g.send(Message.obtain(null, HttpStatus.SC_NOT_ACCEPTABLE));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public int requestLocation() {
        if (this.g == null || this.i == null) {
            return 1;
        }
        if ((this.j == null || this.j.size() < 1) && (this.k == null || this.k.size() < 1)) {
            return 2;
        }
        if (System.currentTimeMillis() - this.a < 1000) {
            return 6;
        }
        this.n = true;
        Message obtainMessage = this.h.obtainMessage(4);
        obtainMessage.arg1 = 0;
        obtainMessage.sendToTarget();
        return 0;
    }

    public void restart() {
        stop();
        this.x = false;
        this.h.sendEmptyMessageDelayed(1, 1000);
    }

    public void setLocOption(LocationClientOption locationClientOption) {
        if (locationClientOption == null) {
            locationClientOption = new LocationClientOption();
        }
        if (locationClientOption.a() > 0) {
            locationClientOption.setScanSpan(0);
            locationClientOption.setLocationNotify(true);
        }
        this.d = new LocationClientOption(locationClientOption);
        Message obtainMessage = this.h.obtainMessage(3);
        obtainMessage.obj = locationClientOption;
        obtainMessage.sendToTarget();
    }

    public void start() {
        this.x = false;
        this.h.obtainMessage(1).sendToTarget();
    }

    public void stop() {
        this.x = true;
        this.h.obtainMessage(2).sendToTarget();
        this.C = null;
    }

    public void unRegisterLocationListener(BDAbstractLocationListener bDAbstractLocationListener) {
        if (bDAbstractLocationListener == null) {
            throw new IllegalStateException("please set a non-null listener");
        }
        Message obtainMessage = this.h.obtainMessage(1400);
        obtainMessage.obj = bDAbstractLocationListener;
        obtainMessage.sendToTarget();
    }

    public void unRegisterLocationListener(BDLocationListener bDLocationListener) {
        if (bDLocationListener == null) {
            throw new IllegalStateException("please set a non-null listener");
        }
        Message obtainMessage = this.h.obtainMessage(6);
        obtainMessage.obj = bDLocationListener;
        obtainMessage.sendToTarget();
    }

    public boolean updateLocation(Location location) {
        if (this.g == null || this.i == null || location == null) {
            return false;
        }
        try {
            Message obtain = Message.obtain(null, 57);
            obtain.obj = location;
            this.g.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
