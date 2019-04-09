package com.baidu.mapapi.map;

import android.annotation.SuppressLint;
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
import android.util.SparseArray;
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
import com.baidu.mapsdkplatform.comapi.map.ac;
import com.baidu.mapsdkplatform.comapi.map.ak;
import com.baidu.mapsdkplatform.comapi.map.i;
import com.baidu.mapsdkplatform.comapi.map.l;
import com.mqunar.libtask.ProgressType;
import java.io.File;

public final class TextureMapView extends ViewGroup {
    private static final String a = TextureMapView.class.getSimpleName();
    private static String i;
    private static int j = 0;
    private static final SparseArray<Integer> p = new SparseArray();
    private int A;
    private ac b;
    private BaiduMap c;
    private ImageView d;
    private Bitmap e;
    private ak f;
    private Point g;
    private Point h;
    private RelativeLayout k;
    private TextView l;
    private TextView m;
    private ImageView n;
    private Context o;
    private float q;
    private l r;
    private int s = LogoPosition.logoPostionleftBottom.ordinal();
    private boolean t = true;
    private boolean u = true;
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

    public TextureMapView(Context context) {
        super(context);
        a(context, null);
    }

    public TextureMapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, null);
    }

    public TextureMapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, null);
    }

    public TextureMapView(Context context, BaiduMapOptions baiduMapOptions) {
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
            this.e = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), matrix, true);
        } else if (densityDpi <= 320 || densityDpi > 480) {
            this.e = a;
        } else {
            matrix = new Matrix();
            matrix.postScale(1.5f, 1.5f);
            this.e = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), matrix, true);
        }
        if (this.e != null) {
            this.d = new ImageView(context);
            this.d.setImageBitmap(this.e);
            addView(this.d);
        }
    }

    private void a(Context context, BaiduMapOptions baiduMapOptions) {
        setBackgroundColor(-1);
        this.o = context;
        i.a();
        BMapManager.init();
        a(context, baiduMapOptions, i, j);
        this.c = new BaiduMap(this.b);
        a(context);
        b(context);
        if (!(baiduMapOptions == null || baiduMapOptions.h)) {
            this.f.setVisibility(4);
        }
        c(context);
        if (!(baiduMapOptions == null || baiduMapOptions.i)) {
            this.k.setVisibility(4);
        }
        if (!(baiduMapOptions == null || baiduMapOptions.j == null)) {
            this.s = baiduMapOptions.j.ordinal();
        }
        if (!(baiduMapOptions == null || baiduMapOptions.l == null)) {
            this.h = baiduMapOptions.l;
        }
        if (baiduMapOptions != null && baiduMapOptions.k != null) {
            this.g = baiduMapOptions.k;
        }
    }

    private void a(Context context, BaiduMapOptions baiduMapOptions, String str, int i) {
        i = str;
        if (baiduMapOptions == null) {
            this.b = new ac(context, null, str, i);
        } else {
            this.b = new ac(context, baiduMapOptions.a(), str, i);
        }
        addView(this.b);
        this.r = new q(this);
        this.b.b().a(this.r);
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
        if (this.f.a()) {
            float f = this.b.b().E().a;
            this.f.b(f > this.b.b().b);
            ak akVar = this.f;
            if (f >= this.b.b().a) {
                z = false;
            }
            akVar.a(z);
        }
    }

    private void b(Context context) {
        this.f = new ak(context);
        if (this.f.a()) {
            this.f.b(new r(this));
            this.f.a(new s(this));
            addView(this.f);
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
            i = str;
        } else {
            throw new RuntimeException("please check whether the customMapStylePath file exits");
        }
    }

    public static void setIconCustom(int i) {
        j = i;
    }

    public static void setMapCustomEnable(boolean z) {
        i.a(z);
    }

    public void addView(View view, LayoutParams layoutParams) {
        if (layoutParams instanceof MapViewLayoutParams) {
            super.addView(view, layoutParams);
        }
    }

    public final LogoPosition getLogoPosition() {
        switch (this.s) {
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
        this.c.b = this;
        return this.c;
    }

    public final int getMapLevel() {
        return ((Integer) p.get((int) this.b.b().E().a)).intValue();
    }

    public int getScaleControlViewHeight() {
        return this.A;
    }

    public int getScaleControlViewWidth() {
        return this.A;
    }

    public void onCreate(Context context, Bundle bundle) {
        if (bundle != null) {
            i = bundle.getString("customMapPath");
            if (bundle == null) {
                a(context, new BaiduMapOptions());
                return;
            }
            MapStatus mapStatus = (MapStatus) bundle.getParcelable("mapstatus");
            if (this.g != null) {
                this.g = (Point) bundle.getParcelable("scalePosition");
            }
            if (this.h != null) {
                this.h = (Point) bundle.getParcelable("zoomPosition");
            }
            this.t = bundle.getBoolean("mZoomControlEnabled");
            this.u = bundle.getBoolean("mScaleControlEnabled");
            this.s = bundle.getInt("logoPosition");
            setPadding(bundle.getInt("paddingLeft"), bundle.getInt("paddingTop"), bundle.getInt("paddingRight"), bundle.getInt("paddingBottom"));
            a(context, new BaiduMapOptions().mapStatus(mapStatus));
        }
    }

    public final void onDestroy() {
        if (this.o != null) {
            this.b.a(this.o.hashCode());
        }
        if (!(this.e == null || this.e.isRecycled())) {
            this.e.recycle();
        }
        this.f.b();
        BMapManager.destroy();
        i.b();
        this.o = null;
    }

    /* Access modifiers changed, original: protected|final */
    @SuppressLint({"NewApi"})
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        int childCount = getChildCount();
        a(this.d);
        if (((getWidth() - this.v) - this.w) - this.d.getMeasuredWidth() <= 0 || ((getHeight() - this.x) - this.y) - this.d.getMeasuredHeight() <= 0) {
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
            int i6;
            int i7;
            int i8;
            int i9;
            if (childAt == this.b) {
                this.b.layout(0, 0, getWidth(), getHeight());
            } else if (childAt == this.d) {
                i6 = (int) (((float) this.v) + (5.0f * f));
                i7 = (int) (((float) this.w) + (5.0f * f));
                i8 = (int) (((float) this.x) + (5.0f * f2));
                i9 = (int) (((float) this.y) + (5.0f * f2));
                switch (this.s) {
                    case 1:
                        i9 = i8 + this.d.getMeasuredHeight();
                        i7 = this.d.getMeasuredWidth() + i6;
                        break;
                    case 2:
                        i9 = getHeight() - i9;
                        i8 = i9 - this.d.getMeasuredHeight();
                        i6 = (((getWidth() - this.d.getMeasuredWidth()) + this.v) - this.w) / 2;
                        i7 = (((getWidth() + this.d.getMeasuredWidth()) + this.v) - this.w) / 2;
                        break;
                    case 3:
                        i9 = i8 + this.d.getMeasuredHeight();
                        i6 = (((getWidth() - this.d.getMeasuredWidth()) + this.v) - this.w) / 2;
                        i7 = (((getWidth() + this.d.getMeasuredWidth()) + this.v) - this.w) / 2;
                        break;
                    case 4:
                        i9 = getHeight() - i9;
                        i8 = i9 - this.d.getMeasuredHeight();
                        i7 = getWidth() - i7;
                        i6 = i7 - this.d.getMeasuredWidth();
                        break;
                    case 5:
                        i9 = this.d.getMeasuredHeight() + i8;
                        i7 = getWidth() - i7;
                        i6 = i7 - this.d.getMeasuredWidth();
                        break;
                    default:
                        i9 = getHeight() - i9;
                        i7 = this.d.getMeasuredWidth() + i6;
                        i8 = i9 - this.d.getMeasuredHeight();
                        break;
                }
                this.d.layout(i6, i8, i7, i9);
            } else if (childAt == this.f) {
                if (this.f.a()) {
                    a(this.f);
                    if (this.h == null) {
                        i9 = (int) ((((float) (getHeight() - 15)) * f2) + ((float) this.x));
                        i8 = (int) ((((float) (getWidth() - 15)) * f) + ((float) this.v));
                        i6 = i8 - this.f.getMeasuredWidth();
                        i7 = i9 - this.f.getMeasuredHeight();
                        if (this.s == 4) {
                            i9 -= this.d.getMeasuredHeight();
                            i7 -= this.d.getMeasuredHeight();
                        }
                        this.f.layout(i6, i7, i8, i9);
                    } else {
                        this.f.layout(this.h.x, this.h.y, this.h.x + this.f.getMeasuredWidth(), this.h.y + this.f.getMeasuredHeight());
                    }
                }
            } else if (childAt == this.k) {
                a(this.k);
                if (this.g == null) {
                    i7 = (int) ((((float) this.y) + (5.0f * f2)) + 56.0f);
                    this.A = this.k.getMeasuredWidth();
                    this.z = this.k.getMeasuredHeight();
                    i9 = (int) (((float) this.v) + (5.0f * f));
                    i7 = (getHeight() - i7) - this.d.getMeasuredHeight();
                    this.k.layout(i9, i7, this.A + i9, this.z + i7);
                } else {
                    this.k.layout(this.g.x, this.g.y, this.g.x + this.k.getMeasuredWidth(), this.g.y + this.k.getMeasuredHeight());
                }
            } else {
                LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof MapViewLayoutParams) {
                    Point point;
                    MapViewLayoutParams mapViewLayoutParams = (MapViewLayoutParams) layoutParams;
                    if (mapViewLayoutParams.c == ELayoutMode.absoluteMode) {
                        point = mapViewLayoutParams.b;
                    } else {
                        point = this.b.b().a(CoordUtil.ll2mc(mapViewLayoutParams.a));
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

    public final void onPause() {
        this.b.d();
    }

    public final void onResume() {
        this.b.c();
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null && this.c != null) {
            bundle.putParcelable("mapstatus", this.c.getMapStatus());
            if (this.g != null) {
                bundle.putParcelable("scalePosition", this.g);
            }
            if (this.h != null) {
                bundle.putParcelable("zoomPosition", this.h);
            }
            bundle.putBoolean("mZoomControlEnabled", this.t);
            bundle.putBoolean("mScaleControlEnabled", this.u);
            bundle.putInt("logoPosition", this.s);
            bundle.putInt("paddingLeft", this.v);
            bundle.putInt("paddingTop", this.x);
            bundle.putInt("paddingRight", this.w);
            bundle.putInt("paddingBottom", this.y);
            bundle.putString("customMapPath", i);
        }
    }

    public void removeView(View view) {
        if (view != this.d) {
            super.removeView(view);
        }
    }

    public final void setLogoPosition(LogoPosition logoPosition) {
        if (logoPosition == null) {
            this.s = LogoPosition.logoPostionleftBottom.ordinal();
        }
        this.s = logoPosition.ordinal();
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
            this.g = point;
            requestLayout();
        }
    }

    public void setZoomControlsPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.h = point;
            requestLayout();
        }
    }

    public void showScaleControl(boolean z) {
        this.k.setVisibility(z ? 0 : 8);
        this.u = z;
    }

    public void showZoomControls(boolean z) {
        if (this.f.a()) {
            this.f.setVisibility(z ? 0 : 8);
            this.t = z;
        }
    }
}
