.class public Lcom/baidu/location/a/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/u;->a:Landroid/os/HandlerThread;

    return-void
.end method

.method public static declared-synchronized a()Landroid/os/HandlerThread;
    .registers 4

    const-class v1, Lcom/baidu/location/a/u;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/a/u;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_17

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ServiceStartArguments"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/a/u;->a:Landroid/os/HandlerThread;

    sget-object v0, Lcom/baidu/location/a/u;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_17
    sget-object v0, Lcom/baidu/location/a/u;->a:Landroid/os/HandlerThread;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
