package com.baidu.mapsdkplatform.comapi.synchronization.data;

import com.baidu.mapsdkplatform.comapi.location.CoordinateType;
import com.baidu.mapsdkplatform.comapi.synchronization.b.f;
import com.baidu.mapsdkplatform.comapi.synchronization.c.a;
import com.baidu.mapsdkplatform.comapi.synchronization.c.c;
import com.baidu.mapsdkplatform.comapi.synchronization.c.d;
import com.baidu.mapsdkplatform.comapi.synchronization.data.e.b;
import com.baidu.mapsdkplatform.comapi.util.PermissionCheck;
import com.baidu.mapsdkplatform.comapi.util.SyncSysInfo;
import com.baidu.mapsdkplatform.comjni.util.AppMD5;

public class l {
    private static final String a = l.class.getSimpleName();
    private static boolean e = true;
    private d b = new d();
    private boolean c = true;
    private boolean d = true;

    public l(e eVar) {
        a(eVar);
    }

    private void a(e eVar) {
        this.b.a("order_id", b(eVar));
        this.b.a("company", eVar.c());
        this.b.a("order_attr", eVar.b());
        this.b.a("status", String.valueOf(eVar.h()));
        this.b.a("pull_type", String.valueOf(eVar.i()));
        this.b.a("route_finger", eVar.d());
        this.b.a("traffic_finger", eVar.e());
        this.b.a("pos_num", String.valueOf(eVar.j()));
        c(eVar);
        d(eVar);
        if (this.c) {
            b();
        }
    }

    private String b(e eVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(eVar.c().toLowerCase());
        stringBuffer.append("-");
        stringBuffer.append(eVar.a().toLowerCase());
        stringBuffer.append("-");
        stringBuffer.append("9sc87244121ip32590fq234mn6641tx7".toLowerCase());
        String a = c.a(stringBuffer.toString());
        a.a(a, "The orderId = " + stringBuffer.toString() + "; result = " + a);
        return a;
    }

    private void b() {
        String authToken = SyncSysInfo.getAuthToken();
        if (authToken == null) {
            a.b(a, "Token is null, permission check again");
            int permissionCheck = PermissionCheck.permissionCheck();
            if (permissionCheck != 0) {
                a.b(a, "Permission check result is: " + permissionCheck);
                return;
            }
            return;
        }
        this.b.a("token", authToken);
    }

    private String c() {
        return e ? f.a() : f.b();
    }

    private void c(e eVar) {
        b g = eVar.g();
        if (b.DRIVING == g) {
            this.b.a("trip_mode", "driving");
        } else if (b.RIDING == g) {
            this.b.a("trip_mode", "riding");
        } else {
            this.b.a("trip_mode", "driving");
        }
    }

    private void d(e eVar) {
        e.a f = eVar.f();
        if (e.a.BD09LL == f) {
            this.b.a("coord_type", "bd09ll");
        } else if (e.a.BD09MC == f) {
            this.b.a("coord_type", CoordinateType.BD09MC);
        } else if (e.a.GPS == f) {
            this.b.a("coord_type", CoordinateType.WGS84);
        } else if (e.a.COMMON == f) {
            this.b.a("coord_type", CoordinateType.GCJ02);
        } else {
            this.b.a("coord_type", "bd09ll");
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String a() {
        StringBuffer stringBuffer = new StringBuffer(this.b.a());
        stringBuffer.append(SyncSysInfo.getPhoneInfo());
        if (this.d) {
            stringBuffer.append("&sign=").append(AppMD5.getSignMD5String(stringBuffer.toString()));
        }
        return new StringBuffer(c()).append("?").append(stringBuffer).toString();
    }
}
