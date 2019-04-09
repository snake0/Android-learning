package com.mqunar.libtask;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechConstant;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.atomenv.OwnerConstant;
import com.mqunar.atomenv.pc.PhoneCallStat;
import com.mqunar.json.JsonUtils;
import com.mqunar.necro.agent.bean.NecroParam;
import com.mqunar.network.NetRequest;
import com.mqunar.network.NetResponse;
import com.mqunar.storage.SpStorage;
import com.mqunar.storage.Storage;
import com.mqunar.tools.CheckUtils;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.tools.log.QLog;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.cookie.ClientCookie;
import qunar.lego.utils.FormPart;
import qunar.lego.utils.Goblin;
import qunar.lego.utils.HttpHeader;
import qunar.lego.utils.Pitcher;

public class HotdogConductor extends o {
    private static final Uri n = Uri.parse("content://telephony/carriers/preferapn");
    private String a;
    private String b;
    private String c;
    private List<FormPart> d;
    private String e;
    private String f;
    private String g;
    private String h;
    private HttpHeader i = new HttpHeader();
    private HashMap<String, String> j = new HashMap();
    private StackTraceElement[] k;
    private boolean l;
    private String m;

    public class Builder {
        private String a;
        private String b;
        private String c;
        private String d;
        private List<FormPart> e;
        private HttpHeader f;
        private Map<String, String> g;
        private boolean h = false;

        public Builder setHostUrl(String str) {
            this.a = str;
            return this;
        }

        public Builder setT(String str) {
            this.b = str;
            return this;
        }

        public Builder setParam(String str) {
            this.c = str;
            return this;
        }

        public Builder setCacheKey(String str) {
            this.d = str;
            return this;
        }

        public Builder addHeader(String str, String str2) {
            if (this.f == null) {
                this.f = new HttpHeader();
            }
            this.f.addHeader(str, str2);
            return this;
        }

        public Builder addAppendParam(String str, String str2) {
            if (this.g == null) {
                this.g = new HashMap();
            }
            this.g.put(str, str2);
            return this;
        }

        public Builder addBPart(FormPart formPart) {
            if (this.e == null) {
                this.e = new ArrayList();
            }
            this.e.add(formPart);
            return this;
        }

        public void setProxy(boolean z) {
            this.h = z;
        }

        public HotdogConductor create(TaskCallback... taskCallbackArr) {
            HotdogConductor hotdogConductor = new HotdogConductor(taskCallbackArr);
            hotdogConductor.setProxy(this.h);
            hotdogConductor.setParams(this.a, this.b, this.c, this.f, this.d, this.g, this.e);
            return hotdogConductor;
        }
    }

    public /* bridge */ /* synthetic */ boolean cancel(boolean z) {
        return super.cancel(z);
    }

    public /* bridge */ /* synthetic */ List getFormParts() {
        return super.getFormParts();
    }

    public /* bridge */ /* synthetic */ NetResponse getOriginResponse() {
        return super.getOriginResponse();
    }

    public /* bridge */ /* synthetic */ Map getRespHeader() {
        return super.getRespHeader();
    }

    public HotdogConductor(TaskCallback... taskCallbackArr) {
        super(taskCallbackArr);
    }

    public void setProxy(boolean z) {
        this.l = z;
    }

    public void setParams(Object... objArr) {
        initParam(objArr);
        if (objArr != null) {
            int i = -1;
            while (true) {
                try {
                    int i2 = i + 1;
                    if (objArr.length <= i2) {
                        break;
                    }
                    Object obj = objArr[i2];
                    if (i2 == 0) {
                        this.a = (String) obj;
                    } else if (i2 == 1) {
                        this.c = (String) obj;
                    } else if (i2 == 2) {
                        this.b = (String) obj;
                    } else if (i2 == 3) {
                        if (obj != null && (obj instanceof Map)) {
                            this.i.addHeaders((Map) obj);
                        } else if (obj != null && (obj instanceof HttpHeader)) {
                            this.i.addHeaders((HttpHeader) obj);
                        }
                    } else if (i2 == 4) {
                        this.h = obj == null ? this.b : (String) obj;
                    } else if (i2 == 5) {
                        Map map = (Map) obj;
                        if (map != null) {
                            this.j.putAll(map);
                        }
                    } else if (i2 == 6) {
                        this.d = (List) obj;
                    }
                    i = i2;
                } catch (Exception e) {
                    throw new IllegalArgumentException("input params must be String,String,String,Map,boolean,Map,List");
                }
            }
            if (!this.l) {
                boolean z = CheckUtils.isEmpty(this.d) && CheckUtils.isEmpty(this.j);
                this.l = z;
            }
            this.e = String.valueOf(DateTimeUtils.getCurrentDateTime().getTimeInMillis());
        }
    }

    public <T extends AbsConductor> boolean sameAs(T t) {
        if (!(t instanceof HotdogConductor)) {
            return false;
        }
        String str = ((HotdogConductor) t).c;
        if (this.c != null) {
            return this.c.equals(str);
        }
        if (str == null) {
            return true;
        }
        return false;
    }

    public void beforeAdd() {
        super.beforeAdd();
        this.k = Thread.currentThread().getStackTrace();
    }

    /* Access modifiers changed, original: protected */
    public void prepareParams() {
        if (this.a.contains("?")) {
            this.a += "&qrt=" + this.c;
        } else {
            this.a += "?qrt=" + this.c;
        }
        setUrl(this.a);
        String valueOf = String.valueOf(this.e);
        String version = Goblin.version();
        String vid = GlobalEnv.getInstance().getVid();
        HashMap cp = cp(this.train.context);
        cp.put(SpeechConstant.ISV_VID, vid);
        cp.put("t", this.c);
        cp.put("cust", this.f);
        cp.put("cqp", this.g);
        cp.put("hk", String.valueOf(c()));
        Pair a = a(this.train.context, this.k);
        if (!CheckUtils.isEmpty(a.first)) {
            cp.put("catom", a.first);
        }
        if (!CheckUtils.isEmpty(a.second)) {
            StringBuilder stringBuilder = new StringBuilder(((Set) a.second).size() * 7);
            Object[] toArray = ((Set) a.second).toArray();
            stringBuilder.append(toArray[0]);
            for (int i = 1; i < toArray.length; i++) {
                stringBuilder.append(",");
                stringBuilder.append(toArray[i]);
            }
            cp.put("cas", stringBuilder.toString());
        }
        cp.put("ke", valueOf);
        try {
            for (Object obj : this.msgd.getCallbacks()) {
                Object obj2;
                if (Class.forName("com.mqunar.patch.task.PatchTaskCallback").isAssignableFrom(obj2.getClass())) {
                    Object a2 = r.a(obj2, "networkListener");
                    obj2 = (String) r.a("fromActivityName", a2, null, null);
                    if (obj2 == null) {
                        obj2 = (String) r.a("fromActivityName", r.a(a2, "networkListener"), null, null);
                    }
                    String str = "ref";
                    if (obj2 == null) {
                        obj2 = "";
                    }
                    cp.put(str, obj2);
                }
            }
        } catch (Throwable th) {
        }
        String toJsonString = JsonUtils.toJsonString(cp);
        QLog.d("cparam", "%s", toJsonString);
        try {
            String str2 = vid.substring(0, 4) + version.substring(1);
            String string = Storage.newStorage(this.train.context, "qunar_hd").getString("ext", "");
            if (this.l) {
                vid = a(toJsonString);
                str2 = a(this.b);
                toJsonString = str2;
                str2 = vid;
                vid = a(string);
            } else {
                vid = a(toJsonString, str2);
                str2 = a(this.b, valueOf);
                toJsonString = str2;
                str2 = vid;
                vid = a(string, valueOf);
            }
            if (CheckUtils.isEmpty(this.d)) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("&c=").append(str2);
                stringBuilder2.append("&b=").append(toJsonString);
                if (!this.l) {
                    stringBuilder2.append("&v=").append(version);
                }
                for (Entry entry : this.j.entrySet()) {
                    stringBuilder2.append("&");
                    stringBuilder2.append((String) entry.getKey());
                    stringBuilder2.append("=");
                    stringBuilder2.append((String) entry.getValue());
                }
                stringBuilder2.append("&ext=").append(vid);
                QLog.v("request", stringBuilder2.toString(), new Object[0]);
                setContent(stringBuilder2.toString().getBytes());
            } else {
                this.d.add(new FormPart("c", str2));
                this.d.add(new FormPart("b", toJsonString));
                this.d.add(new FormPart("v", version));
                for (Entry entry2 : this.j.entrySet()) {
                    this.d.add(new FormPart((String) entry2.getKey(), (String) entry2.getValue()));
                }
                this.d.add(new FormPart("ext", vid));
                setFormParts(this.d);
            }
            setReqHeader(this.i);
            if (this.l) {
                Pitcher pitcher;
                if (getFormParts() != null) {
                    List arrayList = new ArrayList();
                    for (FormPart formPart : getFormParts()) {
                        if (formPart.value == null) {
                            arrayList.add(new FormPart(formPart.name, formPart.file, formPart.metaData));
                        } else {
                            arrayList.add(new FormPart(formPart.name, formPart.value));
                        }
                    }
                    pitcher = new Pitcher(this.train.context, getUrl(), arrayList, new HttpHeader(getReqHeader()));
                } else {
                    pitcher = new Pitcher(this.train.context, getUrl(), getContent(), new HttpHeader(getReqHeader()));
                }
                setReqHeader(a(new HttpHeader(pitcher.getReqHeader())));
                setUrl(pitcher.getProxyUrl() + "?qrt=" + this.c);
                setContent(pitcher.getContent());
            }
        } catch (Exception e) {
            throw new IllegalArgumentException("vid error or netKey error, check first !!!");
        }
    }

    private HttpHeader a(HttpHeader httpHeader) {
        if (!httpHeader.hasHeader("ProxyType") && this.l) {
            httpHeader.setHeader("Pitcher-Type", "hotdog");
        }
        return httpHeader;
    }

    public static String buildCVwithT(Context context, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("t", str);
        return buildCVwithParams(context, hashMap);
    }

    public static String buildCVwithParams(Context context, Map<String, String> map) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            HashMap cp = cp(context);
            String vid = GlobalEnv.getInstance().getVid();
            String valueOf = String.valueOf(DateTimeUtils.getCurrentDateTime().getTimeInMillis());
            cp.put(SpeechConstant.ISV_VID, vid);
            cp.put("ke", valueOf);
            if (!CheckUtils.isEmpty(map)) {
                for (Entry entry : map.entrySet()) {
                    cp.put(entry.getKey(), entry.getValue());
                }
            }
            valueOf = Goblin.version();
            stringBuilder.append("c=").append(a(JsonUtils.toJsonString(cp), vid.substring(0, 4) + valueOf.substring(1)));
            stringBuilder.append("&v=").append(valueOf);
        } catch (Exception e) {
            throw new IllegalArgumentException("vid error or netKey error, check first !!!");
        } catch (Exception e2) {
            QLog.e("build cv error", e2);
        }
        return stringBuilder.toString();
    }

    private static HashMap<String, String> cp(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("usid", GlobalEnv.getInstance().getUserId());
        hashMap.put("un", GlobalEnv.getInstance().getUserName());
        hashMap.put(AIUIConstant.KEY_UID, GlobalEnv.getInstance().getUid());
        hashMap.put("model", Build.MODEL);
        hashMap.put("osVersion", VERSION.RELEASE + "_" + VERSION.SDK_INT);
        hashMap.put("gid", GlobalEnv.getInstance().getGid());
        hashMap.put(SpeechConstant.IST_SESSION_ID, GlobalEnv.getInstance().getSid());
        hashMap.put("pid", GlobalEnv.getInstance().getPid());
        hashMap.put("msg", PhoneCallStat.getInstance().toMsgString());
        hashMap.put("cid", GlobalEnv.getInstance().getCid());
        hashMap.put("ma", GlobalEnv.getInstance().getMac());
        hashMap.put("adid", f(context));
        hashMap.put("nt", a(context));
        hashMap.put("mno", b(context));
        hashMap.put("tsv", String.valueOf(context.getApplicationInfo().targetSdkVersion));
        hashMap.put("resolution", c(context));
        String d = d(context);
        if (!d.equals(EnvironmentCompat.MEDIA_UNKNOWN)) {
            hashMap.put("netType", d);
        }
        HashMap hashMap2 = new HashMap();
        if (VERSION.SDK_INT >= 23) {
            hashMap2.put("lt", "0");
        } else {
            int i = -1;
            try {
                i = Secure.getInt(context.getContentResolver(), "mock_location", 0);
            } catch (Throwable th) {
            }
            hashMap2.put("lt", String.valueOf(i));
        }
        hashMap.put("brush", JsonUtils.toJsonString(hashMap2));
        try {
            Location location = (Location) r.a("qunar.sdk.location.LocationFacade", "getNewestCacheLocation", null, null);
            if (location != null) {
                Object valueOf = String.valueOf(location.getLatitude());
                Object valueOf2 = String.valueOf(location.getLongitude());
                String str = "lat";
                if (TextUtils.isEmpty(valueOf)) {
                    valueOf = "";
                }
                hashMap.put(str, valueOf);
                String str2 = "lgt";
                if (TextUtils.isEmpty(valueOf2)) {
                    valueOf2 = "";
                }
                hashMap.put(str2, valueOf2);
            }
        } catch (Throwable th2) {
        }
        return hashMap;
    }

    /* Access modifiers changed, original: protected */
    public boolean onInterceptRequest(NetRequest netRequest) {
        super.onInterceptRequest(netRequest);
        this.m = q.a(this.train.context, netRequest);
        int i = this.train.getTicket().cacheType;
        Serializable[] findCache = findCache(false);
        switch (i) {
            case 1:
                return true;
            case 2:
                if (findCache == null) {
                    return false;
                }
                this.resultType = findCache[0];
                this.result = findCache[1];
                this.resultTotal = (long) ((byte[]) this.result).length;
                this.currentLength = ((byte[]) this.result).length;
                this.msgd.onMessage(TaskCode.TASK_RESULT, this);
                return true;
            default:
                return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean onInterceptResponse(NetResponse netResponse) {
        super.onInterceptResponse(netResponse);
        q.a(this.train.context, this.m, getRespHeader());
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void buildResult(byte[] bArr, long j, int i) {
        if (this.l) {
            bArr = Pitcher.buildResult(bArr);
        } else if (((long) bArr.length) != j) {
            throw new IllegalStateException("can not parse result");
        }
        try {
            Serializable[] a = s.a(this.train.context, bArr, this.e, this.l);
            this.resultType = a[0];
            this.result = a[1];
            if (this.train.getTicket().cacheType != 0) {
                Storage.newStorage(this.train.context, "hotdog_ca").putSerializable(a(), a);
            }
        } catch (Exception e) {
            throw new IllegalStateException("can not parse result");
        }
    }

    public byte[] getResult() {
        return (byte[]) super.getResult();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        HotdogConductor hotdogConductor = (HotdogConductor) obj;
        if (this.j == null ? hotdogConductor.j != null : !this.j.equals(hotdogConductor.j)) {
            return false;
        }
        if (this.b == null ? hotdogConductor.b != null : !this.b.equals(hotdogConductor.b)) {
            return false;
        }
        if (this.i == null ? hotdogConductor.i != null : !this.i.equals(hotdogConductor.i)) {
            return false;
        }
        if (this.a == null ? hotdogConductor.a != null : !this.a.equals(hotdogConductor.a)) {
            return false;
        }
        if (this.c != null) {
            if (this.c.equals(hotdogConductor.c)) {
                return true;
            }
        } else if (hotdogConductor.c == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = ((this.a != null ? this.a.hashCode() : 0) + (super.hashCode() * 31)) * 31;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.i != null) {
            hashCode = this.i.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.j != null) {
            i = this.j.hashCode();
        }
        return hashCode + i;
    }

    public Serializable[] findCache(boolean z) {
        Serializable[] serializableArr = (Serializable[]) Storage.newStorage(this.train.context, "hotdog_ca").getSerializable(a(), null);
        if (!z) {
            return serializableArr;
        }
        if (serializableArr == null) {
            return null;
        }
        this.resultType = serializableArr[0];
        this.result = serializableArr[1];
        this.resultTotal = (long) ((byte[]) this.result).length;
        this.currentLength = ((byte[]) this.result).length;
        this.status.set(TaskCode.TASK_CACHE_HIT);
        this.msgd.onMessage(TaskCode.TASK_CACHE_HIT, this);
        return null;
    }

    private String a() {
        return SpStorage.hashKeyForDisk(this.c + this.h);
    }

    private static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str2 == null) {
            try {
                str2 = "";
            } catch (Throwable th) {
                th.printStackTrace();
                return "";
            }
        }
        return URLEncoder.encode(Goblin.e(str, str2), "utf-8");
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private static String a(Context context) {
        String str = "";
        try {
            Cursor query = context.getContentResolver().query(n, new String[]{"_id", "apn", "type"}, null, null, null);
            String str2;
            if (query != null) {
                query.moveToFirst();
                if (query.getCount() == 0 || query.isAfterLast()) {
                    str2 = str;
                } else {
                    str2 = query.getString(query.getColumnIndex("apn"));
                }
                query.close();
                return str2;
            }
            query = context.getContentResolver().query(n, null, null, null, null);
            if (query == null) {
                return str;
            }
            query.moveToFirst();
            str2 = query.getString(query.getColumnIndex(AIUIConstant.USER));
            query.close();
            return str2;
        } catch (Exception e) {
            try {
                return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            } catch (Exception e2) {
                return "";
            }
        }
    }

    private static Pair<String, Set<String>> a(Context context, StackTraceElement[] stackTraceElementArr) {
        Class cls;
        Object obj = null;
        int i = 0;
        HashSet hashSet = new HashSet();
        try {
            cls = Class.forName("com.mqunar.core.QunarApkLoader");
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        String str;
        if (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("isSpiderClass", new Class[]{String.class});
                Method declaredMethod2 = cls.getDeclaredMethod("getPackageName", new Class[]{String.class});
                List<String> parseArray = JsonUtils.parseArray(Storage.newStorage(context, OwnerConstant.STORAGE_OWNER_SYS).getString("sys_atom", NecroParam.NECRO_EMPTY_ARRAY), String.class);
                int length = stackTraceElementArr.length - 1;
                while (length > 0) {
                    String obj2;
                    String className = stackTraceElementArr[length].getClassName();
                    if (((Boolean) declaredMethod.invoke(null, new Object[]{className})).booleanValue()) {
                        Object invoke = declaredMethod2.invoke(null, new Object[]{className});
                        if (invoke != null) {
                            className = invoke.toString();
                            for (String str2 : parseArray) {
                                Map fromJson = JsonUtils.fromJson(str2);
                                if (className.equals(fromJson.get("packageName"))) {
                                    i = ((Integer) fromJson.get(ClientCookie.VERSION_ATTR)).intValue();
                                    break;
                                }
                            }
                            if (obj2 == null) {
                                str2 = className + "_" + i;
                            } else {
                                str2 = obj2;
                            }
                            hashSet.add(className + "_" + i);
                            length--;
                            i = i;
                            obj2 = str2;
                        }
                    }
                    str2 = obj2;
                    length--;
                    i = i;
                    obj2 = str2;
                }
            } catch (Throwable th) {
                ACRAErrorReporterBridge.a().a(th);
                obj2 = "atomerror0_0";
                hashSet.add(obj2);
            }
        } else if (context != null) {
            try {
                str2 = context.getPackageName();
                obj2 = str2 + "_" + context.getPackageManager().getPackageInfo(str2, 0).versionCode;
                hashSet.add(obj2);
            } catch (NameNotFoundException e2) {
                obj2 = "atomerror1_0";
                hashSet.add(obj2);
            }
        }
        return new Pair(obj2, hashSet);
    }

    private static String b(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
    }

    private static String c(Context context) {
        int i;
        int i2 = -1;
        if (context != null) {
            i = context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
            i2 = context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
        } else {
            i = -1;
        }
        return i2 + MapViewConstants.ATTR_X + i;
    }

    private static String d(Context context) {
        String str = EnvironmentCompat.MEDIA_UNKNOWN;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return "wifi";
            }
            if (activeNetworkInfo.getType() == 0) {
                String subtypeName = activeNetworkInfo.getSubtypeName();
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 14:
                    case 15:
                        return "2g/3g";
                    case 13:
                        return "4g";
                    default:
                        if (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) {
                            return "2g/3g";
                        }
                }
            }
        }
        return str;
    }

    private static String e(Context context) {
        String deviceId;
        try {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            deviceId = null;
        }
        if (TextUtils.isEmpty(deviceId)) {
            deviceId = b();
        }
        if (TextUtils.isEmpty(deviceId)) {
            return GlobalEnv.getInstance().getGid();
        }
        return deviceId;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x008a  */
    private static java.lang.String b() {
        /*
        r1 = "unknown";
        r2 = android.os.Build.VERSION.SDK_INT;
        r3 = 9;
        if (r2 < r3) goto L_0x0096;
    L_0x0008:
        r1 = new com.mqunar.libtask.m;
        r1.<init>();
        r1 = r1.a();
        r2 = r1;
    L_0x0012:
        r1 = "unknown";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x0092;
    L_0x001a:
        r1 = "android.os.SystemProperties";
        r1 = java.lang.Class.forName(r1);	 Catch:{ Exception -> 0x008d }
        r3 = "get";
        r4 = 2;
        r4 = new java.lang.Class[r4];	 Catch:{ Exception -> 0x008d }
        r5 = 0;
        r6 = java.lang.String.class;
        r4[r5] = r6;	 Catch:{ Exception -> 0x008d }
        r5 = 1;
        r6 = java.lang.String.class;
        r4[r5] = r6;	 Catch:{ Exception -> 0x008d }
        r3 = r1.getDeclaredMethod(r3, r4);	 Catch:{ Exception -> 0x008d }
        r1 = 0;
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x008d }
        r5 = 0;
        r6 = "ro.serialno";
        r4[r5] = r6;	 Catch:{ Exception -> 0x008d }
        r5 = 1;
        r6 = "unknown";
        r4[r5] = r6;	 Catch:{ Exception -> 0x008d }
        r1 = r3.invoke(r1, r4);	 Catch:{ Exception -> 0x008d }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x008d }
        r2 = "unknown";
        r2 = r2.equals(r1);	 Catch:{ Exception -> 0x0090 }
        if (r2 == 0) goto L_0x0094;
    L_0x004f:
        r2 = 0;
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0090 }
        r5 = 0;
        r6 = "gsm.device.sn";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0090 }
        r5 = 1;
        r6 = "unknown";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0090 }
        r2 = r3.invoke(r2, r4);	 Catch:{ Exception -> 0x0090 }
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0090 }
        r1 = r0;
        r2 = r1;
    L_0x0066:
        r1 = "unknown";
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x008d }
        if (r1 == 0) goto L_0x0092;
    L_0x006e:
        r1 = 0;
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x008d }
        r5 = 0;
        r6 = "ril.serialnumber";
        r4[r5] = r6;	 Catch:{ Exception -> 0x008d }
        r5 = 1;
        r6 = "unknown";
        r4[r5] = r6;	 Catch:{ Exception -> 0x008d }
        r1 = r3.invoke(r1, r4);	 Catch:{ Exception -> 0x008d }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x008d }
    L_0x0082:
        r2 = "unknown";
        r2 = r2.equals(r1);
        if (r2 == 0) goto L_0x008c;
    L_0x008a:
        r1 = "";
    L_0x008c:
        return r1;
    L_0x008d:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0082;
    L_0x0090:
        r2 = move-exception;
        goto L_0x0082;
    L_0x0092:
        r1 = r2;
        goto L_0x0082;
    L_0x0094:
        r2 = r1;
        goto L_0x0066;
    L_0x0096:
        r2 = r1;
        goto L_0x0012;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.libtask.HotdogConductor.b():java.lang.String");
    }

    private static String f(Context context) {
        String string = Secure.getString(context.getContentResolver(), "android_id");
        if ("9774d56d682e549c".equalsIgnoreCase(string) || TextUtils.isEmpty(string)) {
            return e(context);
        }
        return string;
    }

    public void setCust(String str) {
        this.f = str;
    }

    public void setCqp(String str) {
        this.g = str;
    }

    private int c() {
        int i = 0;
        try {
            int i2 = 0;
            for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
                if (stackTraceElement.getClassName().equals("com.android.internal.os.ZygoteInit")) {
                    i2++;
                    if (i2 == 2) {
                        i++;
                    }
                }
                if (stackTraceElement.getClassName().equals("com.saurik.substrate.MS$2") && stackTraceElement.getMethodName().equals("invoked")) {
                    i += 2;
                }
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("main")) {
                    i += 4;
                }
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                    i += 8;
                }
            }
        } catch (Throwable th) {
        }
        return i;
    }
}
