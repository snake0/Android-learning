package org.acra.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import org.acra.ACRA;

public final class PackageManagerWrapper {
    private final Context context;

    public PackageManagerWrapper(@NonNull Context context) {
        this.context = context;
    }

    public boolean hasPermission(@NonNull String str) {
        PackageManager packageManager = this.context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            if (packageManager.checkPermission(str, this.context.getPackageName()) == 0) {
                return true;
            }
            return false;
        } catch (RuntimeException e) {
            return false;
        }
    }

    @Nullable
    public PackageInfo getPackageInfo() {
        PackageInfo packageInfo = null;
        PackageManager packageManager = this.context.getPackageManager();
        if (packageManager == null) {
            return packageInfo;
        }
        try {
            return packageManager.getPackageInfo(this.context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            ACRA.f.d(ACRA.e, "Failed to find PackageInfo for current App : " + this.context.getPackageName());
            return packageInfo;
        } catch (RuntimeException e2) {
            return packageInfo;
        }
    }
}
