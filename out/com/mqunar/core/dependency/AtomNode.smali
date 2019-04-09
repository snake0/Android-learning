.class public Lcom/mqunar/core/dependency/AtomNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public versionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getCanLoadDependency([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;)Lcom/mqunar/module/ModuleInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/AtomNode;",
            ">;",
            "Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;",
            ")",
            "Lcom/mqunar/module/ModuleInfo;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 26
    const/4 v6, 0x0

    .line 27
    iget-object v0, p0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 28
    if-nez v6, :cond_2e

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/module/ModuleInfo;->check([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 30
    iget-object v1, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-ne v1, v8, :cond_33

    :goto_2c
    move-object v6, v0

    .line 38
    goto :goto_8

    .line 34
    :cond_2e
    if-eqz p4, :cond_33

    .line 35
    invoke-interface {p4, v0}, Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;->delete(Lcom/mqunar/module/ModuleInfo;)V

    :cond_33
    move-object v0, v6

    goto :goto_2c

    .line 39
    :cond_35
    return-object v6
.end method

.method public needCheck()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    iget-object v0, p0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 15
    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v4, v4, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-ne v4, v2, :cond_1c

    move v0, v1

    .line 22
    :goto_1b
    return v0

    .line 18
    :cond_1c
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v0, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-nez v0, :cond_8

    move v0, v2

    .line 19
    goto :goto_1b

    :cond_24
    move v0, v1

    .line 22
    goto :goto_1b
.end method
