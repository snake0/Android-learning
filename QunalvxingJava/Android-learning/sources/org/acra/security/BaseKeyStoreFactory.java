package org.acra.security;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import org.acra.ACRA;
import org.acra.util.g;

public abstract class BaseKeyStoreFactory implements c {
    private final String a;

    public enum Type {
        CERTIFICATE,
        KEYSTORE
    }

    public abstract InputStream a(@NonNull Context context);

    public BaseKeyStoreFactory(String str) {
        this.a = str;
    }

    /* Access modifiers changed, original: protected */
    public String a() {
        return KeyStore.getDefaultType();
    }

    /* Access modifiers changed, original: protected */
    public Type b() {
        return Type.CERTIFICATE;
    }

    /* Access modifiers changed, original: protected */
    public char[] c() {
        return null;
    }

    @Nullable
    public final KeyStore b(@NonNull Context context) {
        InputStream a = a(context);
        if (a != null) {
            Closeable bufferedInputStream = new BufferedInputStream(a);
            try {
                KeyStore instance = KeyStore.getInstance(a());
                switch (b()) {
                    case CERTIFICATE:
                        Certificate generateCertificate = CertificateFactory.getInstance(this.a).generateCertificate(bufferedInputStream);
                        instance.load(null, null);
                        instance.setCertificateEntry("ca", generateCertificate);
                        break;
                    case KEYSTORE:
                        instance.load(bufferedInputStream, c());
                        break;
                }
                g.a(bufferedInputStream);
                return instance;
            } catch (CertificateException e) {
                ACRA.f.c(ACRA.e, "Could not load certificate", e);
                g.a(bufferedInputStream);
            } catch (KeyStoreException e2) {
                ACRA.f.c(ACRA.e, "Could not load keystore", e2);
                g.a(bufferedInputStream);
            } catch (NoSuchAlgorithmException e3) {
                ACRA.f.c(ACRA.e, "Could not load keystore", e3);
                g.a(bufferedInputStream);
            } catch (IOException e4) {
                ACRA.f.c(ACRA.e, "Could not load keystore", e4);
                g.a(bufferedInputStream);
            } catch (Throwable th) {
                g.a(bufferedInputStream);
                throw th;
            }
        }
        return null;
    }
}
