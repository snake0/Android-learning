package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import com.baidu.mapapi.model.inner.GeoPoint;
import com.baidu.mapsdkplatform.comapi.map.ab;
import com.baidu.mapsdkplatform.comapi.map.l;
import javax.microedition.khronos.opengles.GL10;

class i implements l {
    final /* synthetic */ MapView a;

    i(MapView mapView) {
        this.a = mapView;
    }

    public void a() {
        if (this.a.d != null && this.a.d.a() != null) {
            float f = this.a.d.a().E().a;
            float f2 = f < this.a.d.a().b ? this.a.d.a().b : f > this.a.d.a().a ? this.a.d.a().a : f;
            if (Math.abs(this.a.t - f2) > 0.0f) {
                int intValue = ((Integer) MapView.p.get(Math.round(f2))).intValue();
                int i = (int) (((double) intValue) / this.a.d.a().E().m);
                this.a.n.setPadding(i / 2, 0, i / 2, 0);
                CharSequence format = intValue >= 1000 ? String.format(" %d公里 ", new Object[]{Integer.valueOf(intValue / 1000)}) : String.format(" %d米 ", new Object[]{Integer.valueOf(intValue)});
                this.a.l.setText(format);
                this.a.m.setText(format);
                this.a.t = f2;
            }
            this.a.b();
            this.a.requestLayout();
        }
    }

    public void a(Bitmap bitmap) {
    }

    public void a(MotionEvent motionEvent) {
    }

    public void a(GeoPoint geoPoint) {
    }

    public void a(ab abVar) {
    }

    public void a(String str) {
    }

    public void a(GL10 gl10, ab abVar) {
    }

    public void a(boolean z) {
    }

    public void b() {
    }

    public void b(GeoPoint geoPoint) {
    }

    public void b(ab abVar) {
    }

    public boolean b(String str) {
        return false;
    }

    public void c() {
    }

    public void c(GeoPoint geoPoint) {
    }

    public void c(ab abVar) {
    }

    public void d() {
    }

    public void d(GeoPoint geoPoint) {
    }

    public void e() {
    }

    public void e(GeoPoint geoPoint) {
    }

    public void f() {
    }
}
