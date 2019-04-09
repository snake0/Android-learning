.class public Lcom/iflytek/cloud/thirdparty/au;
.super Lcom/iflytek/cloud/thirdparty/bf;


# instance fields
.field private c:Lcom/iflytek/msc/MSCSessionInfo;

.field private d:Lcom/iflytek/msc/MSCSessionInfo;

.field private e:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bf;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->e:[B

    return-void
.end method

.method private declared-synchronized a([BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QISEAudioWrite enter, length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/iflytek/msc/MSC;->QISEAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISEAudioWrite leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    iput v2, v1, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)I
    .registers 8

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    invoke-static {p1, p3}, Lcom/iflytek/cloud/thirdparty/cg;->e(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSCSessionBegin"

    invoke-static {v1, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "QISESessionBegin enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v3, v1}, Lcom/iflytek/msc/MSC;->QISESessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QISESessionBegin leave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "SessionBeginEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_8d

    const/16 v1, 0x2791

    if-eq v0, v1, :cond_8d

    const/16 v1, 0x2781

    if-eq v0, v1, :cond_8d

    const/16 v1, 0x2794

    if-eq v0, v1, :cond_8d

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_5e
    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/MSC;->QISESessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionBegin userModelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_27

    :cond_8d
    return v0
.end method

.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [B

    const-string v1, "LastDataFlag"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IseSession pushEndFlag"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/au;->a([BII)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "unknown"

    :cond_e
    const-string v0, "ISESessionEnd enter "

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/msc/MSC;->QISESessionEnd([C[B)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISESessionEnd leave: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/au;->b:Ljava/lang/String;

    goto :goto_5
.end method

.method public declared-synchronized a([BI)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/thirdparty/au;->a([BII)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B[B)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "QISETextPut enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    invoke-static {v0, p1, p2}, Lcom/iflytek/msc/MSC;->QISETextPut([C[B[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISETextPut leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2d

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->epstatues:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_21

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

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

.method public declared-synchronized c()I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_49

    if-nez v1, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    const-string v2, "volume"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_4c
    .catchall {:try_start_8 .. :try_end_15} :catchall_49

    move-result v1

    if-nez v1, :cond_2b

    :try_start_18
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/au;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_2b
    const-string v2, "VAD CHECK FALSE"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_30} :catch_31
    .catchall {:try_start_18 .. :try_end_30} :catchall_49

    goto :goto_6

    :catch_31
    move-exception v2

    :goto_32
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioVolume Exception vadret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_49

    goto :goto_6

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_4c
    move-exception v1

    move v1, v0

    goto :goto_32
.end method

.method public d()[B
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->e:[B

    return-object v0
.end method

.method public e()Lcom/iflytek/cloud/thirdparty/bf$a;
    .registers 7

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->a:[C

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2}, Lcom/iflytek/msc/MSC;->QISEGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->e:[B

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QISRGetResult leave: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->e:[B

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v1, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    packed-switch v0, :pswitch_data_d2

    :pswitch_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IseSession getResult get unmatched result status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bf$a;->c:Lcom/iflytek/cloud/thirdparty/bf$a;

    :goto_68
    return-object v0

    :cond_69
    const/4 v0, 0x0

    goto :goto_24

    :pswitch_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: hasResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bf$a;->a:Lcom/iflytek/cloud/thirdparty/bf$a;

    goto :goto_68

    :pswitch_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: noResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bf$a;->c:Lcom/iflytek/cloud/thirdparty/bf$a;

    goto :goto_68

    :pswitch_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: resultOver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bf$a;->f:Lcom/iflytek/cloud/thirdparty/bf$a;

    goto :goto_68

    :cond_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_50
        :pswitch_84
        :pswitch_50
        :pswitch_50
        :pswitch_9d
    .end packed-switch
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->b:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "sid"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->b:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/au;->b:Ljava/lang/String;

    return-object v0
.end method
