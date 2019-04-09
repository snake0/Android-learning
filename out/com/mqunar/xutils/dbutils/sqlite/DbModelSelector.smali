.class public Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private columnExpressions:[Ljava/lang/String;

.field private groupByColumnName:Ljava/lang/String;

.field private having:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

.field private selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;


# direct methods
.method protected constructor <init>(Lcom/mqunar/xutils/dbutils/sqlite/Selector;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 39
    iput-object p2, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/mqunar/xutils/dbutils/sqlite/Selector;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 44
    iput-object p2, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 35
    return-void
.end method

.method public static from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public and(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->and(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 68
    return-object p0
.end method

.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 63
    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->expr(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 83
    return-object p0
.end method

.method public expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 88
    return-object p0
.end method

.method public getEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public having(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->having:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    .line 98
    return-object p0
.end method

.method public limit(I)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->limit(I)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 118
    return-object p0
.end method

.method public offset(I)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->offset(I)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 123
    return-object p0
.end method

.method public or(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->or(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 78
    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 73
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->orderBy(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 108
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->orderBy(Ljava/lang/String;Z)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 113
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    const-string v0, "SELECT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b8

    move v0, v1

    .line 135
    :goto_15
    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_29

    .line 136
    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 139
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 147
    :goto_32
    const-string v0, " FROM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v3, v3, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->whereBuilder:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->whereBuilder:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_60

    .line 149
    const-string v0, " WHERE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v3, v3, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->whereBuilder:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    invoke-virtual {v3}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_60
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 152
    const-string v0, " GROUP BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->having:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->having:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_8e

    .line 154
    const-string v0, " HAVING "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->having:Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;

    invoke-virtual {v3}, Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_8e
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->orderByList:Ljava/util/List;

    if-eqz v0, :cond_ce

    .line 158
    :goto_94
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ce

    .line 159
    const-string v0, " ORDER BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 141
    :cond_b8
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 142
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_32

    .line 144
    :cond_c7
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_32

    .line 162
    :cond_ce
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget v0, v0, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->limit:I

    if-lez v0, :cond_ee

    .line 163
    const-string v0, " LIMIT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget v1, v1, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    const-string v0, " OFFSET "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    iget v1, v1, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    :cond_ee
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 53
    return-object p0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;
    .registers 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->selector:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    .line 58
    return-object p0
.end method
