package com.mqunar.core.basectx.activity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AliasActivity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.media.TransportMediator;
import com.mqunar.core.basectx.fragment.QFragment;
import com.mqunar.core.basectx.launcherfragment.LauncherFragmentUtils;

public abstract class QAliasActivity extends AliasActivity {
    private long preStartTime;
    private String stateLog;

    public Resources getResources() {
        try {
            return (Resources) Class.forName("com.mqunar.core.QunarApkLoader").getDeclaredMethod("checkResources", new Class[]{Resources.class, Context.class}).invoke(null, new Object[]{r1, this});
        } catch (Throwable th) {
            return super.getResources();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onStart() {
        try {
            super.onStart();
            Proxy.onStart(this);
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        try {
            super.onResume();
            Proxy.onResume(this, getIntent() == null ? null : getIntent().getExtras());
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onPostResume() {
        try {
            super.onPostResume();
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        try {
            super.onPause();
            Proxy.onPause(this);
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onStop() {
        try {
            super.onStop();
            Proxy.onStop(this);
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onRestoreInstanceState(Bundle bundle) {
        try {
            super.onRestoreInstanceState(bundle);
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        Util.ACTIVITY_STATE_LOGGER.remove(this.stateLog);
        try {
            super.onDestroy();
            Proxy.onDestroy(this);
        } catch (Exception e) {
            onException(e);
        }
    }

    public void setContentView(int i) {
        try {
            super.setContentView(i);
        } catch (Exception e) {
            onException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onSaveInstanceState(Bundle bundle) {
        long spiderStartTime = Util.getSpiderStartTime();
        bundle.putLong("_spider_starttime_", spiderStartTime);
        super.onSaveInstanceState(bundle);
        bundle.putLong("_spider_starttime_", spiderStartTime);
        Proxy.onSaveInstanceState(this, bundle);
    }

    public void finish() {
        super.finish();
        Proxy.finish(this);
    }

    private void onException(Exception exception) {
        Util.onException(this, this.preStartTime, exception);
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0045 A:{Catch:{ Exception -> 0x007b }} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x006f  */
    public void onCreate(android.os.Bundle r9) {
        /*
        r8 = this;
        r6 = 0;
        r1 = 0;
        super.onCreate(r9);	 Catch:{ RuntimeException -> 0x0079 }
        r0 = r1;
    L_0x0007:
        r2 = com.mqunar.core.basectx.activity.Util.getSpiderStartTime();
        if (r9 == 0) goto L_0x007d;
    L_0x000d:
        r4 = "_spider_starttime_";
        r4 = r9.getLong(r4, r6);
        r8.preStartTime = r4;
        r4 = r8.preStartTime;
        r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r4 == 0) goto L_0x007d;
    L_0x001b:
        r4 = r8.preStartTime;
        r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r4 == 0) goto L_0x007d;
    L_0x0021:
        com.mqunar.core.basectx.activity.Util.restart2(r8);
    L_0x0024:
        r0 = r8.toString();	 Catch:{ Exception -> 0x007b }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x007b }
        r4.<init>();	 Catch:{ Exception -> 0x007b }
        r5 = ".";
        r5 = r0.lastIndexOf(r5);	 Catch:{ Exception -> 0x007b }
        r5 = r5 + 1;
        r0 = r0.substring(r5);	 Catch:{ Exception -> 0x007b }
        r0 = r4.append(r0);	 Catch:{ Exception -> 0x007b }
        r4 = ",restore=";
        r4 = r0.append(r4);	 Catch:{ Exception -> 0x007b }
        if (r9 == 0) goto L_0x0070;
    L_0x0045:
        r0 = 1;
    L_0x0046:
        r0 = r4.append(r0);	 Catch:{ Exception -> 0x007b }
        r4 = ",pT=";
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007b }
        r4 = r8.preStartTime;	 Catch:{ Exception -> 0x007b }
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007b }
        r4 = ",sT=";
        r0 = r0.append(r4);	 Catch:{ Exception -> 0x007b }
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x007b }
        r0 = r0.toString();	 Catch:{ Exception -> 0x007b }
        r8.stateLog = r0;	 Catch:{ Exception -> 0x007b }
        r0 = com.mqunar.core.basectx.activity.Util.ACTIVITY_STATE_LOGGER;	 Catch:{ Exception -> 0x007b }
        r2 = r8.stateLog;	 Catch:{ Exception -> 0x007b }
        r0.add(r2);	 Catch:{ Exception -> 0x007b }
    L_0x006d:
        if (r1 == 0) goto L_0x0072;
    L_0x006f:
        throw r1;
    L_0x0070:
        r0 = 0;
        goto L_0x0046;
    L_0x0072:
        com.mqunar.core.basectx.activity.Proxy.onCreate(r8, r9);
        com.mqunar.core.basectx.activity.Util.initWindowSetting(r8);
        return;
    L_0x0079:
        r0 = move-exception;
        goto L_0x0007;
    L_0x007b:
        r0 = move-exception;
        goto L_0x006d;
    L_0x007d:
        r1 = r0;
        goto L_0x0024;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.core.basectx.activity.QAliasActivity.onCreate(android.os.Bundle):void");
    }

    /* Access modifiers changed, original: protected */
    public boolean needOnCreateSendBroadcast() {
        return true;
    }

    public void startActivityForResult(Intent intent, int i) {
        Proxy.startActivityForResult(this, intent, i);
        super.startActivityForResult(intent, i);
    }

    @TargetApi(16)
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        Proxy.startActivityForResult(this, intent, i);
        super.startActivityForResult(intent, i, bundle);
    }

    public void overridePendingTransition(int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i2 >> 24) & 255;
        if (!(i3 == 1 || i3 == TransportMediator.KEYCODE_MEDIA_PAUSE || i == 0)) {
            i = SpiderR.getResId("anim", "spider_slide_in_right");
        }
        if (!(i4 == 1 || i4 == TransportMediator.KEYCODE_MEDIA_PAUSE || i2 == 0)) {
            i2 = SpiderR.getResId("anim", "spider_slide_out_right");
        }
        super.overridePendingTransition(i, i2);
    }

    public final void startFragmentForResult(Class<? extends QFragment> cls, Bundle bundle, int i) {
        LauncherFragmentUtils.startFragmentForResult((Activity) this, (Class) cls, bundle, i);
    }

    public final void startFragmentForResult(Class<? extends QFragment> cls, int i) {
        startFragmentForResult((Class) cls, null, i);
    }

    public final void startFragment(Class<? extends QFragment> cls, Bundle bundle) {
        LauncherFragmentUtils.startFragment((Activity) this, (Class) cls, bundle);
    }

    public final void startTransparentFragmentForResult(Class<? extends QFragment> cls, int i) {
        startTransparentFragmentForResult(cls, null, i);
    }

    public final void startTransparentFragmentForResult(Class<? extends QFragment> cls, Bundle bundle, int i) {
        LauncherFragmentUtils.startTransparentFragmentForResult(this, cls, bundle, i);
    }

    public final void startTransparentFragment(Class<? extends QFragment> cls, Bundle bundle) {
        LauncherFragmentUtils.startTransparentFragment(this, cls, bundle);
    }

    public final void startDialogFragmentForResult(Class<? extends QFragment> cls, int i) {
        startDialogFragmentForResult(cls, null, i);
    }

    public final void startDialogFragmentForResult(Class<? extends QFragment> cls, Bundle bundle, int i) {
        LauncherFragmentUtils.startDialogFragmentForResult(this, cls, bundle, i);
    }

    public final void startDialogFragment(Class<? extends QFragment> cls, Bundle bundle) {
        LauncherFragmentUtils.startDialogFragment(this, cls, bundle);
    }

    public final void backToFragment(Class<? extends QFragment> cls, Bundle bundle) {
        LauncherFragmentUtils.backToFragment(this, cls, bundle);
    }

    public final void backToActivity(Class<? extends Activity> cls, Bundle bundle) {
        LauncherFragmentUtils.backToActivity(this, cls, bundle);
    }

    public final void backToActivity(Class<? extends Activity> cls) {
        backToActivity(cls, null);
    }

    public final void startFragment(Class<? extends QFragment> cls) {
        startFragment((Class) cls, null);
    }

    public final void backToFragment(Class<? extends QFragment> cls) {
        backToFragment(cls, null);
    }

    public final void startDialogFragment(Class<? extends QFragment> cls) {
        startDialogFragment(cls, null);
    }

    public final void startTransparentFragment(Class<? extends QFragment> cls) {
        startTransparentFragment(cls, null);
    }

    public final void startFragment(Class<? extends QFragment> cls, boolean z) {
        LauncherFragmentUtils.startFragment((Activity) this, (Class) cls, z);
    }

    public final void startFragment(Class<? extends QFragment> cls, Bundle bundle, boolean z) {
        LauncherFragmentUtils.startFragment(this, cls, bundle, z);
    }

    public final void startFragmentForResult(Class<? extends QFragment> cls, Bundle bundle, int i, boolean z) {
        LauncherFragmentUtils.startFragmentForResult(this, cls, bundle, i, z);
    }

    public final void startFragmentForResult(Class<? extends QFragment> cls, int i, boolean z) {
        LauncherFragmentUtils.startFragmentForResult((Activity) this, (Class) cls, i, z);
    }
}
