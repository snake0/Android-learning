.class public Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmbeddedSynthesizerEngine"

.field private static mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;

    .line 15
    :try_start_3
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "before load gnustl_shared"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "gnustl_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_3b

    .line 21
    :goto_f
    :try_start_f
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "before load BDSpeechDecoder_V1"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "BDSpeechDecoder_V1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1b} :catch_44

    .line 27
    :goto_1b
    :try_start_1b
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "before load bd_etts"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "bd_etts"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_27} :catch_4d

    .line 33
    :goto_27
    :try_start_27
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "before load bdtts"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "bdtts"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "after load bdtts"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3a} :catch_56

    .line 39
    :goto_3a
    return-void

    .line 17
    :catch_3b
    move-exception v0

    .line 18
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "so file gnustl_shared load fail"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 23
    :catch_44
    move-exception v0

    .line 24
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "so file BDSpeechDecoder_V1 load fail"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 29
    :catch_4d
    move-exception v0

    .line 30
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "so file bd_etts load fail"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 36
    :catch_56
    move-exception v0

    .line 37
    const-string v0, "EmbeddedSynthesizerEngine"

    const-string v1, "so file bdtts load fail"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static native bdTTSDomainDataInit([BJ)I
.end method

.method public static native bdTTSDomainDataUninit(J)I
.end method

.method public static native bdTTSEngineInit([B[B[J)I
.end method

.method public static native bdTTSEngineUninit(J)I
.end method

.method public static native bdTTSGetDatParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native bdTTSGetDataFileParam([BI[B)I
.end method

.method public static synchronized native declared-synchronized bdTTSGetEngineParam()Ljava/lang/String;
.end method

.method public static native bdTTSGetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native bdTTSGetTestAuthorize()I
.end method

.method public static native bdTTSReInitData([BJ)I
.end method

.method public static native bdTTSSetParam(JIJ)I
.end method

.method public static native bdTTSSetParamFloat(JIF)I
.end method

.method public static native bdTTSSetText(J[BI)I
.end method

.method public static synchronized native declared-synchronized bdTTSSynthesis(J[BI)I
.end method

.method public static native bdTTSVerifyDataFile([B)I
.end method

.method public static synchronized native declared-synchronized bdTTSVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public static native getEngineMinVersion()I
.end method

.method public static native loadEnglishEngine([B[BJ)I
.end method

.method public static newAudioDataCallback([BI)I
    .registers 3

    .prologue
    .line 46
    sget-object v0, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;->onNewData([BI)I

    move-result v0

    return v0
.end method

.method public static setOnNewDataListener(Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;)V
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;

    .line 43
    return-void
.end method
