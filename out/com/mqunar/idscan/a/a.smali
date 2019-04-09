.class final Lcom/mqunar/idscan/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private final c:Z

.field private final d:Landroid/hardware/Camera;

.field private e:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/hardware/Camera;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/a/a;->d:Landroid/hardware/Camera;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/a;->c:Z

    invoke-virtual {p0}, Lcom/mqunar/idscan/a/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/idscan/a/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mqunar/idscan/a/a;->b:Z

    return v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mqunar/idscan/a/a;->c:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/a;->b:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_14

    :try_start_8
    iget-object v0, p0, Lcom/mqunar/idscan/a/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_f
    .catchall {:try_start_8 .. :try_end_d} :catchall_14

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :catch_f
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_d

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mqunar/idscan/a/a;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v0, :cond_a

    :try_start_5
    iget-object v0, p0, Lcom/mqunar/idscan/a/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_1c
    .catchall {:try_start_5 .. :try_end_a} :catchall_2b

    :cond_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/idscan/a/a;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mqunar/idscan/a/a;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/a;->e:Landroid/os/AsyncTask;

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/a;->b:Z
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_2b

    monitor-exit p0

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    sget-object v1, Lcom/mqunar/idscan/a/a;->a:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2b

    goto :goto_a

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_25

    :try_start_3
    const-string v0, "autofocus"

    const-string v1, "auto focus success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    iget-boolean v0, p0, Lcom/mqunar/idscan/a/a;->b:Z

    if-eqz v0, :cond_23

    new-instance v0, Lcom/mqunar/idscan/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mqunar/idscan/a/b;-><init>(Lcom/mqunar/idscan/a/a;B)V

    iput-object v0, p0, Lcom/mqunar/idscan/a/a;->e:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/mqunar/idscan/a/a;->e:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_30

    :cond_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    const-string v0, "autofocus"

    const-string v1, "auto focus fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_30

    goto :goto_d

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method
