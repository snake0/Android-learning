package com.mqunar.idscan.image;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;

public final class b {
    private static List a(List list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= list.size() - 1) {
            int i2;
            int i3;
            while (true) {
                i2 = i;
                if (i2 > list.size() - 1 || ((Integer) list.get(i2)).intValue() >= 10) {
                    i3 = i2 + 1;
                } else {
                    i = i2 + 1;
                }
            }
            i3 = i2 + 1;
            while (i3 <= list.size() - 1 && ((Integer) list.get(i3)).intValue() >= 10) {
                i3++;
            }
            if (i3 - i2 >= 10) {
                arrayList.add(new int[]{i2, i3 - 1});
            }
            i = i3;
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0073 A:{Catch:{ Exception -> 0x00af }} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0073 A:{Catch:{ Exception -> 0x00af }} */
    private static java.util.List a(int[] r24, int[] r25, java.util.List r26, int[] r27, int[] r28, int r29) {
        /*
        r21 = new java.util.ArrayList;
        r4 = r26.size();
        r0 = r21;
        r0.<init>(r4);
        r5 = 0;
        r4 = 0;
        r7 = 0;
        r8 = 0;
        r22 = r26.iterator();
        r6 = r5;
        r5 = r4;
    L_0x0015:
        r4 = r22.hasNext();
        if (r4 == 0) goto L_0x0132;
    L_0x001b:
        r4 = r22.next();
        r4 = (int[]) r4;
        r0 = r24;
        r1 = r27;
        r2 = r28;
        r3 = r29;
        r9 = a(r0, r4, r1, r2, r3);	 Catch:{ Exception -> 0x009c }
        r9 = c(r9);	 Catch:{ Exception -> 0x009c }
        r6 = r9.length;	 Catch:{ Exception -> 0x0136 }
        if (r6 != 0) goto L_0x0037;
    L_0x0034:
        r4 = r21;
    L_0x0036:
        return r4;
    L_0x0037:
        r6 = 1;
        r6 = r4[r6];	 Catch:{ Exception -> 0x0136 }
        r10 = 0;
        r7 = r4[r10];	 Catch:{ Exception -> 0x0136 }
        r6 = r6 - r7;
        r7 = r6 + 1;
        r6 = 1;
        r6 = r9[r6];	 Catch:{ Exception -> 0x0136 }
        r10 = 0;
        r8 = r9[r10];	 Catch:{ Exception -> 0x0136 }
        r6 = r6 - r8;
        r8 = r6 + 1;
        r6 = r7 * r8;
        r6 = new int[r6];	 Catch:{ Exception -> 0x0136 }
        r5 = -7829368; // 0xffffffffff888888 float:NaN double:NaN;
        java.util.Arrays.fill(r6, r5);	 Catch:{ Exception -> 0x013e }
        r19 = r6;
        r20 = r9;
    L_0x0057:
        r6 = 0;
        r5 = 0;
        r5 = r28[r5];	 Catch:{ Exception -> 0x00af }
        r9 = 0;
        r9 = r27[r9];	 Catch:{ Exception -> 0x00af }
        r5 = r5 + r9;
        r9 = 0;
        r9 = r20[r9];	 Catch:{ Exception -> 0x00af }
        r5 = r5 + r9;
        r10 = r5;
    L_0x0064:
        r5 = 0;
        r5 = r28[r5];	 Catch:{ Exception -> 0x00af }
        r9 = 0;
        r9 = r27[r9];	 Catch:{ Exception -> 0x00af }
        r5 = r5 + r9;
        r9 = 1;
        r9 = r20[r9];	 Catch:{ Exception -> 0x00af }
        r5 = r5 + r9;
        r5 = r5 + 1;
        if (r10 >= r5) goto L_0x00b3;
    L_0x0073:
        r5 = 2;
        r5 = r28[r5];	 Catch:{ Exception -> 0x00af }
        r9 = 0;
        r9 = r4[r9];	 Catch:{ Exception -> 0x00af }
        r5 = r5 + r9;
        r9 = r5;
    L_0x007b:
        r5 = 2;
        r5 = r28[r5];	 Catch:{ Exception -> 0x00af }
        r11 = 1;
        r11 = r4[r11];	 Catch:{ Exception -> 0x00af }
        r5 = r5 + r11;
        r5 = r5 + 1;
        if (r9 >= r5) goto L_0x00ab;
    L_0x0086:
        r5 = r10 * r29;
        r5 = r5 + r9;
        r0 = r25;
        r11 = r0.length;	 Catch:{ Exception -> 0x00af }
        if (r5 >= r11) goto L_0x0141;
    L_0x008e:
        r5 = r6 + 1;
        r11 = r10 * r29;
        r11 = r11 + r9;
        r11 = r25[r11];	 Catch:{ Exception -> 0x00af }
        r19[r6] = r11;	 Catch:{ Exception -> 0x00af }
    L_0x0097:
        r6 = r9 + 1;
        r9 = r6;
        r6 = r5;
        goto L_0x007b;
    L_0x009c:
        r9 = move-exception;
        r23 = r9;
        r9 = r6;
        r6 = r5;
        r5 = r23;
    L_0x00a3:
        com.mqunar.tools.log.QLog.e(r5);
        r19 = r6;
        r20 = r9;
        goto L_0x0057;
    L_0x00ab:
        r5 = r10 + 1;
        r10 = r5;
        goto L_0x0064;
    L_0x00af:
        r4 = move-exception;
        com.mqunar.tools.log.QLog.e(r4);
    L_0x00b3:
        r4 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x012e }
        r4 = android.graphics.Bitmap.createBitmap(r7, r8, r4);	 Catch:{ Exception -> 0x012e }
        r5 = java.nio.IntBuffer.wrap(r19);	 Catch:{ Exception -> 0x012e }
        r4.copyPixelsFromBuffer(r5);	 Catch:{ Exception -> 0x012e }
        r9 = new android.graphics.Matrix;	 Catch:{ Exception -> 0x012e }
        r9.<init>();	 Catch:{ Exception -> 0x012e }
        r5 = 1105199104; // 0x41e00000 float:28.0 double:5.46040909E-315;
        r6 = (float) r7;	 Catch:{ Exception -> 0x012e }
        r5 = r5 / r6;
        r6 = 1105199104; // 0x41e00000 float:28.0 double:5.46040909E-315;
        r10 = (float) r8;	 Catch:{ Exception -> 0x012e }
        r6 = r6 / r10;
        r5 = java.lang.Math.min(r5, r6);	 Catch:{ Exception -> 0x012e }
        r9.postScale(r5, r5);	 Catch:{ Exception -> 0x012e }
        r5 = 0;
        r6 = 0;
        r10 = 1;
        r9 = android.graphics.Bitmap.createBitmap(r4, r5, r6, r7, r8, r9, r10);	 Catch:{ Exception -> 0x012e }
        r5 = r9.getWidth();	 Catch:{ Exception -> 0x012e }
        r6 = r9.getHeight();	 Catch:{ Exception -> 0x012e }
        r5 = r5 * r6;
        r10 = new int[r5];	 Catch:{ Exception -> 0x012e }
        r11 = 0;
        r12 = r9.getWidth();	 Catch:{ Exception -> 0x012e }
        r13 = 0;
        r14 = 0;
        r15 = r9.getWidth();	 Catch:{ Exception -> 0x012e }
        r16 = r9.getHeight();	 Catch:{ Exception -> 0x012e }
        r9.getPixels(r10, r11, r12, r13, r14, r15, r16);	 Catch:{ Exception -> 0x012e }
        r5 = 28;
        r6 = 28;
        r11 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x012e }
        r11 = android.graphics.Bitmap.createBitmap(r5, r6, r11);	 Catch:{ Exception -> 0x012e }
        r13 = 0;
        r14 = r9.getWidth();	 Catch:{ Exception -> 0x012e }
        r5 = r9.getWidth();	 Catch:{ Exception -> 0x012e }
        r5 = 28 - r5;
        r15 = r5 / 2;
        r16 = 0;
        r17 = r9.getWidth();	 Catch:{ Exception -> 0x012e }
        r18 = r9.getHeight();	 Catch:{ Exception -> 0x012e }
        r12 = r10;
        r11.setPixels(r12, r13, r14, r15, r16, r17, r18);	 Catch:{ Exception -> 0x012e }
        r0 = r21;
        r0.add(r11);	 Catch:{ Exception -> 0x012e }
        r4.recycle();	 Catch:{ Exception -> 0x012e }
        r9.recycle();	 Catch:{ Exception -> 0x012e }
        r5 = r19;
        r6 = r20;
        goto L_0x0015;
    L_0x012e:
        r4 = move-exception;
        com.mqunar.tools.log.QLog.e(r4);
    L_0x0132:
        r4 = r21;
        goto L_0x0036;
    L_0x0136:
        r6 = move-exception;
        r23 = r6;
        r6 = r5;
        r5 = r23;
        goto L_0x00a3;
    L_0x013e:
        r5 = move-exception;
        goto L_0x00a3;
    L_0x0141:
        r5 = r6;
        goto L_0x0097;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.idscan.image.b.a(int[], int[], java.util.List, int[], int[], int):java.util.List");
    }

    private static List a(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = iArr4[0] + iArr3[0]; i2 < (iArr4[0] + iArr3[1]) + 1; i2++) {
            int i3 = 0;
            for (int i4 = iArr4[2] + iArr2[0]; i4 < (iArr4[2] + iArr2[1]) + 1; i4++) {
                i3 += Color.green(iArr[(i2 * i) + i4]) == 0 ? 1 : 0;
            }
            arrayList.add(Integer.valueOf(i3));
        }
        return arrayList;
    }

    public static List[] a(int[] iArr, int[] iArr2, int[] iArr3, int i) {
        List list;
        ArrayList arrayList = new ArrayList();
        loop0:
        for (int i2 = iArr3[0]; i2 < iArr3[1] + 1; i2++) {
            int i3 = 0;
            for (int i4 = iArr3[2]; i4 < iArr3[3] + 1; i4++) {
                int i5 = (i2 * i) + i4;
                if (i5 < 0 || i5 >= iArr.length) {
                    list = null;
                    break loop0;
                }
                i3 += Color.green(iArr[(i2 * i) + i4]) == 0 ? 1 : 0;
            }
            arrayList.add(Integer.valueOf(i3));
        }
        Object list2 = arrayList;
        if (list2 == null) {
            return null;
        }
        List a = a(list2);
        if (a.size() != 2) {
            return null;
        }
        List b = b(iArr, (int[]) a.get(0), iArr3, i);
        list2 = b(iArr, (int[]) a.get(1), iArr3, i);
        List b2 = b(b);
        List b3 = b(list2);
        if (b2.size() != 44 || b3.size() != 44) {
            return null;
        }
        List a2 = a(iArr, iArr2, b2, (int[]) a.get(0), iArr3, i);
        b = a(iArr, iArr2, b3, (int[]) a.get(1), iArr3, i);
        return new List[]{a2, b};
    }

    private static List b(List list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= list.size() - 1) {
            int i2;
            int i3;
            while (true) {
                i2 = i;
                if (i2 > list.size() - 1 || ((Integer) list.get(i2)).intValue() > 1) {
                    i3 = i2 + 1;
                } else {
                    i = i2 + 1;
                }
            }
            i3 = i2 + 1;
            while (i3 <= list.size() - 1 && ((Integer) list.get(i3)).intValue() > 1) {
                i3++;
            }
            if (i3 - i2 >= 4 && arrayList.size() < 44) {
                arrayList.add(new int[]{i2 - 2, i3 + 1});
            }
            i = i3;
        }
        return arrayList;
    }

    private static List b(int[] iArr, int[] iArr2, int[] iArr3, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = iArr3[2];
        while (i2 < iArr3[3] + 1) {
            int i3;
            int i4 = 0;
            for (i3 = iArr3[0] + iArr2[0]; i3 < (iArr3[0] + iArr2[1]) + 1; i3++) {
                i4 += Color.green(iArr[(i3 * i) + i2]) == 0 ? 1 : 0;
            }
            i3 = i2 <= 5 ? 0 : i4;
            if (i2 >= i - 5) {
                i3 = 0;
            }
            arrayList.add(Integer.valueOf(i3));
            i2++;
        }
        return arrayList;
    }

    private static int[] c(List list) {
        int[] iArr = new int[0];
        int i = 0;
        while (i <= list.size() - 1) {
            int i2;
            int i3;
            while (true) {
                i2 = i;
                if (i2 > list.size() - 1 || ((Integer) list.get(i2)).intValue() != 0) {
                    i3 = i2 + 1;
                } else {
                    i = i2 + 1;
                }
            }
            i3 = i2 + 1;
            while (i3 <= list.size() - 1 && ((Integer) list.get(i3)).intValue() != 0) {
                i3++;
            }
            if (i3 - i2 >= 4) {
                return new int[]{i2 - 2, i3 + 1};
            }
            i = i3;
        }
        return iArr;
    }
}
