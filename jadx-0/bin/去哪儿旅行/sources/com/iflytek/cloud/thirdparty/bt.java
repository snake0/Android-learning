package com.iflytek.cloud.thirdparty;

import android.util.DisplayMetrics;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;

public class bt {
    public static DisplayMetrics a = null;

    public static String a(long j) {
        return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss SSS").format(Long.valueOf(j));
    }

    public static byte[] a(String str) {
        byte[] bArr;
        UnsupportedEncodingException e;
        try {
            byte[] bytes = str.getBytes("utf-8");
            bArr = new byte[(bytes.length + 3)];
            try {
                bArr[0] = (byte) -17;
                bArr[1] = (byte) -69;
                bArr[2] = (byte) -65;
                for (int i = 3; i < bArr.length; i++) {
                    bArr[i] = bytes[i - 3];
                }
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                e.printStackTrace();
                return bArr;
            }
        } catch (UnsupportedEncodingException e3) {
            UnsupportedEncodingException unsupportedEncodingException = e3;
            bArr = null;
            e = unsupportedEncodingException;
            e.printStackTrace();
            return bArr;
        }
        return bArr;
    }

    public static byte[] a(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() > 0) {
            byte[] bytes = str.getBytes(str2);
            byte[] bArr = new byte[(bytes.length + 1)];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            bArr[bytes.length] = (byte) 0;
            return bArr;
        }
        return new byte[]{(byte) 0};
    }

    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length + 3)];
        bArr2[0] = (byte) -17;
        bArr2[1] = (byte) -69;
        bArr2[2] = (byte) -65;
        System.arraycopy(bArr, 0, bArr2, 3, bArr.length);
        return bArr2;
    }
}
