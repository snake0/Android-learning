.class public Lcom/iflytek/cloud/thirdparty/bj;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bj;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)V
    .registers 9

    const/4 v0, 0x0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bj;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {p0, p3}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_4c

    move-result-object v0

    :cond_22
    :try_start_22
    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/iflytek/msc/MSC;->QMSPLogin([B[B[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSPLogin]ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_22 .. :try_end_44} :catch_66
    .catchall {:try_start_22 .. :try_end_44} :catchall_4c

    if-eqz v0, :cond_72

    :try_start_46
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :catchall_4c
    move-exception v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    if-eqz p0, :cond_74

    :try_start_51
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    move-object v1, v0

    goto :goto_14

    :cond_5d
    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_14

    :catch_66
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e35

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_51 .. :try_end_73} :catchall_4c

    return-void

    :cond_74
    move-object v1, v0

    goto :goto_14
.end method

.method public static a()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/be;->u()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "MscHandler is not empty while logout."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    sget-object v1, Lcom/iflytek/cloud/thirdparty/bj;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    move-result v2

    if-nez v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    monitor-exit v1

    goto :goto_c

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)[B
    .registers 8

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/iflytek/cloud/thirdparty/bj;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_74

    :try_start_4
    invoke-static {p1, p2}, Lcom/iflytek/cloud/thirdparty/cg;->c(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSPSession downloadData]enter time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v2, "LastDataFlag"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2}, Lcom/iflytek/msc/MSC;->QMSPDownloadData([BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    const-string v0, "GetNotifyResult"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSPSession downloadData]leavel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",data len = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_77

    const/4 v0, 0x0

    :goto_58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_6b

    if-nez v2, :cond_79

    :cond_6b
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v2

    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_4 .. :try_end_73} :catchall_71

    :try_start_73
    throw v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_77
    :try_start_77
    array-length v0, v2

    goto :goto_58

    :cond_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_71

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;Ljava/lang/String;)[B
    .registers 9

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/iflytek/cloud/thirdparty/bj;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7a

    :try_start_4
    invoke-static {p1, p2}, Lcom/iflytek/cloud/thirdparty/cg;->c(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSPSession searchResult]enter time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v2, "utf-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "LastDataFlag"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2, v3}, Lcom/iflytek/msc/MSC;->QMSPSearch([B[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    const-string v0, "GetNotifyResult"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QMSPSearch searchResult]leavel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",data len = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_7d

    const/4 v0, 0x0

    :goto_5e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_71

    if-nez v2, :cond_7f

    :cond_71
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v2

    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_4 .. :try_end_79} :catchall_77

    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7d
    :try_start_7d
    array-length v0, v2

    goto :goto_5e

    :cond_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_77

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[BLcom/iflytek/cloud/thirdparty/be;)[B
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/iflytek/cloud/thirdparty/bj;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6f

    :try_start_4
    invoke-static {p1, p4}, Lcom/iflytek/cloud/thirdparty/cg;->c(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSPSession uploadData]enter time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, p3

    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v2, p3, v3, v0, v4}, Lcom/iflytek/msc/MSC;->QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MSPSession uploaddData]leavel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",data len = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_72

    const/4 v0, 0x0

    :goto_53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bj;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_66

    if-nez v2, :cond_74

    :cond_66
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v2

    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_72
    :try_start_72
    array-length v0, v2

    goto :goto_53

    :cond_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6c

    monitor-exit p0

    return-object v2
.end method
