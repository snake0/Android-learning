package com.iflytek.cloud.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;

public class ResourceUtil {
    public static final String ASR_RES_PATH = "asr_res_path";
    public static final String ENGINE_DESTROY = "engine_destroy";
    public static final String ENGINE_START = "engine_start";
    public static final String GRM_BUILD_PATH = "grm_build_path";
    public static final String IVW_RES_PATH = "ivw_res_path";
    public static final String TTS_RES_PATH = "tts_res_path";

    public enum RESOURCE_TYPE {
        assets,
        res,
        path
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0082 A:{SYNTHETIC, Splitter:B:33:0x0082} */
    private static java.lang.String a(android.content.Context r9, com.iflytek.cloud.util.ResourceUtil.RESOURCE_TYPE r10, java.lang.String r11) {
        /*
        r0 = 0;
        r1 = android.text.TextUtils.isEmpty(r11);
        if (r1 != 0) goto L_0x0009;
    L_0x0007:
        if (r9 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        r1 = r9.getPackageResourcePath();
        r2 = com.iflytek.cloud.util.ResourceUtil.RESOURCE_TYPE.assets;	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        if (r10 != r2) goto L_0x0054;
    L_0x0012:
        r2 = r9.getAssets();	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        r2 = r2.openFd(r11);	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        r5 = r2.getStartOffset();	 Catch:{ Exception -> 0x008d }
        r3 = r2.getLength();	 Catch:{ Exception -> 0x008d }
    L_0x0022:
        r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x008d }
        r7.<init>();	 Catch:{ Exception -> 0x008d }
        r8 = "fo|";
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x008d }
        r1 = r7.append(r1);	 Catch:{ Exception -> 0x008d }
        r7 = "|";
        r1 = r1.append(r7);	 Catch:{ Exception -> 0x008d }
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x008d }
        r5 = "|";
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x008d }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x008d }
        r0 = r1.toString();	 Catch:{ Exception -> 0x008d }
        if (r2 == 0) goto L_0x0009;
    L_0x004b:
        r2.close();	 Catch:{ Exception -> 0x004f }
        goto L_0x0009;
    L_0x004f:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x0054:
        r2 = java.lang.Integer.valueOf(r11);	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        r2 = r2.intValue();	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        r3 = r9.getResources();	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        r2 = r3.openRawResourceFd(r2);	 Catch:{ Exception -> 0x006d, all -> 0x007d }
        r5 = r2.getStartOffset();	 Catch:{ Exception -> 0x008d }
        r3 = r2.getLength();	 Catch:{ Exception -> 0x008d }
        goto L_0x0022;
    L_0x006d:
        r1 = move-exception;
        r2 = r0;
    L_0x006f:
        com.iflytek.cloud.thirdparty.cb.a(r1);	 Catch:{ all -> 0x008b }
        if (r2 == 0) goto L_0x0009;
    L_0x0074:
        r2.close();	 Catch:{ Exception -> 0x0078 }
        goto L_0x0009;
    L_0x0078:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x007d:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x0080:
        if (r2 == 0) goto L_0x0085;
    L_0x0082:
        r2.close();	 Catch:{ Exception -> 0x0086 }
    L_0x0085:
        throw r0;
    L_0x0086:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0085;
    L_0x008b:
        r0 = move-exception;
        goto L_0x0080;
    L_0x008d:
        r1 = move-exception;
        goto L_0x006f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.util.ResourceUtil.a(android.content.Context, com.iflytek.cloud.util.ResourceUtil$RESOURCE_TYPE, java.lang.String):java.lang.String");
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        return "fo|" + str + "|" + 0 + "|" + file.length();
    }

    public static String generateResourcePath(Context context, RESOURCE_TYPE resource_type, String str) {
        return resource_type == RESOURCE_TYPE.path ? a(str) : a(context, resource_type, str);
    }
}
