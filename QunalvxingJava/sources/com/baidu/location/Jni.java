package com.baidu.location;

import com.baidu.mapsdkplatform.comapi.location.CoordinateType;

public class Jni {
    private static int a = 0;
    private static int b = 1;
    private static int c = 2;
    private static int d = 11;
    private static int e = 12;
    private static int f = 13;
    private static int g = 14;
    private static int h = 15;
    private static int i = 1024;
    private static boolean j;

    static {
        j = false;
        try {
            System.loadLibrary("locSDK7b");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            j = true;
        }
    }

    private static native String a(byte[] bArr, int i);

    private static native String b(double d, double d2, int i, int i2);

    private static native String c(byte[] bArr, int i);

    public static double[] coorEncrypt(double d, double d2, String str) {
        double[] dArr = new double[]{0.0d, 0.0d};
        if (j) {
            return dArr;
        }
        int i = -1;
        if (str.equals(BDLocation.BDLOCATION_GCJ02_TO_BD09)) {
            i = a;
        } else if (str.equals("bd09ll")) {
            i = b;
        } else if (str.equals(CoordinateType.GCJ02)) {
            i = c;
        } else if (str.equals(BDLocation.BDLOCATION_WGS84_TO_GCJ02)) {
            i = d;
        } else if (str.equals(BDLocation.BDLOCATION_BD09_TO_GCJ02)) {
            i = e;
        } else if (str.equals(BDLocation.BDLOCATION_BD09LL_TO_GCJ02)) {
            i = f;
        } else if (str.equals("wgs842mc")) {
            i = h;
        }
        try {
            String[] split = b(d, d2, str.equals("gcj2wgs") ? 16 : i, 132456).split(":");
            dArr[0] = Double.parseDouble(split[0]);
            dArr[1] = Double.parseDouble(split[1]);
        } catch (UnsatisfiedLinkError e) {
        }
        return dArr;
    }

    private static native String ee(String str, int i);

    public static String en1(String str) {
        int i = 740;
        int i2 = 0;
        if (j) {
            return "err!";
        }
        if (str == null) {
            return "null";
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[i];
        int length = bytes.length;
        if (length <= 740) {
            i = length;
        }
        length = 0;
        while (i2 < i) {
            if (bytes[i2] != (byte) 0) {
                bArr[length] = bytes[i2];
                length++;
            }
            i2++;
        }
        String str2 = "err!";
        try {
            return a(bArr, 132456);
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            return "err!";
        }
    }

    public static String encode(String str) {
        return j ? "err!" : en1(str) + "|tp=3";
    }

    public static String encode2(String str) {
        if (j) {
            return "err!";
        }
        if (str == null) {
            return "null";
        }
        String str2 = "err!";
        try {
            return c(str.getBytes(), 132456);
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            return "err!";
        }
    }

    public static Long encode3(String str) {
        Long l = null;
        if (j) {
            return l;
        }
        String str2;
        String str3 = "";
        try {
            str2 = new String(str.getBytes(), "UTF-8");
        } catch (Exception e) {
            str2 = str3;
        }
        try {
            return Long.valueOf(murmur(str2));
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            return l;
        }
    }

    private static native String encodeNotLimit(String str, int i);

    public static String encodeOfflineLocationUpdateRequest(String str) {
        if (j) {
            return "err!";
        }
        String str2;
        String str3 = "";
        try {
            str2 = new String(str.getBytes(), "UTF-8");
        } catch (Exception e) {
            str2 = str3;
        }
        str3 = "err!";
        try {
            str2 = encodeNotLimit(str2, 132456);
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            str2 = "err!";
        }
        return str2 + "|tp=3";
    }

    public static String encodeTp4(String str) {
        if (j) {
            return "err!";
        }
        String str2;
        String str3 = "";
        try {
            str2 = new String(str.getBytes(), "UTF-8");
        } catch (Exception e) {
            str2 = str3;
        }
        str3 = "err!";
        try {
            str2 = ee(str2, 132456);
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            str2 = "err!";
        }
        return str2 + "|tp=4";
    }

    public static double getGpsSwiftRadius(float f, double d, double d2) {
        double d3 = 0.0d;
        if (j) {
            return d3;
        }
        try {
            return gsr(f, d, d2);
        } catch (UnsatisfiedLinkError e) {
            return d3;
        }
    }

    private static native double gsr(float f, double d, double d2);

    private static native long murmur(String str);
}
