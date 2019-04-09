.class final Lqunar/lego/utils/Goblin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lqunar/lego/utils/Goblin$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    :try_start_1
    iget-object v1, p0, Lqunar/lego/utils/Goblin$1;->val$context:Landroid/content/Context;

    # invokes: Lqunar/lego/utils/Goblin;->getJavaInfo(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1}, Lqunar/lego/utils/Goblin;->access$000(Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    move-result-object v0

    .line 116
    if-nez v0, :cond_b

    .line 117
    const-string v0, ""

    .line 119
    :cond_b
    # getter for: Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;
    invoke-static {}, Lqunar/lego/utils/Goblin;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_10
    # setter for: Lqunar/lego/utils/Goblin;->javaString:Ljava/lang/String;
    invoke-static {v0}, Lqunar/lego/utils/Goblin;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    # getter for: Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;
    invoke-static {}, Lqunar/lego/utils/Goblin;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit v1

    .line 125
    return-void

    .line 122
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v0

    .line 116
    :catchall_1f
    move-exception v1

    if-nez v0, :cond_24

    .line 117
    const-string v0, ""

    .line 119
    :cond_24
    # getter for: Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;
    invoke-static {}, Lqunar/lego/utils/Goblin;->access$100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 120
    :try_start_29
    # setter for: Lqunar/lego/utils/Goblin;->javaString:Ljava/lang/String;
    invoke-static {v0}, Lqunar/lego/utils/Goblin;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    # getter for: Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;
    invoke-static {}, Lqunar/lego/utils/Goblin;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    throw v1

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method
