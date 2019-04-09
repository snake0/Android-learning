.class final Lqunar/lego/utils/Goblin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 131
    invoke-static {}, Lqunar/lego/utils/Goblin;->getInfoNative()Ljava/lang/String;

    move-result-object v0

    .line 132
    # getter for: Lqunar/lego/utils/Goblin;->nativeJsonLock:Ljava/lang/Object;
    invoke-static {}, Lqunar/lego/utils/Goblin;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_9
    # setter for: Lqunar/lego/utils/Goblin;->nativeJson:Ljava/lang/String;
    invoke-static {v0}, Lqunar/lego/utils/Goblin;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    # getter for: Lqunar/lego/utils/Goblin;->nativeJsonLock:Ljava/lang/Object;
    invoke-static {}, Lqunar/lego/utils/Goblin;->access$300()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v0
.end method
