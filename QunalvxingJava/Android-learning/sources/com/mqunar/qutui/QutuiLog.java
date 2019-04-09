package com.mqunar.qutui;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechConstant;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.cock.utils.AndroidUtils;
import com.mqunar.cock.utils.ReflectUtils;
import com.mqunar.qapm.QAPMConstant;
import com.mqunar.qutui.model.Caf;
import com.mqunar.qutui.model.LogModel;
import com.mqunar.tools.ArrayUtils;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.tools.log.QLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.HttpStatus;
import org.json.JSONObject;
import qunar.lego.utils.FormPart;
import qunar.lego.utils.Goblin;
import qunar.lego.utils.HttpHeader;
import qunar.lego.utils.Pitcher;
import qunar.lego.utils.PitcherResponse;

public class QutuiLog {
    static List<String> a = new ArrayList();
    private static String e;
    private static String f;
    private static long g;
    private static QutuiLog h;
    private static k i;
    private static long j;
    private static Map<String, PendingIntent> l = new HashMap();
    String b;
    String c;
    String d;
    private Context k;

    static {
        e = "http://miniclient.qunar.com/pitcher-proxy";
        f = "http://mwhale.corp.qunar.com/alive";
        g = DateTimeUtils.ONE_DAY;
        try {
            if (!GlobalEnv.getInstance().isRelease()) {
                e = QAPMConstant.PITCHER_URL;
                f = "http://l-client4.wap.beta.cn0.qunar.com:9088/alive";
                g = 300000;
            }
        } catch (Exception e) {
        }
    }

    public void setIds(String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    private QutuiLog(Context context) {
        if (i == null) {
            i = k.a(context);
        }
        this.k = getSafeContext(context);
        try {
            setIds(GlobalEnv.getInstance().getPid(), GlobalEnv.getInstance().getCid(), GlobalEnv.getInstance().getVid());
        } catch (Exception e) {
            QLog.e(e);
        }
    }

    public static Context getSafeContext(Context context) {
        if (context == null) {
            throw new NullPointerException("context is empty!");
        } else if (context instanceof Application) {
            return context;
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                return applicationContext;
            }
            return context;
        }
    }

    public static QutuiLog getInstance(Context context) {
        if (h == null) {
            synchronized (QutuiLog.class) {
                if (h == null) {
                    h = new QutuiLog(context);
                }
            }
        }
        return h;
    }

    static boolean a(Context context) {
        if (context != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
                }
            } catch (Exception e) {
                QLog.e(e);
            }
        }
        return false;
    }

    private String c() {
        Object invokeStaticMethod = ReflectUtils.invokeStaticMethod("com.mqunar.libtask.HotdogConductor", "cp", new Class[]{Context.class}, new Object[]{this.k});
        JSONObject jSONObject;
        if (invokeStaticMethod != null && (invokeStaticMethod instanceof HashMap)) {
            HashMap hashMap = (HashMap) invokeStaticMethod;
            jSONObject = new JSONObject(hashMap);
            try {
                if (!hashMap.containsKey(SpeechConstant.ISV_VID)) {
                    jSONObject.put(SpeechConstant.ISV_VID, this.d);
                }
                jSONObject.put("ke", System.currentTimeMillis());
                jSONObject.put("v", Goblin.version());
            } catch (Exception e) {
                QLog.e(e);
            }
            return jSONObject.toString();
        } else if (TextUtils.isEmpty(this.b)) {
            throw new RuntimeException("pid 不能为空");
        } else {
            jSONObject = new JSONObject();
            try {
                String packageName = this.k.getPackageName();
                PackageInfo packageInfo = this.k.getPackageManager().getPackageInfo(packageName, 0);
                jSONObject.put(SpeechConstant.ISV_VID, this.d);
                jSONObject.put("vname", packageInfo.versionName);
                if (TextUtils.isEmpty(this.c)) {
                    jSONObject.put("cid", this.c);
                }
                jSONObject.put(AIUIConstant.KEY_UID, AndroidUtils.getIMEI(this.k));
                jSONObject.put("model", Build.MODEL);
                jSONObject.put("osVersion", VERSION.RELEASE + "_" + VERSION.SDK_INT);
                jSONObject.put("pkg", packageName);
                jSONObject.put("pid", this.b);
                jSONObject.put("ma", AndroidUtils.getMac());
                jSONObject.put("adid", AndroidUtils.getADID(this.k));
                jSONObject.put("nt", AndroidUtils.getApnName(this.k));
                jSONObject.put("mno", AndroidUtils.getSimOperator(this.k));
                jSONObject.put("tsv", String.valueOf(this.k.getApplicationInfo().targetSdkVersion));
                jSONObject.put("ke", String.valueOf(System.currentTimeMillis()));
            } catch (Exception e2) {
                QLog.e(e2, e2.getMessage(), new Object[0]);
            }
            return jSONObject.toString();
        }
    }

    public void sendLog(String str) {
        Throwable e;
        if (a(this.k) && !TextUtils.isEmpty(str)) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                throw new RuntimeException("Count sendLog on Main Thread!");
            } else if (!a.contains(str)) {
                a.add(str);
                ArrayList arrayList = new ArrayList();
                String c = c();
                FormPart formPart = new FormPart("c", c);
                formPart.addHeader("X-ClientEncoding", "none");
                arrayList.add(formPart);
                formPart = new FormPart("log", str);
                formPart.addHeader("X-ClientEncoding", "none");
                arrayList.add(formPart);
                QLog.i("request url = " + f + "/uploadLog" + ", cparam = " + c + ", content = " + str, new Object[0]);
                PitcherResponse request = a(f + "/uploadLog", arrayList).request();
                if (request.e != null) {
                    QLog.e(request.e, "send error, response.respcode=" + request.respcode, new Object[0]);
                    i.a(String.valueOf(((LogModel) JSON.parseObject(str, LogModel.class)).startTime), str);
                } else if (request.respcode > HttpStatus.SC_BAD_REQUEST) {
                    QLog.e("send fail, response.respcode=" + request.respcode, new Object[0]);
                    i.a(String.valueOf(((LogModel) JSON.parseObject(str, LogModel.class)).startTime), str);
                } else {
                    String str2 = null;
                    if (request.content != null) {
                        try {
                            c = new String(request.content, "utf-8");
                            try {
                                if (!(TextUtils.isEmpty(c) || new JSONObject(c).optInt("status", -1) == 0)) {
                                    i.a(String.valueOf(((LogModel) JSON.parseObject(str, LogModel.class)).startTime), str);
                                }
                                str2 = c;
                            } catch (Exception e2) {
                                Throwable th = e2;
                                str2 = c;
                                e = th;
                                QLog.e(e);
                                QLog.i("request url = " + f + "/uploadLog" + ", respcode = [" + request.respcode + "], response = [" + str2 + "]", new Object[0]);
                                a.remove(str);
                            }
                        } catch (Exception e3) {
                            e = e3;
                            QLog.e(e);
                            QLog.i("request url = " + f + "/uploadLog" + ", respcode = [" + request.respcode + "], response = [" + str2 + "]", new Object[0]);
                            a.remove(str);
                        }
                    }
                    QLog.i("request url = " + f + "/uploadLog" + ", respcode = [" + request.respcode + "], response = [" + str2 + "]", new Object[0]);
                }
                a.remove(str);
            }
        }
    }

    private Pitcher a(String str, ArrayList<FormPart> arrayList) {
        HttpHeader httpHeader = new HttpHeader();
        httpHeader.addHeader("X-ClientEncoding", "none");
        httpHeader.addHeader("qrid", System.currentTimeMillis() + "");
        Pitcher pitcher = new Pitcher(this.k, str, (List) arrayList, httpHeader);
        pitcher.setProxyUrl(e);
        return pitcher;
    }

    /* Access modifiers changed, original: 0000 */
    public void a() {
        if (System.currentTimeMillis() - j > g) {
            new Thread(new j(this)).start();
        }
    }

    private void a(List<Caf> list) {
        if (!ArrayUtils.isEmpty((Collection) list)) {
            if (l != null && l.size() > 0) {
                for (Entry entry : l.entrySet()) {
                    AlarmManager alarmManager = (AlarmManager) this.k.getSystemService("alarm");
                    if (alarmManager != null) {
                        alarmManager.cancel((PendingIntent) entry.getValue());
                    }
                    l.remove(entry.getKey());
                }
            }
            ArrayList<Caf> arrayList = new ArrayList();
            Map hashMap = new HashMap();
            for (Caf caf : list) {
                PackageInfo a = i.a(this.k, caf.packageName);
                if (a != null) {
                    arrayList.add(caf);
                    QLog.i("find app : " + caf.packageName, new Object[0]);
                }
                hashMap.put(caf.packageName, Boolean.valueOf(a != null));
            }
            List a2 = i.a(this.k);
            Map hashMap2 = new HashMap();
            List list2 = a2;
            for (Caf caf2 : arrayList) {
                if (TextUtils.isEmpty(caf2.blackBrand) || !caf2.blackBrand.equalsIgnoreCase(Build.BRAND)) {
                    boolean z;
                    Intent intent;
                    try {
                        z = list2.size() > 1 && !list2.contains(caf2.processName);
                        QLog.d("effectiveWakeUp0:" + z, new Object[0]);
                        intent = new Intent(caf2.actionName);
                        intent.setPackage(caf2.packageName);
                        intent.putExtra("source", caf2.source);
                        if (caf2.startNow) {
                            QLog.i("try to startService: " + caf2.actionName + ", " + caf2.packageName + ", " + caf2.source, new Object[0]);
                            this.k.startService(intent);
                        }
                    } catch (IllegalStateException e) {
                        QLog.e(e);
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        a2 = list2;
                        QLog.e(th2);
                    }
                    if (caf2.intervalTime > 0) {
                        PendingIntent service = PendingIntent.getService(this.k, 0, intent, 0);
                        AlarmManager alarmManager2 = (AlarmManager) this.k.getSystemService("alarm");
                        if (alarmManager2 != null) {
                            alarmManager2.setRepeating(0, System.currentTimeMillis() + ((long) caf2.intervalTime), (long) caf2.intervalTime, service);
                        }
                        l.put(caf2.packageName, service);
                    }
                    if (caf2.startNow) {
                        boolean contains;
                        QLog.d("effectiveWakeUp1:" + z, new Object[0]);
                        if (z) {
                            list2 = i.a(this.k);
                            contains = list2.contains(caf2.processName);
                            QLog.d("effectiveWakeUp2:" + contains, new Object[0]);
                        } else {
                            contains = z;
                        }
                        hashMap2.put(caf2.packageName, Boolean.valueOf(contains));
                    }
                    a2 = list2;
                    list2 = a2;
                } else {
                    QLog.i("ignore board: " + Build.BRAND, new Object[0]);
                }
            }
            getInstance(this.k).a(hashMap, hashMap2);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(String str, boolean z) {
        i.a(str, z);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Map<String, Boolean> map, Map<String, Boolean> map2) {
        i.a((Map) map, (Map) map2);
    }
}
