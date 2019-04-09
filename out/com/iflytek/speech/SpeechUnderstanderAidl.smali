.class public Lcom/iflytek/speech/SpeechUnderstanderAidl;
.super Lcom/iflytek/speech/SpeechModuleAidl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/speech/SpeechModuleAidl",
        "<",
        "Lcom/iflytek/speech/aidl/ISpeechUnderstander;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 4

    const-string v0, "com.iflytek.vflynote.speechunderstand"

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/speech/SpeechModuleAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/iflytek/speech/SpeechUnderstanderListener;)I
    .registers 3

    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_7

    const/16 v0, 0x520b

    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_c

    const/16 v0, 0x4e2c

    goto :goto_6

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechUnderstander;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/aidl/ISpeechUnderstander;->cancel(Lcom/iflytek/speech/SpeechUnderstanderListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_1c

    const/4 v0, 0x0

    goto :goto_6

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_19
    const/16 v0, 0x520c

    goto :goto_6

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public bridge synthetic destory()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/speech/SpeechModuleAidl;->destory()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntent()Landroid/content/Intent;
    .registers 2

    invoke-super {p0}, Lcom/iflytek/speech/SpeechModuleAidl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/speech/SpeechModuleAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isActionInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/speech/SpeechModuleAidl;->isActionInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAvailable()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/speech/SpeechModuleAidl;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isUnderstanding()Z
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechUnderstander;

    invoke-interface {v0}, Lcom/iflytek/speech/aidl/ISpeechUnderstander;->isUnderstanding()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_14

    move-result v0

    :goto_d
    move v1, v0

    :goto_e
    return v1

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :cond_19
    move v0, v1

    goto :goto_d
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/speech/SpeechModuleAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I
    .registers 4

    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_7

    const/16 v0, 0x520b

    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_c

    const/16 v0, 0x4e2c

    goto :goto_6

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechUnderstander;

    invoke-virtual {p0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/iflytek/speech/aidl/ISpeechUnderstander;->startUnderstanding(Landroid/content/Intent;Lcom/iflytek/speech/SpeechUnderstanderListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_20

    const/4 v0, 0x0

    goto :goto_6

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_1d
    const/16 v0, 0x520c

    goto :goto_6

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public stopUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I
    .registers 3

    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_7

    const/16 v0, 0x520b

    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_c

    const/16 v0, 0x4e2c

    goto :goto_6

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechUnderstander;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/aidl/ISpeechUnderstander;->stopUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_1c

    const/4 v0, 0x0

    goto :goto_6

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_19
    const/16 v0, 0x520c

    goto :goto_6

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public writeAudio([BII)I
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getServiceVersion()I

    move-result v0

    const/16 v2, 0x2c

    if-ge v0, v2, :cond_10

    const/16 v0, 0x4e32

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_17

    const/16 v0, 0x520b

    goto :goto_f

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/speech/SpeechUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechUnderstander;

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/iflytek/speech/aidl/ISpeechUnderstander;->writeAudio(Landroid/content/Intent;[BII)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_2a

    move v0, v1

    goto :goto_f

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_28
    move v0, v1

    goto :goto_f

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method
