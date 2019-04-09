package bolts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class MeasurementEvent {
    public static final String APP_LINK_NAVIGATE_IN_EVENT_NAME = "al_nav_in";
    public static final String APP_LINK_NAVIGATE_OUT_EVENT_NAME = "al_nav_out";
    public static final String MEASUREMENT_EVENT_ARGS_KEY = "event_args";
    public static final String MEASUREMENT_EVENT_NAME_KEY = "event_name";
    public static final String MEASUREMENT_EVENT_NOTIFICATION_NAME = "com.parse.bolts.measurement_event";
    private Context appContext;
    private Bundle args;
    private String name;

    /* JADX WARNING: Removed duplicated region for block: B:6:0x0014  */
    static void sendBroadcastEvent(android.content.Context r5, java.lang.String r6, android.content.Intent r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
        r1 = new android.os.Bundle;
        r1.<init>();
        if (r7 == 0) goto L_0x0070;
    L_0x0007:
        r0 = bolts.AppLinks.getAppLinkData(r7);
        if (r0 == 0) goto L_0x0032;
    L_0x000d:
        r0 = getApplinkLogData(r5, r6, r0, r7);
        r2 = r0;
    L_0x0012:
        if (r8 == 0) goto L_0x0067;
    L_0x0014:
        r0 = r8.keySet();
        r3 = r0.iterator();
    L_0x001c:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x0067;
    L_0x0022:
        r0 = r3.next();
        r0 = (java.lang.String) r0;
        r1 = r8.get(r0);
        r1 = (java.lang.String) r1;
        r2.putString(r0, r1);
        goto L_0x001c;
    L_0x0032:
        r0 = r7.getData();
        if (r0 == 0) goto L_0x0041;
    L_0x0038:
        r2 = "intentData";
        r0 = r0.toString();
        r1.putString(r2, r0);
    L_0x0041:
        r2 = r7.getExtras();
        if (r2 == 0) goto L_0x0070;
    L_0x0047:
        r0 = r2.keySet();
        r3 = r0.iterator();
    L_0x004f:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x0070;
    L_0x0055:
        r0 = r3.next();
        r0 = (java.lang.String) r0;
        r4 = r2.get(r0);
        r4 = objectToJSONString(r4);
        r1.putString(r0, r4);
        goto L_0x004f;
    L_0x0067:
        r0 = new bolts.MeasurementEvent;
        r0.<init>(r5, r6, r2);
        r0.sendBroadcast();
        return;
    L_0x0070:
        r2 = r1;
        goto L_0x0012;
        */
        throw new UnsupportedOperationException("Method not decompiled: bolts.MeasurementEvent.sendBroadcastEvent(android.content.Context, java.lang.String, android.content.Intent, java.util.Map):void");
    }

    private MeasurementEvent(Context context, String str, Bundle bundle) {
        this.appContext = context.getApplicationContext();
        this.name = str;
        this.args = bundle;
    }

    private void sendBroadcast() {
        if (this.name == null) {
            Log.d(getClass().getName(), "Event name is required");
        }
        try {
            Class cls = Class.forName("android.support.v4.content.LocalBroadcastManager");
            Method method = cls.getMethod("getInstance", new Class[]{Context.class});
            Method method2 = cls.getMethod("sendBroadcast", new Class[]{Intent.class});
            Object invoke = method.invoke(null, new Object[]{this.appContext});
            Intent intent = new Intent(MEASUREMENT_EVENT_NOTIFICATION_NAME);
            intent.putExtra(MEASUREMENT_EVENT_NAME_KEY, this.name);
            intent.putExtra(MEASUREMENT_EVENT_ARGS_KEY, this.args);
            method2.invoke(invoke, new Object[]{intent});
        } catch (Exception e) {
            Log.d(getClass().getName(), "LocalBroadcastManager in android support library is required to raise bolts event.");
        }
    }

    private static Bundle getApplinkLogData(Context context, String str, Bundle bundle, Intent intent) {
        Bundle bundle2 = new Bundle();
        ComponentName resolveActivity = intent.resolveActivity(context.getPackageManager());
        if (resolveActivity != null) {
            bundle2.putString("class", resolveActivity.getShortClassName());
        }
        if (APP_LINK_NAVIGATE_OUT_EVENT_NAME.equals(str)) {
            if (resolveActivity != null) {
                bundle2.putString("package", resolveActivity.getPackageName());
            }
            if (intent.getData() != null) {
                bundle2.putString("outputURL", intent.getData().toString());
            }
            if (intent.getScheme() != null) {
                bundle2.putString("outputURLScheme", intent.getScheme());
            }
        } else if (APP_LINK_NAVIGATE_IN_EVENT_NAME.equals(str)) {
            if (intent.getData() != null) {
                bundle2.putString("inputURL", intent.getData().toString());
            }
            if (intent.getScheme() != null) {
                bundle2.putString("inputURLScheme", intent.getScheme());
            }
        }
        for (String str2 : bundle.keySet()) {
            Object obj = bundle.get(str2);
            String objectToJSONString;
            if (obj instanceof Bundle) {
                for (String objectToJSONString2 : ((Bundle) obj).keySet()) {
                    String objectToJSONString3 = objectToJSONString(((Bundle) obj).get(objectToJSONString2));
                    if (str2.equals("referer_app_link")) {
                        if (objectToJSONString2.equalsIgnoreCase("url")) {
                            bundle2.putString("refererURL", objectToJSONString3);
                        } else if (objectToJSONString2.equalsIgnoreCase("app_name")) {
                            bundle2.putString("refererAppName", objectToJSONString3);
                        } else if (objectToJSONString2.equalsIgnoreCase("package")) {
                            bundle2.putString("sourceApplication", objectToJSONString3);
                        }
                    }
                    bundle2.putString(str2 + "/" + objectToJSONString2, objectToJSONString3);
                }
            } else {
                objectToJSONString2 = objectToJSONString(obj);
                if (str2.equals("target_url")) {
                    Uri parse = Uri.parse(objectToJSONString2);
                    bundle2.putString("targetURL", parse.toString());
                    bundle2.putString("targetURLHost", parse.getHost());
                } else {
                    bundle2.putString(str2, objectToJSONString2);
                }
            }
        }
        return bundle2;
    }

    private static String objectToJSONString(Object obj) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject)) {
            return obj.toString();
        }
        try {
            if (obj instanceof Collection) {
                return new JSONArray((Collection) obj).toString();
            }
            if (obj instanceof Map) {
                return new JSONObject((Map) obj).toString();
            }
            return obj.toString();
        } catch (Exception e) {
            return null;
        }
    }
}
