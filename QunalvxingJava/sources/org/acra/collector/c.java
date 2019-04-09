package org.acra.collector;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.a.d;
import org.acra.anr.ANRException;
import org.acra.builder.LastActivityManager;
import org.acra.builder.ReportBuilder;
import org.acra.config.ACRAConfiguration;
import org.acra.ne.NativeException;
import org.acra.util.PackageManagerWrapper;
import org.acra.util.h;
import org.acra.util.j;
import org.apache.commons.io.IOUtils;

public final class c {
    private final Context a;
    private final ACRAConfiguration b;
    private final SharedPreferences c;
    private final Map<String, String> d = new LinkedHashMap();
    private final Calendar e;
    private final String f;
    private final LastActivityManager g;

    public c(@NonNull Context context, @NonNull ACRAConfiguration aCRAConfiguration, @NonNull SharedPreferences sharedPreferences, @NonNull Calendar calendar, @Nullable String str, @NonNull LastActivityManager lastActivityManager) {
        this.a = context;
        this.b = aCRAConfiguration;
        this.c = sharedPreferences;
        this.e = calendar;
        this.f = str;
        this.g = lastActivityManager;
    }

    public String a(@NonNull String str, String str2) {
        return (String) this.d.put(str, str2);
    }

    public String a(@NonNull String str) {
        return (String) this.d.remove(str);
    }

    public void a() {
        this.d.clear();
    }

    public String b(@NonNull String str) {
        return (String) this.d.get(str);
    }

    @NonNull
    public CrashReportData a(@NonNull ReportBuilder reportBuilder) {
        CrashReportData crashReportData = new CrashReportData();
        d reportFields = this.b.getReportFields();
        try {
            if (reportFields.contains(ReportField.SCREENSHOT) && !(((reportBuilder.getException() instanceof NativeException) && ((NativeException) reportBuilder.getException()).noSendDmp) || reportBuilder.getException().getClass().getSimpleName().contains("Violation"))) {
                crashReportData.put(ReportField.SCREENSHOT, new r(this.g).a(this.a));
            }
        } catch (Throwable th) {
            ACRA.f.e(ACRA.e, "screen failed: " + th);
        }
        try {
            String a;
            if (reportBuilder.getException() instanceof ANRException) {
                try {
                    switch (((ANRException) reportBuilder.getException()).monitorMode) {
                        case 1:
                            a("ANR MONITOR", "FileObserver");
                            break;
                        case 2:
                            a("ANR MONITOR", "WatchDog");
                            break;
                    }
                    a = v.a(this.a, (ANRException) reportBuilder.getException());
                    if (!"".equals(a)) {
                        crashReportData.put(ReportField.TRACES_FILE, a);
                    }
                } catch (Exception e) {
                    ACRA.f.c(ACRA.e, "Error while retrieving traces file", e);
                }
            }
            if (reportBuilder.getException() instanceof NativeException) {
                try {
                    crashReportData.put(ReportField.NATIVE_CRASH, ((NativeException) reportBuilder.getException()).getCrashFileDirectory());
                } catch (RuntimeException e2) {
                    ACRA.f.c(ACRA.e, "Error while retrieving Native data", e2);
                }
                try {
                    crashReportData.put(ReportField.JAVA_STACK_TRACE, k.a(reportBuilder.getMessage(), reportBuilder.getException()));
                } catch (RuntimeException e22) {
                    ACRA.f.c(ACRA.e, "Error while retrieving JAVA_STACK_TRACE data", e22);
                }
                if (((NativeException) reportBuilder.getException()).noSendDmp) {
                    try {
                        a("no_send_dump", ((NativeException) reportBuilder.getException()).noSendDmp + "");
                    } catch (RuntimeException e222) {
                        ACRA.f.c(ACRA.e, "put no send dmp file", e222);
                    }
                }
            }
            try {
                crashReportData.put(ReportField.STACK_TRACE, a(reportBuilder.getMessage(), reportBuilder.getException()));
            } catch (RuntimeException e2222) {
                ACRA.f.c(ACRA.e, "Error while retrieving STACK_TRACE data", e2222);
            }
            if (reportFields.contains(ReportField.ENV)) {
                try {
                    crashReportData.put(ReportField.ENV, h.a());
                } catch (Exception e3) {
                    ACRA.f.c(ACRA.e, "Error while retrieving ENV data", e3);
                }
            }
            if (reportFields.contains(ReportField.NETWORK_STATE)) {
                try {
                    a = l.a(this.a);
                    if (!TextUtils.isEmpty(a)) {
                        crashReportData.put(ReportField.NETWORK_STATE, a);
                    }
                } catch (Throwable th2) {
                    ACRA.f.c(ACRA.e, "Error while retrieving network state data", th2);
                }
            }
            if (reportFields.contains(ReportField.ACRA_VERSION)) {
                try {
                    crashReportData.put(ReportField.ACRA_VERSION, "2.1.2");
                } catch (RuntimeException e22222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving ACRA——VERSION data", e22222);
                }
            }
            if (reportFields.contains(ReportField.VM_VERSION)) {
                try {
                    crashReportData.put(ReportField.VM_VERSION, x.a());
                } catch (Exception e32) {
                    ACRA.f.c(ACRA.e, "Error while retrieving VM_VERSION data", e32);
                }
            }
            if (reportFields.contains(ReportField.PROPERTY)) {
                try {
                    crashReportData.put(ReportField.PROPERTY, o.a());
                } catch (RuntimeException e222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving PROPERTY data", e222222);
                }
            }
            try {
                if (ActivityManager.isUserAMonkey()) {
                    a("monkey", "true");
                }
            } catch (RuntimeException e2222222) {
                ACRA.f.c(ACRA.e, "Error while put monkey data", e2222222);
            }
            PackageManagerWrapper packageManagerWrapper = new PackageManagerWrapper(this.a);
            try {
                boolean hasPermission;
                if (VERSION.SDK_INT >= 16) {
                    hasPermission = packageManagerWrapper.hasPermission("android.permission.READ_EXTERNAL_STORAGE");
                } else {
                    hasPermission = true;
                }
                if (hasPermission && a.a(this.a)) {
                    a("cloud", "true");
                }
            } catch (Throwable th22) {
                ACRA.f.e(ACRA.e, "cannot get cloudTestInfo" + th22.toString());
            }
            Object obj = (packageManagerWrapper.hasPermission("android.permission.READ_LOGS") || VERSION.SDK_INT >= 16) ? 1 : null;
            if (!this.c.getBoolean("acra.syslog.enable", true) || obj == null) {
                ACRA.f.b(ACRA.e, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data.");
            } else {
                ACRA.f.b(ACRA.e, "READ_LOGS granted! ACRA can include LogCat and DropBox data.");
                i iVar = new i();
                if (reportFields.contains(ReportField.LOGCAT)) {
                    try {
                        crashReportData.put(ReportField.LOGCAT, iVar.a(this.b, null));
                    } catch (RuntimeException e22222222) {
                        ACRA.f.c(ACRA.e, "Error while retrieving LOGCAT data", e22222222);
                    }
                }
                if (reportFields.contains(ReportField.EVENTSLOG)) {
                    try {
                        crashReportData.put(ReportField.EVENTSLOG, iVar.a(this.b, "events"));
                    } catch (RuntimeException e222222222) {
                        ACRA.f.c(ACRA.e, "Error while retrieving EVENTSLOG data", e222222222);
                    }
                }
                if (reportFields.contains(ReportField.RADIOLOG)) {
                    try {
                        crashReportData.put(ReportField.RADIOLOG, iVar.a(this.b, "radio"));
                    } catch (RuntimeException e2222222222) {
                        ACRA.f.c(ACRA.e, "Error while retrieving RADIOLOG data", e2222222222);
                    }
                }
                if (reportFields.contains(ReportField.DROPBOX)) {
                    try {
                        crashReportData.put(ReportField.DROPBOX, new f().a(this.a, this.b));
                    } catch (RuntimeException e22222222222) {
                        ACRA.f.c(ACRA.e, "Error while retrieving DROPBOX data", e22222222222);
                    }
                }
            }
            try {
                crashReportData.put(ReportField.USER_APP_START_DATE, j.a(this.e));
            } catch (RuntimeException e222222222222) {
                ACRA.f.c(ACRA.e, "Error while retrieving USER_APP_START_DATE data", e222222222222);
            }
            if (reportBuilder.isSendSilently()) {
                crashReportData.put(ReportField.IS_SILENT, "true");
            }
            try {
                crashReportData.put(ReportField.REPORT_ID, UUID.randomUUID().toString());
            } catch (RuntimeException e2222222222222) {
                ACRA.f.c(ACRA.e, "Error while retrieving REPORT_ID data", e2222222222222);
            }
            try {
                crashReportData.put(ReportField.USER_CRASH_DATE, j.a(new GregorianCalendar()));
            } catch (RuntimeException e22222222222222) {
                ACRA.f.c(ACRA.e, "Error while retrieving USER_CRASH_DATE data", e22222222222222);
            }
            if (reportFields.contains(ReportField.STACK_TRACE_HASH)) {
                try {
                    crashReportData.put(ReportField.STACK_TRACE_HASH, a(reportBuilder.getException()));
                } catch (RuntimeException e222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving STACK_TRACE_HASH data", e222222222222222);
                }
            }
            if (reportFields.contains(ReportField.INSTALLATION_ID)) {
                try {
                    crashReportData.put(ReportField.INSTALLATION_ID, h.a(this.a));
                } catch (RuntimeException e2222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving INSTALLATION_ID data", e2222222222222222);
                }
            }
            if (reportFields.contains(ReportField.INITIAL_CONFIGURATION)) {
                try {
                    crashReportData.put(ReportField.INITIAL_CONFIGURATION, this.f);
                } catch (RuntimeException e22222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving INITIAL_CONFIGURATION data", e22222222222222222);
                }
            }
            if (reportFields.contains(ReportField.CRASH_CONFIGURATION)) {
                try {
                    crashReportData.put(ReportField.CRASH_CONFIGURATION, b.a(this.a));
                } catch (RuntimeException e222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving CRASH_CONFIGURATION data", e222222222222222222);
                }
            }
            if (!(reportBuilder.getException() instanceof OutOfMemoryError) && reportFields.contains(ReportField.DUMPSYS_MEMINFO)) {
                try {
                    crashReportData.put(ReportField.DUMPSYS_MEMINFO, g.a());
                } catch (RuntimeException e2222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving DUMPSYS_MEMINFO data", e2222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.PACKAGE_NAME)) {
                try {
                    crashReportData.put(ReportField.PACKAGE_NAME, this.a.getPackageName());
                } catch (RuntimeException e22222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving PACKAGE_NAME data", e22222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.BUILD)) {
                try {
                    crashReportData.put(ReportField.BUILD, p.b(Build.class) + p.a(VERSION.class, "VERSION"));
                } catch (RuntimeException e222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving BUILD data", e222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.PHONE_MODEL)) {
                try {
                    crashReportData.put(ReportField.PHONE_MODEL, Build.MODEL);
                } catch (RuntimeException e2222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving PHONE_MODEL data", e2222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.ANDROID_VERSION)) {
                try {
                    crashReportData.put(ReportField.ANDROID_VERSION, VERSION.RELEASE);
                } catch (RuntimeException e22222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving ANDROID_VERSION data", e22222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.BRAND)) {
                try {
                    crashReportData.put(ReportField.BRAND, Build.BRAND);
                } catch (RuntimeException e222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving BRAND data", e222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.PRODUCT)) {
                try {
                    crashReportData.put(ReportField.PRODUCT, Build.PRODUCT);
                } catch (RuntimeException e2222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving PRODUCT data", e2222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.TOTAL_MEM_SIZE)) {
                try {
                    crashReportData.put(ReportField.TOTAL_MEM_SIZE, Long.toString(j.b()));
                } catch (RuntimeException e22222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving TOTAL_MEM_SIZE data", e22222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.AVAILABLE_MEM_SIZE)) {
                try {
                    crashReportData.put(ReportField.AVAILABLE_MEM_SIZE, Long.toString(j.a()));
                } catch (RuntimeException e222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving AVAILABLE_MEM_SIZE data", e222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.FILE_PATH)) {
                try {
                    crashReportData.put(ReportField.FILE_PATH, j.b(this.a));
                } catch (RuntimeException e2222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving FILE_PATH data", e2222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.DISPLAY)) {
                try {
                    crashReportData.put(ReportField.DISPLAY, e.a(this.a));
                } catch (RuntimeException e22222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving DISPLAY data", e22222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.BUILD_CONFIG)) {
                try {
                    crashReportData.put(ReportField.BUILD_CONFIG, p.b(b()));
                } catch (ClassNotFoundException e4) {
                } catch (RuntimeException e222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving BUILD_CONFIG data", e222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.USER_EMAIL)) {
                try {
                    crashReportData.put(ReportField.USER_EMAIL, this.c.getString("acra.user.email", "N/A"));
                } catch (RuntimeException e2222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving USER_EMAIL data", e2222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.DEVICE_FEATURES)) {
                try {
                    crashReportData.put(ReportField.DEVICE_FEATURES, d.a(this.a));
                } catch (RuntimeException e22222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving DEVICE_FEATURES data", e22222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.ENVIRONMENT)) {
                try {
                    crashReportData.put(ReportField.ENVIRONMENT, p.a(Environment.class));
                } catch (RuntimeException e222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving ENVIRONMENT data", e222222222222222222222222222222222);
                }
            }
            s sVar = new s(this.a, this.b);
            if (reportFields.contains(ReportField.SETTINGS_SYSTEM)) {
                try {
                    crashReportData.put(ReportField.SETTINGS_SYSTEM, sVar.a());
                } catch (RuntimeException e2222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving SETTINGS_SYSTEM data", e2222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.SETTINGS_SECURE)) {
                try {
                    crashReportData.put(ReportField.SETTINGS_SECURE, sVar.b());
                } catch (RuntimeException e22222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving SETTINGS_SECURE data", e22222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.SETTINGS_GLOBAL)) {
                try {
                    crashReportData.put(ReportField.SETTINGS_GLOBAL, sVar.c());
                } catch (RuntimeException e222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving SETTINGS_GLOBAL data", e222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.SHARED_PREFERENCES)) {
                try {
                    crashReportData.put(ReportField.SHARED_PREFERENCES, new t(this.a, this.b).a());
                } catch (RuntimeException e2222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving SHARED_PREFERENCES data", e2222222222222222222222222222222222222);
                }
            }
            try {
                PackageInfo packageInfo = packageManagerWrapper.getPackageInfo();
                if (packageInfo != null) {
                    if (reportFields.contains(ReportField.APP_VERSION_CODE)) {
                        crashReportData.put(ReportField.APP_VERSION_CODE, Integer.toString(packageInfo.versionCode));
                    }
                    if (reportFields.contains(ReportField.APP_VERSION_NAME)) {
                        ReportField reportField = ReportField.APP_VERSION_NAME;
                        if (packageInfo.versionName != null) {
                            obj = packageInfo.versionName;
                        } else {
                            obj = "not set";
                        }
                        crashReportData.put(reportField, obj);
                    }
                } else {
                    crashReportData.put(ReportField.APP_VERSION_NAME, "Package info unavailable");
                }
            } catch (RuntimeException e22222222222222222222222222222222222222) {
                ACRA.f.c(ACRA.e, "Error while retrieving APP_VERSION_CODE and APP_VERSION_NAME data", e22222222222222222222222222222222222222);
            }
            if (reportFields.contains(ReportField.DEVICE_ID) && packageManagerWrapper.hasPermission("android.permission.READ_PHONE_STATE")) {
                try {
                    a = j.a(this.a);
                    if (a != null) {
                        crashReportData.put(ReportField.DEVICE_ID, a);
                    }
                } catch (RuntimeException e222222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving DEVICE_ID data", e222222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.APPLICATION_LOG)) {
                try {
                    crashReportData.put(ReportField.APPLICATION_LOG, new j().a(this.a, this.b.applicationLogFile(), this.b.applicationLogFileLines()));
                } catch (IOException e5) {
                    ACRA.f.c(ACRA.e, "Error while reading application log file " + this.b.applicationLogFile(), e5);
                } catch (RuntimeException e2222222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving APPLICATION_LOG data", e2222222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.MEDIA_CODEC_LIST)) {
                try {
                    crashReportData.put(ReportField.MEDIA_CODEC_LIST, MediaCodecListCollector.a());
                } catch (RuntimeException e22222222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving MEDIA_CODEC_LIST data", e22222222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.THREAD_DETAILS)) {
                try {
                    crashReportData.put(ReportField.THREAD_DETAILS, u.a(reportBuilder.getUncaughtExceptionThread()));
                } catch (RuntimeException e222222222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving THREAD_DETAILS data", e222222222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.USER_IP)) {
                try {
                    crashReportData.put(ReportField.USER_IP, j.c());
                } catch (RuntimeException e2222222222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving USER_IP data", e2222222222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.PROCESS_NAME)) {
                try {
                    crashReportData.put(ReportField.PROCESS_NAME, n.a(this.a));
                } catch (Throwable th222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving process name", th222);
                }
            }
            if (reportFields.contains(ReportField.PROCESS_ID)) {
                try {
                    crashReportData.put(ReportField.PROCESS_ID, m.a());
                } catch (Throwable th2222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving process id", th2222);
                }
            }
            if (reportFields.contains(ReportField.CUSTOM_DATA)) {
                try {
                    crashReportData.put(ReportField.CUSTOM_DATA, a(reportBuilder.getCustomData()));
                } catch (RuntimeException e22222222222222222222222222222222222222222222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving CUSTOM_DATA data", e22222222222222222222222222222222222222222222);
                }
            }
            if (reportFields.contains(ReportField.IS_ROOT)) {
                try {
                    crashReportData.put(ReportField.IS_ROOT, q.a());
                } catch (Throwable th22222) {
                    ACRA.f.c(ACRA.e, "Error while retrieving root data", th22222);
                }
            }
        } catch (RuntimeException e222222222222222222222222222222222222222222222) {
            ACRA.f.c(ACRA.e, "Error while retrieving crash data", e222222222222222222222222222222222222222222222);
        }
        return crashReportData;
    }

    @NonNull
    private String a(@Nullable Map<String, String> map) {
        Map map2 = this.d;
        Map hashMap;
        if (map != null) {
            hashMap = new HashMap(map2);
            hashMap.putAll(map);
        } else {
            hashMap = map2;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : hashMap.entrySet()) {
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append(" = ");
            String str = (String) entry.getValue();
            if (str != null) {
                stringBuilder.append(str.replaceAll(IOUtils.LINE_SEPARATOR_UNIX, "\\\\n"));
            } else {
                stringBuilder.append("null");
            }
            stringBuilder.append(10);
        }
        return stringBuilder.toString();
    }

    @NonNull
    static String a(@Nullable String str, @Nullable Throwable th) {
        String obj;
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        if (!(str == null || TextUtils.isEmpty(str))) {
            printWriter.println(str);
        }
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            th2.printStackTrace(printWriter);
        }
        if (th == null || !(th instanceof ANRException)) {
            if (th == null || !th.getClass().getName().contains("Violation")) {
                obj = stringWriter.toString();
            } else {
                obj = th.getClass().getName() + "：" + th.getMessage();
            }
        } else if (((ANRException) th).mainThreadInfo != null) {
            obj = ((ANRException) th).mainThreadInfo + ((ANRException) th).ANRInfo;
        } else {
            obj = stringWriter.toString() + ((ANRException) th).ANRInfo;
        }
        printWriter.close();
        return obj;
    }

    @NonNull
    private String a(@Nullable Throwable th) {
        StringBuilder stringBuilder = new StringBuilder();
        while (th != null) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                stringBuilder.append(stackTraceElement.getClassName());
                stringBuilder.append(stackTraceElement.getMethodName());
            }
            th = th.getCause();
        }
        return Integer.toHexString(stringBuilder.toString().hashCode());
    }

    @NonNull
    private Class<?> b() {
        Class buildConfigClass = this.b.buildConfigClass();
        if (!buildConfigClass.equals(Object.class)) {
            return buildConfigClass;
        }
        String str = this.a.getPackageName() + ".BuildConfig";
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            ACRA.f.e(ACRA.e, "Not adding buildConfig to log. Class Not found : " + str + ". Please configure 'buildConfigClass' in your ACRA config");
            throw e;
        }
    }
}
