.class final Lcom/mqunar/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/module/ModuleInfo;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/mqunar/module/ModuleInfo;Ljava/lang/Class;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 5

    .prologue
    .line 740
    iput-object p1, p0, Lcom/mqunar/core/c;->a:Lcom/mqunar/module/ModuleInfo;

    iput-object p2, p0, Lcom/mqunar/core/c;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/mqunar/core/c;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/core/c;->a:Lcom/mqunar/module/ModuleInfo;

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    if-nez v0, :cond_3d

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 746
    iget-object v2, p0, Lcom/mqunar/core/c;->a:Lcom/mqunar/module/ModuleInfo;

    iget-object v3, p0, Lcom/mqunar/core/c;->b:Ljava/lang/Class;

    iget-object v4, p0, Lcom/mqunar/core/c;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v3

    iput-object v3, v2, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    .line 747
    iget-object v2, p0, Lcom/mqunar/core/c;->a:Lcom/mqunar/module/ModuleInfo;

    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->onCreate()V

    .line 748
    const-string v2, "QunarApkLoader-WASTE"

    const-string v3, "application (%s) onCreate waste (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mqunar/core/c;->b:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3d} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3d} :catch_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3d} :catch_6f
    .catchall {:try_start_0 .. :try_end_3d} :catchall_57

    .line 757
    :cond_3d
    iget-object v1, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 758
    :try_start_40
    iget-object v0, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 759
    iget-object v0, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 760
    monitor-exit v1

    .line 762
    return-void

    .line 760
    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw v0

    .line 750
    :catch_50
    move-exception v0

    .line 751
    :try_start_51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_57

    .line 757
    :catchall_57
    move-exception v0

    iget-object v1, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 758
    :try_start_5b
    iget-object v2, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 759
    iget-object v2, p0, Lcom/mqunar/core/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 760
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_76

    throw v0

    .line 752
    :catch_68
    move-exception v0

    .line 753
    :try_start_69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 754
    :catch_6f
    move-exception v0

    .line 755
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_57

    .line 760
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method
