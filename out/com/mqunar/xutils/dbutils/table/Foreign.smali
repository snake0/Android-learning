.class public Lcom/mqunar/xutils/dbutils/table/Foreign;
.super Lcom/mqunar/xutils/dbutils/table/Column;
.source "SourceFile"


# instance fields
.field private final foreignColumnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

.field private final foreignColumnName:Ljava/lang/String;


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
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 37
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getForeignColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/table/Column;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    .line 41
    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    .line 97
    if-eqz v0, :cond_a8

    .line 98
    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 99
    const-class v3, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 100
    check-cast v0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->getColumnValue()Ljava/lang/Object;

    move-result-object v0

    .line 143
    :goto_1b
    return-object v0

    .line 101
    :cond_1c
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 103
    :try_start_24
    check-cast v0, Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a8

    .line 106
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getForeignEntityType(Lcom/mqunar/xutils/dbutils/table/Foreign;)Ljava/lang/Class;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/table/Column;

    move-result-object v2

    .line 108
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_3e} :catch_a3

    move-result-object v1

    .line 111
    :try_start_3f
    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_6b

    instance-of v4, v2, Lcom/mqunar/xutils/dbutils/table/Id;

    if-eqz v4, :cond_6b

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 114
    invoke-virtual {v2, v5}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 115
    if-nez v6, :cond_4d

    .line 116
    iget-object v6, v3, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    invoke-virtual {v6, v5}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_62} :catch_63

    goto :goto_4d

    .line 123
    :catch_63
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 124
    :goto_67
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 121
    :cond_6b
    const/4 v3, 0x0

    :try_start_6c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_73} :catch_63

    move-result-object v0

    goto :goto_1b

    .line 128
    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/table/Column;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7e} :catch_95

    move-result-object v1

    .line 131
    :try_start_7f
    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_90

    if-nez v1, :cond_90

    instance-of v4, v2, Lcom/mqunar/xutils/dbutils/table/Id;

    if-eqz v4, :cond_90

    .line 133
    iget-object v3, v3, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    invoke-virtual {v3, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    .line 136
    :cond_90
    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_93} :catch_9e

    move-result-object v0

    goto :goto_1b

    .line 137
    :catch_95
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 138
    :goto_99
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 137
    :catch_9e
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_99

    .line 123
    :catch_a3
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_67

    :cond_a8
    move-object v0, v1

    goto/16 :goto_1b
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getForeignEntityType(Lcom/mqunar/xutils/dbutils/table/Foreign;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 8

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->foreignColumnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 55
    if-nez v1, :cond_9

    .line 89
    :goto_8
    return-void

    .line 57
    :cond_9
    const/4 v0, 0x0

    .line 58
    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 59
    const-class v3, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 60
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-direct {v0, p0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;-><init>(Lcom/mqunar/xutils/dbutils/table/Foreign;Ljava/lang/Object;)V

    .line 75
    :goto_1d
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_58

    .line 77
    :try_start_21
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_8

    .line 78
    :catch_2d
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 61
    :cond_32
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 63
    :try_start_3a
    new-instance v2, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-direct {v2, p0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;-><init>(Lcom/mqunar/xutils/dbutils/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->getAllFromDb()Ljava/util/List;
    :try_end_42
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_3a .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_1d

    .line 64
    :catch_44
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 69
    :cond_49
    :try_start_49
    new-instance v2, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-direct {v2, p0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;-><init>(Lcom/mqunar/xutils/dbutils/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->getFirstFromDb()Ljava/lang/Object;
    :try_end_51
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_49 .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_1d

    .line 70
    :catch_53
    move-exception v1

    .line 71
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 83
    :cond_58
    :try_start_58
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_8

    .line 85
    :catch_64
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
