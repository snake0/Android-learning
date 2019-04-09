.class public Lcom/iflytek/speech/TextUnderstanderAidl;
.super Lcom/iflytek/speech/SpeechModuleAidl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/speech/SpeechModuleAidl",
        "<",
        "Lcom/iflytek/speech/aidl/ITextUnderstander;",
        ">;"
    }
.end annotation


# static fields
.field public static final SCENE:Ljava/lang/String; = "scene"

.field private static final TEXT:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 4

    const-string v0, "com.iflytek.vflynote.textunderstand"

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/speech/SpeechModuleAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/iflytek/speech/TextUnderstanderListener;)I
    .registers 3

    iget-object v0, p0, Lcom/iflytek/speech/TextUnderstanderAidl;->mService:Landroid/os/IInterface;

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
    iget-object v0, p0, Lcom/iflytek/speech/TextUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ITextUnderstander;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/aidl/ITextUnderstander;->cancel(Lcom/iflytek/speech/TextUnderstanderListener;)V
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
    iget-object v0, p0, Lcom/iflytek/speech/TextUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/speech/TextUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ITextUnderstander;

    invoke-interface {v0}, Lcom/iflytek/speech/aidl/ITextUnderstander;->isUnderstanding()Z
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

.method public understandText(Ljava/lang/String;Lcom/iflytek/speech/TextUnderstanderListener;)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/speech/TextUnderstanderAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_7

    const/16 v0, 0x520b

    :goto_6
    return v0

    :cond_7
    if-nez p2, :cond_c

    const/16 v0, 0x4e2c

    goto :goto_6

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/iflytek/speech/TextUnderstanderAidl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "text"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iflytek/speech/TextUnderstanderAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ITextUnderstander;

    invoke-interface {v0, v1, p2}, Lcom/iflytek/speech/aidl/ITextUnderstander;->understandText(Landroid/content/Intent;Lcom/iflytek/speech/TextUnderstanderListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_25

    const/4 v0, 0x0

    goto :goto_6

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_22
    const/16 v0, 0x520c

    goto :goto_6

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method
