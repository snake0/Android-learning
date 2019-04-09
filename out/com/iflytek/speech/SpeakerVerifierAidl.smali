.class public Lcom/iflytek/speech/SpeakerVerifierAidl;
.super Lcom/iflytek/speech/SpeechModuleAidl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/speech/SpeechModuleAidl",
        "<",
        "Lcom/iflytek/speech/aidl/ISpeakerVerifier;",
        ">;"
    }
.end annotation


# static fields
.field public static IVP_PARAM_CONSISTTHRESHOLD:Ljava/lang/String;

.field public static IVP_PARAM_DTW_CHECK_THRESHOLD:Ljava/lang/String;

.field public static IVP_SENTENCE_CNT:Ljava/lang/String;

.field public static USER_NAME:Ljava/lang/String;

.field public static VID:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "name"

    sput-object v0, Lcom/iflytek/speech/SpeakerVerifierAidl;->USER_NAME:Ljava/lang/String;

    const-string v0, "count"

    sput-object v0, Lcom/iflytek/speech/SpeakerVerifierAidl;->IVP_SENTENCE_CNT:Ljava/lang/String;

    const-string v0, "vid"

    sput-object v0, Lcom/iflytek/speech/SpeakerVerifierAidl;->VID:Ljava/lang/String;

    const-string v0, "consistThreshold"

    sput-object v0, Lcom/iflytek/speech/SpeakerVerifierAidl;->IVP_PARAM_CONSISTTHRESHOLD:Ljava/lang/String;

    const-string v0, "checkThreshold"

    sput-object v0, Lcom/iflytek/speech/SpeakerVerifierAidl;->IVP_PARAM_DTW_CHECK_THRESHOLD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 4

    const-string v0, "com.iflytek.vflynote.speakerverify"

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/speech/SpeechModuleAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;Ljava/lang/String;)V

    const-string v0, "SpeakerVerifier"

    iput-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic destory()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/speech/SpeechModuleAidl;->destory()Z

    move-result v0

    return v0
.end method

.method public endSpeak()V
    .registers 3

    :try_start_0
    const-string v0, "SpeakerVerifier"

    const-string v1, "SpeakerVerifier | endSpeak"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier;

    invoke-interface {v0}, Lcom/iflytek/speech/aidl/ISpeakerVerifier;->endSpeak()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_14

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public bridge synthetic getIntent()Landroid/content/Intent;
    .registers 2

    invoke-super {p0}, Lcom/iflytek/speech/SpeechModuleAidl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPasswordList(Landroid/content/Context;Lcom/iflytek/speech/SpeakerVerifierAidl$DownloadListener;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public identify(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I
    .registers 5

    const/4 v0, 0x0

    return v0
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

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I
    .registers 6

    const-string v0, "SpeakerVerifier"

    const-string v1, "SpeakerVerifier | register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_e

    const/16 v0, 0x520b

    :goto_d
    return v0

    :cond_e
    if-nez p3, :cond_13

    const/16 v0, 0x4e2c

    goto :goto_d

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/speech/aidl/ISpeakerVerifier;->register(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_23

    const/4 v0, 0x0

    goto :goto_d

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_20
    const/16 v0, 0x520c

    goto :goto_d

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public stopSpeak()V
    .registers 3

    :try_start_0
    const-string v0, "SpeakerVerifier"

    const-string v1, "SpeakerVerifier | stopSpeak"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier;

    invoke-interface {v0}, Lcom/iflytek/speech/aidl/ISpeakerVerifier;->stopSpeak()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_14

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I
    .registers 6

    const-string v0, "SpeakerVerifier"

    const-string v1, "SpeakerVerifier | verify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_e

    const/16 v0, 0x520b

    :goto_d
    return v0

    :cond_e
    if-nez p3, :cond_13

    const/16 v0, 0x4e2c

    goto :goto_d

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/iflytek/speech/SpeakerVerifierAidl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/speech/aidl/ISpeakerVerifier;->verify(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_23

    const/4 v0, 0x0

    goto :goto_d

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_20
    const/16 v0, 0x520c

    goto :goto_d

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method
