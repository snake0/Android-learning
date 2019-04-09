.class public final Lcom/mqunar/idscan/decode/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/decode/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/decode/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/decode/e;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/mqunar/idscan/decode/e;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/decode/e;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mqunar/idscan/decode/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/idscan/decode/e;->c:Landroid/os/AsyncTask;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/decode/e;->c:Landroid/os/AsyncTask;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/mqunar/idscan/decode/e;->f()V

    new-instance v0, Lcom/mqunar/idscan/decode/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mqunar/idscan/decode/f;-><init>(Lcom/mqunar/idscan/decode/e;B)V

    iput-object v0, p0, Lcom/mqunar/idscan/decode/e;->c:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/e;->c:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/mqunar/idscan/decode/e;->f()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/idscan/decode/e;->a()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .registers 1

    invoke-direct {p0}, Lcom/mqunar/idscan/decode/e;->f()V

    return-void
.end method
