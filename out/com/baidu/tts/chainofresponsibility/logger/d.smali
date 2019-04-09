.class public Lcom/baidu/tts/chainofresponsibility/logger/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/chainofresponsibility/logger/d;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/chainofresponsibility/logger/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/baidu/tts/chainofresponsibility/logger/f;

.field private e:Lcom/baidu/tts/chainofresponsibility/logger/e;

.field private f:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    .line 26
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Z

    .line 37
    invoke-direct {p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/f;

    .line 39
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/baidu/tts/g/a/a;

    const-string v1, "LoggerChainPoolThread"

    invoke-direct {v0, v1}, Lcom/baidu/tts/g/a/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 41
    return-void
.end method

.method public static a()Lcom/baidu/tts/chainofresponsibility/logger/d;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    if-nez v0, :cond_13

    .line 49
    const-class v1, Lcom/baidu/tts/chainofresponsibility/logger/d;

    monitor-enter v1

    .line 50
    :try_start_7
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;-><init>()V

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    .line 53
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 55
    :cond_13
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    return-object v0

    .line 53
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/baidu/tts/chainofresponsibility/logger/d;)Ljava/util/List;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/baidu/tts/chainofresponsibility/logger/c;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 131
    if-nez p1, :cond_7

    .line 132
    new-instance p1, Lcom/baidu/tts/chainofresponsibility/logger/c;

    invoke-direct {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;-><init>()V

    .line 134
    :cond_7
    invoke-virtual {p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a(I)V

    .line 135
    invoke-virtual {p1, p3}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, p4}, Lcom/baidu/tts/chainofresponsibility/logger/c;->b(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;)V

    .line 138
    return-void
.end method

.method private b(Lcom/baidu/tts/chainofresponsibility/logger/c;)V
    .registers 6

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_16

    .line 162
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;-><init>(Lcom/baidu/tts/chainofresponsibility/logger/d;Lcom/baidu/tts/chainofresponsibility/logger/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 167
    :cond_16
    :goto_16
    return-void

    .line 164
    :catch_17
    move-exception v0

    .line 165
    const-string v1, "LoggerChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeWork exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method static synthetic f()Lcom/baidu/tts/chainofresponsibility/logger/d;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    return-object v0
.end method

.method private g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/chainofresponsibility/logger/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    goto :goto_9
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 127
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/c;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public a(Lcom/baidu/tts/chainofresponsibility/logger/c;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 141
    if-eqz p1, :cond_13

    .line 142
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$1;->a:[I

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    invoke-virtual {v1}, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 155
    :cond_10
    :goto_10
    invoke-direct {p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b(Lcom/baidu/tts/chainofresponsibility/logger/c;)V

    .line 157
    :cond_13
    return-void

    .line 144
    :pswitch_14
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a(I)V

    .line 145
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p1, v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V

    goto :goto_10

    .line 148
    :pswitch_20
    iget-boolean v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Z

    if-eqz v0, :cond_10

    .line 149
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p1, v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V

    goto :goto_10

    .line 142
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a(Ljava/lang/String;)V

    .line 86
    :cond_9
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a(Ljava/util/List;)V

    .line 92
    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Z

    .line 80
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/e;->b(Ljava/lang/String;)V

    .line 101
    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a()V

    .line 116
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 119
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    .line 120
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
