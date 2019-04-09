package com.taobao.android.runtime;

import android.support.annotation.NonNull;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;

public class OatFile extends b {
    private static final byte[] c = new byte[]{Byte.MAX_VALUE, (byte) 69, (byte) 76, (byte) 70};
    private static final byte[] d = new byte[]{(byte) 111, (byte) 97, (byte) 116, (byte) 10};
    private final boolean e;

    public class InvalidOatFileException extends RuntimeException {
        public InvalidOatFileException(String str) {
            super(str);
        }
    }

    public class NotAnOatFileException extends RuntimeException {
    }

    public OatFile(@NonNull byte[] bArr, long j) {
        super(bArr);
        if (bArr.length < 52) {
            throw new NotAnOatFileException();
        }
        int c;
        int b;
        int b2;
        a(bArr);
        if (bArr[4] == (byte) 1) {
            this.e = false;
        } else if (bArr[4] == (byte) 2) {
            this.e = true;
        } else {
            throw new InvalidOatFileException(String.format("Invalid word-size value: %x", new Object[]{Byte.valueOf(bArr[5])}));
        }
        if (this.e) {
            c = c(40);
            b = b(58);
            b2 = b(60);
        } else {
            c = a(32);
            b = b(46);
            b2 = b(48);
        }
        if (((long) ((b2 * b) + c)) > j) {
            throw new InvalidOatFileException("The ELF section headers extend past the end of the file");
        }
    }

    private static void a(byte[] bArr) {
        for (int i = 0; i < c.length; i++) {
            if (bArr[i] != c[i]) {
                throw new NotAnOatFileException();
            }
        }
    }

    public static OatFile a(@NonNull File file) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            if (bufferedInputStream.markSupported()) {
                bufferedInputStream.mark(4);
                byte[] bArr = new byte[4];
                try {
                    bufferedInputStream.read(bArr);
                    bufferedInputStream.reset();
                    a(bArr);
                    bufferedInputStream.reset();
                    bArr = new byte[64];
                    bufferedInputStream.read(bArr);
                    OatFile oatFile = new OatFile(bArr, file.length());
                    return oatFile;
                } catch (EOFException e) {
                    throw new NotAnOatFileException();
                } catch (Throwable th) {
                    bufferedInputStream.reset();
                }
            } else {
                throw new IllegalArgumentException("InputStream must support mark");
            }
        } finally {
            bufferedInputStream.close();
        }
    }
}
