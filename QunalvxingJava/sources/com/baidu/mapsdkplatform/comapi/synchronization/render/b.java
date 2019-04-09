package com.baidu.mapsdkplatform.comapi.synchronization.render;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BaiduMap.OnSynchronizationListener;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.MapStatus;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.MyLocationData;
import com.baidu.mapapi.map.Polyline;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.map.WinRound;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.mapapi.model.LatLngBounds.Builder;
import com.baidu.mapapi.synchronization.DisplayOptions;
import com.baidu.mapapi.synchronization.RoleOptions;
import com.baidu.mapsdkplatform.comapi.synchronization.data.RouteLineInfo.RouteSectionInfo;
import com.baidu.mapsdkplatform.comapi.synchronization.data.SyncResponseResult;
import java.lang.Thread.State;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class b extends Handler {
    private static final String a = b.class.getSimpleName();
    private static RoleOptions d = null;
    private static DisplayOptions e = null;
    private static Marker f = null;
    private static volatile SyncResponseResult g = null;
    private static int h = 1000;
    private static volatile int p = 0;
    private static LatLng r = null;
    private boolean A = false;
    private Thread B = new Thread(new a(), "Adjust visible span");
    private boolean C = true;
    private int D = 10;
    private int E = 10;
    private LatLngBounds F = null;
    private e G;
    private volatile long H = 10000;
    private boolean I = true;
    private volatile boolean J = false;
    private volatile long K = 0;
    private volatile int L = 0;
    private List<LatLng> M = new CopyOnWriteArrayList();
    private List<BitmapDescriptor> N = new CopyOnWriteArrayList();
    private Polyline O = null;
    private List<Integer> P = new CopyOnWriteArrayList();
    private volatile boolean Q = true;
    private int R = 5;
    private String S = null;
    private String T = null;
    private boolean U = true;
    private boolean V = false;
    private BaiduMap b;
    private c c;
    private Marker i = null;
    private Marker j = null;
    private Marker k = null;
    private Marker l = null;
    private Marker m = null;
    private Marker n = null;
    private List<LinkPointPolyLineInfo> o = new CopyOnWriteArrayList();
    private Thread q = new Thread(new b(), "Car moving");
    private int s = 0;
    private double t = 0.0d;
    private int u = 5;
    private boolean v = false;
    private volatile boolean w = false;
    private Thread x = new Thread(new c(), "Passenger marker");
    private boolean y = false;
    private boolean z = true;

    class a implements Runnable {
        private a() {
        }

        public void run() {
            while (!b.this.C) {
                if (!(b.g == null || b.g.a() == null)) {
                    b.this.ag();
                    b.this.I = false;
                    b.this.a(b.this.F);
                    try {
                        b.this.K = System.currentTimeMillis();
                        if (b.this.H <= 0) {
                            b.this.H = 10000;
                        }
                        Thread.sleep(b.this.H);
                    } catch (InterruptedException e) {
                        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(b.a, "Sleep InterruptedException");
                    }
                }
            }
        }
    }

    class b implements Runnable {
        private b() {
        }

        public void run() {
            while (!b.this.Q) {
                LatLng b = b.this.Y();
                if (b == null) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(b.a, "Driver position is null, return");
                    return;
                }
                LatLng a = b.this.a(b);
                if (a == null) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(b.a, "Driver position not bind to route");
                    if (!b.this.v || b.this.y) {
                        b.this.b(b);
                        b.this.ac();
                        b.this.c(b);
                        return;
                    }
                    return;
                } else if (b.this.s != 0) {
                    b.this.t = b.this.Z();
                    if (b.this.t > 500.0d) {
                        b.this.b(a);
                        b.this.ac();
                        b.this.c(a);
                        b.this.e(b.p - 1);
                        b.this.L = b.p - 1;
                        return;
                    }
                    b.g.c().setPoint(null);
                    try {
                        b.this.aa();
                    } catch (Exception e) {
                        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(b.a, "Catch exception when car moving", e);
                    }
                    if (b.p >= b.this.o.size()) {
                        b.this.Q = true;
                        b.this.ab();
                    }
                } else {
                    return;
                }
            }
        }
    }

    class c implements Runnable {
        private c() {
        }

        public void run() {
            BitmapDescriptor bitmapDescriptor = null;
            if (b.e != null) {
                bitmapDescriptor = b.e.getPassengerIcon();
            }
            BitmapDescriptor passengerIcon = bitmapDescriptor == null ? new DisplayOptions().getPassengerIcon() : bitmapDescriptor;
            while (!b.this.w) {
                MyLocationData locationData = b.this.b.getLocationData();
                if (locationData != null && b.this.a(locationData)) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(b.a, "Get location data success");
                    LatLng latLng = new LatLng(locationData.latitude, locationData.longitude);
                    if (b.this.n == null) {
                        b.this.n = (Marker) b.this.b.addOverlay(new MarkerOptions().position(latLng).anchor(0.5f, 0.5f).rotate(locationData.direction).icon(passengerIcon).zIndex(12));
                    } else {
                        b.this.n.setPosition(latLng);
                        b.this.n.setRotate(locationData.direction);
                    }
                }
                try {
                    Thread.sleep((long) (b.this.R * 1000));
                } catch (InterruptedException e) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(b.a, "Sleep interrupt");
                }
            }
        }
    }

    enum d {
        NO_NEED_RENDER,
        RENDER_NEW_LINE,
        UPDATE_TRAFFIC
    }

    class e implements OnSynchronizationListener {
        private int b = 1;
        private int c = 2;
        private int d = 3;

        e() {
        }

        public void onMapStatusChangeReason(int i) {
            if (this.b == i || this.c == i) {
                long currentTimeMillis = System.currentTimeMillis() - b.this.K;
                if (currentTimeMillis <= 0) {
                    b.this.H = (long) (b.this.D * 1000);
                } else {
                    b.this.H = ((long) (b.this.D * 1000)) - (b.this.H - currentTimeMillis);
                }
                b.this.J = true;
            } else if (this.d == i) {
                b.this.H = (long) (b.this.E * 1000);
            } else {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(b.a, "Undefined reason type: " + i);
            }
        }
    }

    b(Looper looper) {
        super(looper);
    }

    private void A() {
        if (this.v && !this.A) {
            if (this.O != null) {
                this.O.remove();
                this.o.clear();
                this.M.clear();
                this.N.clear();
                this.P.clear();
                g = null;
            }
            this.S = null;
            this.T = null;
        }
    }

    private void B() {
        if (this.j != null) {
            this.j.remove();
            this.j = null;
        }
    }

    private void C() {
        if (f != null) {
            f.remove();
            f = null;
        }
    }

    private void D() {
        if (this.v && !this.y) {
            this.Q = true;
        }
    }

    private void E() {
        if (!e.isShowStartPositionMarker()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set start position marker not show");
            if (this.i != null) {
                this.i.remove();
                this.i = null;
            }
        } else if (this.i == null || this.v) {
            LatLng F = F();
            if (F == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No startPosition");
                return;
            }
            BitmapDescriptor startPositionIcon = e.getStartPositionIcon();
            if (startPositionIcon == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No startPositionIcon, use default");
                startPositionIcon = new DisplayOptions().getStartPositionIcon();
            }
            if (startPositionIcon == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "There is no startPositionIcon");
                return;
            }
            MarkerOptions zIndex = new MarkerOptions().position(F).icon(startPositionIcon).zIndex(6);
            if (this.i == null) {
                this.i = (Marker) this.b.addOverlay(zIndex);
                return;
            }
            this.i.setIcon(startPositionIcon);
            this.i.setPosition(F);
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Start position marker already render ok");
        }
    }

    private LatLng F() {
        LatLng startPosition = d.getStartPosition();
        if (startPosition == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The start position is null");
            if (this.c != null) {
                this.c.a(100001, "Start position is null");
            }
        }
        return startPosition;
    }

    private void G() {
        if (e.isShowStartPositionInfoWindow()) {
            LatLng startPosition = d.getStartPosition();
            if (startPosition == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No startPosition");
                return;
            }
            View startPositionInfoWindowView = e.getStartPositionInfoWindowView();
            if (startPositionInfoWindowView == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Start position infoWindow view is null, cannot display");
                if (this.j != null) {
                    this.j.remove();
                    this.j = null;
                    return;
                }
                return;
            }
            MarkerOptions alpha = new MarkerOptions().position(startPosition).icon(BitmapDescriptorFactory.fromView(startPositionInfoWindowView)).zIndex(6).alpha(0.9f);
            if (this.j == null) {
                this.j = (Marker) this.b.addOverlay(alpha);
                return;
            }
            this.j.setPosition(startPosition);
            this.j.setIcon(BitmapDescriptorFactory.fromView(startPositionInfoWindowView));
            this.j.setAnchor(0.5f, 0.9f);
            return;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set start position infoWindow not show");
        if (this.j != null) {
            this.j.remove();
            this.j = null;
        }
    }

    private void H() {
        if (!e.isShowEndPositionMarker()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set endPositionMarker not show");
            if (this.k != null) {
                this.k.remove();
                this.k = null;
            }
        } else if (this.k == null || this.v) {
            LatLng endPosition = d.getEndPosition();
            if (endPosition == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "End position coord is null");
                return;
            }
            BitmapDescriptor endPositionIcon = e.getEndPositionIcon();
            if (endPositionIcon == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The end position icon is null");
                endPositionIcon = new DisplayOptions().getEndPositionIcon();
            }
            if (endPositionIcon == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "There is no endPositionIcon");
                return;
            }
            MarkerOptions zIndex = new MarkerOptions().position(endPosition).icon(endPositionIcon).zIndex(7);
            if (this.k == null) {
                this.k = (Marker) this.b.addOverlay(zIndex);
                return;
            }
            this.k.setIcon(endPositionIcon);
            this.k.setPosition(endPosition);
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "EndPositionMarker already render ok");
        }
    }

    private void I() {
        if (e.isShowEndPositionInfoWindow()) {
            LatLng endPosition = d.getEndPosition();
            if (endPosition == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "End position coord is null when render end position infoWindow");
                return;
            }
            View endPositionInfoWindowView = e.getEndPositionInfoWindowView();
            if (endPositionInfoWindowView == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "End position infoWindow view is null, cannot display");
                if (this.l != null) {
                    this.l.remove();
                    this.l = null;
                    return;
                }
                return;
            }
            MarkerOptions zIndex = new MarkerOptions().position(endPosition).icon(BitmapDescriptorFactory.fromView(endPositionInfoWindowView)).anchor(0.5f, 1.0f).zIndex(7);
            if (this.l == null) {
                this.l = (Marker) this.b.addOverlay(zIndex);
                return;
            }
            this.l.setPosition(endPosition);
            this.l.setIcon(BitmapDescriptorFactory.fromView(endPositionInfoWindowView));
            this.l.setAnchor(0.5f, 1.0f);
            return;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set end position infoWindow not show");
        if (this.l != null) {
            this.l.remove();
            this.l = null;
        }
    }

    private synchronized void J() {
        this.w = false;
        if (State.NEW == this.x.getState()) {
            this.x.start();
        }
        if (this.v && State.TERMINATED == this.x.getState()) {
            this.x = null;
            this.x = new Thread(new c(), "Passenger marker");
            this.x.start();
        }
    }

    private void K() {
        if (e.isShowPassengerIcon()) {
            J();
            return;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set not show passenger icon");
        if (this.n != null) {
            this.n.remove();
            this.n = null;
        }
    }

    private synchronized void L() {
        this.w = true;
        if (!(this.x == null || (State.NEW == this.x.getState() && State.TERMINATED == this.x.getState()))) {
            this.x.interrupt();
        }
    }

    private void M() {
        if (!e.isShowCarMarker()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set carMarker not show");
            if (this.m != null) {
                this.m.remove();
                this.m = null;
            }
        } else if (this.m == null || this.v) {
            LatLng P = P();
            if (P == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The car(driver) position is null");
                return;
            }
            BitmapDescriptor carIcon = e.getCarIcon();
            if (carIcon == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The car icon is null");
                carIcon = new DisplayOptions().getCarIcon();
            }
            if (carIcon == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "There is no car icon");
                return;
            }
            MarkerOptions anchor = new MarkerOptions().position(P).icon(carIcon).flat(true).rotate(0.0f).zIndex(8).anchor(0.5f, 0.5f);
            if (this.m == null) {
                this.m = (Marker) this.b.addOverlay(anchor);
                return;
            }
            this.m.setPosition(P);
            this.m.setIcon(carIcon);
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "CarIcon already render ok");
        }
    }

    private void N() {
        if (e.isShowCarInfoWindow()) {
            View carInfoWindowView = e.getCarInfoWindowView();
            if (carInfoWindowView == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "car position infoWindow view is null, cannot display");
                if (f != null) {
                    f.remove();
                    f = null;
                    return;
                }
                return;
            }
            LatLng O = O();
            if (O == null) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "CarPosition is null");
                return;
            }
            MarkerOptions alpha = new MarkerOptions().position(O).icon(BitmapDescriptorFactory.fromView(carInfoWindowView)).zIndex(8).anchor(0.5f, 1.0f).alpha(0.9f);
            if (f == null) {
                f = (Marker) this.b.addOverlay(alpha);
                return;
            }
            f.setPosition(O);
            f.setIcon(BitmapDescriptorFactory.fromView(carInfoWindowView));
            f.setAnchor(0.5f, 1.0f);
            return;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set carInfoWindow not show");
        if (f != null) {
            f.remove();
            f = null;
        }
    }

    private LatLng O() {
        return (this.m != null || g == null) ? this.m != null ? this.m.getPosition() : null : g.c().getPoint();
    }

    private LatLng P() {
        return r != null ? r : (g == null || g.c() == null || g.c().getPoint() == null) ? d.getDriverPosition() : g.c().getPoint();
    }

    private void Q() {
        if (!e.isShowRoutePlan()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "User set route line not show");
            if (this.O != null) {
                this.O.remove();
                this.O = null;
            }
        } else if (g == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No route line data");
        } else {
            d R = R();
            if (d.NO_NEED_RENDER == R) {
                this.z = false;
            } else if (d.UPDATE_TRAFFIC == R) {
                this.z = false;
                S();
            } else {
                this.z = true;
                if (!this.Q) {
                    this.Q = true;
                    try {
                        Thread.sleep(100);
                    } catch (Exception e) {
                        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Exception caught when renderRouteLine", e);
                    }
                }
                p = 0;
                this.s = 0;
                this.L = 0;
                this.o.clear();
                this.M.clear();
                this.N.clear();
                this.P.clear();
                if (this.O != null) {
                    this.O.remove();
                    this.O = null;
                }
                T();
                if (this.o == null || this.o.isEmpty()) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "LinkPointPolyline info is null");
                } else {
                    U();
                }
            }
        }
    }

    private d R() {
        String a = g.a().a();
        String a2 = g.b().a();
        if (this.v && !this.A) {
            this.S = null;
            this.T = null;
        }
        if (a != null && (TextUtils.isEmpty(this.S) || !this.S.equals(a) || this.O == null)) {
            this.S = a;
            this.T = a2;
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Route line or order state changed or no render, need render");
            return d.RENDER_NEW_LINE;
        } else if (a2 == null || this.O == null || (!TextUtils.isEmpty(this.T) && this.T.equals(a2))) {
            return d.NO_NEED_RENDER;
        } else {
            this.T = a2;
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Route line only need update traffic");
            return d.UPDATE_TRAFFIC;
        }
    }

    private void S() {
        ArrayList b = g.b().b();
        if (b == null || b.isEmpty()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Traffic status data is null");
            return;
        }
        if (!this.Q) {
            this.Q = true;
        }
        if (p - this.s >= 0) {
            try {
                int i;
                if (b.size() == this.o.size()) {
                    for (i = p - this.s; i < this.o.size(); i++) {
                        this.P.set(i, b.get(i));
                    }
                } else {
                    for (i = p - this.s; i < this.o.size(); i++) {
                        this.P.set(i, b.get((b.size() + i) - this.o.size()));
                    }
                }
                int[] iArr = new int[((this.P.size() - p) + this.s)];
                for (int i2 = 0; i2 < (this.P.size() - p) + this.s; i2++) {
                    iArr[i2] = ((Integer) this.P.get((p + i2) - this.s)).intValue();
                }
                if (iArr.length > 0) {
                    this.O.setIndexs(iArr);
                    if (this.Q) {
                        this.Q = false;
                    }
                }
            } catch (Exception e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Exception caught when updateTrafficStatus", e);
            }
        }
    }

    private void T() {
        if (g == null || g.a() == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Route info or syncResponseResult is null");
            return;
        }
        List b = g.a().b();
        ArrayList b2 = g.b().b();
        if (b == null || b.isEmpty()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "route section info is null");
        } else if (b.isEmpty() || b2 == null || b2.isEmpty() || b2.size() == b.size()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < b.size()) {
                    if (b.get(i2) != null) {
                        LatLng a = ((RouteSectionInfo) b.get(i2)).a();
                        LatLng b3 = ((RouteSectionInfo) b.get(i2)).b();
                        int a2 = a(i2, b2);
                        LinkPointPolyLineInfo linkPointPolyLineInfo = new LinkPointPolyLineInfo();
                        linkPointPolyLineInfo.a(a);
                        linkPointPolyLineInfo.b(b3);
                        linkPointPolyLineInfo.a(a2);
                        this.o.add(linkPointPolyLineInfo);
                        this.M.add(a);
                    }
                    i = i2 + 1;
                } else {
                    this.M.add(((RouteSectionInfo) b.get(b.size() - 1)).b());
                    return;
                }
            }
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "route section info or traffic status info is invalid");
        }
    }

    private void U() {
        if (!this.Q) {
            this.Q = true;
        }
        LatLng point = g != null ? g.c().getPoint() : null;
        point = point != null ? a(point) : null;
        if (point != null) {
            this.s = 0;
            try {
                this.o = this.o.subList(p, this.o.size());
                this.M = this.M.subList(p, this.M.size());
            } catch (Exception e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Caught exception when renderRoutePolyLine", e);
            }
            b(point);
            ac();
            c(point);
            this.L = p;
        }
        p = 0;
        int size = this.M.size();
        if (size >= 3) {
            for (int i = 0; i < size - 1; i++) {
                if (this.M.get(i) != null) {
                    this.P.add(Integer.valueOf(((LinkPointPolyLineInfo) this.o.get(i)).c()));
                }
            }
            if (this.N.isEmpty()) {
                this.N.addAll(e.getTrafficTextureList());
            }
            PolylineOptions zIndex = new PolylineOptions().points(this.M).dottedLine(true).width(e == null ? new DisplayOptions().getRouteLineWidth() : e.getRouteLineWidth()).customTextureList(this.N).textureIndex(this.P).zIndex(5);
            if (!e.isShowRoutePlan()) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "User set route line not display");
                zIndex.visible(false);
            }
            this.O = (Polyline) this.b.addOverlay(zIndex);
            if (this.Q) {
                this.Q = false;
            }
        }
    }

    private void V() {
        if (this.m == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "CarMarker is null");
        } else if (r != null || this.o == null || this.o.isEmpty()) {
            W();
        } else {
            r = ((LinkPointPolyLineInfo) this.o.get(0)).a();
            b(r);
            c(r);
        }
    }

    private synchronized void W() {
        this.Q = false;
        if (State.NEW == this.q.getState()) {
            this.q.start();
        } else if (State.TERMINATED == this.q.getState()) {
            this.q = null;
            this.q = new Thread(new b(), "Car moving");
            this.q.start();
        }
    }

    private synchronized void X() {
        this.Q = true;
    }

    private LatLng Y() {
        return (g == null || g.c().getPoint() == null || this.V) ? null : g.c().getPoint();
    }

    private double Z() {
        if (this.o == null || this.o.isEmpty() || p > this.o.size()) {
            return 1.0d;
        }
        int i = p - this.s;
        double d = 0.0d;
        while (true) {
            int i2 = i;
            if (i2 >= p) {
                return d;
            }
            d += f(((LinkPointPolyLineInfo) this.o.get(i2)).a(), ((LinkPointPolyLineInfo) this.o.get(i2)).b());
            i = i2 + 1;
        }
    }

    private double a(double d) {
        if (this.u == 0) {
            this.u = 5;
        }
        return (Math.abs(d) * ((double) this.u)) / this.t;
    }

    private double a(double d, double d2) {
        return d2 == Double.MAX_VALUE ? d : Math.abs((d * d2) / Math.sqrt(1.0d + (d2 * d2)));
    }

    private double a(double d, LatLng latLng) {
        return latLng.latitude - (latLng.longitude * d);
    }

    private int a(int i, ArrayList<Integer> arrayList) {
        return (arrayList == null || arrayList.isEmpty() || i >= arrayList.size()) ? 0 : ((Integer) arrayList.get(i)).intValue();
    }

    private LatLng a(LatLng latLng) {
        if (3 == h) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "WAIT_PASSENGER State, no need calculate");
            return null;
        } else if (this.o == null || this.o.isEmpty()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "mLinkPolyLineInfos size = " + this.o.size());
            return null;
        } else {
            int i = p;
            while (true) {
                int i2 = i;
                if (i2 >= this.o.size()) {
                    return null;
                }
                LatLng a = ((LinkPointPolyLineInfo) this.o.get(i2)).a();
                LatLng b = ((LinkPointPolyLineInfo) this.o.get(i2)).b();
                if (a(latLng, a)) {
                    this.s = d(i2);
                    return a;
                } else if (a(latLng, b)) {
                    this.s = d(i2 + 1);
                    return b;
                } else {
                    boolean a2 = a(a, b, latLng);
                    boolean b2 = b(a, b, latLng);
                    if (a2 && b2) {
                        this.s = d(i2);
                        return a;
                    }
                    i = i2 + 1;
                }
            }
        }
    }

    private void a(Builder builder) {
        if (e == null || e.isShowStartPositionMarkerInSpan()) {
            builder.include(F());
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "User set not show startPositionMarker in span");
        }
    }

    private synchronized void a(LatLngBounds latLngBounds) {
        int i = 50;
        synchronized (this) {
            if (this.J) {
                this.J = false;
            } else {
                MapStatus mapStatus = this.b.getMapStatus();
                if (mapStatus == null) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Get map status failed");
                } else {
                    int paddingLeft;
                    int paddingTop;
                    int paddingRight;
                    WinRound winRound = mapStatus.winRound;
                    int abs = Math.abs(winRound.right - winRound.left);
                    int abs2 = Math.abs(winRound.bottom - winRound.top);
                    if (e != null) {
                        paddingLeft = e.getPaddingLeft();
                        paddingTop = e.getPaddingTop();
                        paddingRight = e.getPaddingRight();
                        i = e.getPaddingBottom();
                    } else {
                        paddingRight = 50;
                        paddingTop = 50;
                        paddingLeft = 50;
                    }
                    paddingRight = (abs - paddingLeft) - paddingRight;
                    i = (abs2 - paddingTop) - i;
                    if (paddingRight < 0 || i < 0 || paddingRight > abs || i > abs2) {
                        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Invalid width and height，use default padding");
                        paddingRight = (abs - 50) - 50;
                        i = (abs2 - 50) - 50;
                    }
                    this.b.animateMapStatus(MapStatusUpdateFactory.newLatLngBounds(latLngBounds, paddingRight, i));
                }
            }
        }
    }

    private boolean a(MyLocationData myLocationData) {
        long longValue;
        long j;
        try {
            longValue = Double.valueOf(myLocationData.latitude).longValue();
            try {
                j = longValue;
                longValue = Double.valueOf(myLocationData.longitude).longValue();
            } catch (NumberFormatException e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Trans latitude and longitude failed");
                j = longValue;
                longValue = 0;
                if (0 == j) {
                }
            }
        } catch (NumberFormatException e2) {
            longValue = 0;
        }
        return (0 == j || 0 != longValue) && j >= -90 && j <= 90 && longValue >= -180 && longValue <= 180;
    }

    private boolean a(LatLng latLng, LatLng latLng2) {
        return (latLng == null || latLng2 == null) ? latLng == null && latLng2 == null : Math.abs(latLng.latitude - latLng2.latitude) < 1.0E-4d && Math.abs(latLng.longitude - latLng2.longitude) < 1.0E-4d;
    }

    private boolean a(LatLng latLng, LatLng latLng2, double d) {
        Object obj = latLng.latitude > latLng2.latitude ? 1 : null;
        double a = a(d, latLng);
        double f = f(latLng, latLng2);
        f = obj != null ? a(f, d) : a(f, d) * -1.0d;
        double a2 = a(f);
        double d2 = latLng.latitude;
        while (true) {
            if ((d2 > latLng2.latitude ? 1 : null) != obj) {
                return true;
            }
            if (this.Q) {
                return false;
            }
            LatLng latLng3 = Double.MAX_VALUE == d ? new LatLng(d2, latLng.longitude) : new LatLng(d2, (d2 - a) / d);
            b(latLng3);
            c(latLng3);
            if (!b(a2)) {
                return false;
            }
            d2 -= f;
        }
    }

    private boolean a(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        double d = latLng.latitude;
        double d2 = latLng.longitude;
        double d3 = latLng2.latitude;
        return Math.abs(((latLng2.longitude - d2) * (latLng3.latitude - d)) - ((d3 - d) * (latLng3.longitude - d2))) < 1.0E-4d;
    }

    private void aa() {
        if (p != 0) {
            int i = p - this.s;
            while (true) {
                int i2 = i;
                if (i2 < p) {
                    LatLng a = ((LinkPointPolyLineInfo) this.o.get(i2)).a();
                    LatLng b = ((LinkPointPolyLineInfo) this.o.get(i2)).b();
                    double f = f(a, b) / 2.0d;
                    double d = (b.latitude - a.latitude) / f;
                    double d2 = (b.longitude - a.longitude) / f;
                    double e = e(a, b);
                    int i3 = 1;
                    LatLng latLng = a;
                    while (((double) i3) <= f) {
                        double d3 = latLng.longitude;
                        double d4 = latLng.latitude;
                        if (0.0d == e) {
                            d3 = latLng.longitude + d2;
                        } else if (Double.MAX_VALUE == e) {
                            d4 = latLng.latitude + d;
                        } else {
                            d3 = latLng.longitude + d2;
                            d4 = latLng.latitude + d;
                        }
                        LatLng latLng2 = new LatLng(d4, d3);
                        if (!(this.M == null || this.M.isEmpty())) {
                            if (this.z) {
                                this.Q = true;
                                return;
                            }
                            this.M.set(i2, latLng2);
                        }
                        if (!(this.P == null || this.P.isEmpty())) {
                            this.P.set(i2, Integer.valueOf(((LinkPointPolyLineInfo) this.o.get(i2)).c()));
                        }
                        if (b(latLng, latLng2)) {
                            this.L = i2;
                            e(i2);
                            i3++;
                            latLng = latLng2;
                        } else {
                            return;
                        }
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void ab() {
        p = 0;
        this.s = 0;
        this.o.clear();
        this.M.clear();
        this.P.clear();
    }

    private void ac() {
        if (this.m != null) {
            float f = 0.0f;
            try {
                f = Double.valueOf(360.0d - g.c().getAngle()).floatValue();
            } catch (NumberFormatException e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get DriverPosition Angle failed", e);
            }
            this.m.setRotate(f);
        }
    }

    private synchronized void ad() {
        this.C = true;
    }

    private synchronized void ae() {
        if (this.C) {
            this.C = false;
        }
        if (State.NEW == this.B.getState()) {
            this.I = true;
            this.B.start();
        }
        if (this.v && State.TIMED_WAITING == this.B.getState()) {
            this.B.interrupt();
            this.I = true;
        }
        if (State.TERMINATED == this.B.getState()) {
            this.B = null;
            this.I = true;
            this.B = new Thread(new a(), "Adjust visible span");
            this.B.start();
        }
    }

    private void af() {
        this.b.setOnSynchronizationListener(this.G);
    }

    private void ag() {
        switch (h) {
            case 0:
            case 5:
                ad();
                return;
            case 1:
                ah();
                return;
            case 2:
                ai();
                return;
            case 3:
                aj();
                return;
            case 4:
                ak();
                return;
            default:
                return;
        }
    }

    private void ah() {
        Builder builder = new Builder();
        a(builder);
        d(builder);
        c(builder);
        e(builder);
        this.F = h(builder);
    }

    private void ai() {
        Builder builder = new Builder();
        a(builder);
        c(builder);
        d(builder);
        e(builder);
        this.F = h(builder);
    }

    private void aj() {
        Builder builder = new Builder();
        a(builder);
        c(builder);
        d(builder);
        this.F = h(builder);
    }

    private void ak() {
        Builder builder = new Builder();
        b(builder);
        c(builder);
        e(builder);
        this.F = h(builder);
    }

    private double b(LatLng latLng, LatLng latLng2, double d) {
        double d2 = 0.0d;
        if (Double.MAX_VALUE == d) {
            return latLng2.latitude > latLng.latitude ? 360.0d : 180.0d;
        } else {
            if (0.0d == d) {
                return latLng2.longitude > latLng.longitude ? 270.0d : 90.0d;
            } else {
                if ((latLng2.latitude - latLng.latitude) * d < 0.0d) {
                    d2 = 180.0d;
                }
                return (d2 + (180.0d * (Math.atan(d) / 3.141592653589793d))) - 90.0d;
            }
        }
    }

    private void b(LatLng latLng) {
        if (this.m != null) {
            this.m.setPosition(latLng);
        }
    }

    private void b(Builder builder) {
        if (e == null || e.isShowEndPositionMarkerInSpan()) {
            builder.include(d.getEndPosition());
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "User set not show endPositionMarker in span");
        }
    }

    private boolean b(double d) {
        try {
            Thread.sleep(Double.valueOf((1000.0d * d) + 50.0d).longValue());
            return true;
        } catch (InterruptedException e) {
            return false;
        } catch (NumberFormatException e2) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Calc sleep interval failed", e2);
            return false;
        }
    }

    private boolean b(LatLng latLng, LatLng latLng2) {
        if (this.Q) {
            return false;
        }
        b(latLng);
        c(latLng);
        double e = e(latLng, latLng2);
        float b = (float) b(latLng, latLng2, e);
        if (this.m != null) {
            this.m.setRotate(b);
        }
        boolean c = 0.0d == e ? c(latLng, latLng2) : a(latLng, latLng2, e);
        if (!c) {
            return c;
        }
        r = latLng2;
        return c;
    }

    private boolean b(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        double d = latLng.latitude;
        double d2 = latLng.longitude;
        double d3 = latLng2.latitude;
        double d4 = latLng2.longitude;
        double d5 = latLng3.latitude;
        double d6 = latLng3.longitude;
        return Math.min(d, d3) - 1.0E-4d <= d5 && d5 <= Math.max(d, d3) + 1.0E-4d && Math.min(d2, d4) - 1.0E-4d <= d6 && d6 <= Math.max(d2, d4) + 1.0E-4d;
    }

    private void c(int i) {
        this.y = 1000 == h;
        boolean z = (1 == h && 2 == i) || (1 == i && 2 == h);
        this.A = z;
        if (h != i) {
            h = i;
            this.v = true;
            return;
        }
        this.v = false;
    }

    private void c(LatLng latLng) {
        if (f != null) {
            f.setPosition(latLng);
        }
    }

    private void c(Builder builder) {
        if (e == null || e.isShowCarMarkerInSpan()) {
            LatLng P = (this.m == null || this.I) ? P() : this.m.getPosition();
            builder.include(P);
            return;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "User set not show carMarker in span");
    }

    private boolean c(LatLng latLng, LatLng latLng2) {
        double d = d(latLng, latLng2);
        double a = a(d);
        for (double d2 = latLng.longitude; d2 <= latLng2.longitude; d2 += d) {
            if (this.Q) {
                return false;
            }
            LatLng latLng3 = new LatLng(latLng.latitude, d2);
            b(latLng3);
            c(latLng3);
            if (!b(a)) {
                return false;
            }
        }
        return true;
    }

    private double d(LatLng latLng, LatLng latLng2) {
        return com.baidu.mapsdkplatform.comapi.synchronization.c.b.a(latLng, latLng2);
    }

    private synchronized int d(int i) {
        int i2;
        i2 = i - p;
        p = i;
        return i2;
    }

    private void d(Builder builder) {
        if (e == null || e.isShowPassengerIconInSpan()) {
            LatLng latLng;
            if (this.n == null) {
                MyLocationData locationData = this.b.getLocationData();
                if (locationData == null) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No passenger location data");
                    return;
                } else if (a(locationData)) {
                    latLng = new LatLng(locationData.latitude, locationData.longitude);
                } else {
                    return;
                }
            }
            latLng = this.n.getPosition();
            builder.include(latLng);
            return;
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "User set not show passengerMarker in span");
    }

    private double e(LatLng latLng, LatLng latLng2) {
        return latLng2.longitude == latLng.longitude ? Double.MAX_VALUE : (latLng2.latitude - latLng.latitude) / (latLng2.longitude - latLng.longitude);
    }

    private void e(int i) {
        if (this.M == null || this.M.isEmpty()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Route polyline points is null when remove");
        } else if (this.M.size() <= 2 || i >= this.M.size() - 2) {
            if (this.O != null) {
                this.O.remove();
            }
        } else if (this.P == null || this.P.isEmpty()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No need removeTravelledPolyLine");
        } else if (!this.z) {
            try {
                List subList = this.P.subList(i, this.P.size());
                int[] iArr = new int[subList.size()];
                for (int i2 = 0; i2 < subList.size(); i2++) {
                    iArr[i2] = ((Integer) subList.get(i2)).intValue();
                }
                if (this.O != null && !this.Q) {
                    this.O.setIndexs(iArr);
                    try {
                        this.O.setPoints(this.M.subList(i, this.M.size()));
                    } catch (Exception e) {
                        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get subList of PolyLinePointList failed", e);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void e(Builder builder) {
        if (e != null && !e.isShowRoutePlanInSpan()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "User set not show routeLine in span");
        } else if (this.o == null || this.o.isEmpty()) {
            g(builder);
        } else {
            f(builder);
        }
    }

    private double f(LatLng latLng, LatLng latLng2) {
        return com.baidu.mapsdkplatform.comapi.synchronization.c.b.a(latLng, latLng2);
    }

    private void f(Builder builder) {
        int i = this.L;
        while (true) {
            int i2 = i;
            if (i2 < this.o.size()) {
                builder.include(((LinkPointPolyLineInfo) this.o.get(i2)).a());
                i = i2 + 1;
            } else {
                builder.include(((LinkPointPolyLineInfo) this.o.get(this.o.size() - 1)).b());
                return;
            }
        }
    }

    private void g(Builder builder) {
        if (g == null || g.a() == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "There no routeLine info, no need show in span");
            return;
        }
        List b = g.a().b();
        if (b == null || b.isEmpty()) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "There no routeLine position, no need show in span");
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < b.size()) {
                builder.include(((RouteSectionInfo) b.get(i2)).a());
                i = i2 + 1;
            } else {
                builder.include(((RouteSectionInfo) b.get(b.size() - 1)).b());
                return;
            }
        }
    }

    private LatLngBounds h(Builder builder) {
        return builder.build();
    }

    private void k() {
        if (e != null) {
            if (f != null) {
                f.remove();
                f = null;
            }
            if (this.m != null) {
                this.m.remove();
                this.m = null;
            }
            if (this.i != null) {
                this.i.remove();
                this.i = null;
            }
            if (this.j != null) {
                this.j.remove();
                this.j = null;
            }
            if (this.l != null) {
                this.l.remove();
                this.l = null;
            }
            e.getStartPositionIcon().recycle();
            e.getCarIcon().recycle();
            if (e.getEndPositionIcon() != null) {
                e.getEndPositionIcon().recycle();
            }
            e = null;
        }
    }

    private void l() {
        p = 0;
        this.u = 0;
        this.Q = true;
        if (this.q != null) {
            try {
                this.q.join();
            } catch (InterruptedException e) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "InterruptedException when release CarMoveThread");
            }
            this.q = null;
        }
    }

    private void m() {
        this.w = true;
        if (this.x != null) {
            this.x = null;
        }
    }

    private void n() {
        this.C = true;
        if (this.B != null) {
            this.B = null;
        }
    }

    private void o() {
        boolean z = false;
        d = null;
        g = null;
        h = 1000;
        this.Q = false;
        this.U = true;
        this.V = false;
        this.o.clear();
        p = 0;
        r = null;
        this.s = 0;
        this.t = 0.0d;
        this.M.clear();
        this.P.clear();
        if (this.O != null) {
            this.O.remove();
            this.O = null;
        }
        while (true) {
            boolean z2 = z;
            if (z2 < this.N.size()) {
                ((BitmapDescriptor) this.N.get(z2)).recycle();
                z = z2 + 1;
            } else {
                this.N.clear();
                this.b.clear();
                return;
            }
        }
    }

    private void p() {
        L();
        D();
        ad();
        A();
        w();
        x();
        y();
        z();
        if (this.b != null) {
            this.b.clear();
        }
    }

    private void q() {
        if (v()) {
            A();
            D();
            ae();
            E();
            G();
            H();
            I();
            K();
            M();
            N();
            Q();
            V();
        }
    }

    private void r() {
        if (v()) {
            A();
            D();
            ae();
            E();
            G();
            H();
            I();
            K();
            M();
            N();
            Q();
            V();
        }
    }

    private void s() {
        if (v()) {
            A();
            C();
            B();
            D();
            ae();
            E();
            G();
            H();
            I();
            K();
            M();
            N();
            V();
        }
    }

    private void t() {
        if (v()) {
            L();
            A();
            x();
            y();
            D();
            ae();
            E();
            G();
            H();
            I();
            M();
            N();
            Q();
            V();
        }
    }

    private void u() {
        L();
        D();
        ad();
        w();
        x();
        y();
        z();
        if (this.b != null) {
            this.b.clear();
        }
    }

    private boolean v() {
        if (d == null || e == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No render data");
            if (this.c == null) {
                return false;
            }
            this.c.a(100001, "Get render data failed");
            return false;
        } else if (this.b != null) {
            return true;
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "BaiduMap is null");
            if (this.c == null) {
                return false;
            }
            this.c.a(100002, "BaiduMap instance is null.");
            return false;
        }
    }

    private void w() {
        if (this.k != null) {
            this.k.remove();
            this.k = null;
        }
        if (this.l != null) {
            this.l.remove();
            this.l = null;
        }
    }

    private void x() {
        if (this.i != null) {
            this.i.remove();
            this.i = null;
        }
        if (this.j != null) {
            this.j.remove();
            this.j = null;
        }
    }

    private void y() {
        if (this.n != null) {
            this.n.remove();
            this.n = null;
        }
    }

    private void z() {
        if (this.m != null) {
            this.m.remove();
            this.m = null;
        }
        if (f != null) {
            f.remove();
            f = null;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Marker a() {
        return this.i;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i) {
        this.D = i;
    }

    public void a(BaiduMap baiduMap, RoleOptions roleOptions, DisplayOptions displayOptions) {
        this.b = baiduMap;
        d = roleOptions;
        e = displayOptions;
        this.G = new e();
        af();
        r = null;
        this.b.getUiSettings().setRotateGesturesEnabled(false);
        this.b.getUiSettings().setCompassEnabled(false);
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(RoleOptions roleOptions, DisplayOptions displayOptions, SyncResponseResult syncResponseResult, int i) {
        d = roleOptions;
        e = displayOptions;
        if (e == null) {
            e = new DisplayOptions();
        }
        g = syncResponseResult;
        this.u = i;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(c cVar) {
        this.c = cVar;
    }

    /* Access modifiers changed, original: 0000 */
    public Marker b() {
        return this.k;
    }

    /* Access modifiers changed, original: 0000 */
    public void b(int i) {
        this.E = i;
    }

    /* Access modifiers changed, original: 0000 */
    public Marker c() {
        return this.m;
    }

    public void d() {
        this.V = false;
        if (this.U) {
            this.U = false;
            return;
        }
        J();
        ae();
        W();
    }

    public void e() {
        this.V = true;
        X();
        L();
        ad();
    }

    public void f() {
        l();
        m();
        n();
        k();
        o();
    }

    public void handleMessage(Message message) {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.c(a, "The orderState in message is: " + message.what);
        c(message.what);
        switch (message.what) {
            case 0:
                p();
                return;
            case 1:
                q();
                return;
            case 2:
                r();
                return;
            case 3:
                s();
                return;
            case 4:
                t();
                return;
            case 5:
                u();
                return;
            default:
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.c(a, "Undefined Message type: " + message.what);
                return;
        }
    }
}
