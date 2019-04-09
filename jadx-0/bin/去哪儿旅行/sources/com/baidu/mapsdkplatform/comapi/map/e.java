package com.baidu.mapsdkplatform.comapi.map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.baidu.mapapi.UIMsg.k_event;
import com.baidu.mapapi.UIMsg.m_AppUI;
import com.baidu.mapapi.common.EnvironmentUtilities;
import com.baidu.mapapi.common.SysOSUtil;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.MapBaseIndoorMapInfo;
import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.mapapi.model.LatLngBounds.Builder;
import com.baidu.mapapi.model.ParcelItem;
import com.baidu.mapapi.model.inner.GeoPoint;
import com.baidu.mapsdkplatform.comjni.map.basemap.BaseMapCallback;
import com.baidu.mapsdkplatform.comjni.map.basemap.JNIBaseMap;
import com.baidu.mapsdkplatform.comjni.map.basemap.b;
import com.iflytek.cloud.SpeechEvent;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import qunar.sdk.mapapi.entity.QMarker;

@SuppressLint({"NewApi"})
public class e implements b {
    private static int L;
    private static int M;
    private static List<JNIBaseMap> ap;
    static long l = 0;
    private static final String p = j.class.getSimpleName();
    private ai A;
    private Context B;
    private List<d> C;
    private x D;
    private g E;
    private ae F;
    private ah G;
    private n H;
    private a I;
    private o J;
    private af K;
    private int N;
    private int O;
    private int P;
    private a Q = new a();
    private VelocityTracker R;
    private long S;
    private long T;
    private long U;
    private long V;
    private int W;
    private float X;
    private float Y;
    private boolean Z;
    public float a = 21.0f;
    private long aa;
    private long ab;
    private boolean ac = false;
    private boolean ad = false;
    private float ae;
    private float af;
    private float ag;
    private float ah;
    private long ai = 0;
    private long aj = 0;
    private f ak;
    private String al;
    private int am;
    private b an;
    private c ao;
    private boolean aq = false;
    private Queue<a> ar = new LinkedList();
    public float b = 4.0f;
    public float c = 21.0f;
    boolean d = true;
    boolean e = true;
    boolean f = false;
    List<l> g;
    com.baidu.mapsdkplatform.comjni.map.basemap.a h;
    long i;
    boolean j;
    int k;
    boolean m;
    boolean n;
    boolean o;
    private boolean q;
    private boolean r;
    private boolean s = true;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = true;
    private boolean x = true;
    private boolean y = false;
    private aj z;

    public class a {
        public long a;
        public int b;
        public int c;
        public int d;
        public Bundle e;

        public a(long j, int i, int i2, int i3) {
            this.a = j;
            this.b = i;
            this.c = i2;
            this.d = i3;
        }

        public a(Bundle bundle) {
            this.e = bundle;
        }
    }

    public e(Context context, String str, int i) {
        this.B = context;
        this.g = new ArrayList();
        this.al = str;
        this.am = i;
    }

    private void O() {
        if (this.u || this.r || this.q || this.v) {
            if (this.a > 20.0f) {
                this.a = 20.0f;
            }
            if (E().a > 20.0f) {
                ab E = E();
                E.a = 20.0f;
                a(E);
                return;
            }
            return;
        }
        this.a = this.c;
    }

    private void P() {
        if (!this.m) {
            this.m = true;
            this.n = false;
            for (l a : this.g) {
                a.a(E());
            }
        }
    }

    private boolean Q() {
        if (this.h == null || !this.j) {
            return true;
        }
        this.ad = false;
        if (!this.d) {
            return false;
        }
        long j = this.aj - this.ai;
        float abs = (Math.abs(this.ag - this.ae) * 1000.0f) / ((float) j);
        float abs2 = (Math.abs(this.ah - this.af) * 1000.0f) / ((float) j);
        abs2 = (float) Math.sqrt((double) ((abs2 * abs2) + (abs * abs)));
        if (abs2 <= 500.0f) {
            return false;
        }
        A();
        a(34, (int) (abs2 * 0.6f), (((int) this.ah) << 16) | ((int) this.ag));
        L();
        return true;
    }

    private Activity a(Context context) {
        return context == null ? null : context instanceof Activity ? (Activity) context : context instanceof ContextWrapper ? a(((ContextWrapper) context).getBaseContext()) : null;
    }

    private void a(d dVar) {
        if (this.h != null) {
            dVar.a = this.h.a(dVar.c, dVar.d, dVar.b);
            this.C.add(dVar);
        }
    }

    private void a(String str, String str2, long j) {
        try {
            Class cls = Class.forName(str);
            Object newInstance = cls.newInstance();
            cls.getMethod(str2, new Class[]{Long.TYPE}).invoke(newInstance, new Object[]{Long.valueOf(j)});
        } catch (Exception e) {
        }
    }

    private void b(MotionEvent motionEvent) {
        if (!this.Q.e) {
            this.ab = motionEvent.getDownTime();
            if (this.ab - this.aa >= 400) {
                this.aa = this.ab;
            } else if (Math.abs(motionEvent.getX() - this.X) >= 120.0f || Math.abs(motionEvent.getY() - this.Y) >= 120.0f) {
                this.aa = this.ab;
            } else {
                this.aa = 0;
            }
            this.X = motionEvent.getX();
            this.Y = motionEvent.getY();
            a(4, 0, ((int) motionEvent.getX()) | (((int) motionEvent.getY()) << 16));
            this.Z = true;
        }
    }

    private void b(String str, Bundle bundle) {
        if (this.h != null) {
            this.E.a(str);
            this.E.a(bundle);
            this.h.b(this.E.a);
        }
    }

    private boolean c(MotionEvent motionEvent) {
        if (this.Q.e) {
            return true;
        }
        if (System.currentTimeMillis() - l < 300) {
            return true;
        }
        if (this.o) {
            for (l d : this.g) {
                d.d(b((int) motionEvent.getX(), (int) motionEvent.getY()));
            }
            return true;
        }
        float abs = Math.abs(motionEvent.getX() - this.X);
        float abs2 = Math.abs(motionEvent.getY() - this.Y);
        float density = (float) (((double) SysOSUtil.getDensity()) > 1.5d ? ((double) SysOSUtil.getDensity()) * 1.5d : (double) SysOSUtil.getDensity());
        if (this.Z && abs / density <= 3.0f && abs2 / density <= 3.0f) {
            return true;
        }
        this.Z = false;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (x < 0) {
            x = 0;
        }
        if (y < 0) {
            y = 0;
        }
        if (!this.d) {
            return false;
        }
        BaiduMap.mapStatusReason |= 1;
        P();
        a(3, 0, (y << 16) | x);
        return false;
    }

    private boolean d(MotionEvent motionEvent) {
        if (this.o) {
            for (l e : this.g) {
                e.e(b((int) motionEvent.getX(), (int) motionEvent.getY()));
            }
            this.o = false;
            return true;
        }
        boolean z = !this.Q.e && motionEvent.getEventTime() - this.ab < 400 && Math.abs(motionEvent.getX() - this.X) < 10.0f && Math.abs(motionEvent.getY() - this.Y) < 10.0f;
        L();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (z) {
            return false;
        }
        if (x < 0) {
            x = 0;
        }
        a(5, 0, ((y < 0 ? 0 : y) << 16) | x);
        return true;
    }

    private boolean e(float f, float f2) {
        if (this.h == null || !this.j) {
            return true;
        }
        this.ac = false;
        GeoPoint b = b((int) f, (int) f2);
        if (b == null) {
            return false;
        }
        for (l b2 : this.g) {
            b2.b(b);
        }
        if (!this.e) {
            return false;
        }
        ab E = E();
        E.a += 1.0f;
        E.d = b.getLongitudeE6();
        E.e = b.getLatitudeE6();
        a(E, 300);
        l = System.currentTimeMillis();
        return true;
    }

    private boolean e(Bundle bundle) {
        return this.h == null ? false : this.h.e(bundle);
    }

    private boolean f(Bundle bundle) {
        boolean z = false;
        if (!(bundle == null || this.h == null)) {
            z = this.h.d(bundle);
            if (z) {
                e(z);
                this.h.b(this.z.a);
            }
        }
        return z;
    }

    private void g(Bundle bundle) {
        if (bundle.get("param") != null) {
            Bundle bundle2 = (Bundle) bundle.get("param");
            int i = bundle2.getInt("type");
            if (i == h.ground.ordinal()) {
                bundle2.putLong("layer_addr", this.G.a);
                return;
            } else if (i >= h.arc.ordinal()) {
                bundle2.putLong("layer_addr", this.G.a);
                return;
            } else if (i == h.popup.ordinal()) {
                bundle2.putLong("layer_addr", this.G.a);
                return;
            } else {
                bundle2.putLong("layer_addr", this.G.a);
                return;
            }
        }
        int i2 = bundle.getInt("type");
        if (i2 == h.ground.ordinal()) {
            bundle.putLong("layer_addr", this.G.a);
        } else if (i2 >= h.arc.ordinal()) {
            bundle.putLong("layer_addr", this.G.a);
        } else if (i2 == h.popup.ordinal()) {
            bundle.putLong("layer_addr", this.G.a);
        } else {
            bundle.putLong("layer_addr", this.G.a);
        }
    }

    static void l(boolean z) {
        ap = com.baidu.mapsdkplatform.comjni.map.basemap.a.b();
        if (ap == null || ap.size() == 0) {
            com.baidu.mapsdkplatform.comjni.map.basemap.a.b(0, z);
            return;
        }
        com.baidu.mapsdkplatform.comjni.map.basemap.a.b(((JNIBaseMap) ap.get(0)).a, z);
        for (JNIBaseMap jNIBaseMap : ap) {
            jNIBaseMap.ClearLayer(jNIBaseMap.a, -1);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void A() {
        if (!this.m && !this.n) {
            this.n = true;
            for (l a : this.g) {
                a.a(E());
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void B() {
        this.n = false;
        this.m = false;
        for (l c : this.g) {
            c.c(E());
        }
    }

    public boolean C() {
        return this.h != null ? this.h.a(this.F.a) : false;
    }

    public boolean D() {
        return this.h != null ? this.h.a(this.ao.a) : false;
    }

    public ab E() {
        if (this.h == null) {
            return null;
        }
        Bundle h = this.h.h();
        ab abVar = new ab();
        abVar.a(h);
        return abVar;
    }

    public LatLngBounds F() {
        if (this.h == null) {
            return null;
        }
        Bundle i = this.h.i();
        Builder builder = new Builder();
        int i2 = i.getInt("maxCoorx");
        int i3 = i.getInt("minCoorx");
        builder.include(CoordUtil.mc2ll(new GeoPoint((double) i.getInt("minCoory"), (double) i2))).include(CoordUtil.mc2ll(new GeoPoint((double) i.getInt("maxCoory"), (double) i3)));
        return builder.build();
    }

    public int G() {
        return this.N;
    }

    public int H() {
        return this.O;
    }

    /* Access modifiers changed, original: 0000 */
    public ab I() {
        if (this.h == null) {
            return null;
        }
        Bundle j = this.h.j();
        ab abVar = new ab();
        abVar.a(j);
        return abVar;
    }

    public double J() {
        return E().m;
    }

    /* Access modifiers changed, original: 0000 */
    public void K() {
        this.m = false;
        if (!this.n) {
            for (l c : this.g) {
                c.c(E());
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void L() {
        this.P = 0;
        this.Q.e = false;
        this.Q.h = 0.0d;
    }

    public Queue<a> M() {
        return this.ar;
    }

    public void N() {
        if (!this.ar.isEmpty()) {
            a aVar = (a) this.ar.poll();
            if (aVar.e == null) {
                com.baidu.mapsdkplatform.comjni.map.basemap.a.a(aVar.a, aVar.b, aVar.c, aVar.d);
            } else if (this.h != null) {
                A();
                this.h.a(aVar.e);
            }
        }
    }

    public float a(int i, int i2, int i3, int i4, int i5, int i6) {
        if (!this.j) {
            return 12.0f;
        }
        if (this.h == null) {
            return 0.0f;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("left", i);
        bundle.putInt("right", i3);
        bundle.putInt("bottom", i4);
        bundle.putInt("top", i2);
        bundle.putInt("hasHW", 1);
        bundle.putInt("width", i5);
        bundle.putInt(QMarker.MARKER_HEIGHT, i6);
        return this.h.c(bundle);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(int i, int i2, int i3) {
        if (!this.aq) {
            return com.baidu.mapsdkplatform.comjni.map.basemap.a.a(this.i, i, i2, i3);
        }
        this.ar.add(new a(this.i, i, i2, i3));
        return 0;
    }

    public int a(Bundle bundle, long j, int i, Bundle bundle2) {
        if (j == this.E.a) {
            bundle.putString("jsondata", this.E.a());
            bundle.putBundle("param", this.E.b());
            return this.E.g;
        } else if (j == this.D.a) {
            bundle.putString("jsondata", this.D.a());
            bundle.putBundle("param", this.D.b());
            return this.D.g;
        } else if (j == this.H.a) {
            bundle.putBundle("param", this.J.a(bundle2.getInt(MapViewConstants.ATTR_X), bundle2.getInt(MapViewConstants.ATTR_Y), bundle2.getInt("zoom")));
            return this.H.g;
        } else if (j != this.z.a) {
            return 0;
        } else {
            bundle.putBundle("param", this.A.a(bundle2.getInt(MapViewConstants.ATTR_X), bundle2.getInt(MapViewConstants.ATTR_Y), bundle2.getInt("zoom"), this.B));
            return this.z.g;
        }
    }

    public Point a(GeoPoint geoPoint) {
        return this.K.a(geoPoint);
    }

    /* Access modifiers changed, original: 0000 */
    public void a() {
        this.C = new ArrayList();
        this.ak = new f();
        a(this.ak);
        this.an = new b();
        a(this.an);
        this.H = new n();
        a(this.H);
        this.I = new a();
        a(this.I);
        a(new p());
        this.F = new ae();
        a(this.F);
        this.ao = new c();
        a(this.ao);
        if (this.h != null) {
            this.h.e(false);
        }
        this.G = new ah();
        a(this.G);
        this.E = new g();
        a(this.E);
        this.D = new x();
        a(this.D);
    }

    public void a(float f, float f2) {
        this.a = f;
        this.c = f;
        this.b = f2;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i) {
        this.h = new com.baidu.mapsdkplatform.comjni.map.basemap.a();
        this.h.a(i);
        this.i = this.h.a();
        a("com.baidu.platform.comapi.wnplatform.walkmap.WNaviBaiduMap", "setId", this.i);
        if (SysOSUtil.getDensityDpi() < 180) {
            this.k = 18;
        } else if (SysOSUtil.getDensityDpi() < 240) {
            this.k = 25;
        } else if (SysOSUtil.getDensityDpi() < 320) {
            this.k = 37;
        } else {
            this.k = 50;
        }
        String moduleFileName = SysOSUtil.getModuleFileName();
        String appSDCardPath = EnvironmentUtilities.getAppSDCardPath();
        String appCachePath = EnvironmentUtilities.getAppCachePath();
        String appSecondCachePath = EnvironmentUtilities.getAppSecondCachePath();
        int mapTmpStgMax = EnvironmentUtilities.getMapTmpStgMax();
        int domTmpStgMax = EnvironmentUtilities.getDomTmpStgMax();
        int itsTmpStgMax = EnvironmentUtilities.getItsTmpStgMax();
        String str = SysOSUtil.getDensityDpi() >= 180 ? "/h/" : "/l/";
        String str2 = moduleFileName + "/cfg";
        String str3 = appSDCardPath + "/vmp";
        moduleFileName = str2 + "/a/";
        String str4 = str2 + "/a/";
        String str5 = str2 + "/idrres/";
        appSDCardPath = str3 + str;
        str2 = str3 + str;
        appCachePath = appCachePath + "/tmp/";
        appSecondCachePath = appSecondCachePath + "/tmp/";
        Activity a = a(this.B);
        if (a != null) {
            Display defaultDisplay = a.getWindowManager().getDefaultDisplay();
            this.h.a(moduleFileName, appSDCardPath, appCachePath, appSecondCachePath, str2, str4, this.al, this.am, str5, defaultDisplay.getWidth(), defaultDisplay.getHeight(), SysOSUtil.getDensityDpi(), mapTmpStgMax, domTmpStgMax, itsTmpStgMax, 0);
            return;
        }
        throw new RuntimeException("Please give the right context.");
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, int i2) {
        this.N = i;
        this.O = i2;
    }

    public void a(long j, long j2, long j3, long j4, boolean z) {
        this.h.a(j, j2, j3, j4, z);
    }

    public void a(Bitmap bitmap) {
        int i = 0;
        if (this.h != null) {
            Bundle bundle;
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("type", 0);
                jSONObject2.put(MapViewConstants.ATTR_X, L);
                jSONObject2.put(MapViewConstants.ATTR_Y, M);
                jSONObject2.put("hidetime", 1000);
                jSONArray.put(jSONObject2);
                jSONObject.put(SpeechEvent.KEY_EVENT_RECORD_DATA, jSONArray);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (bitmap == null) {
                bundle = null;
            } else {
                Bundle bundle2 = new Bundle();
                ArrayList arrayList = new ArrayList();
                ParcelItem parcelItem = new ParcelItem();
                Bundle bundle3 = new Bundle();
                ByteBuffer allocate = ByteBuffer.allocate((bitmap.getWidth() * bitmap.getHeight()) * 4);
                bitmap.copyPixelsToBuffer(allocate);
                bundle3.putByteArray("imgdata", allocate.array());
                bundle3.putInt("imgindex", bitmap.hashCode());
                bundle3.putInt("imgH", bitmap.getHeight());
                bundle3.putInt("imgW", bitmap.getWidth());
                bundle3.putInt("hasIcon", 1);
                parcelItem.setBundle(bundle3);
                arrayList.add(parcelItem);
                if (arrayList.size() > 0) {
                    ParcelItem[] parcelItemArr = new ParcelItem[arrayList.size()];
                    while (true) {
                        int i2 = i;
                        if (i2 >= arrayList.size()) {
                            break;
                        }
                        parcelItemArr[i2] = (ParcelItem) arrayList.get(i2);
                        i = i2 + 1;
                    }
                    bundle2.putParcelableArray("icondata", parcelItemArr);
                }
                bundle = bundle2;
            }
            b(jSONObject.toString(), bundle);
            this.h.b(this.E.a);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Handler handler) {
        MessageCenter.registMessage(m_AppUI.MSG_APP_SAVESCREEN, handler);
        MessageCenter.registMessage(39, handler);
        MessageCenter.registMessage(41, handler);
        MessageCenter.registMessage(49, handler);
        MessageCenter.registMessage(m_AppUI.V_WM_VDATAENGINE, handler);
        MessageCenter.registMessage(50, handler);
        MessageCenter.registMessage(999, handler);
        BaseMapCallback.addLayerDataInterface(this.i, this);
    }

    public void a(LatLngBounds latLngBounds) {
        if (latLngBounds != null && this.h != null) {
            LatLng latLng = latLngBounds.northeast;
            LatLng latLng2 = latLngBounds.southwest;
            GeoPoint ll2mc = CoordUtil.ll2mc(latLng);
            GeoPoint ll2mc2 = CoordUtil.ll2mc(latLng2);
            int longitudeE6 = (int) ll2mc.getLongitudeE6();
            int latitudeE6 = (int) ll2mc2.getLatitudeE6();
            int longitudeE62 = (int) ll2mc2.getLongitudeE6();
            int latitudeE62 = (int) ll2mc.getLatitudeE6();
            Bundle bundle = new Bundle();
            bundle.putInt("maxCoorx", longitudeE6);
            bundle.putInt("minCoory", latitudeE6);
            bundle.putInt("minCoorx", longitudeE62);
            bundle.putInt("maxCoory", latitudeE62);
            this.h.b(bundle);
        }
    }

    public void a(ab abVar) {
        if (this.h != null && abVar != null) {
            Bundle a = abVar.a(this);
            a.putInt("animation", 0);
            a.putInt("animatime", 0);
            this.h.a(a);
        }
    }

    public void a(ab abVar, int i) {
        if (this.h != null) {
            Bundle a = abVar.a(this);
            a.putInt("animation", 1);
            a.putInt("animatime", i);
            if (this.aq) {
                this.ar.add(new a(a));
                return;
            }
            A();
            this.h.a(a);
        }
    }

    public void a(ai aiVar) {
        this.A = aiVar;
    }

    public void a(l lVar) {
        this.g.add(lVar);
    }

    public void a(o oVar) {
        this.J = oVar;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(z zVar) {
        ab abVar = new ab();
        if (zVar == null) {
            zVar = new z();
        }
        abVar = zVar.a;
        this.w = zVar.f;
        this.x = zVar.d;
        this.d = zVar.e;
        this.e = zVar.g;
        this.h.a(abVar.a(this));
        this.h.c(y.DEFAULT.ordinal());
        this.s = zVar.b;
        if (zVar.b) {
            L = (int) (SysOSUtil.getDensity() * 40.0f);
            M = (int) (SysOSUtil.getDensity() * 40.0f);
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(MapViewConstants.ATTR_X, L);
                jSONObject2.put(MapViewConstants.ATTR_Y, M);
                jSONObject2.put("hidetime", 1000);
                jSONArray.put(jSONObject2);
                jSONObject.put(SpeechEvent.KEY_EVENT_RECORD_DATA, jSONArray);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.E.a(jSONObject.toString());
            this.h.a(this.E.a, true);
        } else {
            this.h.a(this.E.a, false);
        }
        int i = zVar.c;
        if (i == 2) {
            a(true);
        }
        if (i == 3) {
            this.h.a(this.ak.a, false);
            this.h.a(this.ao.a, false);
            this.h.a(this.F.a, false);
            this.h.e(false);
        }
    }

    public void a(String str, Bundle bundle) {
        if (this.h != null) {
            this.D.a(str);
            this.D.a(bundle);
            this.h.b(this.D.a);
        }
    }

    public void a(List<Bundle> list) {
        if (this.h != null && list != null) {
            int size = list.size();
            Bundle[] bundleArr = new Bundle[list.size()];
            for (int i = 0; i < size; i++) {
                g((Bundle) list.get(i));
                bundleArr[i] = (Bundle) list.get(i);
            }
            this.h.a(bundleArr);
        }
    }

    public void a(boolean z) {
        if (this.h != null) {
            if (!this.h.a(this.ak.a)) {
                this.h.a(this.ak.a, true);
            }
            this.r = z;
            O();
            this.h.a(this.r);
        }
    }

    public boolean a(float f, float f2, float f3, float f4) {
        float f5 = ((float) this.O) - f2;
        float f6 = ((float) this.O) - f4;
        if (this.Q.e) {
            double sqrt;
            int log;
            int atan2;
            if (this.P == 0) {
                if ((this.Q.c - f5 <= 0.0f || this.Q.d - f6 <= 0.0f) && (this.Q.c - f5 >= 0.0f || this.Q.d - f6 >= 0.0f)) {
                    this.P = 2;
                } else {
                    sqrt = Math.sqrt((double) (((f3 - f) * (f3 - f)) + ((f6 - f5) * (f6 - f5)))) / this.Q.h;
                    log = (int) ((Math.log(sqrt) / Math.log(2.0d)) * 10000.0d);
                    atan2 = (int) (((Math.atan2((double) (f6 - f5), (double) (f3 - f)) - Math.atan2((double) (this.Q.d - this.Q.c), (double) (this.Q.b - this.Q.a))) * 180.0d) / 3.1416d);
                    if ((sqrt <= 0.0d || (log <= 3000 && log >= -3000)) && Math.abs(atan2) < 10) {
                        this.P = 1;
                    } else {
                        this.P = 2;
                    }
                }
                if (this.P == 0) {
                    return true;
                }
            }
            if (this.P == 1 && this.w) {
                if (this.Q.c - f5 > 0.0f && this.Q.d - f6 > 0.0f) {
                    P();
                    a(1, 83, 0);
                } else if (this.Q.c - f5 < 0.0f && this.Q.d - f6 < 0.0f) {
                    P();
                    a(1, 87, 0);
                }
            } else if (this.P == 2 || this.P == 4 || this.P == 3) {
                double atan22 = Math.atan2((double) (f6 - f5), (double) (f3 - f)) - Math.atan2((double) (this.Q.d - this.Q.c), (double) (this.Q.b - this.Q.a));
                sqrt = Math.sqrt((double) (((f3 - f) * (f3 - f)) + ((f6 - f5) * (f6 - f5)))) / this.Q.h;
                log = (int) ((Math.log(sqrt) / Math.log(2.0d)) * 10000.0d);
                double atan23 = Math.atan2((double) (this.Q.g - this.Q.c), (double) (this.Q.f - this.Q.a));
                double sqrt2 = Math.sqrt((double) (((this.Q.f - this.Q.a) * (this.Q.f - this.Q.a)) + ((this.Q.g - this.Q.c) * (this.Q.g - this.Q.c))));
                float cos = (float) (((Math.cos(atan23 + atan22) * sqrt2) * sqrt) + ((double) f));
                float sin = (float) (((Math.sin(atan23 + atan22) * sqrt2) * sqrt) + ((double) f5));
                atan2 = (int) ((atan22 * 180.0d) / 3.1416d);
                if (sqrt > 0.0d && (3 == this.P || (Math.abs(log) > 2000 && 2 == this.P))) {
                    this.P = 3;
                    float f7 = E().a;
                    if (this.e) {
                        if (sqrt > 1.0d) {
                            if (f7 >= this.a) {
                                return false;
                            }
                            P();
                            a((int) k_event.V_WM_ROTATE, 3, log);
                        } else if (f7 <= this.b) {
                            return false;
                        } else {
                            P();
                            a((int) k_event.V_WM_ROTATE, 3, log);
                        }
                    }
                } else if (atan2 != 0 && (4 == this.P || (Math.abs(atan2) > 10 && 2 == this.P))) {
                    this.P = 4;
                    if (this.x) {
                        BaiduMap.mapStatusReason |= 1;
                        P();
                        a((int) k_event.V_WM_ROTATE, 1, atan2);
                    }
                }
                this.Q.f = cos;
                this.Q.g = sin;
            }
        }
        if (2 != this.P) {
            this.Q.c = f5;
            this.Q.d = f6;
            this.Q.a = f;
            this.Q.b = f3;
        }
        if (!this.Q.e) {
            this.Q.f = (float) (this.N / 2);
            this.Q.g = (float) (this.O / 2);
            this.Q.e = true;
            if (0.0d == this.Q.h) {
                this.Q.h = Math.sqrt((double) (((this.Q.b - this.Q.a) * (this.Q.b - this.Q.a)) + ((this.Q.d - this.Q.c) * (this.Q.d - this.Q.c))));
            }
        }
        return true;
    }

    public boolean a(long j) {
        for (d dVar : this.C) {
            if (dVar.a == j) {
                return true;
            }
        }
        return false;
    }

    public boolean a(Point point) {
        if (point == null || this.h == null || point.x < 0 || point.y < 0) {
            return false;
        }
        L = point.x;
        M = point.y;
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(MapViewConstants.ATTR_X, L);
            jSONObject2.put(MapViewConstants.ATTR_Y, M);
            jSONObject2.put("hidetime", 1000);
            jSONArray.put(jSONObject2);
            jSONObject.put(SpeechEvent.KEY_EVENT_RECORD_DATA, jSONArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.E.a(jSONObject.toString());
        this.h.b(this.E.a);
        return true;
    }

    public boolean a(Bundle bundle) {
        if (this.h == null) {
            return false;
        }
        this.z = new aj();
        long a = this.h.a(this.z.c, this.z.d, this.z.b);
        if (a == 0) {
            return false;
        }
        this.z.a = a;
        this.C.add(this.z);
        bundle.putLong("sdktileaddr", a);
        return e(bundle) && f(bundle);
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Missing block: B:5:0x0036, code skipped:
            if (c((int) r20.getX(1), (int) r20.getY(1)) == false) goto L_0x0038;
     */
    public boolean a(android.view.MotionEvent r20) {
        /*
        r19 = this;
        r2 = 1;
        r3 = r20.getPointerCount();
        r4 = 2;
        if (r3 != r4) goto L_0x0039;
    L_0x0008:
        r4 = 0;
        r0 = r20;
        r4 = r0.getX(r4);
        r4 = (int) r4;
        r5 = 0;
        r0 = r20;
        r5 = r0.getY(r5);
        r5 = (int) r5;
        r0 = r19;
        r4 = r0.c(r4, r5);
        if (r4 == 0) goto L_0x0038;
    L_0x0020:
        r4 = 1;
        r0 = r20;
        r4 = r0.getX(r4);
        r4 = (int) r4;
        r5 = 1;
        r0 = r20;
        r5 = r0.getY(r5);
        r5 = (int) r5;
        r0 = r19;
        r4 = r0.c(r4, r5);
        if (r4 != 0) goto L_0x0039;
    L_0x0038:
        r3 = 1;
    L_0x0039:
        r4 = 2;
        if (r3 != r4) goto L_0x0501;
    L_0x003c:
        r0 = r19;
        r2 = r0.O;
        r2 = (float) r2;
        r3 = 0;
        r0 = r20;
        r3 = r0.getY(r3);
        r4 = r2 - r3;
        r0 = r19;
        r2 = r0.O;
        r2 = (float) r2;
        r3 = 1;
        r0 = r20;
        r3 = r0.getY(r3);
        r5 = r2 - r3;
        r2 = 0;
        r0 = r20;
        r6 = r0.getX(r2);
        r2 = 1;
        r0 = r20;
        r7 = r0.getX(r2);
        r2 = r20.getAction();
        switch(r2) {
            case 5: goto L_0x01a0;
            case 6: goto L_0x01c8;
            case 261: goto L_0x01b4;
            case 262: goto L_0x01dc;
            default: goto L_0x006d;
        };
    L_0x006d:
        r0 = r19;
        r2 = r0.R;
        if (r2 != 0) goto L_0x007b;
    L_0x0073:
        r2 = android.view.VelocityTracker.obtain();
        r0 = r19;
        r0.R = r2;
    L_0x007b:
        r0 = r19;
        r2 = r0.R;
        r0 = r20;
        r2.addMovement(r0);
        r2 = android.view.ViewConfiguration.getMinimumFlingVelocity();
        r3 = android.view.ViewConfiguration.getMaximumFlingVelocity();
        r0 = r19;
        r8 = r0.R;
        r9 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r3 = (float) r3;
        r8.computeCurrentVelocity(r9, r3);
        r0 = r19;
        r3 = r0.R;
        r8 = 1;
        r3 = r3.getXVelocity(r8);
        r0 = r19;
        r8 = r0.R;
        r9 = 1;
        r8 = r8.getYVelocity(r9);
        r0 = r19;
        r9 = r0.R;
        r10 = 2;
        r9 = r9.getXVelocity(r10);
        r0 = r19;
        r10 = r0.R;
        r11 = 2;
        r10 = r10.getYVelocity(r11);
        r3 = java.lang.Math.abs(r3);
        r11 = (float) r2;
        r3 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1));
        if (r3 > 0) goto L_0x00de;
    L_0x00c3:
        r3 = java.lang.Math.abs(r8);
        r8 = (float) r2;
        r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1));
        if (r3 > 0) goto L_0x00de;
    L_0x00cc:
        r3 = java.lang.Math.abs(r9);
        r8 = (float) r2;
        r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1));
        if (r3 > 0) goto L_0x00de;
    L_0x00d5:
        r3 = java.lang.Math.abs(r10);
        r2 = (float) r2;
        r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1));
        if (r2 <= 0) goto L_0x0492;
    L_0x00de:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.e;
        if (r2 == 0) goto L_0x0233;
    L_0x00e6:
        r0 = r19;
        r2 = r0.P;
        if (r2 != 0) goto L_0x01fc;
    L_0x00ec:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.c;
        r2 = r2 - r4;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 <= 0) goto L_0x0104;
    L_0x00f8:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.d;
        r2 = r2 - r5;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 > 0) goto L_0x011c;
    L_0x0104:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.c;
        r2 = r2 - r4;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 >= 0) goto L_0x01f6;
    L_0x0110:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.d;
        r2 = r2 - r5;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 >= 0) goto L_0x01f6;
    L_0x011c:
        r2 = r5 - r4;
        r2 = (double) r2;
        r8 = r7 - r6;
        r8 = (double) r8;
        r2 = java.lang.Math.atan2(r2, r8);
        r0 = r19;
        r8 = r0.Q;
        r8 = r8.d;
        r0 = r19;
        r9 = r0.Q;
        r9 = r9.c;
        r8 = r8 - r9;
        r8 = (double) r8;
        r0 = r19;
        r10 = r0.Q;
        r10 = r10.b;
        r0 = r19;
        r11 = r0.Q;
        r11 = r11.a;
        r10 = r10 - r11;
        r10 = (double) r10;
        r8 = java.lang.Math.atan2(r8, r10);
        r2 = r2 - r8;
        r8 = r7 - r6;
        r9 = r7 - r6;
        r8 = r8 * r9;
        r9 = r5 - r4;
        r10 = r5 - r4;
        r9 = r9 * r10;
        r8 = r8 + r9;
        r8 = (double) r8;
        r8 = java.lang.Math.sqrt(r8);
        r0 = r19;
        r10 = r0.Q;
        r10 = r10.h;
        r8 = r8 / r10;
        r10 = java.lang.Math.log(r8);
        r12 = 4611686018427387904; // 0x4000000000000000 float:0.0 double:2.0;
        r12 = java.lang.Math.log(r12);
        r10 = r10 / r12;
        r12 = 4666723172467343360; // 0x40c3880000000000 float:0.0 double:10000.0;
        r10 = r10 * r12;
        r10 = (int) r10;
        r11 = 4640537203540230144; // 0x4066800000000000 float:0.0 double:180.0;
        r2 = r2 * r11;
        r11 = 4614256673094690983; // 0x400921ff2e48e8a7 float:4.5681372E-11 double:3.1416;
        r2 = r2 / r11;
        r2 = (int) r2;
        r11 = 0;
        r3 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1));
        if (r3 <= 0) goto L_0x018b;
    L_0x0183:
        r3 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        if (r10 > r3) goto L_0x0193;
    L_0x0187:
        r3 = -3000; // 0xfffffffffffff448 float:NaN double:NaN;
        if (r10 < r3) goto L_0x0193;
    L_0x018b:
        r2 = java.lang.Math.abs(r2);
        r3 = 10;
        if (r2 < r3) goto L_0x01f0;
    L_0x0193:
        r2 = 2;
        r0 = r19;
        r0.P = r2;
    L_0x0198:
        r0 = r19;
        r2 = r0.P;
        if (r2 != 0) goto L_0x01fc;
    L_0x019e:
        r2 = 1;
    L_0x019f:
        return r2;
    L_0x01a0:
        r2 = r20.getEventTime();
        r0 = r19;
        r0.T = r2;
        r0 = r19;
        r2 = r0.W;
        r2 = r2 + -1;
        r0 = r19;
        r0.W = r2;
        goto L_0x006d;
    L_0x01b4:
        r2 = r20.getEventTime();
        r0 = r19;
        r0.S = r2;
        r0 = r19;
        r2 = r0.W;
        r2 = r2 + -1;
        r0 = r19;
        r0.W = r2;
        goto L_0x006d;
    L_0x01c8:
        r2 = r20.getEventTime();
        r0 = r19;
        r0.V = r2;
        r0 = r19;
        r2 = r0.W;
        r2 = r2 + 1;
        r0 = r19;
        r0.W = r2;
        goto L_0x006d;
    L_0x01dc:
        r2 = r20.getEventTime();
        r0 = r19;
        r0.U = r2;
        r0 = r19;
        r2 = r0.W;
        r2 = r2 + 1;
        r0 = r19;
        r0.W = r2;
        goto L_0x006d;
    L_0x01f0:
        r2 = 1;
        r0 = r19;
        r0.P = r2;
        goto L_0x0198;
    L_0x01f6:
        r2 = 2;
        r0 = r19;
        r0.P = r2;
        goto L_0x0198;
    L_0x01fc:
        r0 = r19;
        r2 = r0.P;
        r3 = 1;
        if (r2 != r3) goto L_0x02f8;
    L_0x0203:
        r0 = r19;
        r2 = r0.w;
        if (r2 == 0) goto L_0x02f8;
    L_0x0209:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.c;
        r2 = r2 - r4;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 <= 0) goto L_0x02cc;
    L_0x0215:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.d;
        r2 = r2 - r5;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 <= 0) goto L_0x02cc;
    L_0x0221:
        r2 = com.baidu.mapapi.map.BaiduMap.mapStatusReason;
        r2 = r2 | 1;
        com.baidu.mapapi.map.BaiduMap.mapStatusReason = r2;
        r19.P();
        r2 = 1;
        r3 = 83;
        r8 = 0;
        r0 = r19;
        r0.a(r2, r3, r8);
    L_0x0233:
        r2 = 2;
        r0 = r19;
        r3 = r0.P;
        if (r2 == r3) goto L_0x0252;
    L_0x023a:
        r0 = r19;
        r2 = r0.Q;
        r2.c = r4;
        r0 = r19;
        r2 = r0.Q;
        r2.d = r5;
        r0 = r19;
        r2 = r0.Q;
        r2.a = r6;
        r0 = r19;
        r2 = r0.Q;
        r2.b = r7;
    L_0x0252:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.e;
        if (r2 != 0) goto L_0x02c9;
    L_0x025a:
        r0 = r19;
        r2 = r0.Q;
        r0 = r19;
        r3 = r0.N;
        r3 = r3 / 2;
        r3 = (float) r3;
        r2.f = r3;
        r0 = r19;
        r2 = r0.Q;
        r0 = r19;
        r3 = r0.O;
        r3 = r3 / 2;
        r3 = (float) r3;
        r2.g = r3;
        r0 = r19;
        r2 = r0.Q;
        r3 = 1;
        r2.e = r3;
        r2 = 0;
        r0 = r19;
        r4 = r0.Q;
        r4 = r4.h;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x02c9;
    L_0x0287:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.b;
        r0 = r19;
        r3 = r0.Q;
        r3 = r3.a;
        r2 = r2 - r3;
        r0 = r19;
        r3 = r0.Q;
        r3 = r3.b;
        r0 = r19;
        r4 = r0.Q;
        r4 = r4.a;
        r3 = r3 - r4;
        r2 = r2 * r3;
        r0 = r19;
        r3 = r0.Q;
        r3 = r3.d;
        r0 = r19;
        r4 = r0.Q;
        r4 = r4.c;
        r3 = r3 - r4;
        r0 = r19;
        r4 = r0.Q;
        r4 = r4.d;
        r0 = r19;
        r5 = r0.Q;
        r5 = r5.c;
        r4 = r4 - r5;
        r3 = r3 * r4;
        r2 = r2 + r3;
        r2 = (double) r2;
        r2 = java.lang.Math.sqrt(r2);
        r0 = r19;
        r4 = r0.Q;
        r4.h = r2;
    L_0x02c9:
        r2 = 1;
        goto L_0x019f;
    L_0x02cc:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.c;
        r2 = r2 - r4;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 >= 0) goto L_0x0233;
    L_0x02d8:
        r0 = r19;
        r2 = r0.Q;
        r2 = r2.d;
        r2 = r2 - r5;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 >= 0) goto L_0x0233;
    L_0x02e4:
        r2 = com.baidu.mapapi.map.BaiduMap.mapStatusReason;
        r2 = r2 | 1;
        com.baidu.mapapi.map.BaiduMap.mapStatusReason = r2;
        r19.P();
        r2 = 1;
        r3 = 87;
        r8 = 0;
        r0 = r19;
        r0.a(r2, r3, r8);
        goto L_0x0233;
    L_0x02f8:
        r0 = r19;
        r2 = r0.P;
        r3 = 2;
        if (r2 == r3) goto L_0x030d;
    L_0x02ff:
        r0 = r19;
        r2 = r0.P;
        r3 = 4;
        if (r2 == r3) goto L_0x030d;
    L_0x0306:
        r0 = r19;
        r2 = r0.P;
        r3 = 3;
        if (r2 != r3) goto L_0x0233;
    L_0x030d:
        r2 = r5 - r4;
        r2 = (double) r2;
        r8 = r7 - r6;
        r8 = (double) r8;
        r2 = java.lang.Math.atan2(r2, r8);
        r0 = r19;
        r8 = r0.Q;
        r8 = r8.d;
        r0 = r19;
        r9 = r0.Q;
        r9 = r9.c;
        r8 = r8 - r9;
        r8 = (double) r8;
        r0 = r19;
        r10 = r0.Q;
        r10 = r10.b;
        r0 = r19;
        r11 = r0.Q;
        r11 = r11.a;
        r10 = r10 - r11;
        r10 = (double) r10;
        r8 = java.lang.Math.atan2(r8, r10);
        r2 = r2 - r8;
        r8 = r7 - r6;
        r9 = r7 - r6;
        r8 = r8 * r9;
        r9 = r5 - r4;
        r10 = r5 - r4;
        r9 = r9 * r10;
        r8 = r8 + r9;
        r8 = (double) r8;
        r8 = java.lang.Math.sqrt(r8);
        r0 = r19;
        r10 = r0.Q;
        r10 = r10.h;
        r8 = r8 / r10;
        r10 = java.lang.Math.log(r8);
        r12 = 4611686018427387904; // 0x4000000000000000 float:0.0 double:2.0;
        r12 = java.lang.Math.log(r12);
        r10 = r10 / r12;
        r12 = 4666723172467343360; // 0x40c3880000000000 float:0.0 double:10000.0;
        r10 = r10 * r12;
        r10 = (int) r10;
        r0 = r19;
        r11 = r0.Q;
        r11 = r11.g;
        r0 = r19;
        r12 = r0.Q;
        r12 = r12.c;
        r11 = r11 - r12;
        r11 = (double) r11;
        r0 = r19;
        r13 = r0.Q;
        r13 = r13.f;
        r0 = r19;
        r14 = r0.Q;
        r14 = r14.a;
        r13 = r13 - r14;
        r13 = (double) r13;
        r11 = java.lang.Math.atan2(r11, r13);
        r0 = r19;
        r13 = r0.Q;
        r13 = r13.f;
        r0 = r19;
        r14 = r0.Q;
        r14 = r14.a;
        r13 = r13 - r14;
        r0 = r19;
        r14 = r0.Q;
        r14 = r14.f;
        r0 = r19;
        r15 = r0.Q;
        r15 = r15.a;
        r14 = r14 - r15;
        r13 = r13 * r14;
        r0 = r19;
        r14 = r0.Q;
        r14 = r14.g;
        r0 = r19;
        r15 = r0.Q;
        r15 = r15.c;
        r14 = r14 - r15;
        r0 = r19;
        r15 = r0.Q;
        r15 = r15.g;
        r0 = r19;
        r0 = r0.Q;
        r16 = r0;
        r0 = r16;
        r0 = r0.c;
        r16 = r0;
        r15 = r15 - r16;
        r14 = r14 * r15;
        r13 = r13 + r14;
        r13 = (double) r13;
        r13 = java.lang.Math.sqrt(r13);
        r15 = r11 + r2;
        r15 = java.lang.Math.cos(r15);
        r15 = r15 * r13;
        r15 = r15 * r8;
        r0 = (double) r6;
        r17 = r0;
        r15 = r15 + r17;
        r15 = (float) r15;
        r11 = r11 + r2;
        r11 = java.lang.Math.sin(r11);
        r11 = r11 * r13;
        r11 = r11 * r8;
        r13 = (double) r4;
        r11 = r11 + r13;
        r11 = (float) r11;
        r12 = 4640537203540230144; // 0x4066800000000000 float:0.0 double:180.0;
        r2 = r2 * r12;
        r12 = 4614256673094690983; // 0x400921ff2e48e8a7 float:4.5681372E-11 double:3.1416;
        r2 = r2 / r12;
        r2 = (int) r2;
        r12 = 0;
        r3 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1));
        if (r3 <= 0) goto L_0x0463;
    L_0x03ef:
        r3 = 3;
        r0 = r19;
        r12 = r0.P;
        if (r3 == r12) goto L_0x0405;
    L_0x03f6:
        r3 = java.lang.Math.abs(r10);
        r12 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        if (r3 <= r12) goto L_0x0463;
    L_0x03fe:
        r3 = 2;
        r0 = r19;
        r12 = r0.P;
        if (r3 != r12) goto L_0x0463;
    L_0x0405:
        r2 = 3;
        r0 = r19;
        r0.P = r2;
        r2 = r19.E();
        r2 = r2.a;
        r0 = r19;
        r3 = r0.e;
        if (r3 == 0) goto L_0x0438;
    L_0x0416:
        r12 = 4607182418800017408; // 0x3ff0000000000000 float:0.0 double:1.0;
        r3 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1));
        if (r3 <= 0) goto L_0x0446;
    L_0x041c:
        r0 = r19;
        r3 = r0.a;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 < 0) goto L_0x0427;
    L_0x0424:
        r2 = 0;
        goto L_0x019f;
    L_0x0427:
        r2 = com.baidu.mapapi.map.BaiduMap.mapStatusReason;
        r2 = r2 | 1;
        com.baidu.mapapi.map.BaiduMap.mapStatusReason = r2;
        r19.P();
        r2 = 8193; // 0x2001 float:1.1481E-41 double:4.048E-320;
        r3 = 3;
        r0 = r19;
        r0.a(r2, r3, r10);
    L_0x0438:
        r0 = r19;
        r2 = r0.Q;
        r2.f = r15;
        r0 = r19;
        r2 = r0.Q;
        r2.g = r11;
        goto L_0x0233;
    L_0x0446:
        r0 = r19;
        r3 = r0.b;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 > 0) goto L_0x0451;
    L_0x044e:
        r2 = 0;
        goto L_0x019f;
    L_0x0451:
        r2 = com.baidu.mapapi.map.BaiduMap.mapStatusReason;
        r2 = r2 | 1;
        com.baidu.mapapi.map.BaiduMap.mapStatusReason = r2;
        r19.P();
        r2 = 8193; // 0x2001 float:1.1481E-41 double:4.048E-320;
        r3 = 3;
        r0 = r19;
        r0.a(r2, r3, r10);
        goto L_0x0438;
    L_0x0463:
        if (r2 == 0) goto L_0x0438;
    L_0x0465:
        r3 = 4;
        r0 = r19;
        r8 = r0.P;
        if (r3 == r8) goto L_0x047b;
    L_0x046c:
        r3 = java.lang.Math.abs(r2);
        r8 = 10;
        if (r3 <= r8) goto L_0x0438;
    L_0x0474:
        r3 = 2;
        r0 = r19;
        r8 = r0.P;
        if (r3 != r8) goto L_0x0438;
    L_0x047b:
        r3 = 4;
        r0 = r19;
        r0.P = r3;
        r0 = r19;
        r3 = r0.x;
        if (r3 == 0) goto L_0x0438;
    L_0x0486:
        r19.P();
        r3 = 8193; // 0x2001 float:1.1481E-41 double:4.048E-320;
        r8 = 1;
        r0 = r19;
        r0.a(r3, r8, r2);
        goto L_0x0438;
    L_0x0492:
        r0 = r19;
        r2 = r0.P;
        if (r2 != 0) goto L_0x0233;
    L_0x0498:
        r0 = r19;
        r2 = r0.W;
        if (r2 != 0) goto L_0x0233;
    L_0x049e:
        r0 = r19;
        r2 = r0.U;
        r0 = r19;
        r8 = r0.V;
        r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r2 <= 0) goto L_0x04f7;
    L_0x04aa:
        r0 = r19;
        r2 = r0.U;
    L_0x04ae:
        r0 = r19;
        r0.U = r2;
        r0 = r19;
        r2 = r0.S;
        r0 = r19;
        r8 = r0.T;
        r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r2 >= 0) goto L_0x04fc;
    L_0x04be:
        r0 = r19;
        r2 = r0.T;
    L_0x04c2:
        r0 = r19;
        r0.S = r2;
        r0 = r19;
        r2 = r0.U;
        r0 = r19;
        r8 = r0.S;
        r2 = r2 - r8;
        r8 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r2 >= 0) goto L_0x0233;
    L_0x04d5:
        r0 = r19;
        r2 = r0.e;
        if (r2 == 0) goto L_0x0233;
    L_0x04db:
        r2 = r19.E();
        if (r2 == 0) goto L_0x0233;
    L_0x04e1:
        r3 = r2.a;
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r3 = r3 - r8;
        r2.a = r3;
        r3 = com.baidu.mapapi.map.BaiduMap.mapStatusReason;
        r3 = r3 | 1;
        com.baidu.mapapi.map.BaiduMap.mapStatusReason = r3;
        r3 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r0 = r19;
        r0.a(r2, r3);
        goto L_0x0233;
    L_0x04f7:
        r0 = r19;
        r2 = r0.V;
        goto L_0x04ae;
    L_0x04fc:
        r0 = r19;
        r2 = r0.S;
        goto L_0x04c2;
    L_0x0501:
        r3 = r20.getAction();
        switch(r3) {
            case 0: goto L_0x050b;
            case 1: goto L_0x0510;
            case 2: goto L_0x0516;
            default: goto L_0x0508;
        };
    L_0x0508:
        r2 = 0;
        goto L_0x019f;
    L_0x050b:
        r19.b(r20);
        goto L_0x019f;
    L_0x0510:
        r2 = r19.d(r20);
        goto L_0x019f;
    L_0x0516:
        r19.c(r20);
        goto L_0x019f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.map.e.a(android.view.MotionEvent):boolean");
    }

    public boolean a(String str, String str2) {
        return this.h.a(str, str2);
    }

    public GeoPoint b(int i, int i2) {
        return this.K.a(i, i2);
    }

    /* Access modifiers changed, original: 0000 */
    public void b(float f, float f2) {
        if (!this.Q.e) {
            this.ab = System.currentTimeMillis();
            if (this.ab - this.aa >= 400) {
                this.aa = this.ab;
            } else if (Math.abs(f - this.X) >= 120.0f || Math.abs(f2 - this.Y) >= 120.0f) {
                this.aa = this.ab;
            } else {
                this.aa = 0;
                this.ac = true;
            }
            this.X = f;
            this.Y = f2;
            a(4, 0, ((int) f) | (((int) f2) << 16));
            this.Z = true;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b(int i) {
        if (this.h != null) {
            this.h.b(i);
            this.h = null;
        }
    }

    public void b(Bundle bundle) {
        if (this.h != null) {
            g(bundle);
            this.h.f(bundle);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b(Handler handler) {
        MessageCenter.unregistMessage(m_AppUI.MSG_APP_SAVESCREEN, handler);
        MessageCenter.unregistMessage(41, handler);
        MessageCenter.unregistMessage(49, handler);
        MessageCenter.unregistMessage(39, handler);
        MessageCenter.unregistMessage(m_AppUI.V_WM_VDATAENGINE, handler);
        MessageCenter.unregistMessage(50, handler);
        MessageCenter.unregistMessage(999, handler);
        BaseMapCallback.removeLayerDataInterface(this.i);
    }

    public void b(boolean z) {
        this.y = z;
    }

    public boolean b() {
        return this.y;
    }

    public void c() {
        if (this.h != null) {
            for (d dVar : this.C) {
                this.h.a(dVar.a, false);
            }
        }
    }

    public void c(Bundle bundle) {
        if (this.h != null) {
            g(bundle);
            this.h.g(bundle);
        }
    }

    public void c(boolean z) {
        if (z) {
            this.h.a(this.G.a, this.D.a);
        } else {
            this.h.a(this.D.a, this.G.a);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean c(float f, float f2) {
        if (this.Q.e) {
            return true;
        }
        if (System.currentTimeMillis() - l < 300) {
            return true;
        }
        if (this.o) {
            for (l d : this.g) {
                d.d(b((int) f, (int) f2));
            }
            return true;
        }
        float abs = Math.abs(f - this.X);
        float abs2 = Math.abs(f2 - this.Y);
        float density = (float) (((double) SysOSUtil.getDensity()) > 1.5d ? ((double) SysOSUtil.getDensity()) * 1.5d : (double) SysOSUtil.getDensity());
        if (this.Z && abs / density <= 3.0f && abs2 / density <= 3.0f) {
            return true;
        }
        this.Z = false;
        int i = (int) f;
        int i2 = (int) f2;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (!this.d) {
            return false;
        }
        this.ae = this.ag;
        this.af = this.ah;
        this.ag = f;
        this.ah = f2;
        this.ai = this.aj;
        this.aj = System.currentTimeMillis();
        this.ad = true;
        P();
        a(3, 0, (i2 << 16) | i);
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean c(int i, int i2) {
        return i >= 0 && i <= this.N + 0 && i2 >= 0 && i2 <= this.O + 0;
    }

    public void d() {
        if (this.h != null) {
            for (d dVar : this.C) {
                if ((dVar instanceof x) || (dVar instanceof a) || (dVar instanceof n)) {
                    this.h.a(dVar.a, false);
                } else {
                    this.h.a(dVar.a, true);
                }
            }
            this.h.c(false);
        }
    }

    public void d(Bundle bundle) {
        if (this.h != null) {
            g(bundle);
            this.h.h(bundle);
        }
    }

    public void d(boolean z) {
        if (this.h != null) {
            this.h.a(this.E.a, z);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean d(float f, float f2) {
        if (this.o) {
            for (l e : this.g) {
                e.e(b((int) f, (int) f2));
            }
            this.o = false;
            return true;
        }
        if (!this.Q.e) {
            if (this.ac) {
                return e(f, f2);
            }
            if (this.ad) {
                return Q();
            }
            if (System.currentTimeMillis() - this.ab < 400 && Math.abs(f - this.X) < 10.0f && Math.abs(f2 - this.Y) < 10.0f) {
                L();
                return true;
            }
        }
        L();
        int i = (int) f;
        int i2 = (int) f2;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        a(5, 0, (i2 << 16) | i);
        return true;
    }

    public void e(boolean z) {
        if (this.h != null) {
            this.h.a(this.z.a, z);
        }
    }

    public boolean e() {
        return (this.z == null || this.h == null) ? false : this.h.c(this.z.a);
    }

    /* Access modifiers changed, original: 0000 */
    public void f() {
        if (this.h != null) {
            this.K = new af(this.h);
        }
    }

    public void f(boolean z) {
        if (this.h != null) {
            this.h.a(this.ak.a, z);
        }
    }

    public void g(boolean z) {
        if (this.h != null) {
            this.v = z;
            this.h.b(this.v);
        }
    }

    public boolean g() {
        return this.q;
    }

    public String h() {
        return this.h == null ? null : this.h.e(this.E.a);
    }

    public void h(boolean z) {
        if (this.h != null) {
            this.q = z;
            this.h.c(this.q);
        }
    }

    public void i(boolean z) {
        if (this.h != null) {
            this.h.d(z);
        }
    }

    public boolean i() {
        return this.v;
    }

    public void j(boolean z) {
        if (this.h != null) {
            this.s = z;
            this.h.a(this.E.a, z);
        }
    }

    public boolean j() {
        return this.h == null ? false : this.h.k();
    }

    public void k(boolean z) {
        if (z) {
            this.a = 22.0f;
            this.c = 22.0f;
        } else {
            this.a = 21.0f;
            this.c = 21.0f;
        }
        this.h.e(z);
        this.h.d(this.an.a);
        this.h.d(this.ao.a);
    }

    public boolean k() {
        return this.r;
    }

    public boolean l() {
        return this.h.a(this.ak.a);
    }

    public void m(boolean z) {
        if (this.h != null) {
            this.t = z;
            this.h.a(this.D.a, z);
        }
    }

    public boolean m() {
        return this.h == null ? false : this.h.o();
    }

    public void n() {
        if (this.h != null) {
            this.h.d(this.G.a);
        }
    }

    public void n(boolean z) {
        if (this.h != null) {
            this.u = z;
            this.h.a(this.H.a, z);
        }
    }

    public void o() {
        if (this.h != null) {
            this.h.p();
            this.h.b(this.H.a);
        }
    }

    public void o(boolean z) {
        this.d = z;
    }

    public MapBaseIndoorMapInfo p() {
        return this.h.q();
    }

    public void p(boolean z) {
        this.e = z;
    }

    public void q(boolean z) {
        this.f = z;
    }

    public boolean q() {
        return this.h.r();
    }

    public void r(boolean z) {
        this.x = z;
    }

    public boolean r() {
        return this.s;
    }

    public void s(boolean z) {
        this.w = z;
    }

    public boolean s() {
        return this.t;
    }

    public void t() {
        if (this.h != null) {
            this.h.b(this.H.a);
        }
    }

    public void t(boolean z) {
        if (this.h != null) {
            this.h.a(this.F.a, z);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void u() {
        if (this.h != null) {
            this.h.e();
        }
    }

    public void u(boolean z) {
        if (this.h != null) {
            this.h.a(this.ao.a, z);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void v() {
        if (this.h != null) {
            this.h.f();
        }
    }

    public void v(boolean z) {
        this.aq = z;
    }

    public boolean w() {
        return this.d;
    }

    public boolean x() {
        return this.e;
    }

    public boolean y() {
        return this.x;
    }

    public boolean z() {
        return this.w;
    }
}
