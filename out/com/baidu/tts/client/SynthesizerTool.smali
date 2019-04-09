.class public Lcom/baidu/tts/client/SynthesizerTool;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEngineInfo()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEngineVersion()I
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->getEngineMinVersion()I

    move-result v0

    return v0
.end method

.method public static getModelInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    invoke-static {p0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 66
    invoke-static {p0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetDatParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static verifyModelFile(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {p0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 31
    :cond_7
    :goto_7
    return v0

    .line 26
    :cond_8
    invoke-static {p0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v1

    .line 28
    :try_start_c
    invoke-static {v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSVerifyDataFile([B)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_14

    move-result v1

    .line 29
    if-ltz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 30
    :catch_14
    move-exception v1

    goto :goto_7
.end method
