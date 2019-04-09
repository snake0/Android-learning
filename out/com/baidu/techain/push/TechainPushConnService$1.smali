.class final Lcom/baidu/techain/push/TechainPushConnService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/techain/push/TechainPushConnService;


# direct methods
.method constructor <init>(Lcom/baidu/techain/push/TechainPushConnService;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    :try_start_2
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    # getter for: Lcom/baidu/techain/push/TechainPushConnService;->mFha:Lcom/baidu/techain/core/d;
    invoke-static {v0}, Lcom/baidu/techain/push/TechainPushConnService;->access$000(Lcom/baidu/techain/push/TechainPushConnService;)Lcom/baidu/techain/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/core/d;->c()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_36

    move-result v0

    .line 58
    if-nez v0, :cond_5b

    .line 60
    const-wide/16 v3, 0xbb8

    :try_start_10
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_36

    .line 64
    :goto_13
    :try_start_13
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    # getter for: Lcom/baidu/techain/push/TechainPushConnService;->mFha:Lcom/baidu/techain/core/d;
    invoke-static {v0}, Lcom/baidu/techain/push/TechainPushConnService;->access$000(Lcom/baidu/techain/push/TechainPushConnService;)Lcom/baidu/techain/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/core/d;->c()Z

    move-result v0

    .line 65
    if-nez v0, :cond_3b

    .line 66
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/techain/push/TechainPushConnService;->reportInitPushModuleResult(Z)V

    .line 67
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/techain/push/TechainPushConnService;->reportKillSelf(I)V

    .line 68
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    invoke-virtual {v0}, Lcom/baidu/techain/push/TechainPushConnService;->stopSelf()V

    .line 102
    :cond_30
    :goto_30
    return-void

    .line 62
    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_35} :catch_36

    goto :goto_13

    .line 100
    :catch_36
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_30

    .line 71
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/baidu/techain/push/TechainPushConnService;->reportInitPushModuleResult(Z)V

    .line 76
    :goto_41
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    .line 77
    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 78
    const-string v3, "com.baidu.techain.x18"

    .line 79
    invoke-virtual {v0, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 80
    if-nez v0, :cond_62

    .line 81
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/techain/push/TechainPushConnService;->reportKillSelf(I)V

    .line 82
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    invoke-virtual {v0}, Lcom/baidu/techain/push/TechainPushConnService;->stopSelf()V

    goto :goto_30

    .line 74
    :cond_5b
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/baidu/techain/push/TechainPushConnService;->reportInitPushModuleResult(Z)V

    goto :goto_41

    .line 85
    :cond_62
    iget-object v3, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    iget-object v4, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    # setter for: Lcom/baidu/techain/push/TechainPushConnService;->mPushPluginVersion:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/techain/push/TechainPushConnService;->access$102(Lcom/baidu/techain/push/TechainPushConnService;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    iget v0, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    # setter for: Lcom/baidu/techain/push/TechainPushConnService;->sPushPluginId:I
    invoke-static {v0}, Lcom/baidu/techain/push/TechainPushConnService;->access$202(I)I

    .line 88
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    # getter for: Lcom/baidu/techain/push/TechainPushConnService;->sPushPluginId:I
    invoke-static {}, Lcom/baidu/techain/push/TechainPushConnService;->access$200()I

    move-result v3

    # invokes: Lcom/baidu/techain/push/TechainPushConnService;->startDataServer(I)Landroid/util/Pair;
    invoke-static {v0, v3}, Lcom/baidu/techain/push/TechainPushConnService;->access$300(Lcom/baidu/techain/push/TechainPushConnService;I)Landroid/util/Pair;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_c3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c3

    move v3, v1

    .line 90
    :goto_85
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_91

    if-nez v3, :cond_c7

    .line 91
    :cond_91
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    # getter for: Lcom/baidu/techain/push/TechainPushConnService;->sPushPluginId:I
    invoke-static {}, Lcom/baidu/techain/push/TechainPushConnService;->access$200()I

    move-result v3

    # invokes: Lcom/baidu/techain/push/TechainPushConnService;->startDataServer(I)Landroid/util/Pair;
    invoke-static {v0, v3}, Lcom/baidu/techain/push/TechainPushConnService;->access$300(Lcom/baidu/techain/push/TechainPushConnService;I)Landroid/util/Pair;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_c5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c5

    move v0, v1

    :goto_a8
    move v1, v0

    move-object v0, v3

    .line 94
    :goto_aa
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b6

    if-nez v1, :cond_30

    .line 95
    :cond_b6
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/techain/push/TechainPushConnService;->reportKillSelf(I)V

    .line 96
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$1;->a:Lcom/baidu/techain/push/TechainPushConnService;

    invoke-virtual {v0}, Lcom/baidu/techain/push/TechainPushConnService;->stopSelf()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_c1} :catch_36

    goto/16 :goto_30

    :cond_c3
    move v3, v2

    .line 89
    goto :goto_85

    :cond_c5
    move v0, v2

    .line 92
    goto :goto_a8

    :cond_c7
    move v1, v3

    move-object v0, v4

    goto :goto_aa
.end method
