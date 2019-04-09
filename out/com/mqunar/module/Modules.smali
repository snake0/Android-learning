.class public Lcom/mqunar/module/Modules;
.super Lcom/mqunar/core/BaseLockMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/core/BaseLockMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/mqunar/module/ModuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mqunar/core/BaseLockMap;-><init>()V

    return-void
.end method


# virtual methods
.method public hasModuleInfo(Lcom/mqunar/module/ModuleInfo;)Z
    .registers 6

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0}, Lcom/mqunar/module/Modules;->readLock()V

    .line 16
    iget-object v0, p0, Lcom/mqunar/module/Modules;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 17
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18
    const/4 v0, 0x1

    .line 22
    :goto_25
    invoke-virtual {p0}, Lcom/mqunar/module/Modules;->readUnlock()V

    .line 23
    return v0

    :cond_29
    move v0, v1

    goto :goto_25
.end method

.method public put(Lcom/mqunar/module/ModuleInfo;)V
    .registers 3

    .prologue
    .line 10
    iget-object v0, p1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-super {p0, v0, p1}, Lcom/mqunar/core/BaseLockMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method
