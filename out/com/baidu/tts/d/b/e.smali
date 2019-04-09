.class public Lcom/baidu/tts/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/d/b/e;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    return-void
.end method

.method public static a()Lcom/baidu/tts/d/b/e;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    if-nez v0, :cond_13

    .line 29
    const-class v1, Lcom/baidu/tts/d/b/e;

    monitor-enter v1

    .line 30
    :try_start_7
    sget-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    if-nez v0, :cond_12

    .line 31
    new-instance v0, Lcom/baidu/tts/d/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/d/b/e;-><init>()V

    sput-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    .line 33
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 35
    :cond_13
    sget-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    return-object v0

    .line 33
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;
    .registers 4

    .prologue
    .line 40
    :try_start_0
    new-instance v1, Lcom/baidu/tts/d/b/d;

    invoke-direct {v1, p1}, Lcom/baidu/tts/d/b/d;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/d;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_11

    .line 42
    if-nez v0, :cond_10

    move-object v0, v1

    .line 47
    :cond_10
    :goto_10
    return-object v0

    .line 46
    :catch_11
    move-exception v0

    .line 47
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .registers 3

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/DownloadHandler;->getModelId()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/d;->b(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/e;->d(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_9

    .line 107
    invoke-virtual {v0, p2}, Lcom/baidu/tts/d/b/b;->b(Ljava/lang/String;)V

    .line 109
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;
    .registers 4

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lcom/baidu/tts/d/b/c;

    invoke-direct {v1, p1}, Lcom/baidu/tts/d/b/c;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/c;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_11

    .line 55
    if-nez v0, :cond_10

    move-object v0, v1

    .line 60
    :cond_10
    :goto_10
    return-object v0

    .line 59
    :catch_11
    move-exception v0

    .line 60
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/d;

    .line 116
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/d;->a()V

    goto :goto_a

    .line 118
    :cond_1a
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;
    .registers 4

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lcom/baidu/tts/d/b/b;

    invoke-direct {v1, p1}, Lcom/baidu/tts/d/b/b;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/b;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_11

    .line 68
    if-nez v0, :cond_10

    move-object v0, v1

    .line 73
    :cond_10
    :goto_10
    return-object v0

    .line 72
    :catch_11
    move-exception v0

    .line 73
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public d(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;
    .registers 3

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_f

    .line 80
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 84
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public e(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/e;->d(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/e;->d(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->d()I

    move-result v0

    return v0
.end method
