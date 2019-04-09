package com.mqunar.network;

import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map.Entry;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class TrustCA {
    public static final String RAW_GEO_CET = "-----BEGIN CERTIFICATE-----\nMIIDVDCCAjygAwIBAgIDAjRWMA0GCSqGSIb3DQEBBQUAMEIxCzAJBgNVBAYTAlVTMRYwFAYDVQQK\nEw1HZW9UcnVzdCBJbmMuMRswGQYDVQQDExJHZW9UcnVzdCBHbG9iYWwgQ0EwHhcNMDIwNTIxMDQw\nMDAwWhcNMjIwNTIxMDQwMDAwWjBCMQswCQYDVQQGEwJVUzEWMBQGA1UEChMNR2VvVHJ1c3QgSW5j\nLjEbMBkGA1UEAxMSR2VvVHJ1c3QgR2xvYmFsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEA2swYYzD99BcjGlZ+W988bDjkcbd4kdS8odhM+KhDtgPpTSEHCIjaWC9mOSm9BXiLnTjo\nBbdqfnGk5sRgprDvgOSJKA+eJdbtg/OtppHHmMlCGDUUna2YRpIuT8rxh0PBFpVXLVDviS2Aelet\n8u5fa9IAjbkU+BQVNdnARqN7csiRv8lVK83Qlz6cJmTM386DGXHKTubU1XupGc1V3sjs0l44U+Vc\nT4wt/lAjNvxm5suOpDkZALeVAjmRCw7+OC7RHQWa9k0+bw8HHa8sHo9gOeL6NlMTOdReJivbPagU\nvTLrGAMoUgRx5aszPeE4uwc2hGKceeoWMPRfwCvocWvk+QIDAQABo1MwUTAPBgNVHRMBAf8EBTAD\nAQH/MB0GA1UdDgQWBBTAephojYn7qwVkDBF9qn1luMrMTjAfBgNVHSMEGDAWgBTAephojYn7qwVk\nDBF9qn1luMrMTjANBgkqhkiG9w0BAQUFAAOCAQEANeMpauUvXVSOKVCUn5kaFOSPeCpilKInZ57Q\nzxpeR+nBsqTP3UEaBU6bS+5Kb1VSsyShNwrrZHYqLizz/Tt1kL/6cdjHPTfStQWVYrmm3ok9Nns4\nd0iXrKYgjy6myQzCsplFAMfOEVEiIuCl6rYVSAlk6l5PdPcFPseKUgzbFbS9bZvlxrFUaKnjaZC2\nmqUPuLk/IH2uSrW4nOQdtqvmlKXBx4Ot2/Unhw4EbNX/3aBd7YdStysVAq45pmp06drE57xNNB6p\nXE0zX5IJL4hmXXeXxx12E6nV5fEWCRE11azbJHFwLJhWC9kXtNHjUStedejV0NxPNO3CBWaAocvm\nMw==\n-----END CERTIFICATE-----";
    private static TrustCA a;
    private HashMap<String, Certificate> b = new HashMap();
    private X509TrustManager c;
    private KeyStore d;

    private TrustCA() {
        try {
            this.d = KeyStore.getInstance(KeyStore.getDefaultType());
            this.d.load(null, null);
            addTrustCA("12306", "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAn\nBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4X\nDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNp\nbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3\nDQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb2\n9bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6\nD4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHle\ntne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDov\nLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Pt\nx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV\n23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQ\nog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----");
            addTrustCA("qunar_geo", RAW_GEO_CET);
        } catch (KeyStoreException e) {
            e.printStackTrace();
        } catch (CertificateException e2) {
            e2.printStackTrace();
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public static TrustCA getInstance() {
        if (a == null) {
            synchronized (TrustCA.class) {
                if (a == null) {
                    a = new TrustCA();
                }
            }
        }
        return a;
    }

    public boolean addTrustCA(String str, String str2) {
        if (str == null || str2 == null || this.d == null) {
            return false;
        }
        Certificate a = a(str2);
        if (a == null) {
            return false;
        }
        this.b.put(str, a);
        a();
        if (this.c != null) {
            return true;
        }
        return false;
    }

    private void a() {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            for (Entry entry : this.b.entrySet()) {
                this.d.setCertificateEntry((String) entry.getKey(), (Certificate) entry.getValue());
            }
            instance.init(this.d);
            TrustManager[] trustManagers = instance.getTrustManagers();
            if (trustManagers.length != 0) {
                this.c = (X509TrustManager) trustManagers[0];
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (KeyStoreException e2) {
            e2.printStackTrace();
        }
    }

    /* Access modifiers changed, original: protected */
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        if (this.c == null) {
            throw new CertificateException("trust ca list is null");
        }
        this.c.checkServerTrusted(x509CertificateArr, str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x002c A:{SYNTHETIC, Splitter:B:20:0x002c} */
    private java.security.cert.Certificate a(java.lang.String r4) {
        /*
        r3 = this;
        r0 = 0;
        r2 = new java.io.ByteArrayInputStream;	 Catch:{ CertificateException -> 0x001a, all -> 0x0027 }
        r1 = r4.getBytes();	 Catch:{ CertificateException -> 0x001a, all -> 0x0027 }
        r2.<init>(r1);	 Catch:{ CertificateException -> 0x001a, all -> 0x0027 }
        r1 = "X.509";
        r1 = java.security.cert.CertificateFactory.getInstance(r1);	 Catch:{ CertificateException -> 0x0036 }
        r0 = r1.generateCertificate(r2);	 Catch:{ CertificateException -> 0x0036 }
        if (r2 == 0) goto L_0x0019;
    L_0x0016:
        r2.close();	 Catch:{ Throwable -> 0x0030 }
    L_0x0019:
        return r0;
    L_0x001a:
        r1 = move-exception;
        r2 = r0;
    L_0x001c:
        r1.printStackTrace();	 Catch:{ all -> 0x0034 }
        if (r2 == 0) goto L_0x0019;
    L_0x0021:
        r2.close();	 Catch:{ Throwable -> 0x0025 }
        goto L_0x0019;
    L_0x0025:
        r1 = move-exception;
        goto L_0x0019;
    L_0x0027:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x002a:
        if (r2 == 0) goto L_0x002f;
    L_0x002c:
        r2.close();	 Catch:{ Throwable -> 0x0032 }
    L_0x002f:
        throw r0;
    L_0x0030:
        r1 = move-exception;
        goto L_0x0019;
    L_0x0032:
        r1 = move-exception;
        goto L_0x002f;
    L_0x0034:
        r0 = move-exception;
        goto L_0x002a;
    L_0x0036:
        r1 = move-exception;
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.network.TrustCA.a(java.lang.String):java.security.cert.Certificate");
    }
}
