package org.acra.util;

import android.support.annotation.NonNull;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringReader;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.collector.CrashReportData;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class i {

    public class a extends Exception {
        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    @NonNull
    public static JSONObject a(@NonNull CrashReportData crashReportData) {
        Throwable e;
        Throwable th;
        JSONObject jSONObject = new JSONObject();
        Closeable closeable = null;
        for (ReportField reportField : crashReportData.keySet()) {
            try {
                Closeable closeable2;
                if (reportField.containsKeyValuePairs()) {
                    JSONObject jSONObject2 = new JSONObject();
                    BufferedReader bufferedReader = new BufferedReader(new StringReader(crashReportData.getProperty(reportField)), 1024);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            a(jSONObject2, readLine);
                        } catch (IOException e2) {
                            try {
                                ACRA.f.b(ACRA.e, "Error while converting " + reportField.name() + " to JSON.", e2);
                            } catch (JSONException e3) {
                                Throwable th2 = e3;
                                closeable = bufferedReader;
                                e = th2;
                                try {
                                    throw new a("Could not create JSON object for key " + reportField, e);
                                } catch (Throwable th3) {
                                    th = th3;
                                    g.a(closeable);
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                Object obj = bufferedReader;
                                g.a(closeable);
                                throw th;
                            }
                        }
                    }
                    jSONObject.accumulate(reportField.name(), jSONObject2);
                    closeable2 = bufferedReader;
                } else {
                    jSONObject.accumulate(reportField.name(), a(crashReportData.getProperty(reportField)));
                    closeable2 = closeable;
                }
                g.a(closeable2);
                closeable = closeable2;
            } catch (JSONException e4) {
                e = e4;
                throw new a("Could not create JSON object for key " + reportField, e);
            }
        }
        return jSONObject;
    }

    private static void a(@NonNull JSONObject jSONObject, @NonNull String str) {
        int indexOf = str.indexOf(61);
        if (indexOf > 0) {
            String trim = str.substring(0, indexOf).trim();
            Object a = a(str.substring(indexOf + 1).trim());
            if (a instanceof String) {
                a = ((String) a).replaceAll("\\\\n", IOUtils.LINE_SEPARATOR_UNIX);
            }
            String[] split = trim.split("\\.");
            if (split.length > 1) {
                a(jSONObject, split, a);
                return;
            } else {
                jSONObject.accumulate(trim, a);
                return;
            }
        }
        jSONObject.put(str.trim(), true);
    }

    @NonNull
    private static Object a(@NonNull String str) {
        if ("true".equalsIgnoreCase(str)) {
            return Boolean.valueOf(true);
        }
        if ("false".equalsIgnoreCase(str)) {
            return Boolean.valueOf(false);
        }
        if (!str.matches("(?:^|\\s)([1-9](?:\\d*|(?:\\d{0,2})(?:,\\d{3})*)(?:\\.\\d*[1-9])?|0?\\.\\d*[1-9]|0)(?:\\s|$)")) {
            return str;
        }
        try {
            return NumberFormat.getInstance(Locale.US).parse(str);
        } catch (ParseException e) {
            return str;
        }
    }

    private static void a(@NonNull JSONObject jSONObject, @NonNull String[] strArr, Object obj) {
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (i < strArr.length - 1) {
                JSONObject jSONObject2 = null;
                if (jSONObject.isNull(str)) {
                    jSONObject2 = new JSONObject();
                    jSONObject.accumulate(str, jSONObject2);
                } else {
                    Object obj2 = jSONObject.get(str);
                    if (obj2 instanceof JSONObject) {
                        jSONObject2 = jSONObject.getJSONObject(str);
                    } else if (obj2 instanceof JSONArray) {
                        JSONArray jSONArray = jSONObject.getJSONArray(str);
                        JSONObject jSONObject3 = null;
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            jSONObject3 = jSONArray.optJSONObject(i2);
                            if (jSONObject3 != null) {
                                jSONObject2 = jSONObject3;
                                break;
                            }
                        }
                        jSONObject2 = jSONObject3;
                    }
                    if (jSONObject2 == null) {
                        ACRA.f.d(ACRA.e, "Unknown json subtree type, see issue #186");
                        return;
                    }
                }
                jSONObject = jSONObject2;
            } else {
                jSONObject.accumulate(str, obj);
            }
        }
    }
}
