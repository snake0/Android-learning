.class public Lcom/mqunar/core/dependency/Circular;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public nodeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/core/dependency/Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    .line 18
    return-void
.end method


# virtual methods
.method public addNode(Lcom/mqunar/core/dependency/Dependency;)V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public mergeCircular(Lcom/mqunar/core/dependency/Circular;)V
    .registers 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    iget-object v1, p1, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method

.method public update(Lcom/mqunar/core/dependency/Dependency;)Z
    .registers 11

    .prologue
    const/16 v8, -0xb

    const/16 v7, -0x14

    const/16 v6, -0x15

    const/16 v5, -0x16

    const/4 v1, 0x0

    .line 34
    iget v0, p1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0xa

    if-eq v0, v2, :cond_1f

    iget v0, p1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-eq v0, v8, :cond_1f

    iget v0, p1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-eq v0, v7, :cond_1f

    iget v0, p1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-eq v0, v6, :cond_1f

    iget v0, p1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-ne v0, v5, :cond_3d

    .line 39
    :cond_1f
    iget-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Dependency;

    .line 40
    if-eq v0, p1, :cond_25

    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 41
    iput v1, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    goto :goto_25

    :cond_3b
    move v0, v1

    .line 73
    :goto_3c
    return v0

    .line 46
    :cond_3d
    iget-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Dependency;

    .line 47
    if-eq v0, p1, :cond_43

    .line 50
    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v4, -0xa

    if-eq v3, v4, :cond_67

    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-eq v3, v8, :cond_67

    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-eq v3, v7, :cond_67

    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-eq v3, v6, :cond_67

    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-ne v3, v5, :cond_85

    .line 55
    :cond_67
    iget-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6d
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Dependency;

    .line 56
    if-eq v0, p1, :cond_6d

    iget v3, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6d

    .line 57
    iput v1, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    goto :goto_6d

    :cond_83
    move v0, v1

    .line 60
    goto :goto_3c

    .line 62
    :cond_85
    iget v0, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    if-nez v0, :cond_43

    move v0, v1

    .line 63
    goto :goto_3c

    .line 69
    :cond_8b
    iget-object v0, p0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Dependency;

    .line 70
    const/4 v2, 0x1

    iput v2, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    goto :goto_91

    .line 73
    :cond_a1
    const/4 v0, 0x1

    goto :goto_3c
.end method
