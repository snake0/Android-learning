.class public Lcom/iflytek/cloud/thirdparty/ah;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/iflytek/cloud/thirdparty/an;

.field private b:Lcom/iflytek/cloud/thirdparty/af;

.field private c:[C

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/msc/MSCSessionInfo;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/iflytek/msc/MSCSessionInfo;

.field private i:Lcom/iflytek/cloud/thirdparty/ae;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->h:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ah;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->a()Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->i:Lcom/iflytek/cloud/thirdparty/ae;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .registers 14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/iflytek/msc/MSC;->AIUIRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-eqz v0, :cond_11

    const-string v0, "AIUISession"

    const-string v1, "clear session data."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->AIUIClear([C)I

    :cond_11
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->i:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ae;->b()V

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->a:Lcom/iflytek/cloud/thirdparty/an;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->a:Lcom/iflytek/cloud/thirdparty/an;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ah;->b(Lcom/iflytek/cloud/thirdparty/ce;)V

    :cond_f
    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "dts"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const-string v2, ""

    array-length v3, v1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "AIUISession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stmid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ah;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dts=4, tstamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stmid"

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->d:Ljava/lang/String;

    const-string v0, "speech"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->g:Z
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_64

    monitor-exit p0

    return-void

    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ce;[BIZ)V
    .registers 13

    const/4 v6, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->g:Z

    if-eqz p4, :cond_f1

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    new-instance v2, Lcom/iflytek/cloud/thirdparty/an;

    invoke-direct {v2}, Lcom/iflytek/cloud/thirdparty/an;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->a:Lcom/iflytek/cloud/thirdparty/an;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->a:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v2, p1}, Lcom/iflytek/cloud/thirdparty/an;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v2, "dts"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scene"

    const-string v3, "global"

    const-string v4, "scene"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "userparams"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msc.lng"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "msc.lat"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    :cond_4c
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/af;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v2

    const-string v3, "msc.lng"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    const-string v4, "msc.lat"

    invoke-virtual {v2, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v2

    cmpl-float v4, v3, v6

    if-lez v4, :cond_9c

    cmpl-float v4, v2, v6

    if-lez v4, :cond_9c

    const-string v4, "msc.lng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "msc.lat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9c
    const-string v2, "stmid"

    invoke-virtual {p1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->d:Ljava/lang/String;

    const-string v2, "speech"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/ao;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    :goto_b8
    if-ne v1, v0, :cond_ec

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "AIUISession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stmid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/cloud/thirdparty/ah;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", tstamp="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec
    invoke-virtual {p0, v3, v2, p2, p3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_ef
    .catchall {:try_start_4 .. :try_end_ef} :catchall_10c

    monitor-exit p0

    return-void

    :cond_f1
    :try_start_f1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string v0, "dts"

    const-string v2, "2"

    invoke-virtual {p1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->f:Ljava/lang/String;
    :try_end_106
    .catchall {:try_start_f1 .. :try_end_106} :catchall_10c

    :cond_106
    const-string v3, ""

    :try_start_108
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->f:Ljava/lang/String;
    :try_end_10a
    .catchall {:try_start_108 .. :try_end_10a} :catchall_10c

    const/4 v0, 0x2

    goto :goto_b8

    :catchall_10c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-nez v0, :cond_7

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_61

    :goto_6
    return-void

    :cond_7
    :try_start_7
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->AIUIDataWrite([C[B[B[BILcom/iflytek/msc/MSCSessionInfo;)I

    const-string v0, "AIUISession"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "dataLen=%d, params=%s, mscParams=%s, errorCode=%d, timestamp=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v5, v5, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_4f} :catch_64
    .catchall {:try_start_7 .. :try_end_4f} :catchall_61

    :goto_4f
    :try_start_4f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_69

    new-instance v0, Lcom/iflytek/cloud/thirdparty/n;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_61
    move-exception v0

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_61

    throw v0

    :catch_64
    move-exception v0

    :try_start_65
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4f

    :cond_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_61

    goto :goto_6
.end method

.method public a(Ljava/lang/String;[BI)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-nez v0, :cond_7

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_26

    :goto_6
    return-void

    :cond_7
    :try_start_7
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v0, p2, p3, v2}, Lcom/iflytek/msc/MSC;->AIUISendLog([C[B[BILcom/iflytek/msc/MSCSessionInfo;)I
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_14} :catch_29
    .catchall {:try_start_7 .. :try_end_14} :catchall_26

    :goto_14
    :try_start_14
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/iflytek/cloud/thirdparty/n;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v0

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_14

    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_26

    goto :goto_6
.end method

.method public a([B[BII)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-nez v0, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->AIUISyncData([C[B[BIILcom/iflytek/msc/MSCSessionInfo;)I

    const-string v0, "AIUISession"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "dataLen=%d, errorCode=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v5, v5, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_55

    if-eqz v0, :cond_58

    const-string v0, ""

    :try_start_3c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    if-eqz v1, :cond_4b

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_4b
    new-instance v1, Lcom/iflytek/cloud/thirdparty/n;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-direct {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_55

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v1, -0x1

    :try_start_7
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    invoke-static {v3, v0, v2}, Lcom/iflytek/msc/MSC;->AIUISetParam([C[B[B)I
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_18} :catch_1d

    move-result v0

    :goto_19
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v1

    goto :goto_19
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "stmid"

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->a:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/an;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "log=sessinfo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ",dtype=audio,cnt_id=0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stmid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_40} :catch_42
    .catchall {:try_start_1 .. :try_end_40} :catchall_47

    :goto_40
    monitor-exit p0

    return-void

    :catch_42
    move-exception v0

    :try_start_43
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_40

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c(Lcom/iflytek/cloud/thirdparty/ce;)I
    .registers 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->g:Z

    :try_start_3
    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    monitor-enter p0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_e} :catch_55

    :try_start_e
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-eqz v2, :cond_14

    monitor-exit p0

    :goto_13
    return v0

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ah;->h:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v4}, Lcom/iflytek/msc/MSC;->AIUISessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->h:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    const-string v6, "AIUISession"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "session begin, errorCode=%d, spent=%dms"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5e

    new-instance v0, Lcom/iflytek/cloud/thirdparty/n;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    const/4 v0, -0x1

    goto :goto_13

    :cond_5e
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_52

    goto :goto_13
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->g:Z

    return v0
.end method

.method public d()V
    .registers 9

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->g:Z

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    if-nez v0, :cond_a

    monitor-exit p0

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_63

    move-result-wide v2

    :try_start_e
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    const-string v4, ""

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/iflytek/msc/MSC;->AIUISessionEnd([C[B)I
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_1b} :catch_5d
    .catchall {:try_start_e .. :try_end_1b} :catchall_63

    move-result v0

    :goto_1c
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->c:[C

    const-string v1, "AIUISession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session end, ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_63

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ah;->i:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ae;->b()V

    if-eqz v0, :cond_9

    new-instance v1, Lcom/iflytek/cloud/thirdparty/n;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_5d
    move-exception v0

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v1

    goto :goto_1c

    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_63

    throw v0
.end method
