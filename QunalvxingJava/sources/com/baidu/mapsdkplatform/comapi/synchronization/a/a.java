package com.baidu.mapsdkplatform.comapi.synchronization.a;

import android.content.Context;
import android.view.View;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.synchronization.DisplayOptions;
import com.baidu.mapapi.synchronization.RoleOptions;
import com.baidu.mapapi.synchronization.SyncCoordinateConverter;
import com.baidu.mapapi.synchronization.SyncCoordinateConverter.CoordType;
import com.baidu.mapapi.synchronization.SynchronizationConstants;
import com.baidu.mapapi.synchronization.SynchronizationDisplayListener;
import com.baidu.mapsdkplatform.comapi.synchronization.data.j;
import com.baidu.mapsdkplatform.comapi.synchronization.data.k;
import com.baidu.mapsdkplatform.comapi.synchronization.render.c;
import com.baidu.mapsdkplatform.comapi.synchronization.render.d;
import com.iflytek.speech.VoiceWakeuperAidl;

public class a implements j, c {
    private static final String a = a.class.getSimpleName();
    private k b = null;
    private d c = null;
    private SynchronizationDisplayListener d;

    public a(Context context, BaiduMap baiduMap, RoleOptions roleOptions, DisplayOptions displayOptions) {
        if (context == null) {
            throw new IllegalArgumentException("Context invalid, please check!");
        } else if (baiduMap == null || !(baiduMap instanceof BaiduMap)) {
            throw new IllegalArgumentException("BaiduMap is null or invalid, please check!");
        } else if (b(roleOptions)) {
            this.b = new k(roleOptions, displayOptions);
            this.b.a((j) this);
            this.c = new d(context, baiduMap);
            this.c.a((c) this);
        } else {
            throw new IllegalArgumentException("RoleOptions is invalid, please check!");
        }
    }

    private boolean a(LatLng latLng, RoleOptions roleOptions) {
        if (latLng == null) {
            return false;
        }
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = -180.0d;
        double d4 = 180.0d;
        double d5 = -90.0d;
        double d6 = 90.0d;
        if (CoordType.COMMON == roleOptions.getCoordType()) {
            SyncCoordinateConverter syncCoordinateConverter = new SyncCoordinateConverter();
            LatLng convert = syncCoordinateConverter.from(roleOptions.getCoordType()).coord(new LatLng(-90.0d, -180.0d)).convert();
            d3 = convert.longitude;
            d5 = convert.latitude;
            LatLng convert2 = syncCoordinateConverter.from(roleOptions.getCoordType()).coord(new LatLng(90.0d, 180.0d)).convert();
            d4 = convert2.longitude;
            d6 = convert2.latitude;
            LatLng convert3 = syncCoordinateConverter.from(roleOptions.getCoordType()).coord(new LatLng(0.0d, 0.0d)).convert();
            d = convert3.longitude;
            d2 = convert3.latitude;
        }
        return (Double.valueOf(d).compareTo(Double.valueOf(latLng.longitude)) == 0 && Double.valueOf(d2).compareTo(Double.valueOf(latLng.latitude)) == 0) ? false : latLng.longitude >= d3 && latLng.longitude <= d4 && latLng.latitude >= d5 && latLng.latitude <= d6;
    }

    private boolean a(CoordType coordType) {
        return CoordType.BD09LL == coordType || CoordType.COMMON == coordType;
    }

    private boolean b(RoleOptions roleOptions) {
        if (roleOptions != null && roleOptions.getOrderId() != null && !roleOptions.getOrderId().equals("") && roleOptions.getRoleType() == 0 && roleOptions.getDriverId() != null && !roleOptions.getDriverId().equals("") && roleOptions.getUserId() != null && !roleOptions.getUserId().equals("") && a(roleOptions.getCoordType()) && a(roleOptions.getStartPosition(), roleOptions) && a(roleOptions.getDriverPosition(), roleOptions)) {
            return true;
        }
        if (roleOptions == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The roleOptions is null");
        } else {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The roleOptions content is: OrderId = " + roleOptions.getOrderId() + VoiceWakeuperAidl.PARAMS_SEPARATE + " DriverId = " + roleOptions.getDriverId() + VoiceWakeuperAidl.PARAMS_SEPARATE + " UserId = " + roleOptions.getUserId() + VoiceWakeuperAidl.PARAMS_SEPARATE + " StartPosition = " + roleOptions.getStartPosition() + VoiceWakeuperAidl.PARAMS_SEPARATE + " EndPosition = " + roleOptions.getEndPosition() + VoiceWakeuperAidl.PARAMS_SEPARATE + " DriverPosition = " + roleOptions.getDriverPosition() + VoiceWakeuperAidl.PARAMS_SEPARATE + " CoordType = " + roleOptions.getCoordType());
        }
        return false;
    }

    private boolean e(int i) {
        return i >= 0 && i <= 5;
    }

    public void a() {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "onResume");
        if (this.b != null) {
            this.b.a();
        }
        if (this.c != null) {
            this.c.a();
        }
    }

    public void a(float f, long j) {
        if (this.d != null) {
            this.d.onRoutePlanInfoFreshFinished(f, j);
        }
    }

    public void a(int i) {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.c(a, "The order state = " + i);
        if (!e(i)) {
            if (this.d != null) {
                this.d.onSynchronizationProcessResult(1002, SynchronizationConstants.LBS_STATUS_MESSAGE_ORDER_STATE_INVALID);
            }
            i = 0;
        }
        if (this.c != null) {
            this.c.a(i);
        }
        if (this.b != null) {
            this.b.a(i);
        }
    }

    public void a(int i, String str) {
        if (this.d != null) {
            this.d.onSynchronizationProcessResult(i, str);
        }
    }

    public void a(View view) {
        if (this.b != null) {
            this.b.a(view);
        }
    }

    public void a(DisplayOptions displayOptions) {
        if (this.b != null && displayOptions != null) {
            this.b.a(displayOptions);
        }
    }

    public void a(RoleOptions roleOptions) {
        if (roleOptions == null || !b(roleOptions)) {
            if (this.d != null) {
                this.d.onSynchronizationProcessResult(1003, SynchronizationConstants.LBS_STATUS_MESSAGE_ORDER_PARAM_INVALID);
            }
        } else if (this.b != null) {
            this.b.a(roleOptions);
        }
    }

    public void a(SynchronizationDisplayListener synchronizationDisplayListener) {
        if (synchronizationDisplayListener == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SynchronizationDisplayListener is null, must be applied.");
            throw new IllegalArgumentException("synchronizationDisplayListener is null");
        } else {
            this.d = synchronizationDisplayListener;
        }
    }

    public void b() {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "onPause");
        if (this.b != null) {
            this.b.b();
        }
        if (this.c != null) {
            this.c.b();
        }
    }

    public void b(int i) {
        int i2 = 30;
        int i3 = 5;
        if (i >= 5) {
            i3 = i;
        }
        if (i3 <= 30) {
            i2 = i3;
        }
        if (this.b != null) {
            this.b.b(i2);
        }
        if (this.c != null) {
            this.c.b(i2);
        }
    }

    public void b(int i, String str) {
        if (this.d != null) {
            this.d.onSynchronizationProcessResult(i, str);
        }
    }

    public void b(View view) {
        if (this.b != null) {
            this.b.b(view);
        }
    }

    public void b(SynchronizationDisplayListener synchronizationDisplayListener) {
        if (this.d != null) {
            this.d = null;
        }
    }

    public void c() {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "release");
        if (this.b != null) {
            this.b.c();
        }
        if (this.c != null) {
            this.c.f();
        }
        if (this.d != null) {
            this.d = null;
        }
    }

    public void c(int i) {
        int i2 = 30;
        int i3 = 10;
        if (i >= 10) {
            i3 = i;
        }
        if (i3 <= 30) {
            i2 = i3;
        }
        if (this.c != null) {
            this.c.c(i2);
        }
    }

    public void c(int i, String str) {
        if (this.d != null) {
            this.d.onSynchronizationProcessResult(i, str);
        }
    }

    public void c(View view) {
        if (this.b != null) {
            this.b.c(view);
        }
    }

    public Marker d() {
        if (this.c != null) {
            return this.c.c();
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Data manager instance is null");
        return null;
    }

    public void d(int i) {
        int i2 = 30;
        int i3 = 5;
        if (i >= 5) {
            i3 = i;
        }
        if (i3 <= 30) {
            i2 = i3;
        }
        if (this.c != null) {
            this.c.d(i2);
        }
    }

    public Marker e() {
        if (this.c != null) {
            return this.c.d();
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Data manager instance is null");
        return null;
    }

    public Marker f() {
        if (this.c != null) {
            return this.c.e();
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Data manager instance is null");
        return null;
    }
}
