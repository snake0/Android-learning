package com.baidu.location.a;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.baidu.location.BDLocation;
import com.baidu.location.Jni;
import com.baidu.location.b.g;
import com.baidu.location.b.h;
import com.baidu.location.d.e;
import com.baidu.location.d.j;
import com.baidu.location.f;
import java.util.HashMap;
import java.util.Locale;

public abstract class i {
    public static String c = null;
    public g a = null;
    public com.baidu.location.b.a b = null;
    final Handler d = new a();
    private boolean e = true;
    private boolean f = true;
    private boolean g = false;
    private String h = null;
    private String i = null;

    public class a extends Handler {
        public void handleMessage(Message message) {
            if (f.isServing) {
                switch (message.what) {
                    case 21:
                        i.this.a(message);
                        return;
                    case 62:
                    case 63:
                        i.this.a();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    class b extends e {
        String a;
        String b;

        public b() {
            this.a = null;
            this.b = null;
            this.k = new HashMap();
        }

        public void a() {
            this.h = j.c();
            if (!((!j.h && !j.i) || i.this.h == null || i.this.i == null)) {
                this.b += String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[]{i.this.h, i.this.i});
            }
            String encodeTp4 = Jni.encodeTp4(this.b);
            this.b = null;
            if (this.a == null) {
                this.a = v.b();
            }
            this.k.put("bloc", encodeTp4);
            if (this.a != null) {
                this.k.put("up", this.a);
            }
            this.k.put("trtm", String.format(Locale.CHINA, "%d", new Object[]{Long.valueOf(System.currentTimeMillis())}));
        }

        public void a(String str) {
            this.b = str;
            b(j.f);
        }

        public void a(boolean z) {
            Message obtainMessage;
            if (!z || this.j == null) {
                obtainMessage = i.this.d.obtainMessage(63);
                obtainMessage.obj = "HttpStatus error";
                obtainMessage.sendToTarget();
            } else {
                try {
                    BDLocation bDLocation;
                    String str = this.j;
                    i.c = str;
                    try {
                        bDLocation = new BDLocation(str);
                        if (bDLocation.getLocType() == BDLocation.TypeNetWorkLocation) {
                            h.a().a(str);
                        }
                        bDLocation.setOperators(com.baidu.location.b.b.a().h());
                        if (n.a().d()) {
                            bDLocation.setDirection(n.a().e());
                        }
                    } catch (Exception e) {
                        bDLocation = new BDLocation();
                        bDLocation.setLocType(0);
                    }
                    this.a = null;
                    if (bDLocation.getLocType() == 0 && bDLocation.getLatitude() == Double.MIN_VALUE && bDLocation.getLongitude() == Double.MIN_VALUE) {
                        obtainMessage = i.this.d.obtainMessage(63);
                        obtainMessage.obj = "HttpStatus error";
                        obtainMessage.sendToTarget();
                    } else {
                        Message obtainMessage2 = i.this.d.obtainMessage(21);
                        obtainMessage2.obj = bDLocation;
                        obtainMessage2.sendToTarget();
                    }
                } catch (Exception e2) {
                    obtainMessage = i.this.d.obtainMessage(63);
                    obtainMessage.obj = "HttpStatus error";
                    obtainMessage.sendToTarget();
                }
            }
            if (this.k != null) {
                this.k.clear();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x00fa  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00ee  */
    public java.lang.String a(java.lang.String r7) {
        /*
        r6 = this;
        r0 = 0;
        r4 = 0;
        r1 = r6.h;
        if (r1 != 0) goto L_0x0010;
    L_0x0006:
        r1 = com.baidu.location.f.getServiceContext();
        r1 = com.baidu.location.a.j.b(r1);
        r6.h = r1;
    L_0x0010:
        r1 = r6.i;
        if (r1 != 0) goto L_0x001e;
    L_0x0014:
        r1 = com.baidu.location.f.getServiceContext();
        r1 = com.baidu.location.a.j.c(r1);
        r6.i = r1;
    L_0x001e:
        r1 = r6.b;
        if (r1 == 0) goto L_0x002a;
    L_0x0022:
        r1 = r6.b;
        r1 = r1.a();
        if (r1 != 0) goto L_0x0034;
    L_0x002a:
        r1 = com.baidu.location.b.b.a();
        r1 = r1.f();
        r6.b = r1;
    L_0x0034:
        r1 = r6.a;
        if (r1 == 0) goto L_0x0040;
    L_0x0038:
        r1 = r6.a;
        r1 = r1.i();
        if (r1 != 0) goto L_0x004a;
    L_0x0040:
        r1 = com.baidu.location.b.h.a();
        r1 = r1.o();
        r6.a = r1;
    L_0x004a:
        r1 = com.baidu.location.b.e.a();
        r1 = r1.i();
        if (r1 == 0) goto L_0x0106;
    L_0x0054:
        r1 = com.baidu.location.b.e.a();
        r2 = r1.g();
    L_0x005c:
        r1 = r6.b;
        if (r1 == 0) goto L_0x0070;
    L_0x0060:
        r1 = r6.b;
        r1 = r1.d();
        if (r1 != 0) goto L_0x0070;
    L_0x0068:
        r1 = r6.b;
        r1 = r1.c();
        if (r1 == 0) goto L_0x007f;
    L_0x0070:
        r1 = r6.a;
        if (r1 == 0) goto L_0x007c;
    L_0x0074:
        r1 = r6.a;
        r1 = r1.a();
        if (r1 != 0) goto L_0x007f;
    L_0x007c:
        if (r2 != 0) goto L_0x007f;
    L_0x007e:
        return r0;
    L_0x007f:
        r0 = r6.b();
        r1 = com.baidu.location.a.h.a();
        r1 = r1.d();
        r3 = -2;
        if (r1 != r3) goto L_0x00a1;
    L_0x008e:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r0 = r1.append(r0);
        r1 = "&imo=1";
        r0 = r0.append(r1);
        r0 = r0.toString();
    L_0x00a1:
        r1 = com.baidu.location.f.getServiceContext();
        r1 = com.baidu.location.d.j.b(r1);
        if (r1 < 0) goto L_0x00c2;
    L_0x00ab:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r0 = r3.append(r0);
        r3 = "&lmd=";
        r0 = r0.append(r3);
        r0 = r0.append(r1);
        r0 = r0.toString();
    L_0x00c2:
        r1 = r6.a;
        if (r1 == 0) goto L_0x00ce;
    L_0x00c6:
        r1 = r6.a;
        r1 = r1.a();
        if (r1 != 0) goto L_0x0104;
    L_0x00ce:
        r1 = com.baidu.location.b.h.a();
        r1 = r1.l();
        if (r1 == 0) goto L_0x0104;
    L_0x00d8:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r1 = r3.append(r1);
        r0 = r1.append(r0);
        r0 = r0.toString();
        r3 = r0;
    L_0x00ea:
        r0 = r6.f;
        if (r0 == 0) goto L_0x00fa;
    L_0x00ee:
        r6.f = r4;
        r0 = r6.b;
        r1 = r6.a;
        r5 = 1;
        r0 = com.baidu.location.d.j.a(r0, r1, r2, r3, r4, r5);
        goto L_0x007e;
    L_0x00fa:
        r0 = r6.b;
        r1 = r6.a;
        r0 = com.baidu.location.d.j.a(r0, r1, r2, r3, r4);
        goto L_0x007e;
    L_0x0104:
        r3 = r0;
        goto L_0x00ea;
    L_0x0106:
        r2 = r0;
        goto L_0x005c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.a.i.a(java.lang.String):java.lang.String");
    }

    public abstract void a();

    public abstract void a(Message message);

    public String b() {
        String str;
        String c = a.a().c();
        if (h.i()) {
            str = "&cn=32";
        } else {
            str = String.format(Locale.CHINA, "&cn=%d", new Object[]{Integer.valueOf(com.baidu.location.b.b.a().e())});
        }
        String q;
        if (this.e) {
            this.e = false;
            q = h.a().q();
            if (!(TextUtils.isEmpty(q) || q.equals("02:00:00:00:00:00"))) {
                q = q.replace(":", "");
                str = String.format(Locale.CHINA, "%s&mac=%s", new Object[]{str, q});
            }
            if (VERSION.SDK_INT > 17) {
            }
        } else if (!this.g) {
            q = v.f();
            if (q != null) {
                str = str + q;
            }
            this.g = true;
        }
        return str + c;
    }
}
