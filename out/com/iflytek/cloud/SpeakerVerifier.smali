.class public Lcom/iflytek/cloud/SpeakerVerifier;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static a:Lcom/iflytek/cloud/SpeakerVerifier;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/ck;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ck;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/ck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    return-void
.end method

.method public static createVerifier(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeakerVerifier;
    .registers 4

    sget-object v1, Lcom/iflytek/cloud/SpeakerVerifier;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/iflytek/cloud/SpeakerVerifier;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeakerVerifier;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    sget-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static getVerifier()Lcom/iflytek/cloud/SpeakerVerifier;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ck;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ck;->cancel(Z)V

    :cond_12
    return-void
.end method

.method public destroy()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ck;->destroy()Z

    move-result v0

    :cond_9
    if-eqz v0, :cond_18

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/iflytek/cloud/SpeakerVerifier;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_15
    sput-object v2, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    monitor-exit v1

    :cond_18
    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public generatePassword(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ck;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "SpeakerVerifier getPasswordList failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordList(Lcom/iflytek/cloud/SpeechListener;)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ck;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "subject"

    const-string v2, "ivp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "rse"

    const-string v2, "gb2312"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ck;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ck;->a(Lcom/iflytek/cloud/SpeechListener;)V

    :goto_2c
    return-void

    :cond_2d
    const-string v0, "SpeakerVerifier getPasswordList failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public isListening()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ck;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)I
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ck;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ck;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/16 v0, 0x4e2c

    goto :goto_10
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startListening(Lcom/iflytek/cloud/VerifierListener;)I
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-nez v0, :cond_7

    const/16 v0, 0x5209

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ck;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ck;->a(Lcom/iflytek/cloud/VerifierListener;)I

    move-result v0

    goto :goto_6
.end method

.method public stopListening()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ck;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ck;->e()V

    :goto_11
    return-void

    :cond_12
    const-string v0, "SpeakerVerifier stopListening failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public writeAudio([BII)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ck;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->d:Lcom/iflytek/cloud/thirdparty/ck;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ck;->a([BII)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const-string v0, "SpeakerVerifier writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_12
.end method
