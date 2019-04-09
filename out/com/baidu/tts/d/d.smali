.class public Lcom/baidu/tts/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/d/c;

.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/client/model/DownloadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/tts/l/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/d;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 26
    invoke-static {}, Lcom/baidu/tts/d/c;->a()Lcom/baidu/tts/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/d;->a:Lcom/baidu/tts/d/c;

    .line 27
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/tts/d/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    .line 70
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/DownloadHandler;->stop()V

    goto :goto_a

    .line 72
    :cond_1a
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .registers 4

    .prologue
    .line 95
    if-eqz p1, :cond_1c

    .line 96
    invoke-virtual {p1}, Lcom/baidu/tts/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 97
    invoke-virtual {p1}, Lcom/baidu/tts/d/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/d;->a(Ljava/lang/String;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1c

    .line 100
    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/model/DownloadHandler;->reset(Lcom/baidu/tts/d/b;)V

    .line 101
    iget-object v1, p0, Lcom/baidu/tts/d/d;->a:Lcom/baidu/tts/d/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/client/model/DownloadHandler;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    .line 105
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/baidu/tts/client/model/DownloadHandler;
    .registers 4

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/d/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    .line 111
    if-nez v0, :cond_17

    .line 112
    new-instance v0, Lcom/baidu/tts/client/model/DownloadHandler;

    iget-object v1, p0, Lcom/baidu/tts/d/d;->c:Lcom/baidu/tts/l/a;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/DownloadHandler;-><init>(Lcom/baidu/tts/l/a;)V

    .line 113
    iget-object v1, p0, Lcom/baidu/tts/d/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    .line 117
    :cond_17
    :goto_17
    monitor-exit p0

    return-object v0

    .line 116
    :catch_19
    move-exception v0

    .line 117
    const/4 v0, 0x0

    goto :goto_17

    .line 110
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/d/d;->a:Lcom/baidu/tts/d/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/c;->g()V

    .line 41
    return-void
.end method

.method public a(Lcom/baidu/tts/l/a;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/tts/d/d;->c:Lcom/baidu/tts/l/a;

    .line 86
    iget-object v0, p0, Lcom/baidu/tts/d/d;->a:Lcom/baidu/tts/d/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/l/a;)V

    .line 87
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/baidu/tts/d/d;->c()V

    .line 62
    iget-object v0, p0, Lcom/baidu/tts/d/d;->a:Lcom/baidu/tts/d/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/c;->e()V

    .line 63
    return-void
.end method
