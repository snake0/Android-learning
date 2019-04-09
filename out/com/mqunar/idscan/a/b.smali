.class final Lcom/mqunar/idscan/a/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mqunar/idscan/a/a;


# direct methods
.method private constructor <init>(Lcom/mqunar/idscan/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/a/b;->a:Lcom/mqunar/idscan/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/idscan/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mqunar/idscan/a/b;-><init>(Lcom/mqunar/idscan/a/a;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_18

    :goto_5
    iget-object v1, p0, Lcom/mqunar/idscan/a/b;->a:Lcom/mqunar/idscan/a/a;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/mqunar/idscan/a/b;->a:Lcom/mqunar/idscan/a/a;

    invoke-static {v0}, Lcom/mqunar/idscan/a/a;->a(Lcom/mqunar/idscan/a/a;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mqunar/idscan/a/b;->a:Lcom/mqunar/idscan/a/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/a;->a()V

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1d

    const/4 v0, 0x0

    return-object v0

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method
