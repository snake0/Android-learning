.class final Lcom/baidu/techain/d$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/d;


# direct methods
.method constructor <init>(Lcom/baidu/techain/d;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 64
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 65
    const-class v1, Lcom/baidu/techain/d;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_92

    .line 66
    :try_start_9
    iget-object v0, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v0}, Lcom/baidu/techain/d;->a(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 67
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 69
    iget-object v0, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v0}, Lcom/baidu/techain/d;->b(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v2}, Lcom/baidu/techain/d;->a(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v0}, Lcom/baidu/techain/d;->a(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V

    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    .line 73
    invoke-static {v2}, Lcom/baidu/techain/d;->a(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    .line 75
    invoke-static {v0}, Lcom/baidu/techain/d;->c(Lcom/baidu/techain/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v2}, Lcom/baidu/techain/d;->d(Lcom/baidu/techain/d;)I

    move-result v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    .line 76
    invoke-static {v4}, Lcom/baidu/techain/d;->a(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    .line 77
    invoke-static {v5}, Lcom/baidu/techain/d;->b(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v0, v2, v3, v4}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v2}, Lcom/baidu/techain/d;->a(Lcom/baidu/techain/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 79
    iget-object v0, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v0}, Lcom/baidu/techain/d;->c(Lcom/baidu/techain/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/techain/d$1;->a:Lcom/baidu/techain/d;

    invoke-static {v2}, Lcom/baidu/techain/d;->d(Lcom/baidu/techain/d;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/techain/a/a;->b(II)V

    .line 82
    :cond_8d
    monitor-exit v1

    .line 86
    :goto_8e
    return-void

    .line 82
    :catchall_8f
    move-exception v0

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_9 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v0
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_92} :catch_92

    .line 84
    :catch_92
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_8e
.end method
