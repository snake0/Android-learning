.class public Lcom/iflytek/cloud/thirdparty/bo;
.super Lcom/iflytek/cloud/thirdparty/bf;


# instance fields
.field private c:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bf;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)I
    .registers 10

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    invoke-static {p1, p3}, Lcom/iflytek/cloud/thirdparty/cg;->d(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTTSSessionBegin enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "MSCSessionBegin"

    invoke-static {v3, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/iflytek/cloud/thirdparty/bo;

    monitor-enter v3

    :try_start_20
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v4}, Lcom/iflytek/msc/MSC;->QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_70

    const-string v0, "SessionBeginEnd"

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QTTSSessionBegin leave:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_73

    const/16 v1, 0x2791

    if-eq v0, v1, :cond_73

    const/16 v1, 0x2781

    if-eq v0, v1, :cond_73

    const/16 v1, 0x2794

    if-eq v0, v1, :cond_73

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0

    :cond_73
    return v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "unknown"

    :cond_e
    const-string v0, "QTTSSessionEnd enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QTTSSessionEnd([C[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QTTSSessionEnd leavel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/bo;->b:Ljava/lang/String;

    goto :goto_5
.end method

.method public declared-synchronized a([B)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "QTTSTextPut enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "LastDataFlag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    invoke-static {v0, p1}, Lcom/iflytek/msc/MSC;->QTTSTextPut([C[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QTTSTextPut leavel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_33

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a()[B
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    if-nez v0, :cond_10

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e23

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    const-string v0, "QTTSAudioGet enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QTTSAudioGet leave:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "value len = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_50

    const/4 v0, 0x0

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_52

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_50
    array-length v0, v1
    :try_end_51
    .catchall {:try_start_10 .. :try_end_51} :catchall_d

    goto :goto_39

    :cond_52
    monitor-exit p0

    return-object v1
.end method

.method public b()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ced"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1c

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/bo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1f
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    move-result v0

    goto :goto_6

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1f
    move-exception v1

    goto :goto_6
.end method

.method public c()Ljava/lang/String;
    .registers 4

    const-string v1, ""

    :try_start_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QTTSAudioInfo([C)[C

    move-result-object v2

    if-eqz v2, :cond_17

    array-length v0, v2

    if-lez v0, :cond_17

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :cond_17
    move-object v0, v1

    goto :goto_12
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_21

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bo;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_24
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    move-object v0, v1

    goto :goto_6

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_24
    move-exception v1

    goto :goto_6
.end method

.method public declared-synchronized d()Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bo;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_d

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->b:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "sid"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->b:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bo;->b:Ljava/lang/String;

    return-object v0
.end method
