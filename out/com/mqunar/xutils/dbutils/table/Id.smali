.class public Lcom/mqunar/xutils/dbutils/table/Id;
.super Lcom/mqunar/xutils/dbutils/table/Column;
.source "SourceFile"


# static fields
.field private static final AUTO_INCREMENT_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGER_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnFieldClassName:Ljava/lang/String;

.field private isAutoIncrement:Z

.field private isAutoIncrementChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    .line 83
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v1, Lcom/mqunar/xutils/dbutils/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 87
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 27
    iput-boolean v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrementChecked:Z

    .line 28
    iput-boolean v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement:Z

    .line 32
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnFieldClassName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_24

    .line 70
    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 76
    :cond_24
    :goto_24
    return-object v0

    :cond_25
    move-object v0, v1

    .line 73
    goto :goto_24
.end method

.method public isAutoIncrement()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 36
    iget-boolean v1, p0, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrementChecked:Z

    if-nez v1, :cond_1d

    .line 37
    iput-boolean v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrementChecked:Z

    .line 38
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnField:Ljava/lang/reflect/Field;

    const-class v2, Lcom/mqunar/xutils/dbutils/annotation/NoAutoIncrement;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/mqunar/xutils/dbutils/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnFieldClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :goto_1b
    iput-boolean v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement:Z

    .line 41
    :cond_1d
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement:Z

    return v0

    .line 38
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public setAutoIncrementId(Ljava/lang/Object;J)V
    .registers 8

    .prologue
    .line 45
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/mqunar/xutils/dbutils/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnFieldClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 47
    long-to-int v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    :cond_13
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Id;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_28

    .line 52
    :try_start_17
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Id;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_23

    .line 64
    :goto_22
    return-void

    .line 53
    :catch_23
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 58
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_34

    goto :goto_22

    .line 60
    :catch_34
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22
.end method
