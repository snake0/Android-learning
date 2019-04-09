package com.baidu.tts.tools;

import android.content.Context;
import android.text.TextUtils;

public class CommonParam {
    private static final String a = CommonParam.class.getSimpleName();

    public static String getCUID(Context context) {
        String a = a(context);
        String imei = DeviceId.getIMEI(context);
        if (TextUtils.isEmpty(imei)) {
            imei = "0";
        }
        return a + "|" + new StringBuffer(imei).reverse().toString();
    }

    private static String a(Context context) {
        return DeviceId.getDeviceID(context);
    }
}
