.class public Lcom/megvii/livenessdeteciton/obf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[F

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/megvii/livenessdeteciton/obf/b;->a:[F

    .line 2011
    iput v1, p0, Lcom/megvii/livenessdeteciton/obf/b;->b:I

    .line 2012
    iput-boolean v1, p0, Lcom/megvii/livenessdeteciton/obf/b;->c:Z

    return-void
.end method

.method public static a(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "242 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8

    .prologue
    .line 27
    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    array-length v3, v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_3a

    aget-byte v4, v1, v0

    .line 1040
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    .line 1042
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1044
    :cond_2b
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_28

    .line 31
    :catch_34
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 34
    const/4 v0, 0x0

    :goto_39
    return-object v0

    .line 1048
    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_41} :catch_34

    move-result-object v0

    goto :goto_39
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    :try_start_5
    const-string v1, "version"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string v1, "release"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "arch"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_37

    .line 70
    :goto_36
    return-object v0

    :catch_37
    move-exception v0

    const/4 v0, 0x0

    goto :goto_36
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 74
    if-eqz p0, :cond_5

    .line 76
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 81
    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 84
    .line 85
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    const/16 v1, 0x400

    new-array v3, v1, [B

    .line 89
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_35
    .catchall {:try_start_a .. :try_end_f} :catchall_2b

    .line 90
    :goto_f
    :try_start_f
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_20

    .line 91
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_1b
    .catchall {:try_start_f .. :try_end_1a} :catchall_33

    goto :goto_f

    .line 97
    :catch_1b
    move-exception v2

    :goto_1c
    invoke-static {v1}, Lcom/megvii/livenessdeteciton/obf/b;->a(Ljava/io/InputStream;)V

    .line 100
    :goto_1f
    return-object v0

    .line 93
    :cond_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_1b
    .catchall {:try_start_20 .. :try_end_23} :catchall_33

    .line 97
    invoke-static {v1}, Lcom/megvii/livenessdeteciton/obf/b;->a(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1f

    .line 97
    :catchall_2b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2f
    invoke-static {v1}, Lcom/megvii/livenessdeteciton/obf/b;->a(Ljava/io/InputStream;)V

    .line 98
    throw v0

    .line 97
    :catchall_33
    move-exception v0

    goto :goto_2f

    :catch_35
    move-exception v1

    move-object v1, v0

    goto :goto_1c
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p0, :cond_4

    .line 111
    :goto_3
    return v0

    .line 107
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_7} :catch_9

    .line 108
    const/4 v0, 0x1

    goto :goto_3

    .line 110
    :catch_9
    move-exception v1

    const-string v1, "load dynamic library failed, please check library path"

    invoke-static {v1}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/megvii/livenessdetection/bean/FaceInfo;)V
    .registers 8

    .prologue
    .line 2023
    if-nez p1, :cond_14

    .line 2024
    iget-boolean v0, p0, Lcom/megvii/livenessdeteciton/obf/b;->c:Z

    if-eqz v0, :cond_13

    .line 2025
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/b;->a:[F

    iget v1, p0, Lcom/megvii/livenessdeteciton/obf/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/megvii/livenessdeteciton/obf/b;->b:I

    rem-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2035
    :cond_13
    :goto_13
    return-void

    .line 2029
    :cond_14
    iget-boolean v0, p0, Lcom/megvii/livenessdeteciton/obf/b;->c:Z

    if-eqz v0, :cond_3d

    .line 2030
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/b;->a:[F

    iget v1, p0, Lcom/megvii/livenessdeteciton/obf/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/megvii/livenessdeteciton/obf/b;->b:I

    rem-int/lit8 v1, v1, 0x5

    iget v2, p1, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    aput v2, v0, v1

    .line 2038
    const/high16 v1, 0x42c80000    # 100.0f

    .line 2039
    iget-object v3, p0, Lcom/megvii/livenessdeteciton/obf/b;->a:[F

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2d
    if-ge v2, v4, :cond_3a

    aget v0, v3, v2

    .line 2040
    cmpg-float v5, v0, v1

    if-gez v5, :cond_42

    .line 2039
    :goto_35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2d

    .line 2031
    :cond_3a
    iput v1, p1, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothQuality:F

    goto :goto_13

    .line 2033
    :cond_3d
    iget v0, p1, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    iput v0, p1, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothQuality:F

    goto :goto_13

    :cond_42
    move v0, v1

    goto :goto_35
.end method

.method public declared-synchronized a(Z)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2015
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/megvii/livenessdeteciton/obf/b;->c:Z

    .line 2016
    :goto_5
    const/4 v1, 0x5

    if-ge v0, v1, :cond_10

    .line 2017
    iget-object v1, p0, Lcom/megvii/livenessdeteciton/obf/b;->a:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 2016
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2019
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Lcom/megvii/livenessdeteciton/obf/b;->b:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 2020
    monitor-exit p0

    return-void

    .line 2015
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
