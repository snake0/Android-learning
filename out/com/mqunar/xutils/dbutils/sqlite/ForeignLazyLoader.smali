.class public Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private columnValue:Ljava/lang/Object;

.field private final foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;


# direct methods
.method public constructor <init>(Lcom/mqunar/xutils/dbutils/table/Foreign;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    .line 31
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public getAllFromDb()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_27

    .line 38
    iget-object v0, v1, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    .line 43
    :cond_27
    return-object v0
.end method

.method public getColumnValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getFirstFromDb()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_27

    .line 50
    iget-object v0, v1, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->findFirst(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    :cond_27
    return-object v0
.end method

.method public setColumnValue(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    .line 60
    return-void
.end method
