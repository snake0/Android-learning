.class Lcom/baidu/tts/b/a/b/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/aop/tts/TtsError;",
        ">;"
    }
.end annotation


# instance fields
.field a:[B

.field final synthetic b:Lcom/baidu/tts/b/a/b/f;

.field private c:Lcom/baidu/tts/m/i;

.field private d:Lcom/baidu/tts/b/a/b/f$c;

.field private e:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

.field private f:Lcom/baidu/tts/m/h;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;Lcom/baidu/tts/m/i;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v1, p0, Lcom/baidu/tts/b/a/b/f$d;->g:I

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    .line 105
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    .line 108
    iput-object p2, p0, Lcom/baidu/tts/b/a/b/f$d;->c:Lcom/baidu/tts/m/i;

    .line 109
    new-instance v0, Lcom/baidu/tts/b/a/b/f$c;

    invoke-direct {v0, p1}, Lcom/baidu/tts/b/a/b/f$c;-><init>(Lcom/baidu/tts/b/a/b/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->d:Lcom/baidu/tts/b/a/b/f$c;

    .line 110
    new-instance v0, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    invoke-direct {v0}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->e:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    .line 111
    return-void
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 202
    const-string v0, "OnlineSynthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v0}, Lcom/baidu/tts/m/h;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/m/h;

    .line 204
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a([B)V

    .line 205
    sget-object v1, Lcom/baidu/tts/f/a;->a:Lcom/baidu/tts/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/a;)V

    .line 206
    iget v1, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->c(I)V

    .line 207
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->d(I)V

    .line 208
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/m/h;)V

    .line 209
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    .line 210
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    .line 211
    return-void
.end method

.method private a(Lcom/baidu/tts/m/h;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 144
    if-nez p1, :cond_4

    .line 156
    :cond_3
    :goto_3
    return v0

    .line 147
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 148
    if-nez v1, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->a()I

    move-result v1

    .line 150
    if-nez v1, :cond_3

    .line 151
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private a([B[B)[B
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 214
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 215
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    return-object v0
.end method

.method private b(Lcom/baidu/tts/m/h;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/f$d;->a(Lcom/baidu/tts/m/h;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 163
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->b()I

    move-result v1

    .line 164
    if-gez v1, :cond_e

    .line 170
    :cond_d
    :goto_d
    return v0

    .line 167
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 5

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    invoke-static {p0}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->setOnDecodedDataListener(Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;)V

    .line 124
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 125
    const-string v1, "OnlineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$d;->d:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$d;->c:Lcom/baidu/tts/m/i;

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v1

    .line 127
    invoke-direct {p0, v1}, Lcom/baidu/tts/b/a/b/f$d;->a(Lcom/baidu/tts/m/h;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 128
    iput-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    .line 129
    invoke-virtual {v1}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$d;->e:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    invoke-virtual {v3, v2}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->decodeWithCallback([B)I

    .line 132
    :cond_39
    invoke-direct {p0, v1}, Lcom/baidu/tts/b/a/b/f$d;->b(Lcom/baidu/tts/m/h;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    if-nez v1, :cond_4c

    .line 136
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->j:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 140
    :goto_4b
    return-object v0

    .line 138
    :cond_4c
    invoke-virtual {v1}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_4b
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/f$d;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public onDecodedData([B)V
    .registers 12

    .prologue
    const/16 v9, 0xc80

    .line 179
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    invoke-direct {p0, v0, p1}, Lcom/baidu/tts/b/a/b/f$d;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    .line 180
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    array-length v0, v0

    .line 181
    if-lt v0, v9, :cond_38

    .line 182
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v1}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v1

    array-length v1, v1

    .line 183
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v2}, Lcom/baidu/tts/m/h;->c()I

    move-result v2

    .line 184
    int-to-double v3, v0

    int-to-double v5, v1

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    .line 185
    iget v1, p0, Lcom/baidu/tts/b/a/b/f$d;->g:I

    int-to-double v5, v1

    iget v1, p0, Lcom/baidu/tts/b/a/b/f$d;->g:I

    sub-int v1, v2, v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    add-double/2addr v1, v5

    double-to-int v1, v1

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/tts/b/a/b/f$d;->a(I)V

    .line 188
    :cond_38
    array-length v1, p1

    if-nez v1, :cond_5c

    .line 189
    if-ge v0, v9, :cond_46

    .line 190
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v0}, Lcom/baidu/tts/m/h;->c()I

    move-result v0

    .line 191
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/f$d;->a(I)V

    .line 193
    :cond_46
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v0}, Lcom/baidu/tts/m/h;->c()I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$d;->g:I

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    .line 195
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v0}, Lcom/baidu/tts/m/h;->b()I

    move-result v0

    if-gez v0, :cond_5c

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$d;->g:I

    .line 199
    :cond_5c
    return-void
.end method
