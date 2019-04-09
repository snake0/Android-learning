package com.baidu.techain.b;

import android.support.v4.view.MotionEventCompat;

public final class c {
    private static final byte[] a = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};

    public static byte[] a(byte[] bArr) {
        int length = bArr.length;
        int i = (length / 4) * 3;
        if (i == 0) {
            return new byte[0];
        }
        byte b;
        int i2;
        byte[] bArr2 = new byte[i];
        i = length;
        length = 0;
        while (true) {
            b = bArr[i - 1];
            if (!(b == (byte) 10 || b == (byte) 13 || b == (byte) 32 || b == (byte) 9)) {
                if (b != (byte) 61) {
                    break;
                }
                length++;
            }
            i--;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i3 < i) {
            b = bArr[i3];
            if (b == (byte) 10 || b == (byte) 13 || b == (byte) 32 || b == (byte) 9) {
                i2 = i4;
                i4 = i6;
                i6 = i5;
            } else {
                if (b >= (byte) 65 && b <= (byte) 90) {
                    i2 = b - 65;
                } else if (b >= (byte) 97 && b <= (byte) 122) {
                    i2 = b - 71;
                } else if (b >= (byte) 48 && b <= (byte) 57) {
                    i2 = b + 4;
                } else if (b == (byte) 43) {
                    i2 = 62;
                } else if (b != (byte) 47) {
                    return null;
                } else {
                    i2 = 63;
                }
                i4 = (i4 << 6) | ((byte) i2);
                if (i5 % 4 == 3) {
                    i2 = i6 + 1;
                    bArr2[i6] = (byte) ((16711680 & i4) >> 16);
                    i6 = i2 + 1;
                    bArr2[i2] = (byte) ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i4) >> 8);
                    i2 = i6 + 1;
                    bArr2[i6] = (byte) (i4 & 255);
                } else {
                    i2 = i6;
                }
                i6 = i5 + 1;
                int i7 = i4;
                i4 = i2;
                i2 = i7;
            }
            i3++;
            i5 = i6;
            i6 = i4;
            i4 = i2;
        }
        if (length > 0) {
            i2 = i4 << (length * 6);
            i = i6 + 1;
            bArr2[i6] = (byte) ((16711680 & i2) >> 16);
            if (length == 1) {
                i6 = i + 1;
                bArr2[i] = (byte) ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i2) >> 8);
            } else {
                i6 = i;
            }
        }
        byte[] bArr3 = new byte[i6];
        System.arraycopy(bArr2, 0, bArr3, 0, i6);
        return bArr3;
    }
}
