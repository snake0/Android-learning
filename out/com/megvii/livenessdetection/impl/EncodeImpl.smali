.class public Lcom/megvii/livenessdetection/impl/EncodeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BZZI)[B
    .registers 5

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->a([BZZILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZZILjava/lang/String;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_6
    move-object p0, v0

    .line 25
    :cond_7
    :goto_7
    return-object p0

    .line 15
    :cond_8
    if-nez p1, :cond_e

    if-nez p2, :cond_e

    if-eqz p4, :cond_7

    .line 18
    :cond_e
    if-gez p3, :cond_12

    move-object p0, v0

    .line 19
    goto :goto_7

    .line 21
    :cond_12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->nativeEncode([BZZILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    if-nez v1, :cond_1a

    move-object p0, v0

    .line 23
    goto :goto_7

    .line 25
    :cond_1a
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    goto :goto_7
.end method

.method private static native nativeEncode([BZZILjava/lang/String;)Ljava/lang/String;
.end method
