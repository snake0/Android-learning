package com.mqunar.qapm.utils;

import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.FileOutputStream;
import java.util.zip.GZIPOutputStream;

public class QAPMCompressUtils {
    public static void doCompressString(String str, String str2) {
        Exception e;
        Throwable th;
        Closeable closeable = null;
        Closeable byteArrayInputStream;
        Closeable gZIPOutputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
            try {
                gZIPOutputStream = new GZIPOutputStream(new FileOutputStream(str2));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = byteArrayInputStream.read(bArr);
                        if (read > 0) {
                            gZIPOutputStream.write(bArr, 0, read);
                        } else {
                            gZIPOutputStream.finish();
                            IOUtils.safeClose(byteArrayInputStream);
                            IOUtils.safeClose(gZIPOutputStream);
                            return;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    closeable = byteArrayInputStream;
                    try {
                        e.printStackTrace();
                        IOUtils.safeClose(closeable);
                        IOUtils.safeClose(gZIPOutputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayInputStream = closeable;
                        closeable = gZIPOutputStream;
                        IOUtils.safeClose(byteArrayInputStream);
                        IOUtils.safeClose(closeable);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    closeable = gZIPOutputStream;
                    IOUtils.safeClose(byteArrayInputStream);
                    IOUtils.safeClose(closeable);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                gZIPOutputStream = null;
                closeable = byteArrayInputStream;
                e.printStackTrace();
                IOUtils.safeClose(closeable);
                IOUtils.safeClose(gZIPOutputStream);
            } catch (Throwable th4) {
                th = th4;
                IOUtils.safeClose(byteArrayInputStream);
                IOUtils.safeClose(closeable);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            gZIPOutputStream = null;
            e.printStackTrace();
            IOUtils.safeClose(closeable);
            IOUtils.safeClose(gZIPOutputStream);
        } catch (Throwable th5) {
            th = th5;
            byteArrayInputStream = null;
            IOUtils.safeClose(byteArrayInputStream);
            IOUtils.safeClose(closeable);
            throw th;
        }
    }
}
