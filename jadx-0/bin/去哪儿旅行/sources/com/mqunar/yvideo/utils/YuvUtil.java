package com.mqunar.yvideo.utils;

public class YuvUtil {
    public static native void compressYUV(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, int i5, int i6, boolean z);

    public static native void cropYUV(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, int i5, int i6);

    public static native void destroy();

    public static native void yuv420pToYuv420sp(byte[] bArr, byte[] bArr2, int i, int i2);

    static {
        System.loadLibrary("yuv_util");
    }
}
