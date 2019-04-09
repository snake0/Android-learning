package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class ds {
    private SharedPreferences a;

    public ds(Context context) {
        this.a = context.getSharedPreferences("ifly_launch_lib", 0);
    }

    public final void a(String str, long j) {
        try {
            Editor edit = this.a.edit();
            edit.putLong(str, j);
            edit.commit();
        } catch (Exception e) {
            dr.b("LaunchSetting", "setSetting(" + str + ", " + j + ")", e);
        }
    }

    public final void a(String str, String str2) {
        if (str2 != null) {
            str2 = str2.replace("\u0000", "");
        }
        try {
            Editor edit = this.a.edit();
            edit.putString(str, str2);
            edit.commit();
        } catch (Exception e) {
            dr.b("LaunchSetting", "setSetting(" + str + ", " + str2 + ")", e);
        }
    }

    public final long b(String str, long j) {
        try {
            return this.a.getLong(str, j);
        } catch (Exception e) {
            dr.b("LaunchSetting", "getLongSetting()", e);
            return j;
        }
    }

    public final String b(String str, String str2) {
        try {
            return this.a.getString(str, str2);
        } catch (Exception e) {
            dr.b("LaunchSetting", "getString()", e);
            return str2;
        }
    }
}
