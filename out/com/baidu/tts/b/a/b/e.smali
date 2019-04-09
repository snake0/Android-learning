.class public Lcom/baidu/tts/b/a/b/e;
.super Lcom/baidu/tts/b/a/b/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/baidu/tts/b/a/b/e$b;

.field private c:[J

.field private d:Lcom/baidu/tts/e/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    .line 516
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/tts/b/a/b/e;)[J
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/e/c;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->d:Lcom/baidu/tts/e/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .registers 5

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/baidu/tts/m/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v0, v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataInit([BJ)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 6

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/baidu/tts/m/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/baidu/tts/m/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 175
    if-nez v3, :cond_14

    if-eqz v2, :cond_1b

    .line 176
    :cond_14
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    .line 182
    :goto_1a
    return v0

    .line 178
    :cond_1b
    invoke-static {v1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v1

    .line 179
    invoke-static {v0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->loadEnglishEngine([B[BJ)I

    move-result v0

    .line 181
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadEnglishModel ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->b()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 147
    if-eqz v3, :cond_1c

    if-eqz v4, :cond_1c

    .line 148
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    .line 160
    :goto_1b
    return v0

    .line 151
    :cond_1c
    if-nez v4, :cond_3a

    .line 152
    invoke-static {v1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v1

    .line 153
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    aget-wide v4, v4, v0

    invoke-static {v1, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData([BJ)I

    move-result v1

    .line 156
    :goto_2a
    if-nez v3, :cond_38

    .line 157
    invoke-static {v2}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    aget-wide v3, v3, v0

    invoke-static {v2, v3, v4}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData([BJ)I

    move-result v0

    .line 160
    :cond_38
    add-int/2addr v0, v1

    goto :goto_1b

    :cond_3a
    move v1, v0

    goto :goto_2a
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 5

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/e/c;->a(Landroid/content/Context;)Lcom/baidu/tts/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->d:Lcom/baidu/tts/e/c;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_66

    .line 65
    :goto_e
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    if-nez v0, :cond_19

    .line 66
    new-instance v0, Lcom/baidu/tts/b/a/b/e$b;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    .line 69
    :cond_19
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$b;)Lcom/baidu/tts/auth/b$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->g()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 71
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->d()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/e$b;->e()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    invoke-static {v1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v1

    .line 75
    const-string v2, "OfflineSynthesizer"

    const-string v3, "before bdTTSEngineInit"

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    invoke-static {v0, v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineInit([B[B[J)I

    move-result v0

    .line 77
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engine init ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-nez v0, :cond_84

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_65
    return-object v0

    .line 61
    :catch_66
    move-exception v0

    .line 62
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "embedded statistics open exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 81
    :cond_84
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->y:Lcom/baidu/tts/f/n;

    const-string v3, "bdTTSEngineInit result not 0"

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_65

    .line 85
    :cond_91
    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_65
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 5

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Lcom/baidu/tts/b/a/b/e$c;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/b/a/b/e$c;-><init>(Lcom/baidu/tts/b/a/b/e;Lcom/baidu/tts/m/i;)V

    .line 105
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$c;->a()Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    move-result-object v0

    .line 109
    :goto_9
    return-object v0

    .line 106
    :catch_a
    move-exception v0

    .line 107
    throw v0

    .line 108
    :catch_c
    move-exception v0

    .line 109
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->A:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OfflineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOfflineSynthesizerParams;)V"
        }
    .end annotation

    .prologue
    .line 49
    check-cast p1, Lcom/baidu/tts/b/a/b/e$b;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$b;

    .line 51
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataUninit(J)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineUninit(J)I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
