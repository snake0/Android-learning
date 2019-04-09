package com.mqunar.hy.res.utils;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.mqunar.hy.res.HyResInitializer;

public class NetworkUtil {
    public static NetworkInfo getNetworkInfo(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static boolean isConnected(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isWifi(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 1;
    }

    public static int getNetworkType() {
        Application context = HyResInitializer.getContext();
        NetworkInfo networkInfo = getNetworkInfo(context);
        if (!isConnected(networkInfo)) {
            return -1;
        }
        if (isWifi(networkInfo)) {
            return 1;
        }
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 4;
            default:
                return 0;
        }
    }
}
