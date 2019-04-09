.class public Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static buildCreateTableSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 235
    iget-object v1, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v3, v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 243
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\"  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :goto_39
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Column;

    .line 250
    instance-of v3, v0, Lcom/mqunar/xutils/dbutils/table/Finder;

    if-nez v3, :cond_43

    .line 253
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\"  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->isUnique(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 256
    const-string v3, " UNIQUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_7c
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->isNotNull(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 259
    const-string v3, " NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_8b
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getCheck(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_a4

    .line 263
    const-string v3, " CHECK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_a4
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 245
    :cond_aa
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\"  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " PRIMARY KEY,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_39

    .line 268
    :cond_cd
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 269
    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;",
            ")",
            "Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_24

    .line 153
    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_24
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>()V

    .line 134
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 135
    iget-object v2, v1, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 137
    if-nez p2, :cond_2c

    .line 138
    new-instance v0, Lcom/mqunar/xutils/dbutils/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this entity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v1, " WHERE "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "="

    invoke-static {v2, v4, p2}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 8

    .prologue
    .line 113
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 116
    invoke-static {p0, v1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 117
    iget-object v2, v1, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 118
    invoke-virtual {v2, p1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    if-nez v3, :cond_38

    .line 121
    new-instance v0, Lcom/mqunar/xutils/dbutils/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this entity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, " WHERE "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "="

    invoke-static {v2, v5, v3}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public static buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 9

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 71
    :goto_b
    return-object v0

    .line 49
    :cond_c
    new-instance v1, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>()V

    .line 50
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    const-string v0, "INSERT INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;

    .line 56
    iget-object v5, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_2f

    .line 59
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 60
    const-string v0, ") VALUES ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    const/4 v0, 0x0

    :goto_5f
    if-ge v0, v2, :cond_69

    .line 64
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 66
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 67
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    goto :goto_b
.end method

.method public static buildReplaceSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 9

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 103
    :goto_b
    return-object v0

    .line 81
    :cond_c
    new-instance v1, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>()V

    .line 82
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    const-string v0, "REPLACE INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;

    .line 88
    iget-object v5, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_2f

    .line 91
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v0, ") VALUES ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 95
    const/4 v0, 0x0

    :goto_5f
    if-ge v0, v2, :cond_69

    .line 96
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 98
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v1

    .line 103
    goto :goto_b
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 228
    :goto_b
    return-object v0

    .line 204
    :cond_c
    if-eqz p3, :cond_89

    array-length v1, p3

    if-lez v1, :cond_89

    .line 205
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 206
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v1, v0

    .line 209
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v2, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-direct {v2}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>()V

    .line 213
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "UPDATE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v0, " SET "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;

    .line 217
    if-eqz v1, :cond_51

    iget-object v5, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 218
    :cond_51
    iget-object v5, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_3b

    .line 222
    :cond_62
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 223
    if-eqz p2, :cond_80

    invoke-virtual {p2}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_80

    .line 224
    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_80
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v2

    .line 228
    goto :goto_b

    :cond_89
    move-object v1, v0

    goto :goto_1b
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 164
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 195
    :goto_b
    return-object v0

    .line 167
    :cond_c
    if-eqz p2, :cond_b5

    array-length v1, p2

    if-lez v1, :cond_b5

    .line 168
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 169
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v1, v0

    .line 172
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 173
    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 174
    iget-object v4, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 175
    invoke-virtual {v4, p1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 177
    if-nez v5, :cond_4e

    .line 178
    new-instance v0, Lcom/mqunar/xutils/dbutils/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this entity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_4e
    new-instance v2, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    invoke-direct {v2}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;-><init>()V

    .line 182
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "UPDATE "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v0, " SET "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_68
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;

    .line 186
    if-eqz v1, :cond_7e

    iget-object v7, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 187
    :cond_7e
    iget-object v7, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_68

    .line 191
    :cond_8f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 192
    const-string v0, " WHERE "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "="

    invoke-static {v1, v3, v5}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v2

    .line 195
    goto/16 :goto_b

    :cond_b5
    move-object v1, v0

    goto/16 :goto_1b
.end method

.method private static column2KeyValue(Ljava/lang/Object;Lcom/mqunar/xutils/dbutils/table/Column;)Lcom/mqunar/xutils/dbutils/table/KeyValue;
    .registers 5

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_17

    .line 277
    invoke-virtual {p1, p0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/table/Column;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 279
    :cond_11
    new-instance v1, Lcom/mqunar/xutils/dbutils/table/KeyValue;

    invoke-direct {v1, v2, v0}, Lcom/mqunar/xutils/dbutils/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 281
    :cond_17
    return-object v0
.end method

.method public static entity2KeyValueList(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/xutils/dbutils/table/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 290
    iget-object v2, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 292
    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement()Z

    move-result v3

    if-nez v3, :cond_25

    .line 293
    invoke-virtual {v2, p1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 294
    new-instance v4, Lcom/mqunar/xutils/dbutils/table/KeyValue;

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/mqunar/xutils/dbutils/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_25
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Column;

    .line 300
    instance-of v3, v0, Lcom/mqunar/xutils/dbutils/table/Finder;

    if-nez v3, :cond_2f

    .line 303
    invoke-static {p1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->column2KeyValue(Ljava/lang/Object;Lcom/mqunar/xutils/dbutils/table/Column;)Lcom/mqunar/xutils/dbutils/table/KeyValue;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2f

    .line 305
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 309
    :cond_49
    return-object v1
.end method
