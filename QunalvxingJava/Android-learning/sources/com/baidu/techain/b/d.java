package com.baidu.techain.b;

import android.content.pm.Signature;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

public final class d {
    private static Certificate[] a(JarFile jarFile, JarEntry jarEntry, byte[] bArr) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(jarFile.getInputStream(jarEntry));
            do {
            } while (bufferedInputStream.read(bArr, 0, 8192) != -1);
            bufferedInputStream.close();
            if (jarEntry != null) {
                return jarEntry.getCertificates();
            }
            return null;
        } catch (IOException e) {
            e.a();
            return null;
        } catch (RuntimeException e2) {
            e.a();
            return null;
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    public static PublicKey a(Signature signature) {
        CertificateFactory instance = CertificateFactory.getInstance("X.509");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signature.toByteArray());
        Certificate generateCertificate = instance.generateCertificate(byteArrayInputStream);
        try {
            byteArrayInputStream.close();
        } catch (Throwable th) {
        }
        return generateCertificate.getPublicKey();
    }

    public static PublicKey a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            byte[] bArr = new byte[8192];
            JarFile jarFile = new JarFile(str);
            Enumeration entries = jarFile.entries();
            Certificate[] certificateArr = null;
            while (entries.hasMoreElements()) {
                JarEntry jarEntry = (JarEntry) entries.nextElement();
                if (!(jarEntry.isDirectory() || jarEntry.getName().startsWith("META-INF/"))) {
                    Certificate[] a = a(jarFile, jarEntry, bArr);
                    if (a == null) {
                        jarFile.close();
                        return null;
                    } else if (certificateArr == null) {
                        certificateArr = a;
                    } else {
                        int i = 0;
                        while (i < certificateArr.length) {
                            Object obj;
                            int i2 = 0;
                            while (i2 < a.length) {
                                if (certificateArr[i] != null && certificateArr[i].equals(a[i2])) {
                                    obj = 1;
                                    break;
                                }
                                i2++;
                            }
                            obj = null;
                            if (obj == null || certificateArr.length != a.length) {
                                jarFile.close();
                                return null;
                            }
                            i++;
                        }
                        continue;
                    }
                }
            }
            jarFile.close();
            return (certificateArr == null || certificateArr.length <= 0) ? null : certificateArr[0].getPublicKey();
        } catch (Throwable th) {
            return null;
        }
    }
}
