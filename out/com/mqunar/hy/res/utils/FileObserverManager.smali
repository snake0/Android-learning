.class public Lcom/mqunar/hy/res/utils/FileObserverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hybridInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->map:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->hybridInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static addHybridInfoObserver(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 19
    sget-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 20
    if-nez v0, :cond_25

    .line 21
    new-instance v0, Lcom/mqunar/hy/res/utils/FileObserverManager$MyFileObserver;

    iget-object v1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/utils/FileObserverManager$MyFileObserver;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/mqunar/hy/res/utils/FileObserverManager;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_1a
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 27
    sget-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->hybridInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void

    .line 24
    :cond_25
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_1a
.end method

.method public static removeObserver(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 32
    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 35
    :cond_d
    sget-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->hybridInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 37
    if-eqz v0, :cond_1f

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->checked:Z

    .line 40
    :cond_1f
    sget-object v0, Lcom/mqunar/hy/res/utils/FileObserverManager;->hybridInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
