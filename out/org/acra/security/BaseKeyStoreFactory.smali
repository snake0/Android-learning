.class public abstract Lorg/acra/security/BaseKeyStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/security/c;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/acra/security/BaseKeyStoreFactory;->a:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Ljava/io/InputStream;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/security/KeyStore;
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lorg/acra/security/BaseKeyStoreFactory;->a(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_49

    .line 89
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    :try_start_c
    invoke-virtual {p0}, Lorg/acra/security/BaseKeyStoreFactory;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 92
    sget-object v3, Lorg/acra/security/BaseKeyStoreFactory$1;->a:[I

    invoke-virtual {p0}, Lorg/acra/security/BaseKeyStoreFactory;->b()Lorg/acra/security/BaseKeyStoreFactory$Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/security/BaseKeyStoreFactory$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_20
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_20} :catch_3c
    .catch Ljava/security/KeyStoreException; {:try_start_c .. :try_end_20} :catch_53
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_20} :catch_61
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_6f
    .catchall {:try_start_c .. :try_end_20} :catchall_7d

    packed-switch v3, :pswitch_data_82

    .line 112
    :goto_23
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 115
    :goto_26
    return-object v0

    .line 94
    :pswitch_27
    :try_start_27
    iget-object v3, p0, Lorg/acra/security/BaseKeyStoreFactory;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 95
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 96
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 97
    const-string v4, "ca"

    invoke-virtual {v0, v4, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_27 .. :try_end_3b} :catch_3c
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_3b} :catch_53
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_3b} :catch_61
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_6f
    .catchall {:try_start_27 .. :try_end_3b} :catchall_7d

    goto :goto_23

    .line 103
    :catch_3c
    move-exception v0

    .line 104
    :try_start_3d
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Could not load certificate"

    invoke-interface {v3, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_7d

    .line 112
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    :cond_49
    :goto_49
    move-object v0, v1

    .line 115
    goto :goto_26

    .line 100
    :pswitch_4b
    :try_start_4b
    invoke-virtual {p0}, Lorg/acra/security/BaseKeyStoreFactory;->c()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_52
    .catch Ljava/security/cert/CertificateException; {:try_start_4b .. :try_end_52} :catch_3c
    .catch Ljava/security/KeyStoreException; {:try_start_4b .. :try_end_52} :catch_53
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4b .. :try_end_52} :catch_61
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_52} :catch_6f
    .catchall {:try_start_4b .. :try_end_52} :catchall_7d

    goto :goto_23

    .line 105
    :catch_53
    move-exception v0

    .line 106
    :try_start_54
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Could not load keystore"

    invoke-interface {v3, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_7d

    .line 112
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_49

    .line 107
    :catch_61
    move-exception v0

    .line 108
    :try_start_62
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Could not load keystore"

    invoke-interface {v3, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_7d

    .line 112
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_49

    .line 109
    :catch_6f
    move-exception v0

    .line 110
    :try_start_70
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Could not load keystore"

    invoke-interface {v3, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_7d

    .line 112
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_49

    :catchall_7d
    move-exception v0

    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 92
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_27
        :pswitch_4b
    .end packed-switch
.end method

.method protected b()Lorg/acra/security/BaseKeyStoreFactory$Type;
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lorg/acra/security/BaseKeyStoreFactory$Type;->CERTIFICATE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    return-object v0
.end method

.method protected c()[C
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method
