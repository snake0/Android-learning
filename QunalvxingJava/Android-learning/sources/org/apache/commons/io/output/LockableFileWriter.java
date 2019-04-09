package org.apache.commons.io.output;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;

public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    public LockableFileWriter(String str) {
        this(str, false, null);
    }

    public LockableFileWriter(String str, boolean z) {
        this(str, z, null);
    }

    public LockableFileWriter(String str, boolean z, String str2) {
        this(new File(str), z, str2);
    }

    public LockableFileWriter(File file) {
        this(file, false, null);
    }

    public LockableFileWriter(File file, boolean z) {
        this(file, z, null);
    }

    public LockableFileWriter(File file, boolean z, String str) {
        this(file, Charset.defaultCharset(), z, str);
    }

    public LockableFileWriter(File file, Charset charset) {
        this(file, charset, false, null);
    }

    public LockableFileWriter(File file, String str) {
        this(file, str, false, null);
    }

    public LockableFileWriter(File file, Charset charset, boolean z, String str) {
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (absoluteFile.isDirectory()) {
            throw new IOException("File specified is a directory");
        }
        if (str == null) {
            str = System.getProperty("java.io.tmpdir");
        }
        File file2 = new File(str);
        FileUtils.forceMkdir(file2);
        testLockDir(file2);
        this.lockFile = new File(file2, absoluteFile.getName() + LCK);
        createLock();
        this.out = initWriter(absoluteFile, charset, z);
    }

    public LockableFileWriter(File file, String str, boolean z, String str2) {
        this(file, Charsets.toCharset(str), z, str2);
    }

    private void testLockDir(File file) {
        if (!file.exists()) {
            throw new IOException("Could not find lockDir: " + file.getAbsolutePath());
        } else if (!file.canWrite()) {
            throw new IOException("Could not write to lockDir: " + file.getAbsolutePath());
        }
    }

    private void createLock() {
        synchronized (LockableFileWriter.class) {
            if (this.lockFile.createNewFile()) {
                this.lockFile.deleteOnExit();
            } else {
                throw new IOException("Can't write file, lock " + this.lockFile.getAbsolutePath() + " exists");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003a  */
    private java.io.Writer initWriter(java.io.File r6, java.nio.charset.Charset r7, boolean r8) {
        /*
        r5 = this;
        r2 = 0;
        r3 = r6.exists();
        r1 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0018, RuntimeException -> 0x002b }
        r0 = r6.getAbsolutePath();	 Catch:{ IOException -> 0x0018, RuntimeException -> 0x002b }
        r1.<init>(r0, r8);	 Catch:{ IOException -> 0x0018, RuntimeException -> 0x002b }
        r0 = new java.io.OutputStreamWriter;	 Catch:{ IOException -> 0x0040, RuntimeException -> 0x003e }
        r4 = org.apache.commons.io.Charsets.toCharset(r7);	 Catch:{ IOException -> 0x0040, RuntimeException -> 0x003e }
        r0.<init>(r1, r4);	 Catch:{ IOException -> 0x0040, RuntimeException -> 0x003e }
        return r0;
    L_0x0018:
        r0 = move-exception;
        r1 = r2;
    L_0x001a:
        org.apache.commons.io.IOUtils.closeQuietly(r2);
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        r1 = r5.lockFile;
        org.apache.commons.io.FileUtils.deleteQuietly(r1);
        if (r3 != 0) goto L_0x002a;
    L_0x0027:
        org.apache.commons.io.FileUtils.deleteQuietly(r6);
    L_0x002a:
        throw r0;
    L_0x002b:
        r0 = move-exception;
        r1 = r2;
    L_0x002d:
        org.apache.commons.io.IOUtils.closeQuietly(r2);
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        r1 = r5.lockFile;
        org.apache.commons.io.FileUtils.deleteQuietly(r1);
        if (r3 != 0) goto L_0x003d;
    L_0x003a:
        org.apache.commons.io.FileUtils.deleteQuietly(r6);
    L_0x003d:
        throw r0;
    L_0x003e:
        r0 = move-exception;
        goto L_0x002d;
    L_0x0040:
        r0 = move-exception;
        goto L_0x001a;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.output.LockableFileWriter.initWriter(java.io.File, java.nio.charset.Charset, boolean):java.io.Writer");
    }

    public void close() {
        try {
            this.out.close();
        } finally {
            this.lockFile.delete();
        }
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
}
