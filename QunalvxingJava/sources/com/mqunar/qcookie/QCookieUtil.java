package com.mqunar.qcookie;

import android.content.Context;
import android.os.Build.VERSION;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.ArrayList;
import java.util.Iterator;

public class QCookieUtil {

    public class QCookie {
        public String domain;
        public String key;
        public String value;
    }

    public static void addCookie(Context context, String str, String str2, String str3) {
        CookieSyncManager.createInstance(context);
        CookieManager instance = CookieManager.getInstance();
        instance.setAcceptCookie(true);
        instance.setCookie(str, str2 + "=" + str3 + "; domain=" + str);
        CookieSyncManager.getInstance().sync();
    }

    public static void removeCookie(Context context, String str, String str2) {
        CookieSyncManager.createInstance(context);
        CookieManager instance = CookieManager.getInstance();
        instance.setAcceptCookie(true);
        instance.setCookie(str, str2 + "=; domain=" + str);
        CookieSyncManager.getInstance().sync();
    }

    public static void setCookie(Context context, String str, String str2, String str3) {
        addCookie(context, str, str2, str3);
    }

    public static void setCookieList(Context context, ArrayList<QCookie> arrayList) {
        if (arrayList != null) {
            CookieSyncManager.createInstance(context);
            CookieManager instance = CookieManager.getInstance();
            instance.setAcceptCookie(true);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                QCookie qCookie = (QCookie) it.next();
                instance.setCookie(qCookie.domain, qCookie.key + "=" + qCookie.value + "; domain=" + qCookie.domain);
            }
            CookieSyncManager.getInstance().sync();
        }
    }

    public static void setCookie(Context context, String str, String str2) {
        CookieSyncManager.createInstance(context);
        CookieManager instance = CookieManager.getInstance();
        instance.setAcceptCookie(true);
        instance.setCookie(str, str2);
        CookieSyncManager.getInstance().sync();
    }

    public static void setAcceptCookie(Context context, boolean z) {
        CookieSyncManager.createInstance(context);
        CookieManager.getInstance().setAcceptCookie(z);
        CookieSyncManager.getInstance().sync();
    }

    public static boolean acceptCookie(Context context) {
        CookieSyncManager.createInstance(context);
        return CookieManager.getInstance().acceptCookie();
    }

    public static String getCookie(Context context, String str) {
        CookieSyncManager.createInstance(context);
        return CookieManager.getInstance().getCookie(str);
    }

    public static boolean hasCookies(Context context) {
        CookieSyncManager.createInstance(context);
        return CookieManager.getInstance().hasCookies();
    }

    public static void removeExpiredCookie(Context context) {
        CookieSyncManager.createInstance(context);
        CookieManager.getInstance().removeExpiredCookie();
        CookieSyncManager.getInstance().sync();
    }

    public static boolean allowFileSchemeCookies(Context context) {
        CookieSyncManager.createInstance(context);
        if (VERSION.SDK_INT >= 12) {
            return CookieManager.allowFileSchemeCookies();
        }
        return false;
    }

    public static void setAcceptFileSchemeCookies(Context context, boolean z) {
        CookieSyncManager.createInstance(context);
        if (VERSION.SDK_INT >= 12) {
            CookieManager.setAcceptFileSchemeCookies(z);
        }
        CookieSyncManager.getInstance().sync();
    }
}
