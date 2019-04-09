.class public Lcom/iflytek/cloud/thirdparty/dj;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/dk;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    const/4 v0, -0x1

    sput v0, Lcom/iflytek/cloud/thirdparty/dj;->b:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/iflytek/cloud/thirdparty/dj;

    monitor-enter v1

    :try_start_3
    const-string v0, "============start============="

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/dr;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/dk;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/dk;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dk;->a()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dk;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/dk;->a(J)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dt;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/iflytek/cloud/thirdparty/dm;

    invoke-direct {v2, p0}, Lcom/iflytek/cloud/thirdparty/dm;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2c
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/dj;->d(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 6

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/dk;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "LaunchImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startService not need:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/dr;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.iflytek.common.ACTION_LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start app:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/dr;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_20

    :catch_4c
    move-exception v0

    const-string v1, "LaunchImpl"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/dr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/iflytek/cloud/thirdparty/dj;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/dk;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/dk;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    :cond_d
    sget-object v0, Lcom/iflytek/cloud/thirdparty/dj;->a:Lcom/iflytek/cloud/thirdparty/dk;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/dk;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/dj;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.iflytek.common.ACTION_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xe0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_1c

    move-result-object v0

    :goto_12
    if-nez v0, :cond_26

    const-string v0, "LaunchImpl"

    const-string v1, "query action null"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/dr;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v2, "LaunchImpl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/dr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_12

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/dj;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    goto :goto_2a
.end method

.method private static d(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/iflytek/cloud/thirdparty/dj;->b:I

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/iflytek/common/LaunchService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    sput v0, Lcom/iflytek/cloud/thirdparty/dj;->b:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_4

    :catch_19
    move-exception v0

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/dj;->b:I

    const-string v0, "LaunchImpl"

    const-string v1, "start self Service error"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/dr;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
