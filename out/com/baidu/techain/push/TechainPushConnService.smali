.class public Lcom/baidu/techain/push/TechainPushConnService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final ERROR_CODE_KILL:I = 0x2

.field public static final PUSH_SERVICE_ACTION:Ljava/lang/String; = "com.baidu.techain.push.service.action"

.field private static sPushPluginId:I


# instance fields
.field private dataServerCallback:Lcom/baidu/techain/ac/Callback;

.field private mBinder:Landroid/os/IBinder;

.field private mFha:Lcom/baidu/techain/core/d;

.field private mPushPluginVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/baidu/techain/push/TechainPushConnService;->sPushPluginId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->mPushPluginVersion:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/baidu/techain/push/TechainPushConnService$2;

    invoke-direct {v0, p0}, Lcom/baidu/techain/push/TechainPushConnService$2;-><init>(Lcom/baidu/techain/push/TechainPushConnService;)V

    iput-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->dataServerCallback:Lcom/baidu/techain/ac/Callback;

    .line 203
    new-instance v0, Lcom/baidu/techain/push/TechainPushConnService$3;

    invoke-direct {v0, p0}, Lcom/baidu/techain/push/TechainPushConnService$3;-><init>(Lcom/baidu/techain/push/TechainPushConnService;)V

    iput-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/techain/push/TechainPushConnService;)Lcom/baidu/techain/core/d;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->mFha:Lcom/baidu/techain/core/d;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/techain/push/TechainPushConnService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/techain/push/TechainPushConnService;->mPushPluginVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 22
    sget v0, Lcom/baidu/techain/push/TechainPushConnService;->sPushPluginId:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1

    .prologue
    .line 22
    sput p0, Lcom/baidu/techain/push/TechainPushConnService;->sPushPluginId:I

    return p0
.end method

.method static synthetic access$300(Lcom/baidu/techain/push/TechainPushConnService;I)Landroid/util/Pair;
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/techain/push/TechainPushConnService;->startDataServer(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private startDataServer(I)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->mFha:Lcom/baidu/techain/core/d;

    const-string v1, "startDataServer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/baidu/techain/ac/Callback;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/techain/push/TechainPushConnService;->dataServerCallback:Lcom/baidu/techain/ac/Callback;

    aput-object v5, v3, v4

    .line 171
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "push::p:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 177
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_46

    .line 178
    const-string v2, "startDataServer"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/techain/push/TechainPushConnService;->reportMethodFail(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_48

    :cond_46
    move-object v0, v1

    .line 183
    :goto_47
    return-object v0

    .line 182
    :catch_48
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 183
    const/4 v0, 0x0

    goto :goto_47
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ph:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 38
    const-string v0, "com.baidu.techain.push.service.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 39
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->mBinder:Landroid/os/IBinder;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 44
    :goto_1f
    return-object v0

    .line 42
    :catch_20
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 44
    :cond_24
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService;->mFha:Lcom/baidu/techain/core/d;

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/techain/push/TechainPushConnService$1;

    invoke-direct {v1, p0}, Lcom/baidu/techain/push/TechainPushConnService$1;-><init>(Lcom/baidu/techain/push/TechainPushConnService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 108
    :goto_1a
    return-void

    .line 106
    :catch_1b
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1a
.end method

.method protected reportInitPushModuleResult(Z)V
    .registers 6

    .prologue
    .line 126
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 128
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    const-string v0, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "1"

    const-string v2, "3.1.6.1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "2"

    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "3"

    if-eqz p1, :cond_3f

    const/4 v0, 0x1

    :goto_2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "1003130"

    invoke-static {v0, v2, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3e} :catch_41

    .line 137
    :goto_3e
    return-void

    .line 132
    :cond_3f
    const/4 v0, 0x2

    goto :goto_2e

    .line 135
    :catch_41
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3e
.end method

.method protected reportKillSelf(I)V
    .registers 6

    .prologue
    .line 111
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 113
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v1, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "1"

    const-string v2, "3.1.6.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "2"

    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "3"

    iget-object v2, p0, Lcom/baidu/techain/push/TechainPushConnService;->mPushPluginVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "4"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "1003133"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_42} :catch_43

    .line 123
    :goto_42
    return-void

    .line 121
    :catch_43
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_42
.end method

.method protected reportMethodFail(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 7

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ph::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 190
    :try_start_17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    const-string v1, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "1"

    const-string v2, "3.1.6.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "2"

    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "3"

    iget-object v2, p0, Lcom/baidu/techain/push/TechainPushConnService;->mPushPluginVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "4"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "5"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Lcom/baidu/techain/push/TechainPushConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "1003131"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_57} :catch_58

    .line 201
    :goto_57
    return-void

    .line 199
    :catch_58
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_57
.end method
