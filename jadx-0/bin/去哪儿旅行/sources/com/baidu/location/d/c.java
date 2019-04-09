package com.baidu.location.d;

import java.io.File;
import java.io.RandomAccessFile;

public class c {
    static c c;
    String a = "firll.dat";
    int b = 3164;
    int d = 0;
    int e = 20;
    int f = 40;
    int g = 60;
    int h = 80;
    int i = 100;

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0058 A:{SYNTHETIC, Splitter:B:25:0x0058} */
    private long a(int r8) {
        /*
        r7 = this;
        r0 = -1;
        r2 = com.baidu.location.d.j.h();
        if (r2 != 0) goto L_0x0009;
    L_0x0008:
        return r0;
    L_0x0009:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r2 = r3.append(r2);
        r3 = java.io.File.separator;
        r2 = r2.append(r3);
        r3 = r7.a;
        r2 = r2.append(r3);
        r3 = r2.toString();
        r2 = 0;
        r4 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x004b, all -> 0x0054 }
        r5 = "rw";
        r4.<init>(r3, r5);	 Catch:{ Exception -> 0x004b, all -> 0x0054 }
        r2 = (long) r8;
        r4.seek(r2);	 Catch:{ Exception -> 0x0062, all -> 0x0060 }
        r5 = r4.readInt();	 Catch:{ Exception -> 0x0062, all -> 0x0060 }
        r2 = r4.readLong();	 Catch:{ Exception -> 0x0062, all -> 0x0060 }
        r6 = r4.readInt();	 Catch:{ Exception -> 0x0062, all -> 0x0060 }
        if (r5 != r6) goto L_0x0043;
    L_0x003c:
        if (r4 == 0) goto L_0x0041;
    L_0x003e:
        r4.close();	 Catch:{ IOException -> 0x005c }
    L_0x0041:
        r0 = r2;
        goto L_0x0008;
    L_0x0043:
        if (r4 == 0) goto L_0x0008;
    L_0x0045:
        r4.close();	 Catch:{ IOException -> 0x0049 }
        goto L_0x0008;
    L_0x0049:
        r2 = move-exception;
        goto L_0x0008;
    L_0x004b:
        r3 = move-exception;
    L_0x004c:
        if (r2 == 0) goto L_0x0008;
    L_0x004e:
        r2.close();	 Catch:{ IOException -> 0x0052 }
        goto L_0x0008;
    L_0x0052:
        r2 = move-exception;
        goto L_0x0008;
    L_0x0054:
        r0 = move-exception;
        r4 = r2;
    L_0x0056:
        if (r4 == 0) goto L_0x005b;
    L_0x0058:
        r4.close();	 Catch:{ IOException -> 0x005e }
    L_0x005b:
        throw r0;
    L_0x005c:
        r0 = move-exception;
        goto L_0x0041;
    L_0x005e:
        r1 = move-exception;
        goto L_0x005b;
    L_0x0060:
        r0 = move-exception;
        goto L_0x0056;
    L_0x0062:
        r2 = move-exception;
        r2 = r4;
        goto L_0x004c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.d.c.a(int):long");
    }

    public static c a() {
        if (c == null) {
            c = new c();
        }
        return c;
    }

    private void a(int i, long j) {
        String h = j.h();
        if (h != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(h + File.separator + this.a, "rw");
                randomAccessFile.seek((long) i);
                randomAccessFile.writeInt(this.b);
                randomAccessFile.writeLong(j);
                randomAccessFile.writeInt(this.b);
                randomAccessFile.close();
            } catch (Exception e) {
            }
        }
    }

    public void a(long j) {
        a(this.d, j);
    }

    public long b() {
        return a(this.d);
    }
}
