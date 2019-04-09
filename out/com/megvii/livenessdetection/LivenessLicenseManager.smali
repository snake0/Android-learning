.class public Lcom/megvii/livenessdetection/LivenessLicenseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/megvii/licensemanager/ILicenseManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/megvii/livenessdeteciton/obf/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    :try_start_0
    const-string v0, "livenessdetection_v2.4.2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 128
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_d

    .line 27
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "mContext cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_d
    iput-object p1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/c;->a(Landroid/content/Context;)Lcom/megvii/livenessdeteciton/obf/c;

    move-result-object v0

    const-string v1, "livenessdetection"

    const-string v2, "v2.4.2"

    invoke-virtual {v0, v1, v2}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/e;

    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/megvii/livenessdeteciton/obf/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    .line 32
    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method private native nativeGenAuthMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public checkCachedLicense()J
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 93
    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "a01625815f3428cb69100cc5d613fa7d"

    invoke-virtual {v2, v3}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v5, "bc8f6a70d138545889109d126886bd98"

    invoke-virtual {v4, v5}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 101
    :cond_1e
    :goto_1e
    return-wide v0

    .line 98
    :cond_1f
    :try_start_1f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_30

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1e

    move-wide v0, v2

    goto :goto_1e

    .line 101
    :catch_30
    move-exception v2

    goto :goto_1e
.end method

.method public getContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    .line 37
    invoke-static {}, Lcom/megvii/livenessdeteciton/obf/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "809bd36cf78612fd1f11b739c382bfac"

    iget-object v4, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/megvii/livenessdeteciton/obf/b;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "37dbd151eb3ca24477bc27cf0febcbe3"

    invoke-virtual {v2, v3, v1}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v2, "cb072839e1e240a23baae123ca6cf165"

    invoke-virtual {v1, v2}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    .line 1111
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1112
    if-eqz v0, :cond_7f

    .line 1114
    const-string v0, "false"

    iget-object v6, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v8, "49668163590f816aaf863df014568115"

    invoke-virtual {v6, v8}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 1115
    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v6, "8cd0604ba33e2ba7f38a56f0aec08a54"

    invoke-virtual {v0, v6}, Lcom/megvii/livenessdeteciton/obf/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_7f

    .line 1117
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1120
    :cond_7f
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/megvii/livenessdetection/LivenessLicenseManager;->nativeGenAuthMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :try_start_89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "auth"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v2, "seed"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_9f} :catch_da

    move-result-object v3

    .line 51
    :try_start_a0
    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v4, "5f389fef5fd41c84a33a91c6574cbf51"

    invoke-virtual {v1, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ab} :catch_d7
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_ab} :catch_da

    move-result v1

    .line 55
    :goto_ac
    :try_start_ac
    iget-object v4, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v5, "5f389fef5fd41c84a33a91c6574cbf51"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v4, "b62f7aea9613b98976498a9ecabe537b"

    invoke-virtual {v1, v4, v3}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 58
    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "cb072839e1e240a23baae123ca6cf165"

    invoke-virtual {v1, v3, v2}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_d6} :catch_da

    .line 63
    :cond_d6
    :goto_d6
    return-object v0

    .line 53
    :catch_d7
    move-exception v1

    const/4 v1, 0x0

    goto :goto_ac

    .line 61
    :catch_da
    move-exception v0

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    const/4 v0, 0x0

    goto :goto_d6
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLicense(Ljava/lang/String;)J
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    .line 86
    :cond_f
    :goto_f
    return-wide v0

    .line 74
    :cond_10
    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v1, "b62f7aea9613b98976498a9ecabe537b"

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v1, "cb072839e1e240a23baae123ca6cf165"

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    :cond_2c
    move-wide v0, v2

    .line 76
    goto :goto_f

    .line 77
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v4, "cb072839e1e240a23baae123ca6cf165"

    invoke-virtual {v1, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v4, "b62f7aea9613b98976498a9ecabe537b"

    invoke-virtual {v1, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->a:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/megvii/livenessdetection/LivenessLicenseManager;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 80
    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 81
    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "a01625815f3428cb69100cc5d613fa7d"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "e2380b201325a8f252636350338aeae8"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v6, "b62f7aea9613b98976498a9ecabe537b"

    invoke-virtual {v5, v6}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/megvii/livenessdetection/LivenessLicenseManager;->b:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "bc8f6a70d138545889109d126886bd98"

    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method
