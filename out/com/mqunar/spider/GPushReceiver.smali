.class public Lcom/mqunar/spider/GPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mqunar/spider/GPushReceiver;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 51
    .line 53
    sget-object v1, Lcom/mqunar/spider/GPushReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_4
    sget-object v0, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_54

    sget-object v0, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    sget-object v3, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 57
    const/4 v3, 0x0

    sput-object v3, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    .line 59
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_4a

    .line 61
    if-eqz v0, :cond_53

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 65
    :try_start_38
    const-string v1, "com.mqunar.atom.push.GPushReceiver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_44} :catch_4d

    .line 69
    :goto_44
    if-eqz v1, :cond_2c

    .line 70
    invoke-virtual {v1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2c

    .line 59
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    .line 66
    :catch_4d
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_44

    .line 74
    :cond_53
    return-void

    :cond_54
    move-object v0, v2

    goto :goto_1f
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 24
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/mqunar/core/QSpider;->loadDone:Z

    if-eqz v0, :cond_38

    .line 25
    sget-object v0, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init fail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 24
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 28
    :cond_18
    :try_start_18
    invoke-static {p1}, Lcom/mqunar/spider/GPushReceiver;->check(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 29
    const/4 v1, 0x0

    .line 31
    :try_start_1c
    const-string v0, "com.mqunar.atom.push.GPushReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_32
    .catchall {:try_start_1c .. :try_end_28} :catchall_15

    .line 35
    :goto_28
    if-eqz v0, :cond_2d

    .line 36
    :try_start_2a
    invoke-virtual {v0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/mqunar/spider/GPushReceiver;->abortBroadcast()V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_15

    .line 47
    monitor-exit p0

    return-void

    .line 32
    :catch_32
    move-exception v0

    .line 33
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_28

    .line 39
    :cond_38
    sget-object v1, Lcom/mqunar/spider/GPushReceiver;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_15

    .line 40
    :try_start_3b
    sget-object v0, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    if-nez v0, :cond_46

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    .line 43
    :cond_46
    sget-object v0, Lcom/mqunar/spider/GPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    goto :goto_2d

    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_15
.end method
