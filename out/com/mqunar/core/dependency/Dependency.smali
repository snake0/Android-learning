.class public Lcom/mqunar/core/dependency/Dependency;
.super Lcom/mqunar/core/dependency/Atom;
.source "SourceFile"


# instance fields
.field public applicationClassName:Ljava/lang/String;

.field public atomDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Atom;",
            ">;"
        }
    .end annotation
.end field

.field public atomPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public checkFlag:I

.field public components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Dependency$Component;",
            ">;"
        }
    .end annotation
.end field

.field public hasRes:Z

.field public libDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Lib;",
            ">;"
        }
    .end annotation
.end field

.field public multiDex:Z

.field public packageId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mqunar/core/dependency/Atom;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/core/dependency/Dependency;->packageId:I

    .line 134
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/mqunar/core/dependency/Atom;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Atom;",
            ">;",
            "Lcom/mqunar/core/dependency/Atom;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Atom;

    .line 85
    iget-object v2, v0, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    iget v1, p1, Lcom/mqunar/core/dependency/Atom;->versionCode:I

    iget v2, v0, Lcom/mqunar/core/dependency/Atom;->versionCode:I

    if-le v1, v2, :cond_26

    .line 87
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_26
    :goto_26
    return-void

    .line 93
    :cond_27
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method public static checkVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "-SNAPSHOT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "-SNAPSHOT"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_18
    const-string v0, "-SNAPSHOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "-SNAPSHOT"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_2f
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 122
    :goto_3c
    array-length v4, v2

    if-ge v0, v4, :cond_56

    .line 123
    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 124
    aget-object v1, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 126
    sub-int/2addr v1, v0

    .line 130
    :cond_56
    return v1

    .line 122
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c
.end method


# virtual methods
.method public getFailAtomList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Atom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/mqunar/core/dependency/Dependency;->getFailAtomList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailAtomList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Atom;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Atom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 52
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Atom;

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 56
    iget-object v6, v0, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v7, v7, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 57
    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    .line 61
    :goto_45
    if-nez v1, :cond_4b

    .line 62
    invoke-static {v3, v0}, Lcom/mqunar/core/dependency/Dependency;->a(Ljava/util/List;Lcom/mqunar/core/dependency/Atom;)V

    goto :goto_1a

    .line 64
    :cond_4b
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 65
    iget v0, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0x14

    if-eq v0, v2, :cond_5d

    iget v0, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0x15

    if-ne v0, v2, :cond_1a

    .line 66
    :cond_5d
    invoke-static {v3, v1}, Lcom/mqunar/core/dependency/Dependency;->a(Ljava/util/List;Lcom/mqunar/core/dependency/Atom;)V

    .line 67
    invoke-virtual {v1, p1, p2}, Lcom/mqunar/core/dependency/Dependency;->getFailAtomList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Atom;

    .line 69
    invoke-static {v3, v0}, Lcom/mqunar/core/dependency/Dependency;->a(Ljava/util/List;Lcom/mqunar/core/dependency/Atom;)V

    goto :goto_68

    .line 77
    :cond_78
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_7b
    return-object v3

    :cond_7c
    move-object v1, v2

    goto :goto_45
.end method

.method public setPackageId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 38
    const/16 v0, 0x10

    :try_start_2
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mqunar/core/dependency/Dependency;->packageId:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 42
    :goto_8
    return-void

    .line 39
    :catch_9
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/core/dependency/Dependency;->packageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
