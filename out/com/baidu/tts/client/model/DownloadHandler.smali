.class public Lcom/baidu/tts/client/model/DownloadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOAD_SUCCESS:I


# instance fields
.field private a:Lcom/baidu/tts/d/b;

.field private b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/baidu/tts/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/tts/aop/tts/TtsError;

.field private d:Lcom/baidu/tts/d/b/a;

.field private volatile e:Z

.field private f:Lcom/baidu/tts/l/a;

.field private g:Lcom/baidu/tts/client/model/RecordData;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/l/a;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->d:Lcom/baidu/tts/d/b/a;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    .line 30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->f:Lcom/baidu/tts/l/a;

    .line 37
    return-void
.end method

.method private a()Lcom/baidu/tts/client/model/OnDownloadListener;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lcom/baidu/tts/d/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b;->c()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 145
    new-instance v0, Lcom/baidu/tts/client/model/RecordData;

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->f:Lcom/baidu/tts/l/a;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/RecordData;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    .line 146
    monitor-enter p0

    .line 147
    :try_start_a
    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_2c

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    iget-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/baidu/tts/client/model/RecordData;->setStartInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3d

    .line 153
    invoke-direct {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->a()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_3c

    .line 155
    monitor-enter p0

    .line 156
    :try_start_34
    iget-boolean v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    if-nez v1, :cond_3b

    .line 157
    invoke-interface {v0, p1}, Lcom/baidu/tts/client/model/OnDownloadListener;->onStart(Ljava/lang/String;)V

    .line 159
    :cond_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_40

    .line 161
    :cond_3c
    return-void

    .line 151
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 159
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 175
    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_22

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    iget-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/baidu/tts/client/model/RecordData;->setEndInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    :cond_22
    invoke-direct {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->a()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_37

    .line 181
    monitor-enter p0

    .line 182
    :try_start_29
    iget-boolean v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    if-nez v1, :cond_36

    .line 183
    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/client/model/OnDownloadListener;->onFinish(Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lcom/baidu/tts/d/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b;->a(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    .line 186
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_87

    .line 189
    :cond_37
    monitor-enter p0

    .line 190
    :try_start_38
    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_5a

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    iget-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/baidu/tts/client/model/RecordData;->setEndInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    :cond_5a
    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_85

    .line 196
    new-instance v0, Lcom/baidu/tts/client/model/Statistics;

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->f:Lcom/baidu/tts/l/a;

    invoke-virtual {v1}, Lcom/baidu/tts/l/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/Statistics;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/Statistics;->start()I

    move-result v0

    .line 198
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " statistics ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_38 .. :try_end_86} :catchall_8a

    .line 201
    return-void

    .line 186
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v0

    .line 200
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .registers 12

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->a()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_12

    .line 166
    monitor-enter p0

    .line 167
    :try_start_7
    iget-boolean v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    if-nez v1, :cond_11

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 168
    invoke-interface/range {v0 .. v5}, Lcom/baidu/tts/client/model/OnDownloadListener;->onProgress(Ljava/lang/String;JJ)V

    .line 170
    :cond_11
    monitor-exit p0

    .line 172
    :cond_12
    return-void

    .line 170
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public getDownloadParams()Lcom/baidu/tts/d/b;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lcom/baidu/tts/d/b;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->getErrorCode(Lcom/baidu/tts/aop/tts/TtsError;)I

    move-result v0

    return v0
.end method

.method public getErrorCode(Lcom/baidu/tts/aop/tts/TtsError;)I
    .registers 3

    .prologue
    .line 79
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->getErrorMessage(Lcom/baidu/tts/aop/tts/TtsError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage(Lcom/baidu/tts/aop/tts/TtsError;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getModelId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lcom/baidu/tts/d/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    const-string v0, "DownloadHandler"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 112
    monitor-exit p0

    return-void

    .line 110
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset(Lcom/baidu/tts/d/b;)V
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/baidu/tts/client/model/DownloadHandler;->setDownloadParams(Lcom/baidu/tts/d/b;)V

    .line 106
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->reset()V

    .line 107
    return-void
.end method

.method public setCheckFuture(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/baidu/tts/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    .line 58
    return-void
.end method

.method public setDownloadParams(Lcom/baidu/tts/d/b;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lcom/baidu/tts/d/b;

    .line 102
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Lcom/baidu/tts/aop/tts/TtsError;

    .line 65
    return-void
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    const-string v0, "DownloadHandler"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    .line 117
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_18

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    .line 121
    :cond_18
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->d:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/b/a;->a(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lcom/baidu/tts/d/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b;->a(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 123
    monitor-exit p0

    return-void

    .line 115
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateFinish(Lcom/baidu/tts/d/b/d;Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 4

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->updateFinish(Ljava/lang/String;Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 137
    return-void
.end method

.method public updateFinish(Ljava/lang/String;Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 4

    .prologue
    .line 140
    invoke-virtual {p0, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 141
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->getErrorCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->a(Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method public updateProgress(Lcom/baidu/tts/d/b/d;)V
    .registers 8

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/d;->h()J

    move-result-wide v2

    .line 131
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/d;->c()J

    move-result-wide v4

    .line 132
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/d;->g()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/client/model/DownloadHandler;->a(Ljava/lang/String;JJ)V

    .line 133
    return-void
.end method

.method public updateStart(Lcom/baidu/tts/d/b/d;)V
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method
