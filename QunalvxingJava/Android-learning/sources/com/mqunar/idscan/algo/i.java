package com.mqunar.idscan.algo;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import java.nio.IntBuffer;
import java.util.Iterator;
import java.util.List;

public final class i {
    private static i a;
    private a b = new a(f.g);
    private e c = null;
    private b d;
    private c e;
    private d f;
    private int[] g;
    private IntBuffer h;
    private Bitmap i;
    private Paint j;
    private int[] k;
    private int[] l;
    private Bitmap m;

    public i() {
        String str = f.e;
        this.d = new b();
        str = f.f;
        this.e = new c();
        this.f = new d();
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        str = f.d;
        this.c = new e(this.e);
    }

    /* JADX WARNING: Removed duplicated region for block: B:175:0x02fc  */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02fc  */
    public static java.lang.String a(byte[] r12, int r13, int r14, int r15, int r16, int r17, int r18) {
        /*
        r2 = com.mqunar.idscan.algo.CNN.a;
        if (r2 == 0) goto L_0x0008;
    L_0x0004:
        r2 = com.mqunar.idscan.image.ImageNativeLibrary.a;
        if (r2 != 0) goto L_0x000b;
    L_0x0008:
        r2 = "-200";
    L_0x000a:
        return r2;
    L_0x000b:
        r10 = 0;
        r2 = a;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r2 != 0) goto L_0x0017;
    L_0x0010:
        r2 = new com.mqunar.idscan.algo.i;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2.<init>();	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        a = r2;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x0017:
        r11 = a;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = r11.g;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r2 != 0) goto L_0x0023;
    L_0x001d:
        r2 = r17 * r18;
        r2 = new int[r2];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r11.g = r2;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x0023:
        r2 = r11.h;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r2 != 0) goto L_0x002f;
    L_0x0027:
        r2 = r17 * r18;
        r2 = java.nio.IntBuffer.allocate(r2);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r11.h = r2;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x002f:
        r2 = r11.i;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r2 != 0) goto L_0x003f;
    L_0x0033:
        r2 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r0 = r17;
        r1 = r18;
        r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r11.i = r2;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x003f:
        r9 = r11.g;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = r12;
        r3 = r13;
        r4 = r14;
        r5 = r15;
        r6 = r16;
        r7 = r17;
        r8 = r18;
        com.mqunar.idscan.image.ImageNativeLibrary.RegionYUVtoRBGA(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = r11.g;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3 = a;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4 = r3.m;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r4 != 0) goto L_0x0062;
    L_0x0056:
        r4 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r0 = r17;
        r1 = r18;
        r4 = android.graphics.Bitmap.createBitmap(r0, r1, r4);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3.m = r4;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x0062:
        r4 = r3.m;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = java.nio.IntBuffer.wrap(r2);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4.copyPixelsFromBuffer(r2);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = r3.m;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3 = a;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4 = r3.j;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r4 != 0) goto L_0x0089;
    L_0x0073:
        r4 = new android.graphics.Paint;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4.<init>();	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5 = new android.graphics.ColorMatrix;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5.<init>();	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r6 = 0;
        r5.setSaturation(r6);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r6 = new android.graphics.ColorMatrixColorFilter;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r6.<init>(r5);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4.setColorFilter(r6);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x0089:
        r4 = new android.graphics.Canvas;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5 = r3.i;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4.<init>(r5);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5 = 0;
        r6 = 0;
        r7 = r3.j;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4.drawBitmap(r2, r5, r6, r7);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = r3.i;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4 = r3.g;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4 = java.nio.IntBuffer.wrap(r4);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2.copyPixelsToBuffer(r4);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r2 = r3.g;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3 = a;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r4 = r3.l;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r4 != 0) goto L_0x00b0;
    L_0x00aa:
        r4 = r17 * r18;
        r4 = new int[r4];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3.l = r4;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x00b0:
        r4 = r3.k;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r4 != 0) goto L_0x00ba;
    L_0x00b4:
        r4 = r17 * r18;
        r4 = new int[r4];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3.k = r4;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
    L_0x00ba:
        r4 = r3.l;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5 = r3.k;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r0 = r17;
        r1 = r18;
        com.mqunar.idscan.image.ImageNativeLibrary.AdaptiveThreshold(r2, r0, r1, r4, r5);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r3 = r3.k;	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r0 = r17;
        r1 = r18;
        r4 = com.mqunar.idscan.image.a.a(r3, r0, r1);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r4 == 0) goto L_0x00e7;
    L_0x00d1:
        r5 = 1;
        r5 = r4[r5];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r6 = 0;
        r6 = r4[r6];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5 = r5 - r6;
        r6 = 20;
        if (r5 < r6) goto L_0x00e7;
    L_0x00dc:
        r5 = 3;
        r5 = r4[r5];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r6 = 2;
        r6 = r4[r6];	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        r5 = r5 - r6;
        r6 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r5 >= r6) goto L_0x00ea;
    L_0x00e7:
        r2 = 0;
        goto L_0x000a;
    L_0x00ea:
        r0 = r17;
        r4 = com.mqunar.idscan.image.b.a(r3, r2, r4, r0);	 Catch:{ Exception -> 0x02cf, all -> 0x02f8 }
        if (r4 == 0) goto L_0x00f6;
    L_0x00f2:
        r2 = r4.length;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r3 = 2;
        if (r2 == r3) goto L_0x011a;
    L_0x00f6:
        if (r4 == 0) goto L_0x0117;
    L_0x00f8:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x00fb:
        if (r3 >= r5) goto L_0x0117;
    L_0x00fd:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x0103:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x0113;
    L_0x0109:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x0103;
    L_0x0113:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x00fb;
    L_0x0117:
        r2 = 0;
        goto L_0x000a;
    L_0x011a:
        r2 = a(r4);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r3 = com.mqunar.idscan.algo.h.a(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = com.mqunar.idscan.algo.f.h;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r5 = r3.charAt(r5);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = java.lang.Character.valueOf(r5);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.contains(r5);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        if (r2 != 0) goto L_0x0153;
    L_0x0133:
        r2 = 0;
    L_0x0134:
        if (r2 != 0) goto L_0x0199;
    L_0x0136:
        if (r4 == 0) goto L_0x0196;
    L_0x0138:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x013b:
        if (r3 >= r5) goto L_0x0196;
    L_0x013d:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x0143:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x0192;
    L_0x0149:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x0143;
    L_0x0153:
        r2 = 0;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 80;
        if (r2 != r5) goto L_0x0190;
    L_0x015c:
        r2 = 1;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 79;
        if (r2 != r5) goto L_0x0190;
    L_0x0165:
        r2 = 2;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 67;
        if (r2 != r5) goto L_0x0190;
    L_0x016e:
        r2 = 3;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 72;
        if (r2 != r5) goto L_0x0190;
    L_0x0177:
        r2 = 4;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 78;
        if (r2 != r5) goto L_0x0190;
    L_0x0180:
        r2 = 44;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 69;
        if (r2 == r5) goto L_0x0190;
    L_0x018a:
        r5 = 71;
        if (r2 == r5) goto L_0x0190;
    L_0x018e:
        r2 = 0;
        goto L_0x0134;
    L_0x0190:
        r2 = 1;
        goto L_0x0134;
    L_0x0192:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x013b;
    L_0x0196:
        r2 = 0;
        goto L_0x000a;
    L_0x0199:
        r2 = com.mqunar.idscan.algo.b.a(r3);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        if (r2 != 0) goto L_0x01c3;
    L_0x019f:
        if (r4 == 0) goto L_0x01c0;
    L_0x01a1:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x01a4:
        if (r3 >= r5) goto L_0x01c0;
    L_0x01a6:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x01ac:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x01bc;
    L_0x01b2:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x01ac;
    L_0x01bc:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x01a4;
    L_0x01c0:
        r2 = 0;
        goto L_0x000a;
    L_0x01c3:
        r2 = a;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.b;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.a(r3);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        if (r2 != 0) goto L_0x01f1;
    L_0x01cd:
        if (r4 == 0) goto L_0x01ee;
    L_0x01cf:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x01d2:
        if (r3 >= r5) goto L_0x01ee;
    L_0x01d4:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x01da:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x01ea;
    L_0x01e0:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x01da;
    L_0x01ea:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x01d2;
    L_0x01ee:
        r2 = 0;
        goto L_0x000a;
    L_0x01f1:
        r2 = a;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.c;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.a(r3);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        if (r2 != 0) goto L_0x021f;
    L_0x01fb:
        if (r4 == 0) goto L_0x021c;
    L_0x01fd:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x0200:
        if (r3 >= r5) goto L_0x021c;
    L_0x0202:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x0208:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x0218;
    L_0x020e:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x0208;
    L_0x0218:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x0200;
    L_0x021c:
        r2 = 0;
        goto L_0x000a;
    L_0x021f:
        r2 = a;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.e;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r2 = r2.a(r3);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        if (r2 != 0) goto L_0x024d;
    L_0x0229:
        if (r4 == 0) goto L_0x024a;
    L_0x022b:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x022e:
        if (r3 >= r5) goto L_0x024a;
    L_0x0230:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x0236:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x0246;
    L_0x023c:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x0236;
    L_0x0246:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x022e;
    L_0x024a:
        r2 = 0;
        goto L_0x000a;
    L_0x024d:
        r2 = 64;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 77;
        if (r2 == r5) goto L_0x0285;
    L_0x0257:
        r2 = 64;
        r2 = r3.charAt(r2);	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 70;
        if (r2 == r5) goto L_0x0285;
    L_0x0261:
        if (r4 == 0) goto L_0x0282;
    L_0x0263:
        r5 = r4.length;
        r2 = 0;
        r3 = r2;
    L_0x0266:
        if (r3 >= r5) goto L_0x0282;
    L_0x0268:
        r2 = r4[r3];
        r6 = r2.iterator();
    L_0x026e:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x027e;
    L_0x0274:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x026e;
    L_0x027e:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x0266;
    L_0x0282:
        r2 = 0;
        goto L_0x000a;
    L_0x0285:
        r2 = a;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.g = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = r2.h;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5.clear();	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.h = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = r2.i;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5.recycle();	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.i = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.j = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.l = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.k = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = r2.m;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5.recycle();	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        r5 = 0;
        r2.m = r5;	 Catch:{ Exception -> 0x0324, all -> 0x031c }
        if (r4 == 0) goto L_0x02cc;
    L_0x02ad:
        r6 = r4.length;
        r2 = 0;
        r5 = r2;
    L_0x02b0:
        if (r5 >= r6) goto L_0x02cc;
    L_0x02b2:
        r2 = r4[r5];
        r7 = r2.iterator();
    L_0x02b8:
        r2 = r7.hasNext();
        if (r2 == 0) goto L_0x02c8;
    L_0x02be:
        r2 = r7.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x02b8;
    L_0x02c8:
        r2 = r5 + 1;
        r5 = r2;
        goto L_0x02b0;
    L_0x02cc:
        r2 = r3;
        goto L_0x000a;
    L_0x02cf:
        r2 = move-exception;
        r3 = r10;
    L_0x02d1:
        com.mqunar.tools.log.QLog.e(r2);	 Catch:{ all -> 0x0320 }
        if (r3 == 0) goto L_0x02f5;
    L_0x02d6:
        r5 = r3.length;
        r2 = 0;
        r4 = r2;
    L_0x02d9:
        if (r4 >= r5) goto L_0x02f5;
    L_0x02db:
        r2 = r3[r4];
        r6 = r2.iterator();
    L_0x02e1:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x02f1;
    L_0x02e7:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x02e1;
    L_0x02f1:
        r2 = r4 + 1;
        r4 = r2;
        goto L_0x02d9;
    L_0x02f5:
        r2 = 0;
        goto L_0x000a;
    L_0x02f8:
        r2 = move-exception;
        r3 = r2;
    L_0x02fa:
        if (r10 == 0) goto L_0x031b;
    L_0x02fc:
        r5 = r10.length;
        r2 = 0;
        r4 = r2;
    L_0x02ff:
        if (r4 >= r5) goto L_0x031b;
    L_0x0301:
        r2 = r10[r4];
        r6 = r2.iterator();
    L_0x0307:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x0317;
    L_0x030d:
        r2 = r6.next();
        r2 = (android.graphics.Bitmap) r2;
        r2.recycle();
        goto L_0x0307;
    L_0x0317:
        r2 = r4 + 1;
        r4 = r2;
        goto L_0x02ff;
    L_0x031b:
        throw r3;
    L_0x031c:
        r2 = move-exception;
        r3 = r2;
        r10 = r4;
        goto L_0x02fa;
    L_0x0320:
        r2 = move-exception;
        r10 = r3;
        r3 = r2;
        goto L_0x02fa;
    L_0x0324:
        r2 = move-exception;
        r3 = r4;
        goto L_0x02d1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.idscan.algo.i.a(byte[], int, int, int, int, int, int):java.lang.String");
    }

    private static String a(List[] listArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int[] iArr = new int[784];
        int i = 1;
        int length = listArr.length;
        int i2 = 0;
        Object obj = null;
        while (i2 < length) {
            Object obj2;
            int i3;
            Iterator it = listArr[i2].iterator();
            while (true) {
                obj2 = obj;
                i3 = i;
                if (!it.hasNext()) {
                    break;
                }
                int i4;
                Bitmap bitmap = (Bitmap) it.next();
                if (obj2 != null) {
                    if (i3 == 6) {
                        for (i4 = 0; i4 < 39; i4++) {
                            stringBuilder.append("<");
                        }
                        i3 = 45;
                    }
                } else if (i3 < 45 && stringBuilder.indexOf("<<") != stringBuilder.lastIndexOf("<<")) {
                    i = stringBuilder.length();
                    for (i4 = 0; i4 < 44 - i; i4++) {
                        stringBuilder.append("<");
                    }
                    i3 = 45;
                }
                if (i3 < 73 || i3 > 88) {
                    bitmap.getPixels(iArr, 0, 28, 0, 0, 28, 28);
                    i = 0;
                    i4 = 0;
                    while (i4 < 784) {
                        int i5 = i + 1;
                        iArr[i] = Color.green(iArr[i4]);
                        i4++;
                        i = i5;
                    }
                    String str = (String) f.g.get(CNN.predict(iArr));
                    if (i3 == 1 && (str == "W" || str == "D" || str == "T")) {
                        obj2 = 1;
                    }
                    stringBuilder.append(str);
                } else {
                    stringBuilder.append("<");
                }
                obj = obj2;
                i = i3 + 1;
            }
            i2++;
            i = i3;
            obj = obj2;
        }
        return stringBuilder.toString();
    }
}
