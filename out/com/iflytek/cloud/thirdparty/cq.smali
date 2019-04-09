.class public abstract Lcom/iflytek/cloud/thirdparty/cq;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cq;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/iflytek/cloud/thirdparty/cq$a;)Lcom/iflytek/cloud/thirdparty/cq;
    .registers 3

    const-class v0, Lcom/iflytek/cloud/thirdparty/cq;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cr;->b(Lcom/iflytek/cloud/thirdparty/cq$a;)Lcom/iflytek/cloud/thirdparty/cr;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()V
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/cq;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->c()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    const-class v0, Lcom/iflytek/cloud/thirdparty/cq;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/cr;->b(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a(Lcom/iflytek/cloud/SpeechError;)V
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public abstract b()V
.end method
