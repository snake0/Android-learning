package com.baidu.mapsdkplatform.comapi.synchronization.data;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.synchronization.DisplayOptions;
import com.baidu.mapapi.synchronization.RoleOptions;
import com.baidu.mapapi.synchronization.SynchronizationConstants;
import com.baidu.mapsdkplatform.comapi.synchronization.data.RouteLineInfo.RouteSectionInfo;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class f {
    private static final String a = f.class.getSimpleName();
    private RoleOptions b;
    private DisplayOptions c;
    private BlockingQueue<SyncResponseResult> d;
    private h e;
    private String f;
    private String g;
    private com.baidu.mapsdkplatform.comapi.synchronization.b.a h;
    private HandlerThread i;
    private b j;
    private volatile int k;
    private j l;
    private boolean m;
    private float n;
    private long o;
    private int p;

    class a {
        private static final f a = new f();
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 100000:
                    SyncResponseResult a = f.this.b((String) message.obj);
                    if (a == null) {
                        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(f.a, "parser response data is null");
                        return;
                    }
                    f.this.a(a);
                    f.this.j();
                    f.this.b(a);
                    return;
                case 100001:
                    f.this.k();
                    return;
                default:
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(f.a, "Undefined message type");
                    return;
            }
        }
    }

    private f() {
        this.d = new LinkedBlockingQueue();
        this.f = String.valueOf(0);
        this.g = String.valueOf(0);
        this.h = new com.baidu.mapsdkplatform.comapi.synchronization.b.a();
        this.k = 0;
        this.m = false;
        this.n = 0.0f;
        this.o = 0;
        this.p = 0;
    }

    /* synthetic */ f(g gVar) {
        this();
    }

    private e a(int i) {
        if (this.b == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "RoleOptions is null");
            return null;
        }
        e eVar = new e();
        eVar.a(this.b.getOrderId());
        eVar.b(this.b.getDriverId());
        eVar.c(this.b.getUserId());
        eVar.a(i);
        if (this.m) {
            this.f = String.valueOf(0);
            this.g = String.valueOf(0);
        }
        eVar.d(this.f);
        eVar.e(this.g);
        return eVar;
    }

    public static f a() {
        return a.a;
    }

    private void a(SyncResponseResult syncResponseResult) {
        if (this.d == null) {
            this.d = new LinkedBlockingQueue();
        }
        if (this.m) {
            this.m = false;
            this.d.clear();
        }
        try {
            this.d.put(syncResponseResult);
        } catch (InterruptedException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "InterruptedException happened when put item into queue", e);
            Thread.currentThread().interrupt();
        }
    }

    private void a(String str) {
        if (this.h == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "HttpClient cannot be null");
        } else {
            this.h.a(str, new g(this));
        }
    }

    private void a(String str, SyncResponseResult syncResponseResult) {
        LatLng latLng = null;
        int i = 1;
        String[] split = str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        if (split.length == 0) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "There's no section route data");
            return;
        }
        String[] split2 = split[0].split(",");
        if (2 != split2.length) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Section start position latlng invalid: " + split[0]);
            return;
        }
        LatLng latLng2;
        try {
            latLng2 = new LatLng(Double.valueOf(split2[1]).doubleValue(), Double.valueOf(split2[0]).doubleValue());
        } catch (NumberFormatException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get startPosition failed", e);
            latLng2 = null;
        }
        while (i < split.length) {
            RouteSectionInfo routeSectionInfo = new RouteSectionInfo();
            routeSectionInfo.a(latLng2);
            String[] split3 = split[i].split(",");
            if (2 != split3.length) {
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Section position latlng invalid: " + split[i]);
            } else {
                try {
                    latLng2 = new LatLng(Double.valueOf(split3[1]).doubleValue(), Double.valueOf(split3[0]).doubleValue());
                } catch (NumberFormatException e2) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get endPosition failed", e2);
                    latLng2 = latLng;
                }
                routeSectionInfo.b(latLng2);
                syncResponseResult.a().a(routeSectionInfo);
                latLng = latLng2;
            }
            i++;
        }
    }

    private void a(JSONArray jSONArray, SyncResponseResult syncResponseResult) {
        double d = 0.0d;
        JSONObject optJSONObject = jSONArray.optJSONObject(jSONArray.length() - 1);
        if (optJSONObject == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Invalid driver position data");
            return;
        }
        syncResponseResult.c().setTimeStamp(optJSONObject.optString("t"));
        String optString = optJSONObject.optString("p");
        if (optString == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No position info data");
            return;
        }
        String[] split = optString.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        if (split.length == 0) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Position info array is empty");
            return;
        }
        String[] split2 = split[0].split(",");
        if (2 != split2.length) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Position latlng invalid");
            return;
        }
        LatLng latLng;
        double doubleValue;
        int intValue;
        try {
            latLng = new LatLng(Double.valueOf(split2[1]).doubleValue(), Double.valueOf(split2[0]).doubleValue());
        } catch (NumberFormatException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get driver position failed", e);
            latLng = null;
        }
        syncResponseResult.c().setPoint(latLng);
        try {
            doubleValue = Double.valueOf(split[1]).doubleValue();
        } catch (NumberFormatException e2) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get angle failed", e2);
            doubleValue = d;
        }
        syncResponseResult.c().setAngle(doubleValue);
        try {
            d = Double.valueOf(split[2]).doubleValue();
        } catch (NumberFormatException e22) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get speed failed", e22);
        }
        syncResponseResult.c().setSpeed(d);
        try {
            intValue = Integer.valueOf(split[3]).intValue();
        } catch (NumberFormatException e222) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get orderStateInPosition failed", e222);
            intValue = 0;
        }
        syncResponseResult.c().setOrderStateInPosition(intValue);
    }

    private void a(JSONObject jSONObject, SyncResponseResult syncResponseResult) {
        JSONObject optJSONObject = jSONObject.optJSONObject("route");
        if (optJSONObject != null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "parser route data");
            b(optJSONObject, syncResponseResult);
        }
        optJSONObject = jSONObject.optJSONObject("traffic");
        if (optJSONObject != null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "parser traffic data");
            c(optJSONObject, syncResponseResult);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("positions");
        if (!(optJSONArray == null || optJSONArray.length() == 0)) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "parser driver position data");
            a(optJSONArray, syncResponseResult);
        }
        String optString = jSONObject.optString("run");
        if (!TextUtils.isEmpty(optString)) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "parser travelled distance and elapsed time data");
            c(optString, syncResponseResult);
        }
        optString = jSONObject.optString("remain");
        if (!TextUtils.isEmpty(optString)) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "parser remain distance and estimated time data");
            d(optString, syncResponseResult);
        }
        syncResponseResult.a(jSONObject.optInt("s"));
        syncResponseResult.a(jSONObject.optString("mtime"));
        syncResponseResult.b(jSONObject.optString("ext"));
    }

    private boolean a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("status")) {
            int optInt = jSONObject.optInt("status");
            String optString = jSONObject.optString("message");
            if (optInt == 0) {
                if (this.l != null) {
                    this.l.b(optInt, optString);
                }
                return true;
            } else if (this.l == null) {
                return false;
            } else {
                this.l.c(optInt, optString);
                return false;
            }
        } else if (this.l == null) {
            return false;
        } else {
            this.l.c(SynchronizationConstants.LBS_ERROR_QUERY_TRACK_ROUTE_FAILED, SynchronizationConstants.LBS_STATUS_MESSAGE_QUERY_TRACK_ROUTE_FAILED);
            return false;
        }
    }

    private SyncResponseResult b(String str) {
        if (TextUtils.isEmpty(str)) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Response result is null");
            return null;
        }
        SyncResponseResult syncResponseResult = new SyncResponseResult();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (a(jSONObject)) {
                jSONObject = jSONObject.optJSONObject(SpeechEvent.KEY_EVENT_RECORD_DATA);
                if (jSONObject == null || jSONObject.length() <= 0) {
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "No route and traffic and driver data");
                    return null;
                }
                a(jSONObject, syncResponseResult);
                return syncResponseResult;
            }
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Response result is invalid");
            return null;
        } catch (JSONException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "JSONException happened when parser");
            syncResponseResult = null;
        }
    }

    private void b(SyncResponseResult syncResponseResult) {
        float d = syncResponseResult.d();
        long e = syncResponseResult.e();
        if (1 == this.p || 2 == this.p || 4 == this.p) {
            if (this.p != 1 && this.m) {
                this.n = 0.0f;
                this.n = 0.0f;
            }
            if (0.0f != d) {
                this.n = d;
            }
            if (0 != e) {
                this.o = e;
            }
        } else {
            this.n = 0.0f;
            this.o = 0;
        }
        if (this.l != null) {
            this.l.a(this.n, this.o);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0069 A:{LOOP_END, LOOP:1: B:19:0x0065->B:21:0x0069} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0069 A:{LOOP_END, LOOP:1: B:19:0x0065->B:21:0x0069} */
    private void b(java.lang.String r12, com.baidu.mapsdkplatform.comapi.synchronization.data.SyncResponseResult r13) {
        /*
        r11 = this;
        r1 = 0;
        r0 = ";";
        r6 = r12.split(r0);
        r0 = r6.length;
        if (r0 != 0) goto L_0x0012;
    L_0x000a:
        r0 = a;
        r1 = "There's no section traffic data";
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(r0, r1);
    L_0x0011:
        return;
    L_0x0012:
        r7 = new java.util.ArrayList;
        r7.<init>();
        r8 = r6.length;
        r5 = r1;
    L_0x0019:
        if (r5 >= r8) goto L_0x0011;
    L_0x001b:
        r0 = r6[r5];
        r2 = ",";
        r4 = r0.split(r2);
        r2 = 3;
        r3 = r4.length;
        if (r2 == r3) goto L_0x0043;
    L_0x0027:
        r2 = a;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "section traffic data is invalid: ";
        r3 = r3.append(r4);
        r0 = r3.append(r0);
        r0 = r0.toString();
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(r2, r0);
    L_0x003f:
        r0 = r5 + 1;
        r5 = r0;
        goto L_0x0019;
    L_0x0043:
        r0 = 0;
        r0 = r4[r0];	 Catch:{ NumberFormatException -> 0x0073 }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ NumberFormatException -> 0x0073 }
        r3 = r0.intValue();	 Catch:{ NumberFormatException -> 0x0073 }
        r0 = 1;
        r0 = r4[r0];	 Catch:{ NumberFormatException -> 0x008a }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ NumberFormatException -> 0x008a }
        r2 = r0.intValue();	 Catch:{ NumberFormatException -> 0x008a }
        r0 = 2;
        r0 = r4[r0];	 Catch:{ NumberFormatException -> 0x008f }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ NumberFormatException -> 0x008f }
        r0 = r0.intValue();	 Catch:{ NumberFormatException -> 0x008f }
    L_0x0064:
        r4 = r3;
    L_0x0065:
        r9 = r3 + r2;
        if (r4 >= r9) goto L_0x0082;
    L_0x0069:
        r9 = java.lang.Integer.valueOf(r0);
        r7.add(r9);
        r4 = r4 + 1;
        goto L_0x0065;
    L_0x0073:
        r0 = move-exception;
        r3 = r0;
        r2 = r1;
        r0 = r1;
    L_0x0077:
        r4 = a;
        r9 = "Get traffic status info failed";
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(r4, r9, r3);
        r3 = r2;
        r2 = r0;
        r0 = r1;
        goto L_0x0064;
    L_0x0082:
        r0 = r13.b();
        r0.a(r7);
        goto L_0x003f;
    L_0x008a:
        r0 = move-exception;
        r2 = r3;
        r3 = r0;
        r0 = r1;
        goto L_0x0077;
    L_0x008f:
        r0 = move-exception;
        r10 = r0;
        r0 = r2;
        r2 = r3;
        r3 = r10;
        goto L_0x0077;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.synchronization.data.f.b(java.lang.String, com.baidu.mapsdkplatform.comapi.synchronization.data.SyncResponseResult):void");
    }

    private void b(JSONObject jSONObject, SyncResponseResult syncResponseResult) {
        syncResponseResult.a().a(jSONObject.optInt("c") != 0);
        this.f = jSONObject.optString("f");
        syncResponseResult.a().a(this.f);
        String optString = jSONObject.optString("d");
        if (!TextUtils.isEmpty(optString)) {
            a(optString, syncResponseResult);
        }
    }

    private void c(String str, SyncResponseResult syncResponseResult) {
        String[] split = str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        if (2 != split.length) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The travelled data is null or invalid");
            return;
        }
        float f = 0.0f;
        try {
            f = Float.valueOf(split[0]).floatValue();
        } catch (NumberFormatException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get travelledDistance failed", e);
        }
        syncResponseResult.a(f);
        long j = 0;
        try {
            j = Long.valueOf(split[1]).longValue();
        } catch (NumberFormatException e2) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get elapsedTime failed", e2);
        }
        syncResponseResult.a(j);
    }

    private void c(JSONObject jSONObject, SyncResponseResult syncResponseResult) {
        syncResponseResult.b().a(jSONObject.optInt("c") != 0);
        this.g = jSONObject.optString("f");
        syncResponseResult.b().a(this.g);
        String optString = jSONObject.optString("d");
        if (!TextUtils.isEmpty(optString)) {
            b(optString, syncResponseResult);
        }
    }

    private void d(String str, SyncResponseResult syncResponseResult) {
        String[] split = str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        if (2 != split.length) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "The remain data is null or invalid: ");
            return;
        }
        float f = 0.0f;
        try {
            f = Float.valueOf(split[0]).floatValue();
        } catch (NumberFormatException e) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get remainDistance failed", e);
        }
        syncResponseResult.b(f);
        long j = 0;
        try {
            j = Long.valueOf(split[1]).longValue();
        } catch (NumberFormatException e2) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get estimatedTime failed", e2);
        }
        syncResponseResult.b(j);
    }

    private void j() {
        if (this.e != null) {
            this.e.a();
        }
    }

    private void k() {
        if (this.e != null) {
            this.e.b();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, boolean z) {
        this.m = z;
        this.p = i;
        e a = a(i);
        if (a == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "Data request option is null");
            return;
        }
        String a2 = new l(a).a();
        if (a2 == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "send url string is null");
        } else {
            a(a2);
        }
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(View view) {
        if (this.c != null) {
            this.c.setStartPositionInfoWindowView(view);
        } else if (this.l != null) {
            this.l.c(SynchronizationConstants.LBS_ERROR_DISPLAYOPTIONS_INSTANCE_INVALID, SynchronizationConstants.LBS_STATUS_MESSAGE_DISPLAYOPTIONS_INSTANCE_INVALID);
        }
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(DisplayOptions displayOptions) {
        this.c = displayOptions;
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(RoleOptions roleOptions) {
        this.b = roleOptions;
    }

    public void a(h hVar) {
        this.e = hVar;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(j jVar) {
        this.l = jVar;
    }

    public void b() {
        this.i = new HandlerThread("SyncDataStorage");
        this.i.start();
        this.j = new b(this.i.getLooper());
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void b(View view) {
        if (this.c != null) {
            this.c.setEndPositionInfoWindowView(view);
        } else if (this.l != null) {
            this.l.c(SynchronizationConstants.LBS_ERROR_DISPLAYOPTIONS_INSTANCE_INVALID, SynchronizationConstants.LBS_STATUS_MESSAGE_DISPLAYOPTIONS_INSTANCE_INVALID);
        }
    }

    public void c() {
        if (this.e != null) {
            this.e = null;
        }
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void c(View view) {
        if (this.c != null) {
            this.c.setCarInfoWindowView(view);
        } else if (this.l != null) {
            this.l.c(SynchronizationConstants.LBS_ERROR_DISPLAYOPTIONS_INSTANCE_INVALID, SynchronizationConstants.LBS_STATUS_MESSAGE_DISPLAYOPTIONS_INSTANCE_INVALID);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int d() {
        return this.k;
    }

    public RoleOptions e() {
        return this.b;
    }

    public DisplayOptions f() {
        return this.c;
    }

    public BlockingQueue<SyncResponseResult> g() {
        return this.d;
    }

    public void h() {
        this.m = false;
        this.j.removeCallbacksAndMessages(null);
        this.i.quit();
    }
}
