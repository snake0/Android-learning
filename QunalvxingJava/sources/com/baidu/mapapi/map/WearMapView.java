package com.baidu.mapapi.map;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.common.SysOSUtil;
import com.baidu.mapapi.map.MapViewLayoutParams.ELayoutMode;
import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapsdkplatform.comapi.map.ak;
import com.baidu.mapsdkplatform.comapi.map.i;
import com.baidu.mapsdkplatform.comapi.map.j;
import com.baidu.mapsdkplatform.comapi.map.l;
import com.mqunar.libtask.ProgressType;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

@TargetApi(20)
public class WearMapView extends ViewGroup implements OnApplyWindowInsetsListener {
    public static final int BT_INVIEW = 1;
    private static final String b = MapView.class.getSimpleName();
    private static String c;
    private static int d = 0;
    private static int r = 0;
    private static int s = 0;
    private static int t = 10;
    private static final SparseArray<Integer> w = new SparseArray();
    private l A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    ScreenShape a = ScreenShape.ROUND;
    private j e;
    private BaiduMap f;
    private ImageView g;
    private Bitmap h;
    private ak i;
    private boolean j = true;
    private Point k;
    private Point l;
    private RelativeLayout m;
    public AnimationTask mTask;
    public Timer mTimer;
    public a mTimerHandler;
    private SwipeDismissView n;
    private TextView o;
    private TextView p;
    private ImageView q;
    private boolean u = true;
    private Context v;
    private boolean x = true;
    private boolean y = true;
    private float z;

    public class AnimationTask extends TimerTask {
        public void run() {
            Message message = new Message();
            message.what = 1;
            WearMapView.this.mTimerHandler.sendMessage(message);
        }
    }

    public interface OnDismissCallback {
        void onDismiss();

        void onNotify();
    }

    public enum ScreenShape {
        ROUND,
        RECTANGLE,
        UNDETECTED
    }

    class a extends Handler {
        private final WeakReference<Context> b;

        public a(Context context) {
            this.b = new WeakReference(context);
        }

        public void handleMessage(Message message) {
            if (((Context) this.b.get()) != null) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        if (WearMapView.this.i != null) {
                            WearMapView.this.a(true);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    static {
        w.append(3, Integer.valueOf(2000000));
        w.append(4, Integer.valueOf(1000000));
        w.append(5, Integer.valueOf(500000));
        w.append(6, Integer.valueOf(200000));
        w.append(7, Integer.valueOf(100000));
        w.append(8, Integer.valueOf(50000));
        w.append(9, Integer.valueOf(25000));
        w.append(10, Integer.valueOf(20000));
        w.append(11, Integer.valueOf(10000));
        w.append(12, Integer.valueOf(5000));
        w.append(13, Integer.valueOf(2000));
        w.append(14, Integer.valueOf(1000));
        w.append(15, Integer.valueOf(500));
        w.append(16, Integer.valueOf(200));
        w.append(17, Integer.valueOf(100));
        w.append(18, Integer.valueOf(50));
        w.append(19, Integer.valueOf(20));
        w.append(20, Integer.valueOf(10));
        w.append(21, Integer.valueOf(5));
        w.append(22, Integer.valueOf(2));
    }

    public WearMapView(Context context) {
        super(context);
        a(context, null);
    }

    public WearMapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, null);
    }

    public WearMapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, null);
    }

    public WearMapView(Context context, BaiduMapOptions baiduMapOptions) {
        super(context);
        a(context, baiduMapOptions);
    }

    private int a(int i, int i2) {
        return i - ((int) Math.sqrt(Math.pow((double) i, 2.0d) - Math.pow((double) i2, 2.0d)));
    }

    private void a(int i) {
        if (this.e != null) {
            switch (i) {
                case 0:
                    this.e.onPause();
                    b();
                    return;
                case 1:
                    this.e.onResume();
                    c();
                    return;
                default:
                    return;
            }
        }
    }

    private static void a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        r = point.x;
        s = point.y;
    }

    private void a(Context context, BaiduMapOptions baiduMapOptions) {
        a(context);
        setOnApplyWindowInsetsListener(this);
        this.v = context;
        this.mTimerHandler = new a(context);
        this.mTimer = new Timer();
        if (!(this.mTimer == null || this.mTask == null)) {
            this.mTask.cancel();
        }
        this.mTask = new AnimationTask();
        this.mTimer.schedule(this.mTask, 5000);
        i.a();
        BMapManager.init();
        a(context, baiduMapOptions, c);
        this.f = new BaiduMap(this.e);
        this.e.a().s(false);
        this.e.a().r(false);
        c(context);
        d(context);
        b(context);
        if (!(baiduMapOptions == null || baiduMapOptions.h)) {
            this.i.setVisibility(4);
        }
        e(context);
        if (!(baiduMapOptions == null || baiduMapOptions.i)) {
            this.m.setVisibility(4);
        }
        if (!(baiduMapOptions == null || baiduMapOptions.l == null)) {
            this.l = baiduMapOptions.l;
        }
        if (baiduMapOptions != null && baiduMapOptions.k != null) {
            this.k = baiduMapOptions.k;
        }
    }

    private void a(Context context, BaiduMapOptions baiduMapOptions, String str) {
        if (baiduMapOptions == null) {
            this.e = new j(context, null, str, d);
        } else {
            this.e = new j(context, baiduMapOptions.a(), str, d);
        }
        addView(this.e);
        this.A = new u(this);
        this.e.a().a(this.A);
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

    private void a(View view, boolean z) {
        AnimatorSet animatorSet;
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        if (z) {
            animatorSet = new AnimatorSet();
            ofFloat = ObjectAnimator.ofFloat(view, "TranslationY", new float[]{0.0f, -50.0f});
            ofFloat2 = ObjectAnimator.ofFloat(view, "alpha", new float[]{1.0f, 0.0f});
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
            animatorSet.addListener(new x(this, view));
            animatorSet.setDuration(1200);
            animatorSet.start();
            return;
        }
        view.setVisibility(0);
        animatorSet = new AnimatorSet();
        ofFloat = ObjectAnimator.ofFloat(view, "TranslationY", new float[]{-50.0f, 0.0f});
        ofFloat2 = ObjectAnimator.ofFloat(view, "alpha", new float[]{0.0f, 1.0f});
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
        animatorSet.setDuration(1200);
        animatorSet.start();
    }

    private void a(boolean z) {
        if (this.j) {
            a(this.i, z);
        }
    }

    private void b() {
        if (this.e != null && !this.u) {
            d();
            this.u = true;
        }
    }

    private void b(Context context) {
        this.n = new SwipeDismissView(context, this);
        LayoutParams layoutParams = new LayoutParams((int) ((context.getResources().getDisplayMetrics().density * 34.0f) + 0.5f), s);
        this.n.setBackgroundColor(Color.argb(0, 0, 0, 0));
        this.n.setLayoutParams(layoutParams);
        addView(this.n);
    }

    private void c() {
        if (this.e != null && this.u) {
            e();
            this.u = false;
        }
    }

    private void c(Context context) {
        String str = "logo_h.png";
        int densityDpi = SysOSUtil.getDensityDpi();
        if (densityDpi < 180) {
            str = "logo_l.png";
        }
        Bitmap a = com.baidu.mapsdkplatform.comapi.commonutils.a.a(str, context);
        Matrix matrix;
        if (densityDpi > 480) {
            matrix = new Matrix();
            matrix.postScale(2.0f, 2.0f);
            this.h = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), matrix, true);
        } else if (densityDpi <= 320 || densityDpi > 480) {
            this.h = a;
        } else {
            matrix = new Matrix();
            matrix.postScale(1.5f, 1.5f);
            this.h = Bitmap.createBitmap(a, 0, 0, a.getWidth(), a.getHeight(), matrix, true);
        }
        if (this.h != null) {
            this.g = new ImageView(context);
            this.g.setImageBitmap(this.h);
            addView(this.g);
        }
    }

    private void d() {
        if (this.e != null) {
            this.e.b();
        }
    }

    private void d(Context context) {
        this.i = new ak(context, true);
        if (this.i.a()) {
            this.i.b(new v(this));
            this.i.a(new w(this));
            addView(this.i);
        }
    }

    private void e() {
        if (this.e != null) {
            this.e.c();
        }
    }

    private void e(Context context) {
        this.m = new RelativeLayout(context);
        this.m.setLayoutParams(new LayoutParams(-2, -2));
        this.o = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        this.o.setTextColor(Color.parseColor("#FFFFFF"));
        this.o.setTextSize(2, 11.0f);
        this.o.setTypeface(this.o.getTypeface(), 1);
        this.o.setLayoutParams(layoutParams);
        this.o.setId(ProgressType.PRO_END);
        this.m.addView(this.o);
        this.p = new TextView(context);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(14);
        this.p.setTextColor(Color.parseColor("#000000"));
        this.p.setTextSize(2, 11.0f);
        this.p.setLayoutParams(layoutParams);
        this.m.addView(this.p);
        this.q = new ImageView(context);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(14);
        layoutParams.addRule(3, this.o.getId());
        this.q.setLayoutParams(layoutParams);
        Bitmap a = com.baidu.mapsdkplatform.comapi.commonutils.a.a("icon_scale.9.png", context);
        byte[] ninePatchChunk = a.getNinePatchChunk();
        NinePatch.isNinePatchChunk(ninePatchChunk);
        this.q.setBackgroundDrawable(new NinePatchDrawable(a, ninePatchChunk, new Rect(), null));
        this.m.addView(this.q);
        addView(this.m);
    }

    public static void setCustomMapStylePath(String str) {
        if (str == null || str.length() == 0) {
            throw new RuntimeException("customMapStylePath String is illegal");
        } else if (new File(str).exists()) {
            c = str;
        } else {
            throw new RuntimeException("please check whether the customMapStylePath file exits");
        }
    }

    public static void setIconCustom(int i) {
        d = i;
    }

    public static void setMapCustomEnable(boolean z) {
        i.a(z);
    }

    public void addView(View view, LayoutParams layoutParams) {
        if (layoutParams instanceof MapViewLayoutParams) {
            super.addView(view, layoutParams);
        }
    }

    public final BaiduMap getMap() {
        this.f.c = this;
        return this.f;
    }

    public final int getMapLevel() {
        return ((Integer) w.get((int) this.e.a().E().a)).intValue();
    }

    public int getScaleControlViewHeight() {
        return this.F;
    }

    public int getScaleControlViewWidth() {
        return this.G;
    }

    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        if (windowInsets.isRound()) {
            this.a = ScreenShape.ROUND;
        } else {
            this.a = ScreenShape.RECTANGLE;
        }
        return windowInsets;
    }

    public void onCreate(Context context, Bundle bundle) {
        if (bundle != null) {
            c = bundle.getString("customMapPath");
            if (bundle == null) {
                a(context, new BaiduMapOptions());
                return;
            }
            MapStatus mapStatus = (MapStatus) bundle.getParcelable("mapstatus");
            if (this.k != null) {
                this.k = (Point) bundle.getParcelable("scalePosition");
            }
            if (this.l != null) {
                this.l = (Point) bundle.getParcelable("zoomPosition");
            }
            this.x = bundle.getBoolean("mZoomControlEnabled");
            this.y = bundle.getBoolean("mScaleControlEnabled");
            setPadding(bundle.getInt("paddingLeft"), bundle.getInt("paddingTop"), bundle.getInt("paddingRight"), bundle.getInt("paddingBottom"));
            a(context, new BaiduMapOptions().mapStatus(mapStatus));
        }
    }

    public final void onDestroy() {
        if (this.v != null) {
            this.e.b(this.v.hashCode());
        }
        if (!(this.h == null || this.h.isRecycled())) {
            this.h.recycle();
            this.h = null;
        }
        this.i.b();
        BMapManager.destroy();
        i.b();
        if (this.mTask != null) {
            this.mTask.cancel();
        }
        this.v = null;
    }

    public final void onDismiss() {
        removeAllViews();
    }

    public final void onEnterAmbient(Bundle bundle) {
        a(0);
    }

    public void onExitAmbient() {
        a(1);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                if (this.i.getVisibility() != 0) {
                    if (this.i.getVisibility() == 4) {
                        if (this.mTimer != null) {
                            if (this.mTask != null) {
                                this.mTask.cancel();
                            }
                            this.mTimer.cancel();
                            this.mTask = null;
                            this.mTimer = null;
                        }
                        a(false);
                        break;
                    }
                } else if (this.mTimer != null) {
                    if (this.mTask != null) {
                        this.mTimer.cancel();
                        this.mTask.cancel();
                    }
                    this.mTimer = null;
                    this.mTask = null;
                    break;
                }
                break;
            case 1:
                this.mTimer = new Timer();
                if (!(this.mTimer == null || this.mTask == null)) {
                    this.mTask.cancel();
                }
                this.mTask = new AnimationTask();
                this.mTimer.schedule(this.mTask, 5000);
                break;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* Access modifiers changed, original: protected|final */
    @TargetApi(20)
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        int childCount = getChildCount();
        a(this.g);
        if (((getWidth() - this.B) - this.C) - this.g.getMeasuredWidth() <= 0 || ((getHeight() - this.D) - this.E) - this.g.getMeasuredHeight() <= 0) {
            this.B = 0;
            this.C = 0;
            this.E = 0;
            this.D = 0;
            f = 1.0f;
            f2 = 1.0f;
        } else {
            f = ((float) ((getWidth() - this.B) - this.C)) / ((float) getWidth());
            f2 = ((float) ((getHeight() - this.D) - this.E)) / ((float) getHeight());
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int i6;
            int i7;
            int i8;
            int measuredWidth;
            if (childAt == this.e) {
                this.e.layout(0, 0, getWidth(), getHeight());
            } else if (childAt == this.g) {
                i6 = (int) (((float) this.E) + (12.0f * f2));
                i7 = 0;
                i8 = 0;
                if (this.a == ScreenShape.ROUND) {
                    a(this.i);
                    i7 = r / 2;
                    i8 = a(i7, this.i.getMeasuredWidth() / 2);
                    i7 = ((r / 2) - a(i7, i7 - i8)) + t;
                }
                i8 = (s - i8) - i6;
                i7 = r - i7;
                measuredWidth = i7 - this.g.getMeasuredWidth();
                this.g.layout(measuredWidth, i8 - this.g.getMeasuredHeight(), i7, i8);
            } else if (childAt == this.i) {
                if (this.i.a()) {
                    a(this.i);
                    if (this.l == null) {
                        i8 = 0;
                        if (this.a == ScreenShape.ROUND) {
                            i8 = a(s / 2, this.i.getMeasuredWidth() / 2);
                        }
                        i8 = (int) (((float) i8) + ((12.0f * f2) + ((float) this.D)));
                        i7 = (r - this.i.getMeasuredWidth()) / 2;
                        this.i.layout(i7, i8, this.i.getMeasuredWidth() + i7, this.i.getMeasuredHeight() + i8);
                    } else {
                        this.i.layout(this.l.x, this.l.y, this.l.x + this.i.getMeasuredWidth(), this.l.y + this.i.getMeasuredHeight());
                    }
                }
            } else if (childAt == this.m) {
                i7 = 0;
                i8 = 0;
                if (this.a == ScreenShape.ROUND) {
                    a(this.i);
                    i7 = r / 2;
                    i8 = a(i7, this.i.getMeasuredWidth() / 2);
                    i7 = ((r / 2) - a(i7, i7 - i8)) + t;
                }
                a(this.m);
                if (this.k == null) {
                    i6 = (int) (((float) this.E) + (12.0f * f2));
                    this.G = this.m.getMeasuredWidth();
                    this.F = this.m.getMeasuredHeight();
                    i7 = (int) (((float) i7) + (((float) this.B) + (5.0f * f)));
                    i8 = (s - i6) - i8;
                    measuredWidth = i8 - this.m.getMeasuredHeight();
                    this.m.layout(i7, measuredWidth, this.G + i7, i8);
                } else {
                    this.m.layout(this.k.x, this.k.y, this.k.x + this.m.getMeasuredWidth(), this.k.y + this.m.getMeasuredHeight());
                }
            } else if (childAt == this.n) {
                a(this.n);
                this.n.layout(0, 0, this.n.getMeasuredWidth(), s);
            } else {
                LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof MapViewLayoutParams) {
                    Point point;
                    MapViewLayoutParams mapViewLayoutParams = (MapViewLayoutParams) layoutParams;
                    if (mapViewLayoutParams.c == ELayoutMode.absoluteMode) {
                        point = mapViewLayoutParams.b;
                    } else {
                        point = this.e.a().a(CoordUtil.ll2mc(mapViewLayoutParams.a));
                    }
                    a(childAt);
                    measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    float f3 = mapViewLayoutParams.d;
                    int i9 = (int) (((float) point.x) - (f3 * ((float) measuredWidth)));
                    i8 = mapViewLayoutParams.f + ((int) (((float) point.y) - (mapViewLayoutParams.e * ((float) measuredHeight))));
                    childAt.layout(i9, i8, i9 + measuredWidth, i8 + measuredHeight);
                }
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null && this.f != null) {
            bundle.putParcelable("mapstatus", this.f.getMapStatus());
            if (this.k != null) {
                bundle.putParcelable("scalePosition", this.k);
            }
            if (this.l != null) {
                bundle.putParcelable("zoomPosition", this.l);
            }
            bundle.putBoolean("mZoomControlEnabled", this.x);
            bundle.putBoolean("mScaleControlEnabled", this.y);
            bundle.putInt("paddingLeft", this.B);
            bundle.putInt("paddingTop", this.D);
            bundle.putInt("paddingRight", this.C);
            bundle.putInt("paddingBottom", this.E);
            bundle.putString("customMapPath", c);
        }
    }

    public void removeView(View view) {
        if (view != this.g) {
            super.removeView(view);
        }
    }

    public void setOnDismissCallbackListener(OnDismissCallback onDismissCallback) {
        if (this.n != null) {
            this.n.setCallback(onDismissCallback);
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.B = i;
        this.D = i2;
        this.C = i3;
        this.E = i4;
    }

    public void setScaleControlPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.k = point;
            requestLayout();
        }
    }

    public void setShape(ScreenShape screenShape) {
        this.a = screenShape;
    }

    public void setViewAnimitionEnable(boolean z) {
        this.j = z;
    }

    public void setZoomControlsPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.l = point;
            requestLayout();
        }
    }

    public void showScaleControl(boolean z) {
        this.m.setVisibility(z ? 0 : 8);
        this.y = z;
    }

    public void showZoomControls(boolean z) {
        if (this.i.a()) {
            this.i.setVisibility(z ? 0 : 8);
            this.x = z;
        }
    }
}
