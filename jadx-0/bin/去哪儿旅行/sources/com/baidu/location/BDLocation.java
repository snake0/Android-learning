package com.baidu.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.baidu.location.Address.Builder;
import com.baidu.location.d.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class BDLocation implements Parcelable {
    public static final String BDLOCATION_BD09LL_TO_GCJ02 = "bd09ll2gcj";
    public static final String BDLOCATION_BD09_TO_GCJ02 = "bd092gcj";
    public static final String BDLOCATION_GCJ02_TO_BD09 = "bd09";
    public static final String BDLOCATION_GCJ02_TO_BD09LL = "bd09ll";
    public static final String BDLOCATION_WGS84_TO_GCJ02 = "gps2gcj";
    public static final Creator<BDLocation> CREATOR = new a();
    public static final int GPS_ACCURACY_BAD = 3;
    public static final int GPS_ACCURACY_GOOD = 1;
    public static final int GPS_ACCURACY_MID = 2;
    public static final int GPS_ACCURACY_UNKNOWN = 0;
    public static final int GPS_RECTIFY_INDOOR = 1;
    public static final int GPS_RECTIFY_NONE = 0;
    public static final int GPS_RECTIFY_OUTDOOR = 2;
    public static final int INDOOR_LOCATION_NEARBY_SURPPORT_TRUE = 2;
    public static final int INDOOR_LOCATION_SOURCE_BLUETOOTH = 4;
    public static final int INDOOR_LOCATION_SOURCE_MAGNETIC = 2;
    public static final int INDOOR_LOCATION_SOURCE_SMALLCELLSTATION = 8;
    public static final int INDOOR_LOCATION_SOURCE_UNKNOWN = 0;
    public static final int INDOOR_LOCATION_SOURCE_WIFI = 1;
    public static final int INDOOR_LOCATION_SURPPORT_FALSE = 0;
    public static final int INDOOR_LOCATION_SURPPORT_TRUE = 1;
    public static final int INDOOR_NETWORK_STATE_HIGH = 2;
    public static final int INDOOR_NETWORK_STATE_LOW = 0;
    public static final int INDOOR_NETWORK_STATE_MIDDLE = 1;
    public static final int LOCATION_WHERE_IN_CN = 1;
    public static final int LOCATION_WHERE_OUT_CN = 0;
    public static final int LOCATION_WHERE_UNKNOW = 2;
    public static final int OPERATORS_TYPE_MOBILE = 1;
    public static final int OPERATORS_TYPE_TELECOMU = 3;
    public static final int OPERATORS_TYPE_UNICOM = 2;
    public static final int OPERATORS_TYPE_UNKONW = 0;
    public static final int TypeCacheLocation = 65;
    public static final int TypeCriteriaException = 62;
    public static final int TypeGpsLocation = 61;
    public static final int TypeNetWorkException = 63;
    public static final int TypeNetWorkLocation = 161;
    public static final int TypeNone = 0;
    public static final int TypeOffLineLocation = 66;
    public static final int TypeOffLineLocationFail = 67;
    public static final int TypeOffLineLocationNetworkFail = 68;
    public static final int TypeServerCheckKeyError = 505;
    public static final int TypeServerDecryptError = 162;
    public static final int TypeServerError = 167;
    public static final int USER_INDDOR_TRUE = 1;
    public static final int USER_INDOOR_FALSE = 0;
    public static final int USER_INDOOR_UNKNOW = -1;
    private int A;
    private String B;
    private int C;
    private String D;
    private int E;
    private int F;
    private int G;
    private int H;
    private String I;
    private String J;
    private String K;
    private List<Poi> L;
    private String M;
    private String N;
    private HashMap<String, String> O;
    private int P;
    private int Q;
    private int a;
    private String b;
    private double c;
    private double d;
    private boolean e;
    private double f;
    private boolean g;
    private float h;
    private boolean i;
    private float j;
    private boolean k;
    private int l;
    private float m;
    private String n;
    private boolean o;
    private String p;
    private String q;
    private String r;
    private String s;
    private boolean t;
    private Address u;
    private String v;
    private String w;
    private String x;
    private boolean y;
    private int z;

    public BDLocation() {
        this.a = 0;
        this.b = null;
        this.c = Double.MIN_VALUE;
        this.d = Double.MIN_VALUE;
        this.e = false;
        this.f = Double.MIN_VALUE;
        this.g = false;
        this.h = 0.0f;
        this.i = false;
        this.j = 0.0f;
        this.k = false;
        this.l = -1;
        this.m = -1.0f;
        this.n = null;
        this.o = false;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = false;
        this.u = new Builder().build();
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = false;
        this.z = 0;
        this.A = 1;
        this.B = null;
        this.D = "";
        this.E = -1;
        this.F = 0;
        this.G = 2;
        this.H = 0;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = new HashMap();
        this.P = 0;
        this.Q = 0;
    }

    private BDLocation(Parcel parcel) {
        this.a = 0;
        this.b = null;
        this.c = Double.MIN_VALUE;
        this.d = Double.MIN_VALUE;
        this.e = false;
        this.f = Double.MIN_VALUE;
        this.g = false;
        this.h = 0.0f;
        this.i = false;
        this.j = 0.0f;
        this.k = false;
        this.l = -1;
        this.m = -1.0f;
        this.n = null;
        this.o = false;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = false;
        this.u = new Builder().build();
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = false;
        this.z = 0;
        this.A = 1;
        this.B = null;
        this.D = "";
        this.E = -1;
        this.F = 0;
        this.G = 2;
        this.H = 0;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = new HashMap();
        this.P = 0;
        this.Q = 0;
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = parcel.readDouble();
        this.d = parcel.readDouble();
        this.f = parcel.readDouble();
        this.h = parcel.readFloat();
        this.j = parcel.readFloat();
        this.l = parcel.readInt();
        this.m = parcel.readFloat();
        this.v = parcel.readString();
        this.z = parcel.readInt();
        this.w = parcel.readString();
        this.x = parcel.readString();
        this.B = parcel.readString();
        String readString = parcel.readString();
        String readString2 = parcel.readString();
        String readString3 = parcel.readString();
        String readString4 = parcel.readString();
        String readString5 = parcel.readString();
        String readString6 = parcel.readString();
        parcel.readString();
        String readString7 = parcel.readString();
        String readString8 = parcel.readString();
        this.u = new Builder().country(readString7).countryCode(readString8).province(readString).city(readString2).cityCode(readString6).district(readString3).street(readString4).streetNumber(readString5).adcode(parcel.readString()).build();
        boolean[] zArr = new boolean[7];
        this.C = parcel.readInt();
        this.D = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readString();
        this.s = parcel.readString();
        this.A = parcel.readInt();
        this.M = parcel.readString();
        this.E = parcel.readInt();
        this.F = parcel.readInt();
        this.G = parcel.readInt();
        this.H = parcel.readInt();
        this.I = parcel.readString();
        this.J = parcel.readString();
        this.K = parcel.readString();
        this.P = parcel.readInt();
        this.N = parcel.readString();
        this.Q = parcel.readInt();
        try {
            parcel.readBooleanArray(zArr);
            this.e = zArr[0];
            this.g = zArr[1];
            this.i = zArr[2];
            this.k = zArr[3];
            this.o = zArr[4];
            this.t = zArr[5];
            this.y = zArr[6];
        } catch (Exception e) {
        }
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, Poi.class.getClassLoader());
        if (arrayList.size() == 0) {
            this.L = null;
        } else {
            this.L = arrayList;
        }
    }

    /* synthetic */ BDLocation(Parcel parcel, a aVar) {
        this(parcel);
    }

    public BDLocation(BDLocation bDLocation) {
        int i = 0;
        this.a = 0;
        this.b = null;
        this.c = Double.MIN_VALUE;
        this.d = Double.MIN_VALUE;
        this.e = false;
        this.f = Double.MIN_VALUE;
        this.g = false;
        this.h = 0.0f;
        this.i = false;
        this.j = 0.0f;
        this.k = false;
        this.l = -1;
        this.m = -1.0f;
        this.n = null;
        this.o = false;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = false;
        this.u = new Builder().build();
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = false;
        this.z = 0;
        this.A = 1;
        this.B = null;
        this.D = "";
        this.E = -1;
        this.F = 0;
        this.G = 2;
        this.H = 0;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = new HashMap();
        this.P = 0;
        this.Q = 0;
        this.a = bDLocation.a;
        this.b = bDLocation.b;
        this.c = bDLocation.c;
        this.d = bDLocation.d;
        this.e = bDLocation.e;
        this.f = bDLocation.f;
        this.g = bDLocation.g;
        this.h = bDLocation.h;
        this.i = bDLocation.i;
        this.j = bDLocation.j;
        this.k = bDLocation.k;
        this.l = bDLocation.l;
        this.m = bDLocation.m;
        this.n = bDLocation.n;
        this.o = bDLocation.o;
        this.p = bDLocation.p;
        this.t = bDLocation.t;
        this.u = new Builder().country(bDLocation.u.country).countryCode(bDLocation.u.countryCode).province(bDLocation.u.province).city(bDLocation.u.city).cityCode(bDLocation.u.cityCode).district(bDLocation.u.district).street(bDLocation.u.street).streetNumber(bDLocation.u.streetNumber).adcode(bDLocation.u.adcode).build();
        this.v = bDLocation.v;
        this.w = bDLocation.w;
        this.x = bDLocation.x;
        this.A = bDLocation.A;
        this.z = bDLocation.z;
        this.y = bDLocation.y;
        this.B = bDLocation.B;
        this.C = bDLocation.C;
        this.D = bDLocation.D;
        this.q = bDLocation.q;
        this.r = bDLocation.r;
        this.s = bDLocation.s;
        this.E = bDLocation.E;
        this.F = bDLocation.F;
        this.G = bDLocation.F;
        this.H = bDLocation.H;
        this.I = bDLocation.I;
        this.J = bDLocation.J;
        this.K = bDLocation.K;
        this.P = bDLocation.P;
        this.N = bDLocation.N;
        if (bDLocation.L == null) {
            this.L = null;
        } else {
            ArrayList arrayList = new ArrayList();
            while (true) {
                int i2 = i;
                if (i2 >= bDLocation.L.size()) {
                    break;
                }
                Poi poi = (Poi) bDLocation.L.get(i2);
                arrayList.add(new Poi(poi.getId(), poi.getName(), poi.getRank()));
                i = i2 + 1;
            }
            this.L = arrayList;
        }
        this.M = bDLocation.M;
        this.O = bDLocation.O;
        this.Q = bDLocation.Q;
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:15:0x0142=Splitter:B:15:0x0142, B:205:0x0512=Splitter:B:205:0x0512} */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:15:0x0142=Splitter:B:15:0x0142, B:205:0x0512=Splitter:B:205:0x0512, B:11:0x012d=Splitter:B:11:0x012d, B:201:0x04fd=Splitter:B:201:0x04fd} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0167 A:{ExcHandler: Error (r0_175 'e' java.lang.Error), Splitter:B:4:0x009d} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:19:0x014d, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:20:0x014e, code skipped:
            r0.printStackTrace();
            r14.a = 0;
            r14.o = false;
     */
    /* JADX WARNING: Missing block: B:27:0x0167, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:28:0x0168, code skipped:
            r0.printStackTrace();
            r14.a = 0;
            r14.o = false;
     */
    /* JADX WARNING: Missing block: B:152:0x0469, code skipped:
            r1 = null;
            r10 = null;
     */
    /* JADX WARNING: Missing block: B:182:0x04b6, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:184:?, code skipped:
            r1.printStackTrace();
            r1 = null;
     */
    /* JADX WARNING: Missing block: B:195:0x04e8, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:197:?, code skipped:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:209:0x051d, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:211:?, code skipped:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:234:?, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:235:?, code skipped:
            return;
     */
    public BDLocation(java.lang.String r15) {
        /*
        r14 = this;
        r14.<init>();
        r0 = 0;
        r14.a = r0;
        r0 = 0;
        r14.b = r0;
        r0 = 1;
        r14.c = r0;
        r0 = 1;
        r14.d = r0;
        r0 = 0;
        r14.e = r0;
        r0 = 1;
        r14.f = r0;
        r0 = 0;
        r14.g = r0;
        r0 = 0;
        r14.h = r0;
        r0 = 0;
        r14.i = r0;
        r0 = 0;
        r14.j = r0;
        r0 = 0;
        r14.k = r0;
        r0 = -1;
        r14.l = r0;
        r0 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r14.m = r0;
        r0 = 0;
        r14.n = r0;
        r0 = 0;
        r14.o = r0;
        r0 = 0;
        r14.p = r0;
        r0 = 0;
        r14.q = r0;
        r0 = 0;
        r14.r = r0;
        r0 = 0;
        r14.s = r0;
        r0 = 0;
        r14.t = r0;
        r0 = new com.baidu.location.Address$Builder;
        r0.<init>();
        r0 = r0.build();
        r14.u = r0;
        r0 = 0;
        r14.v = r0;
        r0 = 0;
        r14.w = r0;
        r0 = 0;
        r14.x = r0;
        r0 = 0;
        r14.y = r0;
        r0 = 0;
        r14.z = r0;
        r0 = 1;
        r14.A = r0;
        r0 = 0;
        r14.B = r0;
        r0 = "";
        r14.D = r0;
        r0 = -1;
        r14.E = r0;
        r0 = 0;
        r14.F = r0;
        r0 = 2;
        r14.G = r0;
        r0 = 0;
        r14.H = r0;
        r0 = 0;
        r14.I = r0;
        r0 = 0;
        r14.J = r0;
        r0 = 0;
        r14.K = r0;
        r0 = 0;
        r14.L = r0;
        r0 = 0;
        r14.M = r0;
        r0 = 0;
        r14.N = r0;
        r0 = new java.util.HashMap;
        r0.<init>();
        r14.O = r0;
        r0 = 0;
        r14.P = r0;
        r0 = 0;
        r14.Q = r0;
        if (r15 == 0) goto L_0x009c;
    L_0x0094:
        r0 = "";
        r0 = r15.equals(r0);
        if (r0 == 0) goto L_0x009d;
    L_0x009c:
        return;
    L_0x009d:
        r0 = new org.json.JSONObject;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0.<init>(r15);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "result";
        r1 = r0.getJSONObject(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = "error";
        r2 = r1.getString(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = java.lang.Integer.parseInt(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLocType(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r3 = "time";
        r1 = r1.getString(r3);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setTime(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = 61;
        if (r2 != r1) goto L_0x0173;
    L_0x00c2:
        r1 = "content";
        r0 = r0.getJSONObject(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "point";
        r1 = r0.getJSONObject(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = "y";
        r2 = r1.getString(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = java.lang.Double.parseDouble(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLatitude(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = "x";
        r1 = r1.getString(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Double.parseDouble(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLongitude(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "radius";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Float.parseFloat(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setRadius(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "s";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Float.parseFloat(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setSpeed(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "d";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Float.parseFloat(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setDirection(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "n";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setSatelliteNumber(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "h";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r1 == 0) goto L_0x012d;
    L_0x0124:
        r1 = "h";
        r1 = r0.getDouble(r1);	 Catch:{ Exception -> 0x0592, Error -> 0x0167 }
        r14.setAltitude(r1);	 Catch:{ Exception -> 0x0592, Error -> 0x0167 }
    L_0x012d:
        r1 = "in_cn";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x015e, Error -> 0x0167 }
        if (r1 == 0) goto L_0x0159;
    L_0x0135:
        r1 = "in_cn";
        r0 = r0.getString(r1);	 Catch:{ Exception -> 0x015e, Error -> 0x0167 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ Exception -> 0x015e, Error -> 0x0167 }
        r14.setLocationWhere(r0);	 Catch:{ Exception -> 0x015e, Error -> 0x0167 }
    L_0x0142:
        r0 = r14.A;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 != 0) goto L_0x0160;
    L_0x0146:
        r0 = "wgs84";
        r14.setCoorType(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x009c;
    L_0x014d:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = 0;
        r14.a = r0;
        r0 = 0;
        r14.o = r0;
        goto L_0x009c;
    L_0x0159:
        r0 = 1;
        r14.setLocationWhere(r0);	 Catch:{ Exception -> 0x015e, Error -> 0x0167 }
        goto L_0x0142;
    L_0x015e:
        r0 = move-exception;
        goto L_0x0142;
    L_0x0160:
        r0 = "gcj02";
        r14.setCoorType(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x009c;
    L_0x0167:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = 0;
        r14.a = r0;
        r0 = 0;
        r14.o = r0;
        goto L_0x009c;
    L_0x0173:
        r1 = 161; // 0xa1 float:2.26E-43 double:7.95E-322;
        if (r2 != r1) goto L_0x0535;
    L_0x0177:
        r1 = "content";
        r11 = r0.getJSONObject(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = "point";
        r0 = r11.getJSONObject(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "y";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Double.parseDouble(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLatitude(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "x";
        r0 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = java.lang.Double.parseDouble(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLongitude(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = "radius";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = java.lang.Float.parseFloat(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setRadius(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = "sema";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0242;
    L_0x01b2:
        r0 = "sema";
        r1 = r11.getJSONObject(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = "aptag";
        r0 = r1.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x01ce;
    L_0x01c0:
        r0 = "aptag";
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r2 != 0) goto L_0x020f;
    L_0x01cc:
        r14.q = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x01ce:
        r0 = "aptagd";
        r0 = r1.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0216;
    L_0x01d6:
        r0 = "aptagd";
        r0 = r1.getJSONObject(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = "pois";
        r2 = r0.getJSONArray(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r3 = new java.util.ArrayList;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r3.<init>();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = 0;
    L_0x01e8:
        r4 = r2.length();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 >= r4) goto L_0x0214;
    L_0x01ee:
        r4 = r2.getJSONObject(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r5 = "pname";
        r5 = r4.getString(r5);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r6 = "pid";
        r6 = r4.getString(r6);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r7 = "pr";
        r7 = r4.getDouble(r7);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r4 = new com.baidu.location.Poi;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r4.<init>(r6, r5, r7);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r3.add(r4);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r0 + 1;
        goto L_0x01e8;
    L_0x020f:
        r0 = "";
        r14.q = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x01ce;
    L_0x0214:
        r14.L = r3;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x0216:
        r0 = "poiregion";
        r0 = r1.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x022c;
    L_0x021e:
        r0 = "poiregion";
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r2 != 0) goto L_0x022c;
    L_0x022a:
        r14.r = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x022c:
        r0 = "regular";
        r0 = r1.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0242;
    L_0x0234:
        r0 = "regular";
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r1 != 0) goto L_0x0242;
    L_0x0240:
        r14.s = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x0242:
        r0 = "addr";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x04bd;
    L_0x024a:
        r9 = 0;
        r8 = 0;
        r7 = 0;
        r6 = 0;
        r5 = 0;
        r4 = 0;
        r3 = 0;
        r2 = 0;
        r0 = 0;
        r10 = 0;
        r1 = "addr";
        r1 = r11.getJSONObject(r1);	 Catch:{ Exception -> 0x0468, Error -> 0x0167 }
        r10 = 1;
        r13 = r1;
        r1 = r10;
        r10 = r13;
    L_0x025e:
        if (r10 == 0) goto L_0x046f;
    L_0x0260:
        r9 = "";
        r8 = "";
        r7 = "";
        r6 = "";
        r5 = "";
        r4 = "";
        r3 = "";
        r2 = "";
        r0 = "";
        r12 = "city";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x0280;
    L_0x027a:
        r6 = "city";
        r6 = r10.getString(r6);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x0280:
        r12 = "city_code";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x028e;
    L_0x0288:
        r5 = "city_code";
        r5 = r10.getString(r5);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x028e:
        r12 = "country";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x029c;
    L_0x0296:
        r9 = "country";
        r9 = r10.getString(r9);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x029c:
        r12 = "country_code";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x02aa;
    L_0x02a4:
        r8 = "country_code";
        r8 = r10.getString(r8);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x02aa:
        r12 = "province";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x02b8;
    L_0x02b2:
        r7 = "province";
        r7 = r10.getString(r7);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x02b8:
        r12 = "district";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x02c6;
    L_0x02c0:
        r4 = "district";
        r4 = r10.getString(r4);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x02c6:
        r12 = "street";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x02d4;
    L_0x02ce:
        r3 = "street";
        r3 = r10.getString(r3);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x02d4:
        r12 = "street_number";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x02e2;
    L_0x02dc:
        r2 = "street_number";
        r2 = r10.getString(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x02e2:
        r12 = "adcode";
        r12 = r10.has(r12);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r12 == 0) goto L_0x02f0;
    L_0x02ea:
        r0 = "adcode";
        r0 = r10.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x02f0:
        if (r1 == 0) goto L_0x0324;
    L_0x02f2:
        r1 = new com.baidu.location.Address$Builder;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1.<init>();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.country(r9);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.countryCode(r8);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.province(r7);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.city(r6);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.cityCode(r5);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.district(r4);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.street(r3);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = r1.streetNumber(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r1.adcode(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r0.build();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.u = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = 1;
        r14.o = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x0324:
        r0 = "floor";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x033f;
    L_0x032c:
        r0 = "floor";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.v = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r14.v;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x033f;
    L_0x033c:
        r0 = 0;
        r14.v = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x033f:
        r0 = "indoor";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x035e;
    L_0x0347:
        r0 = "indoor";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r1 != 0) goto L_0x035e;
    L_0x0353:
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r0.intValue();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setUserIndoorState(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x035e:
        r0 = "loctp";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0379;
    L_0x0366:
        r0 = "loctp";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.B = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r14.B;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0379;
    L_0x0376:
        r0 = 0;
        r14.B = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x0379:
        r0 = "bldgid";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0394;
    L_0x0381:
        r0 = "bldgid";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.w = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r14.w;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0394;
    L_0x0391:
        r0 = 0;
        r14.w = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x0394:
        r0 = "bldg";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x03af;
    L_0x039c:
        r0 = "bldg";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.x = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r14.x;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x03af;
    L_0x03ac:
        r0 = 0;
        r14.x = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x03af:
        r0 = "ibav";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x03c6;
    L_0x03b7:
        r0 = "ibav";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r1 == 0) goto L_0x04c6;
    L_0x03c3:
        r0 = 0;
        r14.z = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x03c6:
        r0 = "indoorflags";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x04ec;
    L_0x03ce:
        r0 = "indoorflags";
        r0 = r11.getJSONObject(r0);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r1 = "area";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 == 0) goto L_0x03f0;
    L_0x03dc:
        r1 = "area";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r1 = r1.intValue();	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 != 0) goto L_0x04df;
    L_0x03ec:
        r1 = 2;
        r14.setIndoorLocationSurpport(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
    L_0x03f0:
        r1 = "support";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 == 0) goto L_0x0409;
    L_0x03f8:
        r1 = "support";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r1 = r1.intValue();	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r14.setIndoorLocationSource(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
    L_0x0409:
        r1 = "inbldg";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 == 0) goto L_0x0419;
    L_0x0411:
        r1 = "inbldg";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r14.I = r1;	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
    L_0x0419:
        r1 = "inbldgid";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 == 0) goto L_0x0429;
    L_0x0421:
        r1 = "inbldgid";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r14.J = r1;	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
    L_0x0429:
        r1 = "polygon";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 == 0) goto L_0x043a;
    L_0x0431:
        r1 = "polygon";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        r14.setIndoorSurpportPolygon(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
    L_0x043a:
        r1 = "ret_fields";
        r1 = r0.has(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        if (r1 == 0) goto L_0x04ec;
    L_0x0442:
        r1 = "ret_fields";
        r0 = r0.getString(r1);	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r1 = "\\|";
        r1 = r0.split(r1);	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r2 = r1.length;	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r0 = 0;
    L_0x0450:
        if (r0 >= r2) goto L_0x04ec;
    L_0x0452:
        r3 = r1[r0];	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r4 = "=";
        r3 = r3.split(r4);	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r4 = 0;
        r4 = r3[r4];	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r5 = 1;
        r3 = r3[r5];	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r5 = r14.O;	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r5.put(r4, r3);	 Catch:{ Exception -> 0x051d, Error -> 0x0167 }
        r0 = r0 + 1;
        goto L_0x0450;
    L_0x0468:
        r1 = move-exception;
        r1 = 0;
        r13 = r1;
        r1 = r10;
        r10 = r13;
        goto L_0x025e;
    L_0x046f:
        r1 = "addr";
        r1 = r11.getString(r1);	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
        r10 = ",";
        r1 = r1.split(r10);	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
        r10 = r1.length;	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
        if (r10 <= 0) goto L_0x0481;
    L_0x047e:
        r12 = 0;
        r7 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x0481:
        r12 = 1;
        if (r10 <= r12) goto L_0x0487;
    L_0x0484:
        r12 = 1;
        r6 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x0487:
        r12 = 2;
        if (r10 <= r12) goto L_0x048d;
    L_0x048a:
        r12 = 2;
        r4 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x048d:
        r12 = 3;
        if (r10 <= r12) goto L_0x0493;
    L_0x0490:
        r12 = 3;
        r3 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x0493:
        r12 = 4;
        if (r10 <= r12) goto L_0x0499;
    L_0x0496:
        r12 = 4;
        r2 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x0499:
        r12 = 5;
        if (r10 <= r12) goto L_0x049f;
    L_0x049c:
        r12 = 5;
        r5 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x049f:
        r12 = 6;
        if (r10 <= r12) goto L_0x04a5;
    L_0x04a2:
        r12 = 6;
        r9 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x04a5:
        r12 = 7;
        if (r10 <= r12) goto L_0x04ab;
    L_0x04a8:
        r12 = 7;
        r8 = r1[r12];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x04ab:
        r12 = 8;
        if (r10 <= r12) goto L_0x04b3;
    L_0x04af:
        r10 = 8;
        r0 = r1[r10];	 Catch:{ Exception -> 0x04b6, Error -> 0x0167 }
    L_0x04b3:
        r1 = 1;
        goto L_0x02f0;
    L_0x04b6:
        r1 = move-exception;
        r1.printStackTrace();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = 0;
        goto L_0x02f0;
    L_0x04bd:
        r0 = 0;
        r14.o = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = 0;
        r14.setAddrStr(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x0324;
    L_0x04c6:
        r1 = "0";
        r1 = r0.equals(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r1 == 0) goto L_0x04d3;
    L_0x04ce:
        r0 = 0;
        r14.z = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x03c6;
    L_0x04d3:
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = r0.intValue();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.z = r0;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x03c6;
    L_0x04df:
        r2 = 1;
        if (r1 != r2) goto L_0x03f0;
    L_0x04e2:
        r1 = 1;
        r14.setIndoorLocationSurpport(r1);	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        goto L_0x03f0;
    L_0x04e8:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x04ec:
        r0 = "gpscs";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0522;
    L_0x04f4:
        r0 = "gpscs";
        r0 = r11.getInt(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setGpsCheckStatus(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
    L_0x04fd:
        r0 = "in_cn";
        r0 = r11.has(r0);	 Catch:{ Exception -> 0x052c, Error -> 0x0167 }
        if (r0 == 0) goto L_0x0527;
    L_0x0505:
        r0 = "in_cn";
        r0 = r11.getString(r0);	 Catch:{ Exception -> 0x052c, Error -> 0x0167 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ Exception -> 0x052c, Error -> 0x0167 }
        r14.setLocationWhere(r0);	 Catch:{ Exception -> 0x052c, Error -> 0x0167 }
    L_0x0512:
        r0 = r14.A;	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        if (r0 != 0) goto L_0x052e;
    L_0x0516:
        r0 = "wgs84";
        r14.setCoorType(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x009c;
    L_0x051d:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ Exception -> 0x04e8, Error -> 0x0167 }
        goto L_0x04ec;
    L_0x0522:
        r0 = 0;
        r14.setGpsCheckStatus(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x04fd;
    L_0x0527:
        r0 = 1;
        r14.setLocationWhere(r0);	 Catch:{ Exception -> 0x052c, Error -> 0x0167 }
        goto L_0x0512;
    L_0x052c:
        r0 = move-exception;
        goto L_0x0512;
    L_0x052e:
        r0 = "gcj02";
        r14.setCoorType(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x009c;
    L_0x0535:
        r1 = 66;
        if (r2 == r1) goto L_0x053d;
    L_0x0539:
        r1 = 68;
        if (r2 != r1) goto L_0x0588;
    L_0x053d:
        r1 = "content";
        r0 = r0.getJSONObject(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "point";
        r1 = r0.getJSONObject(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = "y";
        r2 = r1.getString(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = java.lang.Double.parseDouble(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLatitude(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r2 = "x";
        r1 = r1.getString(r2);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Double.parseDouble(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setLongitude(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "radius";
        r1 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = java.lang.Float.parseFloat(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.setRadius(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r1 = "isCellChanged";
        r0 = r0.getString(r1);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = java.lang.Boolean.parseBoolean(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = java.lang.Boolean.valueOf(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r14.a(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        r0 = "gcj02";
        r14.setCoorType(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x009c;
    L_0x0588:
        r0 = 167; // 0xa7 float:2.34E-43 double:8.25E-322;
        if (r2 != r0) goto L_0x009c;
    L_0x058c:
        r0 = 2;
        r14.setLocationWhere(r0);	 Catch:{ Exception -> 0x014d, Error -> 0x0167 }
        goto L_0x009c;
    L_0x0592:
        r1 = move-exception;
        goto L_0x012d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.BDLocation.<init>(java.lang.String):void");
    }

    private void a(Boolean bool) {
        this.t = bool.booleanValue();
    }

    public int describeContents() {
        return 0;
    }

    public String getAdCode() {
        return this.u.adcode;
    }

    public String getAddrStr() {
        return this.u.address;
    }

    public Address getAddress() {
        return this.u;
    }

    public double getAltitude() {
        return this.f;
    }

    public String getBuildingID() {
        return this.w;
    }

    public String getBuildingName() {
        return this.x;
    }

    public String getCity() {
        return this.u.city;
    }

    public String getCityCode() {
        return this.u.cityCode;
    }

    public String getCoorType() {
        return this.n;
    }

    public String getCountry() {
        return this.u.country;
    }

    public String getCountryCode() {
        return this.u.countryCode;
    }

    @Deprecated
    public float getDerect() {
        return this.m;
    }

    public float getDirection() {
        return this.m;
    }

    public String getDistrict() {
        return this.u.district;
    }

    public String getFloor() {
        return this.v;
    }

    public int getGpsAccuracyStatus() {
        return this.P;
    }

    public int getGpsCheckStatus() {
        return this.Q;
    }

    public int getIndoorLocationSource() {
        return this.H;
    }

    public int getIndoorLocationSurpport() {
        return this.F;
    }

    public String getIndoorLocationSurpportBuidlingID() {
        return this.J;
    }

    public String getIndoorLocationSurpportBuidlingName() {
        return this.I;
    }

    public int getIndoorNetworkState() {
        return this.G;
    }

    public String getIndoorSurpportPolygon() {
        return this.K;
    }

    public double getLatitude() {
        return this.c;
    }

    public int getLocType() {
        return this.a;
    }

    public String getLocTypeDescription() {
        return this.M;
    }

    public String getLocationDescribe() {
        return this.q;
    }

    public String getLocationID() {
        return this.N;
    }

    public int getLocationWhere() {
        return this.A;
    }

    public double getLongitude() {
        return this.d;
    }

    public String getNetworkLocationType() {
        return this.B;
    }

    public int getOperators() {
        return this.C;
    }

    public List<Poi> getPoiList() {
        return this.L;
    }

    public String getProvince() {
        return this.u.province;
    }

    public float getRadius() {
        return this.j;
    }

    public String getRetFields(String str) {
        return (String) this.O.get(str);
    }

    public int getSatelliteNumber() {
        this.k = true;
        return this.l;
    }

    @Deprecated
    public String getSemaAptag() {
        return this.q;
    }

    public float getSpeed() {
        return this.h;
    }

    public String getStreet() {
        return this.u.street;
    }

    public String getStreetNumber() {
        return this.u.streetNumber;
    }

    public String getTime() {
        return this.b;
    }

    public int getUserIndoorState() {
        return this.E;
    }

    public boolean hasAddr() {
        return this.o;
    }

    public boolean hasAltitude() {
        return this.e;
    }

    public boolean hasRadius() {
        return this.i;
    }

    public boolean hasSateNumber() {
        return this.k;
    }

    public boolean hasSpeed() {
        return this.g;
    }

    public boolean isCellChangeFlag() {
        return this.t;
    }

    public boolean isIndoorLocMode() {
        return this.y;
    }

    public int isParkAvailable() {
        return this.z;
    }

    public void setAddr(Address address) {
        if (address != null) {
            this.u = address;
            this.o = true;
        }
    }

    public void setAddrStr(String str) {
        this.p = str;
        if (str == null) {
            this.o = false;
        } else {
            this.o = true;
        }
    }

    public void setAltitude(double d) {
        this.f = d;
        this.e = true;
    }

    public void setBuildingID(String str) {
        this.w = str;
    }

    public void setBuildingName(String str) {
        this.x = str;
    }

    public void setCoorType(String str) {
        this.n = str;
    }

    public void setDirection(float f) {
        this.m = f;
    }

    public void setFloor(String str) {
        this.v = str;
    }

    public void setGpsAccuracyStatus(int i) {
        this.P = i;
    }

    public void setGpsCheckStatus(int i) {
        this.Q = i;
    }

    public void setIndoorLocMode(boolean z) {
        this.y = z;
    }

    public void setIndoorLocationSource(int i) {
        this.H = i;
    }

    public void setIndoorLocationSurpport(int i) {
        this.F = i;
    }

    public void setIndoorNetworkState(int i) {
        this.G = i;
    }

    public void setIndoorSurpportPolygon(String str) {
        this.K = str;
    }

    public void setLatitude(double d) {
        this.c = d;
    }

    public void setLocType(int i) {
        this.a = i;
        switch (i) {
            case 61:
                setLocTypeDescription("GPS location successful!");
                setUserIndoorState(0);
                return;
            case 62:
                setLocTypeDescription("Location failed beacuse we can not get any loc information!");
                return;
            case 63:
            case 67:
                setLocTypeDescription("Offline location failed, please check the net (wifi/cell)!");
                return;
            case 66:
                setLocTypeDescription("Offline location successful!");
                return;
            case TypeNetWorkLocation /*161*/:
                setLocTypeDescription("NetWork location successful!");
                return;
            case TypeServerDecryptError /*162*/:
                setLocTypeDescription("NetWork location failed because baidu location service can not decrypt the request query, please check the so file !");
                return;
            case TypeServerError /*167*/:
                setLocTypeDescription("NetWork location failed because baidu location service can not caculate the location!");
                return;
            case 505:
                setLocTypeDescription("NetWork location failed because baidu location service check the key is unlegal, please check the key in AndroidManifest.xml !");
                return;
            default:
                setLocTypeDescription("UnKnown!");
                return;
        }
    }

    public void setLocTypeDescription(String str) {
        this.M = str;
    }

    public void setLocationDescribe(String str) {
        this.q = str;
    }

    public void setLocationID(String str) {
        this.N = str;
    }

    public void setLocationWhere(int i) {
        this.A = i;
    }

    public void setLongitude(double d) {
        this.d = d;
    }

    public void setNetworkLocationType(String str) {
        this.B = str;
    }

    public void setOperators(int i) {
        this.C = i;
    }

    public void setParkAvailable(int i) {
        this.z = i;
    }

    public void setPoiList(List<Poi> list) {
        this.L = list;
    }

    public void setRadius(float f) {
        this.j = f;
        this.i = true;
    }

    public void setSatelliteNumber(int i) {
        this.l = i;
    }

    public void setSpeed(float f) {
        this.h = f;
        this.g = true;
    }

    public void setTime(String str) {
        this.b = str;
        setLocationID(j.a(str));
    }

    public void setUserIndoorState(int i) {
        this.E = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeDouble(this.c);
        parcel.writeDouble(this.d);
        parcel.writeDouble(this.f);
        parcel.writeFloat(this.h);
        parcel.writeFloat(this.j);
        parcel.writeInt(this.l);
        parcel.writeFloat(this.m);
        parcel.writeString(this.v);
        parcel.writeInt(this.z);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeString(this.B);
        parcel.writeString(this.u.province);
        parcel.writeString(this.u.city);
        parcel.writeString(this.u.district);
        parcel.writeString(this.u.street);
        parcel.writeString(this.u.streetNumber);
        parcel.writeString(this.u.cityCode);
        parcel.writeString(this.u.address);
        parcel.writeString(this.u.country);
        parcel.writeString(this.u.countryCode);
        parcel.writeString(this.u.adcode);
        parcel.writeInt(this.C);
        parcel.writeString(this.D);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeInt(this.A);
        parcel.writeString(this.M);
        parcel.writeInt(this.E);
        parcel.writeInt(this.F);
        parcel.writeInt(this.G);
        parcel.writeInt(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeInt(this.P);
        parcel.writeString(this.N);
        parcel.writeInt(this.Q);
        parcel.writeBooleanArray(new boolean[]{this.e, this.g, this.i, this.k, this.o, this.t, this.y});
        parcel.writeList(this.L);
    }
}
