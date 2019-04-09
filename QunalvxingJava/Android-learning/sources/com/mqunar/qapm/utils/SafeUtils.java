package com.mqunar.qapm.utils;

import android.annotation.TargetApi;
import android.util.Base64;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;

public class SafeUtils {
    private static final AgentLog a = AgentLogManager.getAgentLog();

    private static byte[] a(byte[] bArr) {
        try {
            return (byte[]) ReflectUtils.invokeStaticMethod("qunar.lego.utils.Goblin", "ea", new Class[]{byte[].class}, new Object[]{bArr});
        } catch (Throwable th) {
            a.error("reflect failed :" + th);
            return bArr;
        }
    }

    private static byte[] b(byte[] bArr) {
        try {
            return (byte[]) ReflectUtils.invokeStaticMethod("qunar.lego.utils.Goblin", "da", new Class[]{byte[].class}, new Object[]{bArr});
        } catch (Throwable th) {
            a.error("reflect failed :" + th);
            return bArr;
        }
    }

    @TargetApi(8)
    public static String ea(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bArr = new byte[(bytes.length + 1)];
            bArr[0] = (byte) 7;
            System.arraycopy(bytes, 0, bArr, 1, bytes.length);
            return Base64.encodeToString(a(bArr), 2);
        } catch (Throwable th) {
            a.error("ea str failed : " + th);
            return str;
        }
    }

    @TargetApi(8)
    public static String da(String str) {
        try {
            byte[] b = b(Base64.decode(str, 2));
            byte[] bArr = new byte[(b.length - 1)];
            System.arraycopy(b, 1, bArr, 0, bArr.length);
            return new String(bArr, "UTF-8");
        } catch (Throwable th) {
            a.error("ea str failed : " + th);
            return str;
        }
    }

    public static boolean canEncryption() {
        if (ReflectUtils.a("qunar.lego.utils.Goblin", "ea", new Class[]{byte[].class})) {
            if (ReflectUtils.a("qunar.lego.utils.Goblin", "da", new Class[]{byte[].class})) {
                return true;
            }
        }
        return false;
    }
}
