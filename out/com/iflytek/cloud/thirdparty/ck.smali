.class public Lcom/iflytek/cloud/thirdparty/ck;
.super Lcom/iflytek/cloud/thirdparty/bi;


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ck;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ck;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ck;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/ck;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/ck;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/ck;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/ck;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->g:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/VerifierListener;)I
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ck;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->v()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v4, "isv_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    :cond_29
    new-instance v0, Lcom/iflytek/cloud/thirdparty/ba;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ck;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v5, "verify"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/ck;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ba;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ck;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/bw;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ba;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/thirdparty/ck$a;-><init>(Lcom/iflytek/cloud/thirdparty/ck;Lcom/iflytek/cloud/VerifierListener;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/ba;->a(Lcom/iflytek/cloud/VerifierListener;)V
    :try_end_52
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_52} :catch_55
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_52} :catch_5f
    .catchall {:try_start_4 .. :try_end_52} :catchall_67

    move v0, v1

    :goto_53
    :try_start_53
    monitor-exit v2

    return v0

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catch_5f
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_67

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)I
    .registers 9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ck;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "cmd"

    invoke-virtual {v1, v3, p1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "auth_id"

    invoke-virtual {v1, v3, p2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/cloud/thirdparty/az;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ck;->a:Landroid/content/Context;

    const-string v4, "manager"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/ck;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/iflytek/cloud/thirdparty/az;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    new-instance v4, Lcom/iflytek/cloud/thirdparty/az$a;

    invoke-direct {v4, p3}, Lcom/iflytek/cloud/thirdparty/az$a;-><init>(Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/cloud/thirdparty/az;->a(Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/thirdparty/az$a;)V
    :try_end_29
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_29} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_29} :catch_35
    .catchall {:try_start_4 .. :try_end_29} :catchall_3d

    :goto_29
    :try_start_29
    monitor-exit v2

    return v0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_29

    :catch_35
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_29

    :catchall_3d
    move-exception v0

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public a([BII)I
    .registers 8

    const/16 v0, 0x277d

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-nez v2, :cond_12

    const-string v0, "writeAudio error, no active session."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    monitor-exit v1

    :goto_11
    return v0

    :cond_12
    if-eqz p1, :cond_17

    array-length v2, p1

    if-gtz v2, :cond_21

    :cond_17
    const-string v2, "writeAudio error,buffer is null."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2d

    const-string v2, "writeAudio error,buffer length < length."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_11

    :cond_2d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ba;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ba;->k()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3c

    const/16 v0, 0x277a

    monitor-exit v1

    goto :goto_11

    :cond_3c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ba;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ba;->onRecordBuffer([BII)V

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_1e

    goto :goto_11
.end method

.method public a(I)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "023456789"

    const-string v2, "023456789"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_32
    add-int/lit8 v0, p1, -0x1

    if-ge v2, v0, :cond_aa

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "023456789"

    const-string v6, "023456789"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6e

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3a

    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v0, v6

    const/16 v6, 0xa

    if-ne v0, v6, :cond_9d

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3a

    :cond_9d
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3a

    :cond_a3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_32

    :cond_aa
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;)V
    .registers 4

    new-instance v0, Lcom/iflytek/cloud/DataDownloader;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/DataDownloader;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/DataDownloader;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/DataDownloader;->downloadData(Lcom/iflytek/cloud/SpeechListener;)I

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ba;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ba;->a()Z

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ck;->d()Z

    move-result v0

    return v0
.end method
