.class public Lcom/mqunar/core/Loaders;
.super Lcom/mqunar/core/BaseLockMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/core/BaseLockMap",
        "<",
        "Lcom/mqunar/module/ModuleInfo;",
        "Lcom/mqunar/core/BaseApkLoader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mqunar/core/BaseLockMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/mqunar/module/ModuleInfo;Lcom/mqunar/core/BaseApkLoader;)V
    .registers 4

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/mqunar/core/Loaders;->writeLock()V

    .line 19
    iget-object v0, p0, Lcom/mqunar/core/Loaders;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mqunar/module/ModuleInfo;->isLoad:Z

    .line 21
    iput-object p2, p1, Lcom/mqunar/module/ModuleInfo;->loader:Lcom/mqunar/core/BaseApkLoader;

    .line 22
    invoke-virtual {p0}, Lcom/mqunar/core/Loaders;->writeUnlock()V

    .line 23
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 15
    check-cast p1, Lcom/mqunar/module/ModuleInfo;

    check-cast p2, Lcom/mqunar/core/BaseApkLoader;

    invoke-virtual {p0, p1, p2}, Lcom/mqunar/core/Loaders;->put(Lcom/mqunar/module/ModuleInfo;Lcom/mqunar/core/BaseApkLoader;)V

    return-void
.end method
