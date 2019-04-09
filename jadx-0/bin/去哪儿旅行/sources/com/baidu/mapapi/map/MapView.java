package com.baidu.mapapi.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.common.SysOSUtil;
import com.baidu.mapapi.map.MapViewLayoutParams.ELayoutMode;
import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapsdkplatform.comapi.commonutils.a;
import com.baidu.mapsdkplatform.comapi.map.ak;
import com.baidu.mapsdkplatform.comapi.map.e;
import com.baidu.mapsdkplatform.comapi.map.i;
import com.baidu.mapsdkplatform.comapi.map.j;
import com.baidu.mapsdkplatform.comapi.map.l;
import com.mqunar.libtask.ProgressType;
import java.io.File;

public final class MapView extends ViewGroup {
    private static final String a = MapView.class.getSimpleName();
    private static String b;
    private static int c = 0;
    private static final SparseArray<Integer> p = new SparseArray();
    private int A;
    private j d;
    private BaiduMap e;
    private ImageView f;
    private Bitmap g;
    private ak h;
    private Point i;
    private Point j;
    private RelativeLayout k;
    private TextView l;
    private TextView m;
    private ImageView n;
    private Context o;
    private int q = LogoPosition.logoPostionleftBottom.ordinal();
    private boolean r = true;
    private boolean s = true;
    private float t;
    private l u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    static {
        p.append(3, Integer.valueOf(2000000));
        p.append(4, Integer.valueOf(1000000));
        p.append(5, Integer.valueOf(500000));
        p.append(6, Integer.valueOf(200000));
        p.append(7, Integer.valueOf(100000));
        p.append(8, Integer.valueOf(50000));
        p.append(9, Integer.valueOf(25000));
        p.append(10, Integer.valueOf(20000));
        p.append(11, Integer.valueOf(10000));
        p.append(12, Integer.valueOf(5000));
        p.append(13, Integer.valueOf(2000));
        p.append(14, Integer.valueOf(1000));
        p.append(15, Integer.valueOf(500));
        p.append(16, Integer.valueOf(200));
        p.append(17, Integer.valueOf(100));
        p.append(18, Integer.valueOf(50));
        p.append(19, Integer.valueOf(20));
        p.append(20, Integer.valueOf(10));
        p.append(21, Integer.valueOf(5));
        p.append(22, Integer.valueOf(2));
    }

    public MapView(Context context) {
        super(context);
        a(context, null);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, null);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, null);
    }

    public MapView(Context context, BaiduMapOptions baiduMapOptions) {
        super(context);
        a(context, baiduMapOptions);
    }

    private void a(Context context) {
        String str = "logo_h.png";
        int densityDpi = SysOSUtil.getDensityDpi();
        if (densityDpi < 180) {
            str = "logo_l.png";
        }
        Bitmap a = a.a(str, context);
        Matrix matrix;
        if (densityDpi > 480) {
            matrix = new Matrix();
            matrix.postScale(2.0f, 2.0f);
            this.g = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), matrix, true);
        } else if (densityDpi <= 320 || densityDpi > 480) {
            this.g = a;
        } else {
            matrix = new Matrix();
            matrix.postScale(1.5f, 1.5f);
            this.g = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), matrix, true);
        }
        if (this.g != null) {
            this.f = new ImageView(context);
            this.f.setImageBitmap(this.g);
            addView(this.f);
        }
    }

    private void a(Context context, BaiduMapOptions baiduMapOptions) {
        this.o = context;
        i.a();
        BMapManager.init();
        a(context, baiduMapOptions, b, c);
        this.e = new BaiduMap(this.d);
        a(context);
        b(context);
        if (!(baiduMapOptions == null || baiduMapOptions.h)) {
            this.h.setVisibility(4);
        }
        c(context);
        if (!(baiduMapOptions == null || baiduMapOptions.i)) {
            this.k.setVisibility(4);
        }
        if (!(baiduMapOptions == null || baiduMapOptions.j == null)) {
            this.q = baiduMapOptions.j.ordinal();
        }
        if (!(baiduMapOptions == null || baiduMapOptions.l == null)) {
            this.j = baiduMapOptions.l;
        }
        if (baiduMapOptions != null && baiduMapOptions.k != null) {
            this.i = baiduMapOptions.k;
        }
    }

    private void a(Context context, BaiduMapOptions baiduMapOptions, String str, int i) {
        if (baiduMapOptions == null) {
            this.d = new j(context, null, str, i);
        } else {
            this.d = new j(context, baiduMapOptions.a(), str, i);
        }
        addView(this.d);
        this.u = new i(this);
        this.d.a().a(this.u);
    }

    private void a(View view) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new LayoutParams(-2, -2);
        }
        int i = layoutParams.width;
        i = i > 0 ? MeasureSpec.makeMeasureSpec(i, 1073741824) : MeasureSpec.makeMeasureSpec(0, 0);
        int i2 = layoutParams.height;
        view.measure(i, i2 > 0 ? MeasureSpec.makeMeasureSpec(i2, 1073741824) : MeasureSpec.makeMeasureSpec(0, 0));
    }

    private void b() {
        boolean z = true;
        if (this.h.a()) {
            float f = this.d.a().E().a;
            this.h.b(f > this.d.a().b);
            ak akVar = this.h;
            if (f >= this.d.a().a) {
                z = false;
            }
            akVar.a(z);
        }
    }

    private void b(Context context) {
        this.h = new ak(context, false);
        if (this.h.a()) {
            this.h.b(new j(this));
            this.h.a(new k(this));
            addView(this.h);
        }
    }

    private void c(Context context) {
        this.k = new RelativeLayout(context);
        this.k.setLayoutParams(new LayoutParams(-2, -2));
        this.l = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        this.l.setTextColor(Color.parseColor("#FFFFFF"));
        this.l.setTextSize(2, 11.0f);
        this.l.setTypeface(this.l.getTypeface(), 1);
        this.l.setLayoutParams(layoutParams);
        this.l.setId(ProgressType.PRO_END);
        this.k.addView(this.l);
        this.m = new TextView(context);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(14);
        this.m.setTextColor(Color.parseColor("#000000"));
        this.m.setTextSize(2, 11.0f);
        this.m.setLayoutParams(layoutParams);
        this.k.addView(this.m);
        this.n = new ImageView(context);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(14);
        layoutParams.addRule(3, this.l.getId());
        this.n.setLayoutParams(layoutParams);
        Bitmap a = a.a("icon_scale.9.png", context);
        byte[] ninePatchChunk = a.getNinePatchChunk();
        NinePatch.isNinePatchChunk(ninePatchChunk);
        this.n.setBackgroundDrawable(new NinePatchDrawable(a, ninePatchChunk, new Rect(), null));
        this.k.addView(this.n);
        addView(this.k);
    }

    public static void setCustomMapStylePath(String str) {
        if (str == null || str.length() == 0) {
            throw new RuntimeException("customMapStylePath String is illegal");
        } else if (new File(str).exists()) {
            b = str;
        } else {
            throw new RuntimeException("please check whether the customMapStylePath file exits");
        }
    }

    public static void setIconCustom(int i) {
        c = i;
    }

    public static void setMapCustomEnable(boolean z) {
        i.a(z);
    }

    public void addView(View view, LayoutParams layoutParams) {
        if (layoutParams instanceof MapViewLayoutParams) {
            super.addView(view, layoutParams);
        }
    }

    public void cancelRenderMap() {
        this.d.a().v(false);
        this.d.a().M().clear();
    }

    public final LogoPosition getLogoPosition() {
        switch (this.q) {
            case 1:
                return LogoPosition.logoPostionleftTop;
            case 2:
                return LogoPosition.logoPostionCenterBottom;
            case 3:
                return LogoPosition.logoPostionCenterTop;
            case 4:
                return LogoPosition.logoPostionRightBottom;
            case 5:
                return LogoPosition.logoPostionRightTop;
            default:
                return LogoPosition.logoPostionleftBottom;
        }
    }

    public final BaiduMap getMap() {
        this.e.a = this;
        return this.e;
    }

    public final int getMapLevel() {
        return ((Integer) p.get((int) this.d.a().E().a)).intValue();
    }

    public int getScaleControlViewHeight() {
        return this.z;
    }

    public int getScaleControlViewWidth() {
        return this.A;
    }

    public boolean handleMultiTouch(float f, float f2, float f3, float f4) {
        return this.d != null && this.d.a(f, f2, f3, f4);
    }

    public void handleTouchDown(float f, float f2) {
        if (this.d != null) {
            this.d.a(f, f2);
        }
    }

    public boolean handleTouchMove(float f, float f2) {
        return this.d != null && this.d.c(f, f2);
    }

    public boolean handleTouchUp(float f, float f2) {
        return this.d == null ? false : this.d.b(f, f2);
    }

    public boolean inRangeOfView(float f, float f2) {
        return this.d != null && this.d.d(f, f2);
    }

    public void onCreate(Context context, Bundle bundle) {
        if (bundle != null) {
            b = bundle.getString("customMapPath");
            if (bundle == null) {
                a(context, new BaiduMapOptions());
                return;
            }
            MapStatus mapStatus = (MapStatus) bundle.getParcelable("mapstatus");
            if (this.i != null) {
                this.i = (Point) bundle.getParcelable("scalePosition");
            }
            if (this.j != null) {
                this.j = (Point) bundle.getParcelable("zoomPosition");
            }
            this.r = bundle.getBoolean("mZoomControlEnabled");
            this.s = bundle.getBoolean("mScaleControlEnabled");
            this.q = bundle.getInt("logoPosition");
            setPadding(bundle.getInt("paddingLeft"), bundle.getInt("paddingTop"), bundle.getInt("paddingRight"), bundle.getInt("paddingBottom"));
            a(context, new BaiduMapOptions().mapStatus(mapStatus));
        }
    }

    public final void onDestroy() {
        if (this.o != null) {
            this.d.b(this.o.hashCode());
        }
        if (!(this.g == null || this.g.isRecycled())) {
            this.g.recycle();
            this.g = null;
        }
        if (b != null) {
            b = null;
        }
        this.h.b();
        BMapManager.destroy();
        i.b();
        this.o = null;
    }

    /* Access modifiers changed, original: protected|final */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        int childCount = getChildCount();
        a(this.f);
        if (((getWidth() - this.v) - this.w) - this.f.getMeasuredWidth() <= 0 || ((getHeight() - this.x) - this.y) - this.f.getMeasuredHeight() <= 0) {
            this.v = 0;
            this.w = 0;
            this.y = 0;
            this.x = 0;
            f = 1.0f;
            f2 = 1.0f;
        } else {
            f = ((float) ((getWidth() - this.v) - this.w)) / ((float) getWidth());
            f2 = ((float) ((getHeight() - this.x) - this.y)) / ((float) getHeight());
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt != null) {
                int i6;
                int i7;
                int i8;
                int i9;
                if (childAt == this.d) {
                    this.d.layout(0, 0, getWidth(), getHeight());
                } else if (childAt == this.f) {
                    i6 = (int) (((float) this.v) + (5.0f * f));
                    i7 = (int) (((float) this.w) + (5.0f * f));
                    i8 = (int) (((float) this.x) + (5.0f * f2));
                    i9 = (int) (((float) this.y) + (5.0f * f2));
                    switch (this.q) {
                        case 1:
                            i9 = i8 + this.f.getMeasuredHeight();
                            i7 = this.f.getMeasuredWidth() + i6;
                            break;
                        case 2:
                            i9 = getHeight() - i9;
                            i8 = i9 - this.f.getMeasuredHeight();
                            i6 = (((getWidth() - this.f.getMeasuredWidth()) + this.v) - this.w) / 2;
                            i7 = (((getWidth() + this.f.getMeasuredWidth()) + this.v) - this.w) / 2;
                            break;
                        case 3:
                            i9 = i8 + this.f.getMeasuredHeight();
                            i6 = (((getWidth() - this.f.getMeasuredWidth()) + this.v) - this.w) / 2;
                            i7 = (((getWidth() + this.f.getMeasuredWidth()) + this.v) - this.w) / 2;
                            break;
                        case 4:
                            i9 = getHeight() - i9;
                            i8 = i9 - this.f.getMeasuredHeight();
                            i7 = getWidth() - i7;
                            i6 = i7 - this.f.getMeasuredWidth();
                            break;
                        case 5:
                            i9 = this.f.getMeasuredHeight() + i8;
                            i7 = getWidth() - i7;
                            i6 = i7 - this.f.getMeasuredWidth();
                            break;
                        default:
                            i9 = getHeight() - i9;
                            i7 = this.f.getMeasuredWidth() + i6;
                            i8 = i9 - this.f.getMeasuredHeight();
                            break;
                    }
                    this.f.layout(i6, i8, i7, i9);
                } else if (childAt == this.h) {
                    if (this.h.a()) {
                        a(this.h);
                        if (this.j == null) {
                            i9 = (int) ((((float) (getHeight() - 15)) * f2) + ((float) this.x));
                            i8 = (int) ((((float) (getWidth() - 15)) * f) + ((float) this.v));
                            i6 = i8 - this.h.getMeasuredWidth();
                            i7 = i9 - this.h.getMeasuredHeight();
                            if (this.q == 4) {
                                i9 -= this.f.getMeasuredHeight();
                                i7 -= this.f.getMeasuredHeight();
                            }
                            this.h.layout(i6, i7, i8, i9);
                        } else {
                            this.h.layout(this.j.x, this.j.y, this.j.x + this.h.getMeasuredWidth(), this.j.y + this.h.getMeasuredHeight());
                        }
                    }
                } else if (childAt == this.k) {
                    a(this.k);
                    if (this.i == null) {
                        i7 = (int) ((((float) this.y) + (5.0f * f2)) + 56.0f);
                        this.A = this.k.getMeasuredWidth();
                        this.z = this.k.getMeasuredHeight();
                        i9 = (int) (((float) this.v) + (5.0f * f));
                        i7 = (getHeight() - i7) - this.f.getMeasuredHeight();
                        this.k.layout(i9, i7, this.A + i9, this.z + i7);
                    } else {
                        this.k.layout(this.i.x, this.i.y, this.i.x + this.k.getMeasuredWidth(), this.i.y + this.k.getMeasuredHeight());
                    }
                } else {
                    LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams == null) {
                        Log.e("test", "lp == null");
                    }
                    if (layoutParams instanceof MapViewLayoutParams) {
                        Point point;
                        MapViewLayoutParams mapViewLayoutParams = (MapViewLayoutParams) layoutParams;
                        if (mapViewLayoutParams.c == ELayoutMode.absoluteMode) {
                            point = mapViewLayoutParams.b;
                        } else {
                            point = this.d.a().a(CoordUtil.ll2mc(mapViewLayoutParams.a));
                        }
                        a(childAt);
                        i6 = childAt.getMeasuredWidth();
                        int measuredHeight = childAt.getMeasuredHeight();
                        float f3 = mapViewLayoutParams.d;
                        int i10 = (int) (((float) point.x) - (f3 * ((float) i6)));
                        i7 = mapViewLayoutParams.f + ((int) (((float) point.y) - (mapViewLayoutParams.e * ((float) measuredHeight))));
                        childAt.layout(i10, i7, i10 + i6, i7 + measuredHeight);
                    }
                }
            }
        }
    }

    public final void onPause() {
        this.d.onPause();
    }

    public final void onResume() {
        this.d.onResume();
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null && this.e != null) {
            bundle.putParcelable("mapstatus", this.e.getMapStatus());
            if (this.i != null) {
                bundle.putParcelable("scalePosition", this.i);
            }
            if (this.j != null) {
                bundle.putParcelable("zoomPosition", this.j);
            }
            bundle.putBoolean("mZoomControlEnabled", this.r);
            bundle.putBoolean("mScaleControlEnabled", this.s);
            bundle.putInt("logoPosition", this.q);
            bundle.putInt("paddingLeft", this.v);
            bundle.putInt("paddingTop", this.x);
            bundle.putInt("paddingRight", this.w);
            bundle.putInt("paddingBottom", this.y);
            bundle.putString("customMapPath", b);
        }
    }

    public void removeView(View view) {
        if (view != this.f) {
            super.removeView(view);
        }
    }

    public void renderMap() {
        e a = this.d.a();
        a.v(true);
        a.N();
    }

    public final void setLogoPosition(LogoPosition logoPosition) {
        if (logoPosition == null) {
            this.q = LogoPosition.logoPostionleftBottom.ordinal();
        }
        this.q = logoPosition.ordinal();
        requestLayout();
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.v = i;
        this.x = i2;
        this.w = i3;
        this.y = i4;
    }

    public void setScaleControlPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.i = point;
            requestLayout();
        }
    }

    public void setUpViewEventToMapView(MotionEvent motionEvent) {
        this.d.onTouchEvent(motionEvent);
    }

    public final void setZOrderMediaOverlay(boolean z) {
        if (this.d != null) {
            this.d.setZOrderMediaOverlay(z);
        }
    }

    public void setZoomControlsPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.j = point;
            requestLayout();
        }
    }

    public void showScaleControl(boolean z) {
        this.k.setVisibility(z ? 0 : 8);
        this.s = z;
    }

    public void showZoomControls(boolean z) {
        if (this.h.a()) {
            this.h.setVisibility(z ? 0 : 8);
            this.r = z;
        }
    }
}
