.class public Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechDecoder"

.field private static mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;

    .line 25
    :try_start_3
    const-string v0, "SpeechDecoder"

    const-string v1, "before load gnustl_shared"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "gnustl_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_23

    .line 31
    :goto_f
    :try_start_f
    const-string v0, "SpeechDecoder"

    const-string v1, "before load BDSpeechDecoder_V1"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "BDSpeechDecoder_V1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-string v0, "SpeechDecoder"

    const-string v1, "after load BDSpeechDecoder_V1"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_22} :catch_2c

    .line 37
    :goto_22
    return-void

    .line 27
    :catch_23
    move-exception v0

    .line 28
    const-string v0, "SpeechDecoder"

    const-string v1, "so file gnustl_shared load fail"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 34
    :catch_2c
    move-exception v0

    .line 35
    const-string v0, "SpeechDecoder"

    const-string v1, "so file BDSpeechDecoder_V1 load fail"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static native decodeWithCallback([BLjava/lang/Object;)I
.end method

.method public static setOnDecodedDataListener(Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;)V
    .registers 1

    .prologue
    .line 70
    sput-object p0, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;

    .line 71
    return-void
.end method


# virtual methods
.method public native decode([BI[S[III)I
.end method

.method public decodeWithCallback([B)I
    .registers 3

    .prologue
    .line 62
    invoke-static {p1, p0}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->decodeWithCallback([BLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public decode_audio_callback([B)V
    .registers 3

    .prologue
    .line 66
    sget-object v0, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;

    invoke-interface {v0, p1}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;->onDecodedData([B)V

    .line 67
    return-void
.end method
