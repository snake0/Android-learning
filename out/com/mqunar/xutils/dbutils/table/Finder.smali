.class public Lcom/mqunar/xutils/dbutils/table/Finder;
.super Lcom/mqunar/xutils/dbutils/table/Column;
.source "SourceFile"


# instance fields
.field private final targetColumnName:Ljava/lang/String;

.field private final valueColumnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 5
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
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 26
    const-class v0, Lcom/mqunar/xutils/dbutils/annotation/Finder;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/annotation/Finder;

    .line 28
    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/annotation/Finder;->valueColumn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->valueColumnName:Ljava/lang/String;

    .line 29
    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/annotation/Finder;->targetColumn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->targetColumnName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->TEXT:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->targetColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getFinderTargetEntityType(Lcom/mqunar/xutils/dbutils/table/Finder;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 8

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->valueColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/table/Column;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    const-class v3, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 46
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;

    invoke-direct {v0, p0, v2}, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;-><init>(Lcom/mqunar/xutils/dbutils/table/Finder;Ljava/lang/Object;)V

    .line 61
    :goto_22
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5d

    .line 63
    :try_start_26
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_31} :catch_58

    .line 75
    :goto_31
    return-void

    .line 47
    :cond_32
    const-class v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 49
    :try_start_3a
    new-instance v1, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;

    invoke-direct {v1, p0, v2}, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;-><init>(Lcom/mqunar/xutils/dbutils/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->getAllFromDb()Ljava/util/List;
    :try_end_42
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_3a .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_22

    .line 50
    :catch_44
    move-exception v1

    .line 51
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 55
    :cond_49
    :try_start_49
    new-instance v1, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;

    invoke-direct {v1, p0, v2}, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;-><init>(Lcom/mqunar/xutils/dbutils/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->getFirstFromDb()Ljava/lang/Object;
    :try_end_51
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_49 .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_22

    .line 56
    :catch_53
    move-exception v1

    .line 57
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 64
    :catch_58
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_31

    .line 69
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_31

    .line 71
    :catch_69
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_31
.end method
