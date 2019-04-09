package com.baidu.techain.core;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import java.util.List;

public class ApkInfo {
    public ActivityInfo[] activities;
    public String apkMD5;
    public int apkParseSuc;
    public int applicationTheme;
    public ClassLoader classLoader;
    public String className;
    public PackageInfo cloudPkgInfo;
    public String dataDir;
    public String dexPath;
    public String downloadURL;
    public int duration;
    public Context hostContext;
    public int initStatus;
    public List<h> intentFilters;
    public boolean isMem = false;
    public int isOnce;
    public int key;
    public String libPath;
    public int network;
    public String packageName;
    public String pkgPath;
    public int priority = -1;
    public String signMD5;
    public long startTime;
    public String versionName;

    public ApkInfo(int i, String str, String str2) {
        this.key = i;
        this.versionName = str;
        this.pkgPath = str2;
    }

    public ApkInfo(String str, String str2) {
        this.versionName = str;
        this.pkgPath = str2;
    }

    public ApkInfo(int i, String str, String str2, String str3, String str4) {
        this.key = i;
        this.packageName = str;
        this.versionName = str2;
        this.downloadURL = str3;
        this.apkMD5 = str4;
    }

    public int hashCode() {
        return (this.packageName == null ? 0 : this.packageName.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        ApkInfo apkInfo = (ApkInfo) obj;
        if (this.packageName == null) {
            if (apkInfo.packageName != null) {
                return false;
            }
            return true;
        } else if (this.packageName.equals(apkInfo.packageName)) {
            return true;
        } else {
            return false;
        }
    }
}
