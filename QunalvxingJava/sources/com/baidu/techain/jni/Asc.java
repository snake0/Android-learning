package com.baidu.techain.jni;

import com.baidu.techain.b.e;

public class Asc {
    public native byte[] ac(byte[] bArr, byte[] bArr2);

    public native byte[] ar(byte[] bArr, byte[] bArr2);

    public native byte[] dc(byte[] bArr, byte[] bArr2);

    public native int df(String str, String str2, byte[] bArr);

    public native byte[] dr(byte[] bArr, byte[] bArr2);

    static {
        try {
            System.loadLibrary("techain");
        } catch (Throwable th) {
            e.a();
        }
    }
}
