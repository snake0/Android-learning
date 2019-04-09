package com.mqunar.core.basectx;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import java.lang.reflect.Method;

public abstract class SchemeDispatcher {
    public static final String RESULT_BROADCAST_MESSAGE_ACTION = "_RESULT_BROADCAST_MESSAGE_ACTION_";
    public static final String SPIDER_REQUESTCODE = "_SPIDER_REQUESTCODE_";
    public static final String TARGET_SCHEME_CLEAR_TOP = "_SPIDER_FLAG_CLEAR_TOP_";
    public static final String TARGET_SCHEME_URI = "QUNAR_SPIDER_TARGET_SCHEME_URL";
    private static String homeScheme = null;

    public static String getHomeScheme(Context context) {
        if (TextUtils.isEmpty(homeScheme)) {
            homeScheme = getMetaData(context.getApplicationContext(), "MAIN_SCHEME");
        }
        return homeScheme;
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c6  */
    public static java.lang.String getMetaData(android.content.Context r10, java.lang.String r11) {
        /*
        r5 = 0;
        r2 = 0;
        r4 = 1;
        r0 = r10.getApplicationInfo();
        r0 = r0.metaData;
        if (r0 == 0) goto L_0x0016;
    L_0x000b:
        r1 = r0.isEmpty();
        if (r1 != 0) goto L_0x0016;
    L_0x0011:
        r0 = r0.getString(r11);
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = android.content.res.AssetManager.class;
        r0 = r0.newInstance();	 Catch:{ Throwable -> 0x00ac, all -> 0x00bd }
        r0 = (android.content.res.AssetManager) r0;	 Catch:{ Throwable -> 0x00ac, all -> 0x00bd }
        r1 = android.content.res.AssetManager.class;
        r3 = "addAssetPath";
        r6 = 1;
        r6 = new java.lang.Class[r6];	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r7 = 0;
        r8 = java.lang.String.class;
        r6[r7] = r8;	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r1 = r1.getDeclaredMethod(r3, r6);	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r3 = 1;
        r1.setAccessible(r3);	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r6 = 0;
        r7 = r10.getApplicationInfo();	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r7 = r7.sourceDir;	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r3[r6] = r7;	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r1 = r1.invoke(r0, r3);	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r1 = (java.lang.Integer) r1;	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r1 = r1.intValue();	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        if (r1 == 0) goto L_0x009e;
    L_0x004a:
        r6 = "http://schemas.android.com/apk/res/android";
        r3 = "AndroidManifest.xml";
        r3 = r0.openXmlResourceParser(r1, r3);	 Catch:{ Throwable -> 0x00d6, all -> 0x00ca }
        r1 = r3.getEventType();	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        r9 = r1;
        r1 = r5;
        r5 = r9;
    L_0x0059:
        if (r5 == r4) goto L_0x009f;
    L_0x005b:
        switch(r5) {
            case 2: goto L_0x0063;
            default: goto L_0x005e;
        };	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
    L_0x005e:
        r5 = r3.next();	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        goto L_0x0059;
    L_0x0063:
        r5 = r3.getName();	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        r7 = "meta-data";
        r5 = r7.equals(r5);	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        if (r5 == 0) goto L_0x008f;
    L_0x006f:
        r1 = "name";
        r1 = r3.getAttributeValue(r6, r1);	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        r1 = r1.equals(r11);	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        if (r1 == 0) goto L_0x008d;
    L_0x007b:
        r1 = "value";
        r1 = r3.getAttributeValue(r6, r1);	 Catch:{ Throwable -> 0x00dc, all -> 0x00cf }
        if (r3 == 0) goto L_0x0086;
    L_0x0083:
        r3.close();
    L_0x0086:
        if (r0 == 0) goto L_0x008b;
    L_0x0088:
        r0.close();
    L_0x008b:
        r0 = r1;
        goto L_0x0015;
    L_0x008d:
        r1 = r4;
        goto L_0x005e;
    L_0x008f:
        if (r1 == 0) goto L_0x005e;
    L_0x0091:
        if (r3 == 0) goto L_0x0096;
    L_0x0093:
        r3.close();
    L_0x0096:
        if (r0 == 0) goto L_0x009b;
    L_0x0098:
        r0.close();
    L_0x009b:
        r0 = r2;
        goto L_0x0015;
    L_0x009e:
        r3 = r2;
    L_0x009f:
        if (r3 == 0) goto L_0x00a4;
    L_0x00a1:
        r3.close();
    L_0x00a4:
        if (r0 == 0) goto L_0x00a9;
    L_0x00a6:
        r0.close();
    L_0x00a9:
        r0 = r2;
        goto L_0x0015;
    L_0x00ac:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
    L_0x00af:
        r0.printStackTrace();	 Catch:{ all -> 0x00d3 }
        if (r3 == 0) goto L_0x00b7;
    L_0x00b4:
        r3.close();
    L_0x00b7:
        if (r1 == 0) goto L_0x00a9;
    L_0x00b9:
        r1.close();
        goto L_0x00a9;
    L_0x00bd:
        r0 = move-exception;
        r3 = r2;
    L_0x00bf:
        if (r3 == 0) goto L_0x00c4;
    L_0x00c1:
        r3.close();
    L_0x00c4:
        if (r2 == 0) goto L_0x00c9;
    L_0x00c6:
        r2.close();
    L_0x00c9:
        throw r0;
    L_0x00ca:
        r1 = move-exception;
        r3 = r2;
        r2 = r0;
        r0 = r1;
        goto L_0x00bf;
    L_0x00cf:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x00bf;
    L_0x00d3:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00bf;
    L_0x00d6:
        r1 = move-exception;
        r3 = r2;
        r9 = r0;
        r0 = r1;
        r1 = r9;
        goto L_0x00af;
    L_0x00dc:
        r1 = move-exception;
        r9 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x00af;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.core.basectx.SchemeDispatcher.getMetaData(android.content.Context, java.lang.String):java.lang.String");
    }

    public static void sendSchemeAndClearStack(Fragment fragment, String str) {
        sendSchemeAndClearStack(fragment, getHomeScheme(fragment.getActivity()), str);
    }

    public static void sendSchemeAndClearStack(Context context, String str) {
        sendSchemeAndClearStack(context, getHomeScheme(context), str);
    }

    public static void sendSchemeAndClearStack(Fragment fragment, String str, Bundle bundle) {
        sendSchemeAndClearStack(fragment, getHomeScheme(fragment.getActivity()), str, bundle);
    }

    public static void sendSchemeAndClearStack(Context context, String str, Bundle bundle) {
        sendSchemeAndClearStack(context, getHomeScheme(context), str, bundle);
    }

    public static void sendSchemeAndClearStack(Fragment fragment, String str, String str2) {
        sendSchemeAndClearStack(fragment, str, str2, null);
    }

    public static void sendSchemeAndClearStack(Context context, String str, String str2) {
        sendSchemeAndClearStack(context, str, str2, null);
    }

    public static void sendSchemeAndClearStack(final Fragment fragment, String str, String str2, Bundle bundle) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(fragment.getActivity().getPackageName());
        intent.putExtra(TARGET_SCHEME_URI, str2);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        sendIntent(fragment, intent, new Runnable() {
            public void run() {
                fragment.startActivity(intent);
            }
        });
    }

    public static void sendSchemeAndClearStack(final Context context, String str, String str2, Bundle bundle) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(context.getPackageName());
        intent.putExtra(TARGET_SCHEME_URI, str2);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        sendIntent(context, intent, new Runnable() {
            public void run() {
                context.startActivity(intent);
            }
        });
    }

    public static void sendSchemeForResultAndClearStack(Fragment fragment, String str, int i) {
        sendSchemeForResultAndClearStack(fragment, getHomeScheme(fragment.getActivity()), str, i);
    }

    public static void sendSchemeForResultAndClearStack(Activity activity, String str, int i) {
        sendSchemeForResultAndClearStack(activity, getHomeScheme(activity), str, i);
    }

    public static void sendSchemeForResultAndClearStack(Fragment fragment, String str, String str2, int i) {
        sendSchemeForResultAndClearStack(fragment, str, str2, i, null);
    }

    public static void sendSchemeForResultAndClearStack(Activity activity, String str, String str2, int i) {
        sendSchemeForResultAndClearStack(activity, str, str2, i, null);
    }

    public static void sendSchemeForResultAndClearStack(final Fragment fragment, String str, String str2, final int i, Bundle bundle) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(fragment.getActivity().getPackageName());
        intent.putExtra(TARGET_SCHEME_URI, str2);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra(SPIDER_REQUESTCODE, i);
        sendIntent(fragment, intent, new Runnable() {
            public void run() {
                fragment.startActivityForResult(intent, i);
            }
        });
    }

    public static void sendSchemeForResultAndClearStack(final Activity activity, String str, String str2, final int i, Bundle bundle) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(activity.getPackageName());
        intent.putExtra(TARGET_SCHEME_URI, str2);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra(SPIDER_REQUESTCODE, i);
        sendIntent(activity, intent, new Runnable() {
            public void run() {
                activity.startActivityForResult(intent, i);
            }
        });
    }

    public static void sendScheme(Fragment fragment, String str) {
        sendScheme(fragment, str, null, false, 0);
    }

    public static void sendScheme(Context context, String str) {
        sendScheme(context, str, null, false, 0);
    }

    public static void sendScheme(Fragment fragment, String str, Bundle bundle) {
        sendScheme(fragment, str, bundle, false, 0);
    }

    public static void sendScheme(Context context, String str, Bundle bundle) {
        sendScheme(context, str, bundle, false, 0);
    }

    public static void sendScheme(Fragment fragment, String str, boolean z) {
        sendScheme(fragment, str, null, z, 0);
    }

    public static void sendScheme(Context context, String str, boolean z) {
        sendScheme(context, str, null, z, 0);
    }

    public static void sendScheme(Fragment fragment, String str, int i) {
        sendScheme(fragment, str, null, false, i);
    }

    public static void sendScheme(Context context, String str, int i) {
        sendScheme(context, str, null, false, i);
    }

    public static void sendScheme(final Fragment fragment, String str, Bundle bundle, boolean z, int i) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(fragment.getActivity().getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (z) {
            intent.putExtra(TARGET_SCHEME_CLEAR_TOP, true);
        }
        if (i != 0) {
            intent.setFlags(i);
        }
        sendIntent(fragment, intent, new Runnable() {
            public void run() {
                fragment.startActivity(intent);
            }
        });
    }

    public static void sendScheme(final Context context, String str, Bundle bundle, boolean z, int i) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(context.getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (z) {
            intent.putExtra(TARGET_SCHEME_CLEAR_TOP, true);
        }
        if (i != 0) {
            intent.setFlags(i);
        }
        sendIntent(context, intent, new Runnable() {
            public void run() {
                context.startActivity(intent);
            }
        });
    }

    public static void sendSchemeForResult(Fragment fragment, String str, int i) {
        sendSchemeForResult(fragment, str, i, null);
    }

    public static void sendSchemeForResult(Activity activity, String str, int i) {
        sendSchemeForResult(activity, str, i, null);
    }

    public static void sendSchemeForResult(Fragment fragment, String str, int i, int i2) {
        sendSchemeForResult(fragment, str, i, null, i2);
    }

    public static void sendSchemeForResult(Activity activity, String str, int i, int i2) {
        sendSchemeForResult(activity, str, i, null, i2);
    }

    public static void sendSchemeForResult(Fragment fragment, String str, int i, Bundle bundle) {
        sendSchemeForResult(fragment, str, i, bundle, 0);
    }

    public static void sendSchemeForResult(Activity activity, String str, int i, Bundle bundle) {
        sendSchemeForResult(activity, str, i, bundle, 0);
    }

    public static void sendSchemeForResult(final Fragment fragment, String str, final int i, Bundle bundle, int i2) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(fragment.getActivity().getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (i2 != 0) {
            intent.setFlags(i2);
        }
        intent.putExtra(SPIDER_REQUESTCODE, i);
        sendIntent(fragment, intent, new Runnable() {
            public void run() {
                fragment.startActivityForResult(intent, i);
            }
        });
    }

    public static void sendSchemeForResult(final Activity activity, String str, final int i, Bundle bundle, int i2) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(activity.getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (i2 != 0) {
            intent.setFlags(i2);
        }
        intent.putExtra(SPIDER_REQUESTCODE, i);
        sendIntent(activity, intent, new Runnable() {
            public void run() {
                activity.startActivityForResult(intent, i);
            }
        });
    }

    private static void sendIntent(Object obj, Intent intent, Runnable runnable) {
        try {
            Method declaredMethod = Class.forName("com.mqunar.dispatcher.DispatcherLogic").getDeclaredMethod("processIntent", new Class[]{Object.class, Intent.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, new Object[]{obj, intent});
        } catch (Throwable th) {
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
