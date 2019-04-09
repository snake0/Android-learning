.class public final Lorg/acra/security/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Ljava/security/KeyStore;
    .registers 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->keyStoreFactoryClass()Ljava/lang/Class;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/security/c;

    invoke-interface {v0, p0}, Lorg/acra/security/c;->b(Landroid/content/Context;)Ljava/security/KeyStore;
    :try_end_e
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_e} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_e} :catch_35

    move-result-object v0

    .line 59
    :goto_f
    if-nez v0, :cond_28

    .line 61
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->resCertificate()I

    move-result v1

    .line 62
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->certificatePath()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->certificateType()Ljava/lang/String;

    move-result-object v3

    .line 64
    if-eqz v1, :cond_41

    .line 65
    new-instance v0, Lorg/acra/security/f;

    invoke-direct {v0, v3, v1}, Lorg/acra/security/f;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lorg/acra/security/f;->b(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    .line 74
    :cond_28
    :goto_28
    return-object v0

    .line 54
    :catch_29
    move-exception v0

    .line 55
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v4, "Could not get keystore from factory"

    invoke-interface {v2, v3, v4, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 58
    goto :goto_f

    .line 56
    :catch_35
    move-exception v0

    .line 57
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v4, "Could not get keystore from factory"

    invoke-interface {v2, v3, v4, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_f

    .line 66
    :cond_41
    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 67
    const-string v0, "asset://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 68
    new-instance v0, Lorg/acra/security/a;

    const-string v1, "asset://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/acra/security/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/acra/security/a;->b(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_28

    .line 70
    :cond_65
    new-instance v0, Lorg/acra/security/b;

    invoke-direct {v0, v3, v2}, Lorg/acra/security/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/acra/security/b;->b(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_28
.end method
