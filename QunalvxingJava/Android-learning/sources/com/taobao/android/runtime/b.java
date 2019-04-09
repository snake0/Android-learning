package com.taobao.android.runtime;

import android.support.annotation.NonNull;

public class b {
    @NonNull
    final byte[] a;
    final int b;

    public b(@NonNull byte[] bArr) {
        this(bArr, 0);
    }

    public b(@NonNull byte[] bArr, int i) {
        this.a = bArr;
        this.b = i;
    }

    public int a(int i) {
        byte[] bArr = this.a;
        int i2 = this.b + i;
        int i3 = (bArr[i2 + 3] << 24) | (((bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8)) | ((bArr[i2 + 2] & 255) << 16));
        if (i3 >= 0) {
            return i3;
        }
        throw new ExceptionWithContext("Encountered small uint that is out of range at offset 0x%x", Integer.valueOf(i2));
    }

    public int b(int i) {
        byte[] bArr = this.a;
        int i2 = this.b + i;
        return ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
    }

    public int c(int i) {
        byte[] bArr = this.a;
        int i2 = this.b + i;
        long j = ((((((long) (((bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8)) | ((bArr[i2 + 2] & 255) << 16))) | ((((long) bArr[i2 + 3]) & 255) << 24)) | ((((long) bArr[i2 + 4]) & 255) << 32)) | ((((long) bArr[i2 + 5]) & 255) << 40)) | ((((long) bArr[i2 + 6]) & 255) << 48)) | (((long) bArr[i2 + 7]) << 56);
        if (j >= 0 && j <= 2147483647L) {
            return (int) j;
        }
        throw new ExceptionWithContext("Encountered out-of-range ulong at offset 0x%x", Integer.valueOf(i2));
    }
}
