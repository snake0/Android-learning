package com.baidu.mapsdkplatform.comapi.map;

import android.content.Context;
import android.os.Handler;
import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.UIMsg.m_AppUI;
import com.baidu.mapapi.common.EnvironmentUtilities;
import com.baidu.mapapi.common.SysOSUtil;
import com.baidu.mapapi.model.inner.GeoPoint;
import com.baidu.mapsdkplatform.comjni.map.basemap.a;
import com.iflytek.aiui.AIUIConstant;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class r {
    private static final String a = r.class.getSimpleName();
    private static r c;
    private a b;
    private w d;
    private Handler e;

    private r() {
    }

    public static r a() {
        if (c == null) {
            c = new r();
            c.g();
        }
        return c;
    }

    private void g() {
        h();
        this.d = new w();
        this.e = new s(this);
        MessageCenter.registMessage(m_AppUI.V_WM_VDATAENGINE, this.e);
    }

    private void h() {
        Context context = BMapManager.getContext();
        EnvironmentUtilities.initAppDirectory(context);
        this.b = new a();
        this.b.a(context.hashCode());
        String moduleFileName = SysOSUtil.getModuleFileName();
        String appSDCardPath = EnvironmentUtilities.getAppSDCardPath();
        String appCachePath = EnvironmentUtilities.getAppCachePath();
        String appSecondCachePath = EnvironmentUtilities.getAppSecondCachePath();
        int mapTmpStgMax = EnvironmentUtilities.getMapTmpStgMax();
        int domTmpStgMax = EnvironmentUtilities.getDomTmpStgMax();
        int itsTmpStgMax = EnvironmentUtilities.getItsTmpStgMax();
        String str = SysOSUtil.getDensityDpi() >= 180 ? "/h/" : "/l/";
        String str2 = moduleFileName + "/cfg";
        String str3 = appSDCardPath + "/vmp";
        moduleFileName = str2 + "/a/";
        String str4 = str2 + "/a/";
        String str5 = str2 + "/idrres/";
        this.b.a(moduleFileName, str3 + str, appCachePath + "/tmp/", appSecondCachePath + "/tmp/", str3 + str, str4, null, 0, str5, SysOSUtil.getScreenSizeX(), SysOSUtil.getScreenSizeY(), SysOSUtil.getDensityDpi(), mapTmpStgMax, domTmpStgMax, itsTmpStgMax, 0);
        this.b.d();
    }

    public ArrayList<q> a(String str) {
        if (str.equals("") || this.b == null) {
            return null;
        }
        String a = this.b.a(str);
        if (a == null || a.equals("")) {
            return null;
        }
        ArrayList<q> arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(a);
            if (jSONObject == null || jSONObject.length() == 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("dataset");
            if (optJSONArray == null) {
                return null;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                q qVar = new q();
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                int optInt = jSONObject2.optInt("id");
                if (optInt <= 2000 || optInt == 2912 || optInt == 2911 || optInt == 9000) {
                    qVar.a = optInt;
                    qVar.b = jSONObject2.optString(AIUIConstant.KEY_NAME);
                    qVar.c = jSONObject2.optInt("mapsize");
                    qVar.d = jSONObject2.optInt("cty");
                    if (jSONObject2.has("child")) {
                        JSONArray optJSONArray2 = jSONObject2.optJSONArray("child");
                        ArrayList arrayList2 = new ArrayList();
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            q qVar2 = new q();
                            JSONObject optJSONObject = optJSONArray2.optJSONObject(i2);
                            qVar2.a = optJSONObject.optInt("id");
                            qVar2.b = optJSONObject.optString(AIUIConstant.KEY_NAME);
                            qVar2.c = optJSONObject.optInt("mapsize");
                            qVar2.d = optJSONObject.optInt("cty");
                            arrayList2.add(qVar2);
                        }
                        qVar.a(arrayList2);
                    }
                    arrayList.add(qVar);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(v vVar) {
        if (this.d != null) {
            this.d.a(vVar);
        }
    }

    public boolean a(int i) {
        return (this.b == null || i < 0) ? false : (i <= 2000 || i == 2912 || i == 2911 || i == 9000) ? this.b.d(i) : false;
    }

    public boolean a(boolean z, boolean z2) {
        return this.b == null ? false : this.b.a(z, z2);
    }

    public void b() {
        MessageCenter.unregistMessage(m_AppUI.V_WM_VDATAENGINE, this.e);
        this.b.b(BMapManager.getContext().hashCode());
        c = null;
    }

    public void b(v vVar) {
        if (this.d != null) {
            this.d.b(vVar);
        }
    }

    public boolean b(int i) {
        return (this.b == null || i < 0) ? false : (i <= 2000 || i == 2912 || i == 2911 || i == 9000) ? this.b.a(i, false, 0) : false;
    }

    public ArrayList<q> c() {
        if (this.b == null) {
            return null;
        }
        String m = this.b.m();
        ArrayList<q> arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(m).optJSONArray("dataset");
            for (int i = 0; i < optJSONArray.length(); i++) {
                q qVar = new q();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                qVar.a = optJSONObject.optInt("id");
                qVar.b = optJSONObject.optString(AIUIConstant.KEY_NAME);
                qVar.c = optJSONObject.optInt("mapsize");
                qVar.d = optJSONObject.optInt("cty");
                if (optJSONObject.has("child")) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("child");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        q qVar2 = new q();
                        JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i2);
                        qVar2.a = optJSONObject2.optInt("id");
                        qVar2.b = optJSONObject2.optString(AIUIConstant.KEY_NAME);
                        qVar2.c = optJSONObject2.optInt("mapsize");
                        qVar2.d = optJSONObject2.optInt("cty");
                        arrayList2.add(qVar2);
                    }
                    qVar.a(arrayList2);
                }
                arrayList.add(qVar);
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean c(int i) {
        return (this.b == null || i < 0) ? false : this.b.b(i, false, 0);
    }

    public ArrayList<q> d() {
        String str = "";
        if (this.b == null) {
            return null;
        }
        String a = this.b.a("");
        ArrayList<q> arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(a).optJSONArray("dataset");
            for (int i = 0; i < optJSONArray.length(); i++) {
                q qVar = new q();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                int optInt = optJSONObject.optInt("id");
                if (optInt <= 2000 || optInt == 2912 || optInt == 2911 || optInt == 9000) {
                    qVar.a = optInt;
                    qVar.b = optJSONObject.optString(AIUIConstant.KEY_NAME);
                    qVar.c = optJSONObject.optInt("mapsize");
                    qVar.d = optJSONObject.optInt("cty");
                    if (optJSONObject.has("child")) {
                        JSONArray optJSONArray2 = optJSONObject.optJSONArray("child");
                        ArrayList arrayList2 = new ArrayList();
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            q qVar2 = new q();
                            JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i2);
                            qVar2.a = optJSONObject2.optInt("id");
                            qVar2.b = optJSONObject2.optString(AIUIConstant.KEY_NAME);
                            qVar2.c = optJSONObject2.optInt("mapsize");
                            qVar2.d = optJSONObject2.optInt("cty");
                            arrayList2.add(qVar2);
                        }
                        qVar.a(arrayList2);
                    }
                    arrayList.add(qVar);
                }
            }
            return arrayList;
        } catch (Exception | JSONException e) {
            return null;
        }
    }

    public boolean d(int i) {
        return this.b == null ? false : this.b.b(0, true, i);
    }

    public ArrayList<u> e() {
        if (this.b == null) {
            return null;
        }
        String str = "";
        String l = this.b.l();
        if (l == null || l.equals("")) {
            return null;
        }
        ArrayList<u> arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(l);
            if (jSONObject.length() == 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("dataset");
            for (int i = 0; i < optJSONArray.length(); i++) {
                u uVar = new u();
                t tVar = new t();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                tVar.a = optJSONObject.optInt("id");
                tVar.b = optJSONObject.optString(AIUIConstant.KEY_NAME);
                tVar.c = optJSONObject.optString("pinyin");
                tVar.h = optJSONObject.optInt("mapoldsize");
                tVar.i = optJSONObject.optInt("ratio");
                tVar.l = optJSONObject.optInt("status");
                tVar.g = new GeoPoint((double) optJSONObject.optInt(MapViewConstants.ATTR_Y), (double) optJSONObject.optInt(MapViewConstants.ATTR_X));
                tVar.j = optJSONObject.optInt("up") == 1;
                tVar.e = optJSONObject.optInt("lev");
                if (tVar.j) {
                    tVar.k = optJSONObject.optInt("mapsize");
                } else {
                    tVar.k = 0;
                }
                uVar.a(tVar);
                arrayList.add(uVar);
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean e(int i) {
        return (this.b == null || i < 0) ? false : this.b.b(i, false);
    }

    public boolean f(int i) {
        return (this.b == null || i < 0) ? false : (i <= 2000 || i == 2912 || i == 2911 || i == 9000) ? this.b.a(i, false) : false;
    }

    public u g(int i) {
        boolean z = true;
        if (this.b == null || i < 0) {
            return null;
        }
        String e = this.b.e(i);
        if (e == null || e.equals("")) {
            return null;
        }
        u uVar = new u();
        t tVar = new t();
        try {
            JSONObject jSONObject = new JSONObject(e);
            if (jSONObject.length() == 0) {
                return null;
            }
            int optInt = jSONObject.optInt("id");
            if (optInt > 2000 && optInt != 2912 && optInt != 2911 && optInt != 9000) {
                return null;
            }
            tVar.a = optInt;
            tVar.b = jSONObject.optString(AIUIConstant.KEY_NAME);
            tVar.c = jSONObject.optString("pinyin");
            tVar.d = jSONObject.optString("headchar");
            tVar.h = jSONObject.optInt("mapoldsize");
            tVar.i = jSONObject.optInt("ratio");
            tVar.l = jSONObject.optInt("status");
            tVar.g = new GeoPoint((double) jSONObject.optInt(MapViewConstants.ATTR_Y), (double) jSONObject.optInt(MapViewConstants.ATTR_X));
            if (jSONObject.optInt("up") != 1) {
                z = false;
            }
            tVar.j = z;
            tVar.e = jSONObject.optInt("lev");
            if (tVar.j) {
                tVar.k = jSONObject.optInt("mapsize");
            } else {
                tVar.k = 0;
            }
            tVar.f = jSONObject.optInt("ver");
            uVar.a(tVar);
            return uVar;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
