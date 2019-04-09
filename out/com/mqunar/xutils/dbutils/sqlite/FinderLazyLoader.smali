.class public Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;
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
.field private final finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

.field private final finderValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/mqunar/xutils/dbutils/table/Finder;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    .line 21
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public count()J
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_27

    .line 39
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->count(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)J

    move-result-wide v0

    .line 44
    :goto_26
    return-wide v0

    :cond_27
    const-wide/16 v0, 0x0

    goto :goto_26
.end method

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
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_27

    .line 28
    iget-object v0, v1, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    .line 33
    :cond_27
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
    .line 48
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTable()Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_27

    .line 51
    iget-object v0, v1, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderColumn:Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->findFirst(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :cond_27
    return-object v0
.end method
