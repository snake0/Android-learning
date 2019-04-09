.class public Lcom/mqunar/tools/QPreExecuteTaskUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/tools/QPreExecuteTaskUtils$QPreExecuteTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/mqunar/tools/QPreExecuteTaskUtils;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static declared-synchronized addTask(Lcom/mqunar/tools/QPreExecuteTaskUtils$QPreExecuteTask;)V
    .registers 3

    .prologue
    .line 16
    const-class v1, Lcom/mqunar/tools/QPreExecuteTaskUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mqunar/tools/QPreExecuteTaskUtils;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 17
    monitor-exit v1

    return-void

    .line 16
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized runAllTask()V
    .registers 3

    .prologue
    .line 20
    const-class v1, Lcom/mqunar/tools/QPreExecuteTaskUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mqunar/tools/QPreExecuteTaskUtils;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 21
    sget-object v0, Lcom/mqunar/tools/QPreExecuteTaskUtils;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 22
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/QPreExecuteTaskUtils$QPreExecuteTask;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    .line 25
    :try_start_1d
    invoke-interface {v0}, Lcom/mqunar/tools/QPreExecuteTaskUtils$QPreExecuteTask;->execute()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    .line 27
    :try_start_20
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_11

    .line 20
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    .line 27
    :catchall_27
    move-exception v0

    :try_start_28
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    throw v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_24

    .line 31
    :cond_2c
    monitor-exit v1

    return-void
.end method
