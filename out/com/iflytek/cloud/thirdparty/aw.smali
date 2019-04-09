.class public Lcom/iflytek/cloud/thirdparty/aw;
.super Lcom/iflytek/cloud/thirdparty/bf;


# static fields
.field private static f:Lcom/iflytek/cloud/GrammarListener;

.field private static g:Lcom/iflytek/cloud/LexiconListener;


# instance fields
.field private c:Lcom/iflytek/msc/MSCSessionInfo;

.field private d:Lcom/iflytek/msc/MSCSessionInfo;

.field private e:[B

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bf;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->d:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->e:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->h:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a([BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/iflytek/msc/MSC;->QISRAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aw;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    iput v2, v1, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISRAudioWrite length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_36

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_36
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)I
    .registers 10

    invoke-static {p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QISRSessionBegin begin, grammar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-class v3, Lcom/iflytek/cloud/thirdparty/aw;

    monitor-enter v3

    :try_start_21
    const-string v4, "MSCSessionBegin"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_87

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v4, v0, v5}, Lcom/iflytek/msc/MSC;->QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    :goto_3e
    const-string v0, "SessionBeginEnd"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QISRSessionBegin end: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_a3

    const/16 v1, 0x2791

    if-eq v0, v1, :cond_a3

    const/16 v1, 0x2781

    if-eq v0, v1, :cond_a3

    const/16 v1, 0x2794

    if-eq v0, v1, :cond_a3

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_87
    :try_start_87
    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p3}, Lcom/iflytek/cloud/thirdparty/be;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v4, v0, v5}, Lcom/iflytek/msc/MSC;->QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    goto :goto_3e

    :catchall_a0
    move-exception v0

    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_a0

    throw v0

    :cond_a3
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;Lcom/iflytek/cloud/thirdparty/ce;)I
    .registers 11

    sput-object p3, Lcom/iflytek/cloud/thirdparty/aw;->f:Lcom/iflytek/cloud/GrammarListener;

    invoke-virtual {p4}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "text_encoding"

    const-string v1, "utf-8"

    invoke-virtual {p4, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pte"

    const-string v2, "utf-8"

    invoke-virtual {p4, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_16
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v0, "LastDataFlag"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISRBuildGrammar begin, garmmar: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "grammarCallBack"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->QISRBuildGrammar([B[BI[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISRBuildGrammar leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_5c} :catch_5d

    :goto_5c
    return v0

    :catch_5d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e2c

    goto :goto_5c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;Lcom/iflytek/cloud/thirdparty/ce;)I
    .registers 11

    sput-object p3, Lcom/iflytek/cloud/thirdparty/aw;->g:Lcom/iflytek/cloud/LexiconListener;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/aw;->h:Ljava/lang/String;

    const-string v0, "text_encoding"

    const-string v1, "utf-8"

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "text_encoding"

    const-string v1, "utf-8"

    invoke-virtual {p4, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pte"

    const-string v2, "utf-8"

    invoke-virtual {p4, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_20
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISRUpdateLexicon begin, name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "LastDataFlag"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "lexiconCallBack"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->QISRUpdateLexicon([B[BI[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISRUpdateLexicon leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_70} :catch_71

    :goto_70
    return v0

    :catch_71
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e2c

    goto :goto_70
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

    const-string v1, "IsrSession pushEndFlag"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/aw;->a([BII)V
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

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const-string v0, "sessionEnd enter "

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iflytek/msc/MSC;->QISRSessionEnd([C[B)I

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x1

    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionEnd leavel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/aw;->b:Ljava/lang/String;

    goto :goto_5

    :cond_47
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public declared-synchronized a([BI)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/thirdparty/aw;->a([BII)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_31

    if-nez v1, :cond_14

    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v2, -0x1

    :try_start_15
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/iflytek/msc/MSC;->QISRSetParam([C[B[B)I
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_26} :catch_2b
    .catchall {:try_start_15 .. :try_end_26} :catchall_31

    move-result v1

    :goto_27
    if-nez v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :catch_2b
    move-exception v1

    :try_start_2c
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    move v1, v2

    goto :goto_27

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    const-string v2, "volume"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aw;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_47
    .catchall {:try_start_2 .. :try_end_f} :catchall_44

    move-result v1

    if-nez v1, :cond_26

    :try_start_12
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aw;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_2c
    .catchall {:try_start_12 .. :try_end_23} :catchall_44

    move-result v0

    :goto_24
    monitor-exit p0

    return v0

    :cond_26
    :try_start_26
    const-string v2, "VAD CHECK FALSE"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_44

    goto :goto_24

    :catch_2c
    move-exception v2

    :goto_2d
    :try_start_2d
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
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_44

    goto :goto_24

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_47
    move-exception v1

    move v1, v0

    goto :goto_2d
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_21

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1c
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    move-result v0

    goto :goto_6

    :catch_1c
    move-exception v1

    :try_start_1d
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_6

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->b:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "sid"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->b:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_21

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aw;->c:Lcom/iflytek/msc/MSCSessionInfo;

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

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "audio_url"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method grammarCallBack(I[C)I
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grammarCallBack begin, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v1, "GetNotifyResult"

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aw;->f:Lcom/iflytek/cloud/GrammarListener;

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_38

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aw;->f:Lcom/iflytek/cloud/GrammarListener;

    const-string v2, ""

    if-nez p1, :cond_32

    :goto_28
    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/GrammarListener;->onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    :cond_2b
    :goto_2b
    const-string v0, "grammarCallBack begin, leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_32
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto :goto_28

    :cond_38
    sget-object v1, Lcom/iflytek/cloud/thirdparty/aw;->f:Lcom/iflytek/cloud/GrammarListener;

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/GrammarListener;->onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_2b
.end method

.method lexiconCallBack(I[C)I
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lexiconCallBack begin, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v1, "GetNotifyResult"

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aw;->g:Lcom/iflytek/cloud/LexiconListener;

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_38

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aw;->g:Lcom/iflytek/cloud/LexiconListener;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aw;->h:Ljava/lang/String;

    if-nez p1, :cond_32

    :goto_28
    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    :cond_2b
    :goto_2b
    const-string v0, "lexiconCallBack leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_32
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto :goto_28

    :cond_38
    sget-object v1, Lcom/iflytek/cloud/thirdparty/aw;->g:Lcom/iflytek/cloud/LexiconListener;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aw;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_2b
.end method
