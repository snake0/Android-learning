.class public Lcom/taobao/android/runtime/Dex2OatService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/android/runtime/Dex2OatService;->a:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/runtime/Dex2OatService;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 31
    const-string v0, "Dex2OatService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/taobao/android/runtime/a;->a()Lcom/taobao/android/runtime/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/android/runtime/a;->a(Z)V

    .line 33
    invoke-static {v1}, Lcom/taobao/android/dex/interpret/ARTUtils;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/runtime/Dex2OatService;->c:Ljava/lang/Boolean;

    .line 34
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 80
    const-class v1, Lcom/taobao/android/runtime/Dex2OatService;

    monitor-enter v1

    :try_start_3
    const-string v0, "Dex2OatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Dex2OatService start: sourcePathName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", outputPathName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-boolean v0, Lcom/taobao/android/runtime/Dex2OatService;->a:Z

    if-eqz v0, :cond_33

    .line 82
    new-instance v0, Lcom/taobao/android/runtime/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/android/runtime/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_42

    .line 96
    :cond_31
    :goto_31
    monitor-exit v1

    return-void

    .line 92
    :cond_33
    :try_start_33
    sget-object v0, Lcom/taobao/android/runtime/Dex2OatService;->b:Ljava/util/List;

    if-eqz v0, :cond_31

    .line 93
    sget-object v0, Lcom/taobao/android/runtime/Dex2OatService;->b:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/runtime/c;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/android/runtime/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_42

    goto :goto_31

    .line 80
    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/android/runtime/Dex2OatService;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/taobao/android/runtime/Dex2OatService;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    .line 70
    :cond_c
    :goto_c
    return-void

    .line 42
    :cond_d
    if-eqz p1, :cond_c

    .line 46
    const-string v0, "sourcePathName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v0, "outputPathName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 50
    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_29

    move-result-wide v0

    sub-long/2addr v0, v3

    goto :goto_c

    .line 65
    :catch_29
    move-exception v0

    .line 66
    const-string v3, "Dex2OatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- DexFile loadDex fail: sourcePathName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", outputPathName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
