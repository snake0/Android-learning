.class public Lcom/mqunar/network/TrustCA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RAW_GEO_CET:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDVDCCAjygAwIBAgIDAjRWMA0GCSqGSIb3DQEBBQUAMEIxCzAJBgNVBAYTAlVTMRYwFAYDVQQK\nEw1HZW9UcnVzdCBJbmMuMRswGQYDVQQDExJHZW9UcnVzdCBHbG9iYWwgQ0EwHhcNMDIwNTIxMDQw\nMDAwWhcNMjIwNTIxMDQwMDAwWjBCMQswCQYDVQQGEwJVUzEWMBQGA1UEChMNR2VvVHJ1c3QgSW5j\nLjEbMBkGA1UEAxMSR2VvVHJ1c3QgR2xvYmFsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEA2swYYzD99BcjGlZ+W988bDjkcbd4kdS8odhM+KhDtgPpTSEHCIjaWC9mOSm9BXiLnTjo\nBbdqfnGk5sRgprDvgOSJKA+eJdbtg/OtppHHmMlCGDUUna2YRpIuT8rxh0PBFpVXLVDviS2Aelet\n8u5fa9IAjbkU+BQVNdnARqN7csiRv8lVK83Qlz6cJmTM386DGXHKTubU1XupGc1V3sjs0l44U+Vc\nT4wt/lAjNvxm5suOpDkZALeVAjmRCw7+OC7RHQWa9k0+bw8HHa8sHo9gOeL6NlMTOdReJivbPagU\nvTLrGAMoUgRx5aszPeE4uwc2hGKceeoWMPRfwCvocWvk+QIDAQABo1MwUTAPBgNVHRMBAf8EBTAD\nAQH/MB0GA1UdDgQWBBTAephojYn7qwVkDBF9qn1luMrMTjAfBgNVHSMEGDAWgBTAephojYn7qwVk\nDBF9qn1luMrMTjANBgkqhkiG9w0BAQUFAAOCAQEANeMpauUvXVSOKVCUn5kaFOSPeCpilKInZ57Q\nzxpeR+nBsqTP3UEaBU6bS+5Kb1VSsyShNwrrZHYqLizz/Tt1kL/6cdjHPTfStQWVYrmm3ok9Nns4\nd0iXrKYgjy6myQzCsplFAMfOEVEiIuCl6rYVSAlk6l5PdPcFPseKUgzbFbS9bZvlxrFUaKnjaZC2\nmqUPuLk/IH2uSrW4nOQdtqvmlKXBx4Ot2/Unhw4EbNX/3aBd7YdStysVAq45pmp06drE57xNNB6p\nXE0zX5IJL4hmXXeXxx12E6nV5fEWCRE11azbJHFwLJhWC9kXtNHjUStedejV0NxPNO3CBWaAocvm\nMw==\n-----END CERTIFICATE-----"

.field private static a:Lcom/mqunar/network/TrustCA;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/net/ssl/X509TrustManager;

.field private d:Ljava/security/KeyStore;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/TrustCA;->b:Ljava/util/HashMap;

    .line 68
    :try_start_a
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/network/TrustCA;->d:Ljava/security/KeyStore;

    .line 69
    iget-object v0, p0, Lcom/mqunar/network/TrustCA;->d:Ljava/security/KeyStore;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 70
    const-string v0, "12306"

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAn\nBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4X\nDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNp\nbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3\nDQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb2\n9bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6\nD4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHle\ntne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDov\nLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Pt\nx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV\n23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQ\nog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/network/TrustCA;->addTrustCA(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    const-string v0, "qunar_geo"

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIDVDCCAjygAwIBAgIDAjRWMA0GCSqGSIb3DQEBBQUAMEIxCzAJBgNVBAYTAlVTMRYwFAYDVQQK\nEw1HZW9UcnVzdCBJbmMuMRswGQYDVQQDExJHZW9UcnVzdCBHbG9iYWwgQ0EwHhcNMDIwNTIxMDQw\nMDAwWhcNMjIwNTIxMDQwMDAwWjBCMQswCQYDVQQGEwJVUzEWMBQGA1UEChMNR2VvVHJ1c3QgSW5j\nLjEbMBkGA1UEAxMSR2VvVHJ1c3QgR2xvYmFsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEA2swYYzD99BcjGlZ+W988bDjkcbd4kdS8odhM+KhDtgPpTSEHCIjaWC9mOSm9BXiLnTjo\nBbdqfnGk5sRgprDvgOSJKA+eJdbtg/OtppHHmMlCGDUUna2YRpIuT8rxh0PBFpVXLVDviS2Aelet\n8u5fa9IAjbkU+BQVNdnARqN7csiRv8lVK83Qlz6cJmTM386DGXHKTubU1XupGc1V3sjs0l44U+Vc\nT4wt/lAjNvxm5suOpDkZALeVAjmRCw7+OC7RHQWa9k0+bw8HHa8sHo9gOeL6NlMTOdReJivbPagU\nvTLrGAMoUgRx5aszPeE4uwc2hGKceeoWMPRfwCvocWvk+QIDAQABo1MwUTAPBgNVHRMBAf8EBTAD\nAQH/MB0GA1UdDgQWBBTAephojYn7qwVkDBF9qn1luMrMTjAfBgNVHSMEGDAWgBTAephojYn7qwVk\nDBF9qn1luMrMTjANBgkqhkiG9w0BAQUFAAOCAQEANeMpauUvXVSOKVCUn5kaFOSPeCpilKInZ57Q\nzxpeR+nBsqTP3UEaBU6bS+5Kb1VSsyShNwrrZHYqLizz/Tt1kL/6cdjHPTfStQWVYrmm3ok9Nns4\nd0iXrKYgjy6myQzCsplFAMfOEVEiIuCl6rYVSAlk6l5PdPcFPseKUgzbFbS9bZvlxrFUaKnjaZC2\nmqUPuLk/IH2uSrW4nOQdtqvmlKXBx4Ot2/Unhw4EbNX/3aBd7YdStysVAq45pmp06drE57xNNB6p\nXE0zX5IJL4hmXXeXxx12E6nV5fEWCRE11azbJHFwLJhWC9kXtNHjUStedejV0NxPNO3CBWaAocvm\nMw==\n-----END CERTIFICATE-----"

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/network/TrustCA;->addTrustCA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_29} :catch_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_29} :catch_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_29} :catch_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_29} :catch_39

    .line 81
    :goto_29
    return-void

    .line 72
    :catch_2a
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_29

    .line 74
    :catch_2f
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_29

    .line 76
    :catch_34
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_29

    .line 78
    :catch_39
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29
.end method

.method private a(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 153
    .line 155
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_a} :catch_1a
    .catchall {:try_start_1 .. :try_end_a} :catchall_27

    .line 156
    :try_start_a
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_13} :catch_36
    .catchall {:try_start_a .. :try_end_13} :catchall_34

    move-result-object v0

    .line 162
    if-eqz v2, :cond_19

    .line 163
    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_30

    .line 168
    :cond_19
    :goto_19
    return-object v0

    .line 158
    :catch_1a
    move-exception v1

    move-object v2, v0

    .line 159
    :goto_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_34

    .line 162
    if-eqz v2, :cond_19

    .line 163
    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_19

    .line 165
    :catch_25
    move-exception v1

    goto :goto_19

    .line 161
    :catchall_27
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 162
    :goto_2a
    if-eqz v2, :cond_2f

    .line 163
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_32

    .line 166
    :cond_2f
    :goto_2f
    throw v0

    .line 165
    :catch_30
    move-exception v1

    goto :goto_19

    :catch_32
    move-exception v1

    goto :goto_2f

    .line 161
    :catchall_34
    move-exception v0

    goto :goto_2a

    .line 158
    :catch_36
    move-exception v1

    goto :goto_1c
.end method

.method private a()V
    .registers 6

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/mqunar/network/TrustCA;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    iget-object v4, p0, Lcom/mqunar/network/TrustCA;->d:Ljava/security/KeyStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v4, v1, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2f} :catch_30
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_2f} :catch_49

    goto :goto_12

    .line 135
    :catch_30
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 140
    :cond_34
    :goto_34
    return-void

    .line 130
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/mqunar/network/TrustCA;->d:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 131
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 132
    array-length v1, v0

    if-eqz v1, :cond_34

    .line 133
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/mqunar/network/TrustCA;->c:Ljavax/net/ssl/X509TrustManager;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_48} :catch_30
    .catch Ljava/security/KeyStoreException; {:try_start_35 .. :try_end_48} :catch_49

    goto :goto_34

    .line 137
    :catch_49
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_34
.end method

.method public static getInstance()Lcom/mqunar/network/TrustCA;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/mqunar/network/TrustCA;->a:Lcom/mqunar/network/TrustCA;

    if-nez v0, :cond_13

    .line 90
    const-class v1, Lcom/mqunar/network/TrustCA;

    monitor-enter v1

    .line 91
    :try_start_7
    sget-object v0, Lcom/mqunar/network/TrustCA;->a:Lcom/mqunar/network/TrustCA;

    if-nez v0, :cond_12

    .line 92
    new-instance v0, Lcom/mqunar/network/TrustCA;

    invoke-direct {v0}, Lcom/mqunar/network/TrustCA;-><init>()V

    sput-object v0, Lcom/mqunar/network/TrustCA;->a:Lcom/mqunar/network/TrustCA;

    .line 94
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 96
    :cond_13
    sget-object v0, Lcom/mqunar/network/TrustCA;->a:Lcom/mqunar/network/TrustCA;

    return-object v0

    .line 94
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addTrustCA(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 108
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v1, p0, Lcom/mqunar/network/TrustCA;->d:Ljava/security/KeyStore;

    if-nez v1, :cond_a

    .line 121
    :cond_9
    :goto_9
    return v0

    .line 112
    :cond_a
    invoke-direct {p0, p2}, Lcom/mqunar/network/TrustCA;->a(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_9

    .line 114
    iget-object v2, p0, Lcom/mqunar/network/TrustCA;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/mqunar/network/TrustCA;->a()V

    .line 117
    iget-object v1, p0, Lcom/mqunar/network/TrustCA;->c:Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_9

    .line 118
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mqunar/network/TrustCA;->c:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "trust ca list is null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_c
    iget-object v0, p0, Lcom/mqunar/network/TrustCA;->c:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 150
    return-void
.end method
