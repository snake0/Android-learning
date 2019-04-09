.class public Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/mqunar/xutils/dbutils/table/DbModel;
    .registers 6

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    if-eqz p0, :cond_1d

    .line 74
    new-instance v0, Lcom/mqunar/xutils/dbutils/table/DbModel;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/table/DbModel;-><init>()V

    .line 75
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 76
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_1d

    .line 77
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/mqunar/xutils/dbutils/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 80
    :cond_1d
    return-object v0
.end method

.method public static getEntity(Lcom/mqunar/xutils/dbutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v0, v2

    .line 68
    :cond_7
    :goto_7
    return-object v0

    .line 32
    :cond_8
    invoke-static {p3, p4}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$EntityTempCache;->setSeq(J)V

    .line 34
    :try_start_b
    invoke-static {p0, p2}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v5

    .line 35
    iget-object v6, v5, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 36
    invoke-virtual {v6}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v6}, Lcom/mqunar/xutils/dbutils/table/Id;->getIndex()I

    move-result v0

    .line 38
    if-gez v0, :cond_77

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 41
    :goto_20
    invoke-virtual {v6}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnConverter()Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 42
    invoke-static {p2, v7}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$EntityTempCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    if-nez v0, :cond_7

    .line 44
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-virtual {v6, v1, p1, v4}, Lcom/mqunar/xutils/dbutils/table/Id;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 46
    invoke-static {p2, v7, v1}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$EntityTempCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 51
    :goto_3c
    if-ge v3, v4, :cond_53

    .line 52
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v6, v5, Lcom/mqunar/xutils/dbutils/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Column;

    .line 54
    if-eqz v0, :cond_4f

    .line 55
    invoke-virtual {v0, v1, p1, v3}, Lcom/mqunar/xutils/dbutils/table/Column;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 51
    :cond_4f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3c

    .line 60
    :cond_53
    iget-object v0, v5, Lcom/mqunar/xutils/dbutils/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Finder;

    .line 61
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/mqunar/xutils/dbutils/table/Finder;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_6e} :catch_6f

    goto :goto_5d

    .line 64
    :catch_6f
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 68
    goto :goto_7

    :cond_75
    move-object v0, v1

    .line 63
    goto :goto_7

    :cond_77
    move v4, v0

    goto :goto_20
.end method
