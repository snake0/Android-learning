package org.apache.commons.io.output;

import java.io.File;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class FileWriterWithEncoding extends Writer {
    private final Writer out;

    public FileWriterWithEncoding(String str, String str2) {
        this(new File(str), str2, false);
    }

    public FileWriterWithEncoding(String str, String str2, boolean z) {
        this(new File(str), str2, z);
    }

    public FileWriterWithEncoding(String str, Charset charset) {
        this(new File(str), charset, false);
    }

    public FileWriterWithEncoding(String str, Charset charset, boolean z) {
        this(new File(str), charset, z);
    }

    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder) {
        this(new File(str), charsetEncoder, false);
    }

    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder, boolean z) {
        this(new File(str), charsetEncoder, z);
    }

    public FileWriterWithEncoding(File file, String str) {
        this(file, str, false);
    }

    public FileWriterWithEncoding(File file, String str, boolean z) {
        this.out = initWriter(file, str, z);
    }

    public FileWriterWithEncoding(File file, Charset charset) {
        this(file, charset, false);
    }

    public FileWriterWithEncoding(File file, Charset charset, boolean z) {
        this.out = initWriter(file, charset, z);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder) {
        this(file, charsetEncoder, false);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder, boolean z) {
        this.out = initWriter(file, charsetEncoder, z);
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0054  */
    private static java.io.Writer initWriter(java.io.File r4, java.lang.Object r5, boolean r6) {
        /*
        r2 = 0;
        if (r4 != 0) goto L_0x000b;
    L_0x0003:
        r0 = new java.lang.NullPointerException;
        r1 = "File is missing";
        r0.<init>(r1);
        throw r0;
    L_0x000b:
        if (r5 != 0) goto L_0x0015;
    L_0x000d:
        r0 = new java.lang.NullPointerException;
        r1 = "Encoding is missing";
        r0.<init>(r1);
        throw r0;
    L_0x0015:
        r3 = r4.exists();
        r1 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x005b, RuntimeException -> 0x0058 }
        r1.<init>(r4, r6);	 Catch:{ IOException -> 0x005b, RuntimeException -> 0x0058 }
        r0 = r5 instanceof java.nio.charset.Charset;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        if (r0 == 0) goto L_0x002a;
    L_0x0022:
        r0 = new java.io.OutputStreamWriter;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        r5 = (java.nio.charset.Charset) r5;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        r0.<init>(r1, r5);	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
    L_0x0029:
        return r0;
    L_0x002a:
        r0 = r5 instanceof java.nio.charset.CharsetEncoder;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        if (r0 == 0) goto L_0x0043;
    L_0x002e:
        r0 = new java.io.OutputStreamWriter;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        r5 = (java.nio.charset.CharsetEncoder) r5;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        r0.<init>(r1, r5);	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        goto L_0x0029;
    L_0x0036:
        r0 = move-exception;
    L_0x0037:
        org.apache.commons.io.IOUtils.closeQuietly(r2);
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        if (r3 != 0) goto L_0x0042;
    L_0x003f:
        org.apache.commons.io.FileUtils.deleteQuietly(r4);
    L_0x0042:
        throw r0;
    L_0x0043:
        r0 = new java.io.OutputStreamWriter;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        r5 = (java.lang.String) r5;	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        r0.<init>(r1, r5);	 Catch:{ IOException -> 0x0036, RuntimeException -> 0x004b }
        goto L_0x0029;
    L_0x004b:
        r0 = move-exception;
    L_0x004c:
        org.apache.commons.io.IOUtils.closeQuietly(r2);
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        if (r3 != 0) goto L_0x0057;
    L_0x0054:
        org.apache.commons.io.FileUtils.deleteQuietly(r4);
    L_0x0057:
        throw r0;
    L_0x0058:
        r0 = move-exception;
        r1 = r2;
        goto L_0x004c;
    L_0x005b:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0037;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.output.FileWriterWithEncoding.initWriter(java.io.File, java.lang.Object, boolean):java.io.Writer");
    }

    public void write(int i) {
        this.out.write(i);
    }

    public void write(char[] cArr) {
        this.out.write(cArr);
    }

    public void write(char[] cArr, int i, int i2) {
        this.out.write(cArr, i, i2);
    }

    public void write(String str) {
        this.out.write(str);
    }

    public void write(String str, int i, int i2) {
        this.out.write(str, i, i2);
    }

    public void flush() {
        this.out.flush();
    }

    public void close() {
        this.out.close();
    }
}
