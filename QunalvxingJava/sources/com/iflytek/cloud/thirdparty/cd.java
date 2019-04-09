package com.iflytek.cloud.thirdparty;

import android.app.ActivityManager;
import android.app.ActivityManager.RecentTaskInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.Version;
import com.iflytek.cloud.thirdparty.by.a;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import org.apache.http.util.EncodingUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class cd {
    private static cd a = null;
    private static Context b = null;
    private static SharedPreferences c;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private boolean h = true;
    private boolean i = false;
    private long j = 0;
    private long k = 0;
    private long l = 0;
    private long m = 0;
    private long n = 0;
    private long o = 43200;
    private a p = new a() {
        public void a(SpeechError speechError) {
            cd.this.d = false;
            cb.d("CollectInfo", "" + speechError.getErrorCode());
        }

        public void a(by byVar, byte[] bArr) {
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(EncodingUtils.getString(bu.c(bArr), "utf-8"));
                    cb.d("CollectInfo", "策略请求结果： " + jSONObject.toString());
                    if ("yes".equalsIgnoreCase(jSONObject.optString("is_collect"))) {
                        cd.this.i = true;
                    } else {
                        cd.this.i = false;
                    }
                    cd.this.j = (long) (Double.parseDouble(jSONObject.optString("ti_request")) * 3600.0d);
                    cd.this.k = (long) (Double.parseDouble(jSONObject.optString("ti_app_list")) * 3600.0d);
                    cd.this.l = (long) (Double.parseDouble(jSONObject.optString("ti_app_active")) * 3600.0d);
                    Editor edit = cd.c.edit();
                    edit.putBoolean("is_collect", cd.this.i);
                    edit.putLong("ti_request", cd.this.j);
                    edit.putLong("ti_app_list", cd.this.k);
                    edit.putLong("ti_app_active", cd.this.l);
                    edit.commit();
                } catch (Throwable th) {
                    cb.b(th);
                    return;
                } finally {
                    cd.this.d = false;
                }
            }
            cd.this.d = false;
        }
    };
    private a q = new a() {
        public void a(SpeechError speechError) {
            cd.this.e = false;
            cb.d("CollectInfo", "" + speechError.getErrorCode());
        }

        public void a(by byVar, byte[] bArr) {
            if (bArr != null) {
                try {
                    cb.d("CollectInfo", "上传数据结果返回： " + EncodingUtils.getString(bu.c(bArr), "utf-8"));
                } catch (Throwable th) {
                    cb.b(th);
                    return;
                } finally {
                    cd.this.e = false;
                }
            }
            cd.this.e = false;
        }
    };

    private cd(Context context) {
        if (context != null) {
            b = context.getApplicationContext();
            StringBuilder stringBuilder = new StringBuilder("iflytek_state_");
            stringBuilder.append(b.getPackageName());
            c = b.getSharedPreferences(stringBuilder.toString(), 0);
            this.i = c.getBoolean("is_collect", false);
            this.j = c.getLong("ti_request", 0);
            this.k = c.getLong("ti_app_list", this.o);
            this.m = c.getLong("list_app_time", 0);
            this.l = c.getLong("ti_app_active", this.o);
            this.n = c.getLong("active_app_time", 0);
        }
    }

    public static cd a(Context context) {
        if (a == null) {
            a = new cd(context);
        }
        return a;
    }

    public static JSONObject a(Context context, JSONObject jSONObject) {
        List<ScanResult> b = b(context);
        if (b != null && b.size() > 0) {
            try {
                JSONArray jSONArray = new JSONArray();
                if (b.size() > 20) {
                    for (int size = b.size() - 1; size > 20; size--) {
                        b.remove(size);
                    }
                }
                for (ScanResult scanResult : b) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(AIUIConstant.KEY_NAME, scanResult.SSID);
                    jSONObject2.put("addr", scanResult.BSSID);
                    jSONObject2.put("level", scanResult.level);
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("wifi_list", jSONArray);
                return jSONObject;
            } catch (JSONException e) {
                cb.e("merger error:" + e);
            }
        }
        return null;
    }

    private static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("header", jSONObject2);
            jSONObject3.put("body", jSONObject);
        } catch (Throwable th) {
            cb.b(th);
        }
        return jSONObject3;
    }

    private static JSONObject a(boolean z, ce ceVar, String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (Entry entry : ceVar.c().entrySet()) {
            try {
                jSONObject2.put((String) entry.getKey(), entry.getValue());
            } catch (Throwable th) {
                cb.b(th);
            }
        }
        jSONObject.put(str, jSONObject2);
        return z ? jSONObject : jSONObject2;
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            cb.a("upLoadMessage : Nothing to upload");
            return;
        }
        cb.b("UserLogger", "upLoadMessage :" + jSONObject.toString());
        try {
            if (bz.b(b)) {
                byte[] bytes = jSONObject.toString().getBytes("utf-8");
                byte[] b = bu.b(bytes);
                by byVar = new by();
                byVar.b(20000);
                byVar.a(1);
                byVar.a("http://scs.openspeech.cn/scs", "cmd=statsdklog&logver=1.0.2&size=" + bytes.length, b);
                byVar.a(this.q);
                return;
            }
            this.e = false;
        } catch (Throwable th) {
            this.e = false;
            cb.b(th);
        }
    }

    public static List<ScanResult> b(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            List<ScanResult> scanResults = (wifiManager == null || !wifiManager.isWifiEnabled()) ? null : wifiManager.getScanResults();
            return scanResults;
        } catch (SecurityException e) {
            cb.a("Perm denied to get wfs");
            return null;
        } catch (Exception e2) {
            cb.e("failed to get wfs");
            return null;
        }
    }

    private static JSONObject c(Context context) {
        ce b = bp.b(context).clone();
        cg.a(context, b);
        b.a("appid", cg.a());
        b.a("unique_id", ca.a(context));
        b.a("src", SpeechConstant.MODE_MSC);
        b.a("ver", Version.getVersion());
        b.a("lang", Locale.getDefault().getLanguage());
        b.a("logtime", "" + System.currentTimeMillis());
        JSONObject a = a(false, b, "header");
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.########");
            a.put("lat", decimalFormat.format((double) br.a(context).a("msc.lat")));
            a.put("lng", decimalFormat.format((double) br.a(context).a("msc.lng")));
        } catch (Throwable th) {
            cb.b(th);
        }
        return a;
    }

    private boolean d() {
        try {
            return (System.currentTimeMillis() / 1000) - c.getLong("request_time", 0) > c.getLong("ti_request", 0);
        } catch (Throwable th) {
            cb.b(th);
            return true;
        }
    }

    private void e() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pver", "3");
            jSONObject.put("type", "app_list");
            jSONObject.put("appid", cg.a());
            jSONObject.put("src", SpeechConstant.MODE_MSC);
            cb.d("CollectInfo", jSONObject.toString());
            if (bz.b(b)) {
                byte[] b = bu.b(jSONObject.toString().getBytes("utf-8"));
                by byVar = new by();
                byVar.b(20000);
                byVar.a(1);
                byVar.a("http://data.openspeech.cn/index.php/clientrequest/clientcollect/isCollect", "", b);
                byVar.a(this.p);
                Editor edit = c.edit();
                edit.putLong("request_time", System.currentTimeMillis() / 1000);
                edit.commit();
                return;
            }
            this.d = false;
        } catch (Throwable th) {
            this.d = false;
            cb.b(th);
        }
    }

    private boolean f() {
        if (!this.i) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.f = currentTimeMillis - this.m > this.k;
        this.g = currentTimeMillis - this.n > this.l;
        return this.f || this.g;
    }

    private void g() {
        Editor edit = c.edit();
        if (this.f) {
            this.m = System.currentTimeMillis() / 1000;
            cb.d("CollectInfo", "lastListAppTime:" + this.m);
            edit.putLong("list_app_time", this.m);
        }
        if (this.g) {
            this.n = System.currentTimeMillis() / 1000;
            cb.d("CollectInfo", "lastActiveAppTime:" + this.n);
            edit.putLong("active_app_time", this.n);
        }
        edit.commit();
        try {
            JSONArray h;
            JSONObject jSONObject;
            JSONArray jSONArray = new JSONArray();
            if (this.f) {
                h = h();
                if (h != null) {
                    jSONObject = new JSONObject();
                    jSONObject.put("appinfo", h);
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                }
            }
            if (this.g) {
                h = i();
                if (h != null) {
                    jSONObject = new JSONObject();
                    jSONObject.put("hisinfo", h);
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("log", jSONArray);
            JSONObject c = c(b);
            if (this.h) {
                a(b, c);
            }
            c = a(jSONObject2, c);
            cb.d("CollectInfo", c.toString());
            a(c);
        } catch (Throwable th) {
            this.e = false;
            cb.b(th);
        }
    }

    private JSONArray h() {
        try {
            JSONArray jSONArray = new JSONArray();
            PackageManager packageManager = b.getPackageManager();
            List installedPackages = packageManager.getInstalledPackages(0);
            int size = installedPackages.size();
            for (int i = 0; i < size; i++) {
                PackageInfo packageInfo = (PackageInfo) installedPackages.get(i);
                if ((packageInfo.applicationInfo.flags & 1) == 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(packageInfo.packageName, packageInfo.applicationInfo.loadLabel(packageManager).toString());
                    jSONArray.put(jSONObject);
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            cb.b(th);
            return null;
        }
    }

    private JSONArray i() {
        try {
            JSONArray jSONArray = new JSONArray();
            PackageManager packageManager = b.getPackageManager();
            for (RecentTaskInfo recentTaskInfo : ((ActivityManager) b.getSystemService("activity")).getRecentTasks(20, 1)) {
                ResolveInfo resolveActivity = packageManager.resolveActivity(recentTaskInfo.baseIntent, 0);
                if (resolveActivity != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(resolveActivity.activityInfo.packageName, resolveActivity.loadLabel(packageManager).toString());
                    jSONArray.put(jSONObject);
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            cb.b(th);
            return null;
        }
    }

    public synchronized void a() {
        if (!this.d) {
            this.d = true;
            if (d()) {
                new Thread(new Runnable() {
                    public void run() {
                        cd.this.e();
                    }
                }).start();
            } else {
                this.d = false;
            }
        }
    }

    public synchronized void b() {
        if (!this.e) {
            this.e = true;
            if (f() || this.h) {
                new Thread(new Runnable() {
                    public void run() {
                        cd.this.g();
                    }
                }).start();
            } else {
                this.e = false;
            }
        }
    }
}
