.class public Lcom/baidu/tts/b/b/b/b;
.super Lcom/baidu/tts/b/b/b/a;
.source "SourceFile"


# instance fields
.field protected final b:Ljava/util/concurrent/locks/Lock;

.field protected final c:Ljava/util/concurrent/locks/Condition;

.field private volatile d:Landroid/media/AudioTrack;

.field private e:Lcom/baidu/tts/b/b/b/b$a;

.field private f:Lcom/baidu/tts/i/a/b;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/a;-><init>()V

    .line 29
    new-instance v0, Lcom/baidu/tts/i/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/i/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    .line 31
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Ljava/util/concurrent/locks/Condition;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 321
    return-void
.end method

.method private a(III)I
    .registers 9

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 74
    invoke-static {p1, p2, p3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 75
    mul-int/lit8 v2, v2, 0x2

    .line 78
    sparse-switch p2, :sswitch_data_24

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 92
    :goto_f
    const/4 v4, 0x3

    if-ne p3, v4, :cond_13

    move v0, v1

    :cond_13
    mul-int/2addr v0, v3

    .line 93
    rem-int v0, v2, v0

    if-nez v0, :cond_1a

    if-ge v2, v1, :cond_21

    .line 94
    :cond_1a
    const/16 v0, 0x1400

    .line 96
    :goto_1c
    return v0

    :sswitch_1d
    move v3, v1

    .line 83
    goto :goto_f

    :sswitch_1f
    move v3, v0

    .line 87
    goto :goto_f

    :cond_21
    move v0, v2

    goto :goto_1c

    .line 78
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1f
        0x4 -> :sswitch_1d
        0xc -> :sswitch_1f
    .end sparse-switch
.end method

.method private b(I)I
    .registers 3

    .prologue
    .line 297
    iget v0, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    if-le p1, v0, :cond_6

    .line 298
    iput p1, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    .line 300
    :cond_6
    iget v0, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    return v0
.end method

.method private b(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/b;->a(I)V

    .line 286
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->a()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    .line 288
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->d(Lcom/baidu/tts/m/h;)V

    .line 289
    return-void
.end method

.method private c(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->b()V

    .line 293
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->f(Lcom/baidu/tts/m/h;)V

    .line 294
    return-void
.end method

.method private d(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->a(Lcom/baidu/tts/m/h;)V

    .line 307
    :cond_9
    return-void
.end method

.method private e(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->b(Lcom/baidu/tts/m/h;)V

    .line 313
    :cond_9
    return-void
.end method

.method private f(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_9

    .line 317
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->c(Lcom/baidu/tts/m/h;)V

    .line 319
    :cond_9
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 150
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_10
    .catchall {:try_start_0 .. :try_end_a} :catchall_1a

    .line 154
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    :goto_f
    return-void

    .line 151
    :catch_10
    move-exception v0

    .line 152
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 154
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_f

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private h()I
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->h()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v1

    .line 280
    mul-int/lit8 v1, v1, 0x2

    div-int v0, v1, v0

    .line 281
    return v0
.end method


# virtual methods
.method public a(FF)I
    .registers 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(F)V

    .line 198
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/b/b/b$a;->b(F)V

    .line 199
    return v0
.end method

.method public a(I)I
    .registers 9

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->g()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 101
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v2

    .line 102
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v3

    .line 103
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v4

    .line 104
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v6

    .line 105
    invoke-direct {p0, v2, v3, v4}, Lcom/baidu/tts/b/b/b/b;->a(III)I

    move-result v5

    .line 106
    new-instance v0, Landroid/media/AudioTrack;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 107
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(I)V

    .line 108
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->e()F

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->f()F

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 111
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 113
    :cond_47
    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 8

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v2

    .line 60
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v3

    .line 61
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v4

    .line 62
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->g()I

    move-result v1

    .line 63
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v6

    .line 64
    invoke-direct {p0, v2, v3, v4}, Lcom/baidu/tts/b/b/b/b;->a(III)I

    move-result v5

    .line 65
    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 66
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->e()F

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->f()F

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 207
    const-string v0, "AudioTrackPlayer"

    const-string v1, "enter put"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_169

    .line 209
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->g()Lcom/baidu/tts/f/e;

    move-result-object v2

    .line 210
    sget-object v0, Lcom/baidu/tts/f/e;->a:Lcom/baidu/tts/f/e;

    if-ne v2, v0, :cond_16

    .line 211
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->b(Lcom/baidu/tts/m/h;)V

    .line 213
    :cond_16
    sget-object v0, Lcom/baidu/tts/f/e;->c:Lcom/baidu/tts/f/e;

    if-ne v2, v0, :cond_23

    .line 214
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/b;->c(I)V

    .line 216
    :cond_23
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v3

    .line 217
    if-eqz v3, :cond_2f

    .line 218
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    array-length v1, v3

    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/b;->b(I)V

    .line 220
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 221
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->c()Lcom/baidu/tts/i/a/a;

    move-result-object v4

    .line 222
    const/4 v0, 0x0

    .line 223
    invoke-virtual {v4}, Lcom/baidu/tts/i/a/a;->a()I

    move-result v5

    .line 224
    invoke-virtual {v4}, Lcom/baidu/tts/i/a/a;->b()I

    move-result v6

    .line 225
    :cond_46
    if-ge v0, v6, :cond_ed

    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v10, :cond_ed

    .line 226
    sub-int v1, v6, v0

    .line 227
    const-string v7, "AudioTrackPlayer"

    const-string v8, "before write"

    invoke-static {v7, v8}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    add-int v7, v0, v5

    .line 229
    iget-object v8, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v8, v3, v7, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 230
    const-string v7, "AudioTrackPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writtenbytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--dataLength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-ltz v1, :cond_90

    .line 233
    add-int/2addr v0, v1

    .line 235
    :cond_90
    :goto_90
    iget-boolean v1, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    if-eqz v1, :cond_46

    .line 237
    :try_start_94
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 238
    const-string v1, "AudioTrackPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "await before"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 240
    const-string v1, "AudioTrackPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "await after"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_d6} :catch_dc
    .catchall {:try_start_94 .. :try_end_d6} :catchall_e6

    .line 244
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_90

    .line 241
    :catch_dc
    move-exception v1

    .line 242
    :try_start_dd
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e6

    .line 244
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_90

    :catchall_e6
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 248
    :cond_ed
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v10, :cond_f6

    .line 274
    :goto_f5
    return-object v11

    .line 251
    :cond_f6
    invoke-virtual {v4}, Lcom/baidu/tts/i/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 252
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v0

    .line 253
    invoke-virtual {v4}, Lcom/baidu/tts/i/a/a;->d()F

    move-result v1

    .line 254
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 255
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/b/b/b;->b(I)I

    move-result v4

    .line 256
    const-string v5, "AudioTrackPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "percent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "--currentProgress="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/m/h;

    .line 259
    invoke-virtual {v0, v4}, Lcom/baidu/tts/m/h;->d(I)V

    .line 260
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/b/b/b;->e(Lcom/baidu/tts/m/h;)V

    goto/16 :goto_2f

    .line 263
    :cond_148
    sget-object v0, Lcom/baidu/tts/f/e;->b:Lcom/baidu/tts/f/e;

    if-ne v2, v0, :cond_161

    .line 264
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->d()I

    move-result v1

    .line 265
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/m/h;

    .line 266
    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->d(I)V

    .line 267
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/b/b/b;->e(Lcom/baidu/tts/m/h;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->c(Lcom/baidu/tts/m/h;)V

    .line 273
    :cond_161
    :goto_161
    const-string v0, "AudioTrackPlayer"

    const-string v1, "end put"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f5

    .line 271
    :cond_169
    const-string v0, "AudioTrackPlayer"

    const-string v1, "put responseBag=null"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_161
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    .line 43
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AudioTrackPlayerParams:",
            "Ljava/lang/Object;",
            ">(TAudioTrackPlayerParams;)V"
        }
    .end annotation

    .prologue
    .line 51
    check-cast p1, Lcom/baidu/tts/b/b/b/b$a;

    iput-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    .line 52
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 124
    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 132
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 136
    :cond_c
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 141
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 144
    :cond_c
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->g()V

    .line 145
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    if-eqz v0, :cond_a

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 165
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->g()V

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1d

    .line 168
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 169
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 170
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 172
    :cond_1d
    return-void
.end method

.method public f()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/b/b;->e()V

    .line 180
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_d

    .line 181
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 183
    :cond_d
    iput-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 184
    return-object v1
.end method
