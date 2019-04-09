package com.baidu.mapsdkplatform.comapi.map;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import com.baidu.mapapi.common.EnvironmentUtilities;
import com.baidu.mapapi.common.SysOSUtil;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.model.inner.GeoPoint;
import com.baidu.mapsdkplatform.comapi.map.m.a;
import java.util.concurrent.atomic.AtomicBoolean;
import qunar.sdk.mapapi.entity.QMarker;

@SuppressLint({"NewApi"})
public class ac extends TextureView implements OnDoubleTapListener, OnGestureListener, SurfaceTextureListener, a {
    public static int a;
    public static int b;
    public static int c;
    private GestureDetector d;
    private Handler e;
    private boolean f = false;
    private SurfaceTexture g;
    private m h = null;
    private e i;

    public ac(Context context, z zVar, String str, int i) {
        super(context);
        a(context, zVar, str, i);
    }

    private void a(Context context, z zVar, String str, int i) {
        setSurfaceTextureListener(this);
        if (context == null) {
            throw new RuntimeException("when you create an mapview, the context can not be null");
        }
        this.d = new GestureDetector(context, this);
        EnvironmentUtilities.initAppDirectory(context);
        if (this.i == null) {
            this.i = new e(context, str, i);
        }
        this.i.a(context.hashCode());
        this.i.a();
        this.i.a(zVar);
        e();
        this.i.a(this.e);
        this.i.f();
    }

    private void e() {
        this.e = new ad(this);
    }

    public int a() {
        if (this.i == null) {
            return 0;
        }
        if (c <= 1) {
            MapRenderer.nativeResize(this.i.i, a, b);
            c++;
        }
        return MapRenderer.nativeRender(this.i.i);
    }

    public void a(int i) {
        synchronized (this.i) {
            for (l f : this.i.g) {
                f.f();
            }
            if (this.i != null) {
                this.i.b(this.e);
                this.i.b(i);
                this.i = null;
            }
            this.e.removeCallbacksAndMessages(null);
            if (this.h != null) {
                this.h.c();
                this.h = null;
            }
            if (this.g != null) {
                if (VERSION.SDK_INT >= 19) {
                    this.g.release();
                }
                this.g = null;
            }
        }
    }

    public void a(String str, Rect rect) {
        if (this.i != null && this.i.h != null) {
            if (rect != null) {
                int i = rect.left;
                int i2 = b < rect.bottom ? 0 : b - rect.bottom;
                int width = rect.width();
                int height = rect.height();
                if (i >= 0 && i2 >= 0 && width > 0 && height > 0) {
                    if (width > a) {
                        width = Math.abs(rect.width()) - (rect.right - a);
                    }
                    if (height > b) {
                        height = Math.abs(rect.height()) - (rect.bottom - b);
                    }
                    if (i > SysOSUtil.getScreenSizeX() || i2 > SysOSUtil.getScreenSizeY()) {
                        this.i.h.a(str, null);
                        if (this.h != null) {
                            this.h.a();
                            return;
                        }
                        return;
                    }
                    a = width;
                    b = height;
                    Bundle bundle = new Bundle();
                    bundle.putInt(MapViewConstants.ATTR_X, i);
                    bundle.putInt(MapViewConstants.ATTR_Y, i2);
                    bundle.putInt("width", width);
                    bundle.putInt(QMarker.MARKER_HEIGHT, height);
                    this.i.h.a(str, bundle);
                    if (this.h != null) {
                        this.h.a();
                        return;
                    }
                    return;
                }
                return;
            }
            this.i.h.a(str, null);
            if (this.h != null) {
                this.h.a();
            }
        }
    }

    public e b() {
        return this.i;
    }

    public void c() {
        if (this.i != null && this.i.h != null) {
            for (l d : this.i.g) {
                d.d();
            }
            this.i.h.g();
            this.i.h.d();
            this.i.h.n();
            if (this.h != null) {
                this.h.a();
            }
            if (this.i.b()) {
                this.f = true;
            }
        }
    }

    public void d() {
        if (this.i != null && this.i.h != null) {
            this.f = false;
            this.i.h.c();
            synchronized (this.i) {
                this.i.h.c();
                if (this.h != null) {
                    this.h.b();
                }
            }
        }
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        if (this.i == null || this.i.h == null || !this.i.j) {
            return true;
        }
        GeoPoint b = this.i.b((int) motionEvent.getX(), (int) motionEvent.getY());
        if (b == null) {
            return false;
        }
        for (l b2 : this.i.g) {
            b2.b(b);
        }
        if (!this.i.e) {
            return false;
        }
        ab E = this.i.E();
        E.a += 1.0f;
        if (!this.i.f) {
            E.d = b.getLongitudeE6();
            E.e = b.getLatitudeE6();
        }
        BaiduMap.mapStatusReason |= 1;
        this.i.a(E, 300);
        e eVar = this.i;
        e.l = System.currentTimeMillis();
        return true;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.i == null || this.i.h == null || !this.i.j) {
            return true;
        }
        if (!this.i.d) {
            return false;
        }
        float sqrt = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        if (sqrt <= 500.0f) {
            return false;
        }
        BaiduMap.mapStatusReason |= 1;
        this.i.A();
        this.i.a(34, (int) (sqrt * 0.6f), (((int) motionEvent2.getY()) << 16) | ((int) motionEvent2.getX()));
        this.i.L();
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
        if (this.i != null && this.i.h != null && this.i.j) {
            String a = this.i.h.a(-1, (int) motionEvent.getX(), (int) motionEvent.getY(), this.i.k);
            if (a == null || a.equals("")) {
                for (l c : this.i.g) {
                    c.c(this.i.b((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
                return;
            }
            for (l c2 : this.i.g) {
                if (c2.b(a)) {
                    this.i.o = true;
                } else {
                    c2.c(this.i.b((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
            }
        }
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x005c  */
    public boolean onSingleTapConfirmed(android.view.MotionEvent r8) {
        /*
        r7 = this;
        r5 = 1;
        r0 = r7.i;
        if (r0 == 0) goto L_0x0011;
    L_0x0005:
        r0 = r7.i;
        r0 = r0.h;
        if (r0 == 0) goto L_0x0011;
    L_0x000b:
        r0 = r7.i;
        r0 = r0.j;
        if (r0 != 0) goto L_0x0012;
    L_0x0011:
        return r5;
    L_0x0012:
        r0 = r7.i;
        r0 = r0.h;
        r1 = -1;
        r2 = r8.getX();
        r2 = (int) r2;
        r3 = r8.getY();
        r3 = (int) r3;
        r4 = r7.i;
        r4 = r4.k;
        r2 = r0.a(r1, r2, r3, r4);
        r1 = 0;
        if (r2 == 0) goto L_0x0075;
    L_0x002c:
        r0 = "";
        r0 = r2.equals(r0);
        if (r0 != 0) goto L_0x0075;
    L_0x0034:
        r0 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x006c }
        r0.<init>(r2);	 Catch:{ JSONException -> 0x006c }
        r1 = "px";
        r2 = r8.getX();	 Catch:{ JSONException -> 0x009d }
        r2 = (int) r2;	 Catch:{ JSONException -> 0x009d }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x009d }
        r1 = "py";
        r2 = r8.getY();	 Catch:{ JSONException -> 0x009d }
        r2 = (int) r2;	 Catch:{ JSONException -> 0x009d }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x009d }
        r1 = r0;
    L_0x004e:
        r0 = r7.i;
        r0 = r0.g;
        r2 = r0.iterator();
    L_0x0056:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x0011;
    L_0x005c:
        r0 = r2.next();
        r0 = (com.baidu.mapsdkplatform.comapi.map.l) r0;
        if (r1 == 0) goto L_0x0056;
    L_0x0064:
        r3 = r1.toString();
        r0.a(r3);
        goto L_0x0056;
    L_0x006c:
        r0 = move-exception;
        r6 = r0;
        r0 = r1;
        r1 = r6;
    L_0x0070:
        r1.printStackTrace();
        r1 = r0;
        goto L_0x004e;
    L_0x0075:
        r0 = r7.i;
        r0 = r0.g;
        r1 = r0.iterator();
    L_0x007d:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0011;
    L_0x0083:
        r0 = r1.next();
        r0 = (com.baidu.mapsdkplatform.comapi.map.l) r0;
        r2 = r7.i;
        r3 = r8.getX();
        r3 = (int) r3;
        r4 = r8.getY();
        r4 = (int) r4;
        r2 = r2.b(r3, r4);
        r0.a(r2);
        goto L_0x007d;
    L_0x009d:
        r1 = move-exception;
        goto L_0x0070;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.map.ac.onSingleTapConfirmed(android.view.MotionEvent):boolean");
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.i != null) {
            if (this.g == null) {
                this.g = surfaceTexture;
                this.h = new m(this.g, this, new AtomicBoolean(true), this);
                this.h.start();
                a = i;
                b = i2;
                ab E = this.i.E();
                if (E != null) {
                    if (E.f == 0 || E.f == -1 || E.f == (E.j.left - E.j.right) / 2) {
                        E.f = -1;
                    }
                    if (E.g == 0 || E.g == -1 || E.g == (E.j.bottom - E.j.top) / 2) {
                        E.g = -1;
                    }
                    E.j.left = 0;
                    E.j.top = 0;
                    E.j.bottom = i2;
                    E.j.right = i;
                    this.i.a(E);
                    this.i.a(a, b);
                    return;
                }
                return;
            }
            setSurfaceTexture(this.g);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.i != null) {
            a = i;
            b = i2;
            c = 1;
            ab E = this.i.E();
            if (E.f == 0 || E.f == -1 || E.f == (E.j.left - E.j.right) / 2) {
                E.f = -1;
            }
            if (E.g == 0 || E.g == -1 || E.g == (E.j.bottom - E.j.top) / 2) {
                E.g = -1;
            }
            E.j.left = 0;
            E.j.top = 0;
            E.j.bottom = i2;
            E.j.right = i;
            this.i.a(E);
            this.i.a(a, b);
            MapRenderer.nativeResize(this.i.i, i, i2);
        }
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (this.f && this.h != null) {
            this.h.a();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.i == null || this.i.h == null) {
            return true;
        }
        super.onTouchEvent(motionEvent);
        for (l a : this.i.g) {
            a.a(motionEvent);
        }
        return this.d.onTouchEvent(motionEvent) ? true : this.i.a(motionEvent);
    }
}
