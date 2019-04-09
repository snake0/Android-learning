package com.baidu.mapsdkplatform.comapi.map;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import com.baidu.mapapi.common.EnvironmentUtilities;
import com.baidu.mapapi.common.SysOSUtil;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.model.inner.GeoPoint;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import qunar.sdk.mapapi.entity.QMarker;

@SuppressLint({"NewApi"})
public class j extends GLSurfaceView implements OnDoubleTapListener, OnGestureListener, com.baidu.mapsdkplatform.comapi.map.MapRenderer.a {
    private static final String a = j.class.getSimpleName();
    private Handler b;
    private MapRenderer c;
    private int d;
    private int e;
    private GestureDetector f;
    private e g;

    class a {
        float a;
        float b;
        float c;
        float d;
        boolean e;
        float f;
        float g;
        double h;

        a() {
        }

        public String toString() {
            return "MultiTouch{x1=" + this.a + ", x2=" + this.b + ", y1=" + this.c + ", y2=" + this.d + ", mTwoTouch=" + this.e + ", centerX=" + this.f + ", centerY=" + this.g + ", length=" + this.h + '}';
        }
    }

    public j(Context context, z zVar, String str, int i) {
        super(context);
        if (context == null) {
            throw new RuntimeException("when you create an mapview, the context can not be null");
        }
        setEGLContextClientVersion(2);
        this.f = new GestureDetector(context, this);
        EnvironmentUtilities.initAppDirectory(context);
        if (this.g == null) {
            this.g = new e(context, str, i);
        }
        this.g.a(context.hashCode());
        g();
        this.g.a();
        this.g.a(zVar);
        h();
        this.g.a(this.b);
        this.g.f();
        setBackgroundColor(0);
    }

    private static boolean a(int i, int i2, int i3, int i4, int i5, int i6) {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(eglGetDisplay, new int[2]);
        int[] iArr = new int[1];
        return egl10.eglChooseConfig(eglGetDisplay, new int[]{12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344}, new EGLConfig[100], 100, iArr) && iArr[0] > 0;
    }

    private void g() {
        try {
            if (a(8, 8, 8, 8, 24, 0)) {
                setEGLConfigChooser(8, 8, 8, 8, 24, 0);
            } else if (a(5, 6, 5, 0, 24, 0)) {
                setEGLConfigChooser(5, 6, 5, 0, 24, 0);
            } else {
                setEGLConfigChooser(true);
            }
        } catch (IllegalArgumentException e) {
            setEGLConfigChooser(true);
        }
        this.c = new MapRenderer(this, this);
        this.c.a(this.g.i);
        setRenderer(this.c);
        setRenderMode(1);
    }

    private void h() {
        this.b = new k(this);
    }

    public e a() {
        return this.g;
    }

    public void a(float f, float f2) {
        if (this.g != null && this.g.h != null) {
            this.g.b(f, f2);
        }
    }

    public void a(int i) {
        if (this.g != null) {
            Message message = new Message();
            message.what = 50;
            message.obj = Long.valueOf(this.g.i);
            boolean q = this.g.q();
            if (i == 3) {
                message.arg1 = 0;
            } else if (q) {
                message.arg1 = 1;
            }
            this.b.sendMessage(message);
        }
    }

    public void a(String str, Rect rect) {
        if (this.g != null && this.g.h != null) {
            if (rect != null) {
                int i = rect.left;
                int i2 = this.e < rect.bottom ? 0 : this.e - rect.bottom;
                int width = rect.width();
                int height = rect.height();
                if (i >= 0 && i2 >= 0 && width > 0 && height > 0) {
                    if (width > this.d) {
                        width = Math.abs(rect.width()) - (rect.right - this.d);
                    }
                    if (height > this.e) {
                        height = Math.abs(rect.height()) - (rect.bottom - this.e);
                    }
                    if (i > SysOSUtil.getScreenSizeX() || i2 > SysOSUtil.getScreenSizeY()) {
                        this.g.h.a(str, null);
                        requestRender();
                        return;
                    }
                    this.d = width;
                    this.e = height;
                    Bundle bundle = new Bundle();
                    bundle.putInt(MapViewConstants.ATTR_X, i);
                    bundle.putInt(MapViewConstants.ATTR_Y, i2);
                    bundle.putInt("width", width);
                    bundle.putInt(QMarker.MARKER_HEIGHT, height);
                    this.g.h.a(str, bundle);
                    requestRender();
                    return;
                }
                return;
            }
            this.g.h.a(str, null);
            requestRender();
        }
    }

    public boolean a(float f, float f2, float f3, float f4) {
        return (this.g == null || this.g.h == null) ? false : this.g.a(f, f2, f3, f4);
    }

    public void b() {
        if (this.g != null) {
            this.g.u();
        }
    }

    public void b(int i) {
        if (this.g != null) {
            for (l f : this.g.g) {
                f.f();
            }
            this.g.b(this.b);
            this.g.b(i);
            this.g = null;
        }
        if (this.b != null) {
            this.b.removeCallbacksAndMessages(null);
        }
    }

    public boolean b(float f, float f2) {
        return (this.g == null || this.g.h == null) ? false : this.g.d(f, f2);
    }

    public void c() {
        if (this.g != null) {
            this.g.v();
        }
    }

    public boolean c(float f, float f2) {
        return (this.g == null || this.g.h == null) ? false : this.g.c(f, f2);
    }

    public void d() {
        getHolder().setFormat(-3);
        this.g.h.s();
    }

    public boolean d(float f, float f2) {
        return (this.g == null || this.g.h == null) ? false : this.g.c((int) f, (int) f2);
    }

    public void e() {
        getHolder().setFormat(-1);
        this.g.h.t();
    }

    public void f() {
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        if (this.g == null || this.g.h == null || !this.g.j) {
            return true;
        }
        GeoPoint b = this.g.b((int) motionEvent.getX(), (int) motionEvent.getY());
        if (b == null) {
            return false;
        }
        for (l b2 : this.g.g) {
            b2.b(b);
        }
        if (!this.g.e) {
            return false;
        }
        ab E = this.g.E();
        E.a += 1.0f;
        if (!this.g.f) {
            E.d = b.getLongitudeE6();
            E.e = b.getLatitudeE6();
        }
        BaiduMap.mapStatusReason |= 1;
        this.g.a(E, 300);
        e eVar = this.g;
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
        if (this.g == null || this.g.h == null || !this.g.j) {
            return true;
        }
        if (!this.g.d) {
            return false;
        }
        float sqrt = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        if (sqrt <= 500.0f) {
            return false;
        }
        BaiduMap.mapStatusReason |= 1;
        this.g.A();
        this.g.a(34, (int) (sqrt * 0.6f), (((int) motionEvent2.getY()) << 16) | ((int) motionEvent2.getX()));
        this.g.L();
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
        if (this.g != null && this.g.h != null && this.g.j) {
            String a = this.g.h.a(-1, (int) motionEvent.getX(), (int) motionEvent.getY(), this.g.k);
            if (a == null || a.equals("")) {
                for (l c : this.g.g) {
                    c.c(this.g.b((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
                return;
            }
            for (l c2 : this.g.g) {
                if (c2.b(a)) {
                    this.g.o = true;
                } else {
                    c2.c(this.g.b((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
            }
        }
    }

    public void onPause() {
        super.onPause();
        if (this.g != null && this.g.h != null) {
            this.g.h.c();
        }
    }

    public void onResume() {
        super.onResume();
        if (this.g != null && this.g.h != null) {
            for (l d : this.g.g) {
                d.d();
            }
            this.g.h.g();
            this.g.h.d();
            this.g.h.n();
            setRenderMode(1);
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
        r0 = r7.g;
        if (r0 == 0) goto L_0x0011;
    L_0x0005:
        r0 = r7.g;
        r0 = r0.h;
        if (r0 == 0) goto L_0x0011;
    L_0x000b:
        r0 = r7.g;
        r0 = r0.j;
        if (r0 != 0) goto L_0x0012;
    L_0x0011:
        return r5;
    L_0x0012:
        r0 = r7.g;
        r0 = r0.h;
        r1 = -1;
        r2 = r8.getX();
        r2 = (int) r2;
        r3 = r8.getY();
        r3 = (int) r3;
        r4 = r7.g;
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
        r0 = r7.g;
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
        r0 = r7.g;
        r0 = r0.g;
        r1 = r0.iterator();
    L_0x007d:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0011;
    L_0x0083:
        r0 = r1.next();
        r0 = (com.baidu.mapsdkplatform.comapi.map.l) r0;
        r2 = r7.g;
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
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.map.j.onSingleTapConfirmed(android.view.MotionEvent):boolean");
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.g == null || this.g.h == null) {
            return true;
        }
        super.onTouchEvent(motionEvent);
        for (l a : this.g.g) {
            a.a(motionEvent);
        }
        return this.f.onTouchEvent(motionEvent) ? true : this.g.a(motionEvent);
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        super.surfaceChanged(surfaceHolder, i, i2, i3);
        if (this.g != null && this.g.h != null) {
            this.c.a = i2;
            this.c.b = i3;
            this.d = i2;
            this.e = i3;
            this.c.c = 0;
            ab E = this.g.E();
            if (E.f == 0 || E.f == -1 || E.f == (E.j.left - E.j.right) / 2) {
                E.f = -1;
            }
            if (E.g == 0 || E.g == -1 || E.g == (E.j.bottom - E.j.top) / 2) {
                E.g = -1;
            }
            E.j.left = 0;
            E.j.top = 0;
            E.j.bottom = i3;
            E.j.right = i2;
            this.g.a(E);
            this.g.a(this.d, this.e);
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        if (surfaceHolder != null && !surfaceHolder.getSurface().isValid()) {
            surfaceDestroyed(surfaceHolder);
        }
    }
}
