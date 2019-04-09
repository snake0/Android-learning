package com.baidu.location.a;

import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import com.baidu.location.Address;
import com.baidu.location.BDLocation;
import com.baidu.location.Jni;
import com.baidu.location.LocationClientOption;
import com.baidu.location.b.e;
import com.baidu.location.b.h;
import com.baidu.location.d.j;
import com.baidu.location.f;
import com.baidu.mapsdkplatform.comapi.location.CoordinateType;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechEvent;
import com.mqunar.libtask.ProgressType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.LogFactory;

public class a {
    public static long c = 0;
    private static a e = null;
    public boolean a;
    boolean b;
    int d;
    private ArrayList<a> f;
    private boolean g;
    private BDLocation h;
    private BDLocation i;
    private BDLocation j;
    private BDLocation k;
    private boolean l;
    private boolean m;
    private b n;

    class a {
        public String a = null;
        public Messenger b = null;
        public LocationClientOption c = new LocationClientOption();
        public int d = 0;
        final /* synthetic */ a e;

        public a(a aVar, Message message) {
            boolean z = true;
            this.e = aVar;
            this.b = message.replyTo;
            this.a = message.getData().getString("packName");
            this.c.prodName = message.getData().getString("prodName");
            com.baidu.location.d.b.a().a(this.c.prodName, this.a);
            this.c.coorType = message.getData().getString("coorType");
            this.c.addrType = message.getData().getString("addrType");
            this.c.enableSimulateGps = message.getData().getBoolean("enableSimulateGps", false);
            boolean z2 = j.l || this.c.enableSimulateGps;
            j.l = z2;
            if (!j.g.equals(SpeechConstant.PLUS_LOCAL_ALL)) {
                j.g = this.c.addrType;
            }
            this.c.openGps = message.getData().getBoolean("openGPS");
            this.c.scanSpan = message.getData().getInt("scanSpan");
            this.c.timeOut = message.getData().getInt("timeOut");
            this.c.priority = message.getData().getInt(LogFactory.PRIORITY_KEY);
            this.c.location_change_notify = message.getData().getBoolean("location_change_notify");
            this.c.mIsNeedDeviceDirect = message.getData().getBoolean("needDirect", false);
            this.c.isNeedAltitude = message.getData().getBoolean("isneedaltitude", false);
            z2 = j.h || message.getData().getBoolean("isneedaptag", false);
            j.h = z2;
            if (!(j.i || message.getData().getBoolean("isneedaptagd", false))) {
                z = false;
            }
            j.i = z;
            j.Q = message.getData().getFloat("autoNotifyLocSensitivity", 0.5f);
            int i = message.getData().getInt("wifitimeout", ProgressType.PRO_END);
            if (i < j.ae) {
                j.ae = i;
            }
            i = message.getData().getInt("autoNotifyMaxInterval", 0);
            if (i >= j.V) {
                j.V = i;
            }
            i = message.getData().getInt("autoNotifyMinDistance", 0);
            if (i >= j.X) {
                j.X = i;
            }
            i = message.getData().getInt("autoNotifyMinTimeInterval", 0);
            if (i >= j.W) {
                j.W = i;
            }
            if (this.c.scanSpan >= 1000) {
            }
            if (this.c.mIsNeedDeviceDirect || this.c.isNeedAltitude) {
                n.a().a(this.c.mIsNeedDeviceDirect);
                n.a().b();
            }
            aVar.b |= this.c.isNeedAltitude;
        }

        private void a(int i) {
            Message obtain = Message.obtain(null, i);
            try {
                if (this.b != null) {
                    this.b.send(obtain);
                }
                this.d = 0;
            } catch (Exception e) {
                if (e instanceof DeadObjectException) {
                    this.d++;
                }
            }
        }

        private void a(int i, Bundle bundle) {
            Message obtain = Message.obtain(null, i);
            obtain.setData(bundle);
            try {
                if (this.b != null) {
                    this.b.send(obtain);
                }
                this.d = 0;
            } catch (Exception e) {
                if (e instanceof DeadObjectException) {
                    this.d++;
                }
                e.printStackTrace();
            }
        }

        private void a(int i, String str, BDLocation bDLocation) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(str, bDLocation);
            bundle.setClassLoader(BDLocation.class.getClassLoader());
            Message obtain = Message.obtain(null, i);
            obtain.setData(bundle);
            try {
                if (this.b != null) {
                    this.b.send(obtain);
                }
                this.d = 0;
            } catch (Exception e) {
                if (e instanceof DeadObjectException) {
                    this.d++;
                }
            }
        }

        public void a() {
            if (!this.c.location_change_notify) {
                return;
            }
            if (j.b) {
                a(54);
            } else {
                a(55);
            }
        }

        public void a(BDLocation bDLocation) {
            a(bDLocation, 21);
        }

        public void a(BDLocation bDLocation, int i) {
            BDLocation bDLocation2 = new BDLocation(bDLocation);
            if (i == 21) {
                a(27, "locStr", bDLocation2);
            }
            if (!(this.c.coorType == null || this.c.coorType.equals(CoordinateType.GCJ02))) {
                double longitude = bDLocation2.getLongitude();
                double latitude = bDLocation2.getLatitude();
                if (!(longitude == Double.MIN_VALUE || latitude == Double.MIN_VALUE)) {
                    double[] coorEncrypt;
                    if ((bDLocation2.getCoorType() != null && bDLocation2.getCoorType().equals(CoordinateType.GCJ02)) || bDLocation2.getCoorType() == null) {
                        coorEncrypt = Jni.coorEncrypt(longitude, latitude, this.c.coorType);
                        bDLocation2.setLongitude(coorEncrypt[0]);
                        bDLocation2.setLatitude(coorEncrypt[1]);
                        bDLocation2.setCoorType(this.c.coorType);
                    } else if (!(bDLocation2.getCoorType() == null || !bDLocation2.getCoorType().equals(CoordinateType.WGS84) || this.c.coorType.equals("bd09ll"))) {
                        coorEncrypt = Jni.coorEncrypt(longitude, latitude, "wgs842mc");
                        bDLocation2.setLongitude(coorEncrypt[0]);
                        bDLocation2.setLatitude(coorEncrypt[1]);
                        bDLocation2.setCoorType("wgs84mc");
                    }
                }
            }
            a(i, "locStr", bDLocation2);
        }
    }

    class b implements Runnable {
        final /* synthetic */ a a;
        private int b;
        private boolean c;

        public void run() {
            if (!this.c) {
                this.b++;
                this.a.m = false;
            }
        }
    }

    private a() {
        this.f = null;
        this.g = false;
        this.a = false;
        this.b = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.d = 0;
        this.k = null;
        this.l = false;
        this.m = false;
        this.n = null;
        this.f = new ArrayList();
    }

    private a a(Messenger messenger) {
        if (this.f == null) {
            return null;
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.b.equals(messenger)) {
                return aVar;
            }
        }
        return null;
    }

    public static a a() {
        if (e == null) {
            e = new a();
        }
        return e;
    }

    private void a(a aVar) {
        if (aVar != null) {
            if (a(aVar.b) != null) {
                aVar.a(14);
                return;
            }
            this.f.add(aVar);
            aVar.a(13);
        }
    }

    private void b(String str) {
        Intent intent = new Intent("com.baidu.location.flp.log");
        intent.setPackage("com.baidu.baidulocationdemo");
        intent.putExtra(SpeechEvent.KEY_EVENT_RECORD_DATA, str);
        intent.putExtra("pack", com.baidu.location.d.b.d);
        intent.putExtra(AIUIConstant.KEY_TAG, "state");
        f.getServiceContext().sendBroadcast(intent);
    }

    private void e() {
        f();
        d();
    }

    private void f() {
        Iterator it = this.f.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.c.openGps) {
                z2 = true;
            }
            z = aVar.c.location_change_notify ? true : z;
        }
        j.a = z;
        if (this.g != z2) {
            this.g = z2;
            e.a().a(this.g);
        }
    }

    public void a(Bundle bundle, int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            try {
                a aVar = (a) it.next();
                aVar.a(i, bundle);
                if (aVar.d > 4) {
                    it.remove();
                }
            } catch (Exception e) {
                return;
            }
        }
    }

    public void a(Message message) {
        if (message != null && message.replyTo != null) {
            c = System.currentTimeMillis();
            this.a = true;
            h.a().b();
            a(new a(this, message));
            e();
            if (this.l) {
                b("start");
                this.d = 0;
            }
        }
    }

    public void a(BDLocation bDLocation) {
        b(bDLocation);
    }

    public void a(String str) {
        c(new BDLocation(str));
    }

    public void b() {
        this.f.clear();
        this.h = null;
        e();
    }

    public void b(Message message) {
        a a = a(message.replyTo);
        if (a != null) {
            this.f.remove(a);
        }
        n.a().c();
        e();
        if (this.l) {
            b("stop");
            this.d = 0;
        }
    }

    public void b(BDLocation bDLocation) {
        boolean z = l.h;
        if (z) {
            l.h = false;
        }
        if (j.V >= 10000 && (bDLocation.getLocType() == 61 || bDLocation.getLocType() == BDLocation.TypeNetWorkLocation || bDLocation.getLocType() == 66)) {
            if (this.h != null) {
                float[] fArr = new float[1];
                Location.distanceBetween(this.h.getLatitude(), this.h.getLongitude(), bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
                if (fArr[0] > ((float) j.X) || z) {
                    this.h = null;
                    this.h = new BDLocation(bDLocation);
                } else {
                    return;
                }
            }
            this.h = new BDLocation(bDLocation);
        }
        Iterator it;
        a aVar;
        if (bDLocation == null || bDLocation.getLocType() != BDLocation.TypeNetWorkLocation || j.a().b()) {
            it = this.f.iterator();
            while (it.hasNext()) {
                try {
                    aVar = (a) it.next();
                    aVar.a(bDLocation);
                    if (aVar.d > 4) {
                        it.remove();
                    }
                } catch (Exception e) {
                    return;
                }
            }
            return;
        }
        if (this.i == null) {
            this.i = new BDLocation();
            this.i.setLocType(505);
        }
        it = this.f.iterator();
        while (it.hasNext()) {
            try {
                aVar = (a) it.next();
                aVar.a(this.i);
                if (aVar.d > 4) {
                    it.remove();
                }
            } catch (Exception e2) {
                return;
            }
        }
    }

    public String c() {
        StringBuffer stringBuffer = new StringBuffer(256);
        if (this.f.isEmpty()) {
            return "&prod=" + com.baidu.location.d.b.e + ":" + com.baidu.location.d.b.d;
        }
        a aVar = (a) this.f.get(0);
        if (aVar.c.prodName != null) {
            stringBuffer.append(aVar.c.prodName);
        }
        if (aVar.a != null) {
            stringBuffer.append(":");
            stringBuffer.append(aVar.a);
            stringBuffer.append("|");
        }
        String stringBuffer2 = stringBuffer.toString();
        return (stringBuffer2 == null || stringBuffer2.equals("")) ? null : "&prod=" + stringBuffer2;
    }

    public void c(BDLocation bDLocation) {
        Address a = l.c().a(bDLocation);
        String f = l.c().f();
        List g = l.c().g();
        if (a != null) {
            bDLocation.setAddr(a);
        }
        if (f != null) {
            bDLocation.setLocationDescribe(f);
        }
        if (g != null) {
            bDLocation.setPoiList(g);
        }
        l.c().c(bDLocation);
        a(bDLocation);
    }

    public boolean c(Message message) {
        boolean z = true;
        a a = a(message.replyTo);
        if (a == null) {
            return false;
        }
        int i = a.c.scanSpan;
        a.c.scanSpan = message.getData().getInt("scanSpan", a.c.scanSpan);
        if (a.c.scanSpan < 1000) {
            n.a().c();
            this.a = false;
        } else {
            this.a = true;
        }
        if (a.c.scanSpan <= 999 || i >= 1000) {
            z = false;
        } else {
            if (a.c.mIsNeedDeviceDirect || a.c.isNeedAltitude) {
                n.a().a(a.c.mIsNeedDeviceDirect);
                n.a().b();
            }
            this.b |= a.c.isNeedAltitude;
        }
        a.c.openGps = message.getData().getBoolean("openGPS", a.c.openGps);
        String string = message.getData().getString("coorType");
        LocationClientOption locationClientOption = a.c;
        if (string == null || string.equals("")) {
            string = a.c.coorType;
        }
        locationClientOption.coorType = string;
        string = message.getData().getString("addrType");
        locationClientOption = a.c;
        if (string == null || string.equals("")) {
            string = a.c.addrType;
        }
        locationClientOption.addrType = string;
        if (!j.g.equals(a.c.addrType)) {
            l.c().i();
        }
        a.c.timeOut = message.getData().getInt("timeOut", a.c.timeOut);
        a.c.location_change_notify = message.getData().getBoolean("location_change_notify", a.c.location_change_notify);
        a.c.priority = message.getData().getInt(LogFactory.PRIORITY_KEY, a.c.priority);
        int i2 = message.getData().getInt("wifitimeout", ProgressType.PRO_END);
        if (i2 < j.ae) {
            j.ae = i2;
        }
        e();
        return z;
    }

    public int d(Message message) {
        if (message == null || message.replyTo == null) {
            return 1;
        }
        a a = a(message.replyTo);
        return (a == null || a.c == null) ? 1 : a.c.priority;
    }

    public void d() {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }

    public int e(Message message) {
        if (message == null || message.replyTo == null) {
            return 1000;
        }
        a a = a(message.replyTo);
        return (a == null || a.c == null) ? 1000 : a.c.scanSpan;
    }
}
