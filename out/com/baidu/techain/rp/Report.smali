.class public Lcom/baidu/techain/rp/Report;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/techain/rp/Report;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/techain/rp/Report;
    .registers 3

    .prologue
    .line 20
    const-class v1, Lcom/baidu/techain/rp/Report;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/techain/rp/Report;->a:Lcom/baidu/techain/rp/Report;

    if-nez v0, :cond_e

    .line 21
    new-instance v0, Lcom/baidu/techain/rp/Report;

    invoke-direct {v0, p0}, Lcom/baidu/techain/rp/Report;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/techain/rp/Report;->a:Lcom/baidu/techain/rp/Report;

    .line 23
    :cond_e
    sget-object v0, Lcom/baidu/techain/rp/Report;->a:Lcom/baidu/techain/rp/Report;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public fr()V
    .registers 4

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    .line 1107
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1108
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1110
    iget-object v0, v0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 97
    :goto_14
    return-void

    .line 95
    :catch_15
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_14
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 42
    :goto_a
    return-void

    .line 40
    :catch_b
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_a
.end method

.method public n()V
    .registers 4

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    .line 1100
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1101
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1103
    iget-object v0, v0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 89
    :goto_13
    return-void

    .line 87
    :catch_14
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_13
.end method

.method public r(Z)V
    .registers 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/b/f;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 68
    :goto_9
    return-void

    .line 66
    :catch_a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 47
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 51
    :goto_10
    return-void

    .line 49
    :catch_11
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_10
.end method

.method public sr(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 56
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    .line 1084
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1085
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1086
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1088
    iget-object v0, v0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 60
    :goto_21
    return-void

    .line 58
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_21
.end method

.method public w(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 81
    :goto_5
    return-void

    .line 79
    :catch_6
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5
.end method
