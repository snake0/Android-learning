.class public Lcom/mqunar/xutils/dbutils/table/Table;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Table;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkedDatabase:Z

.field public final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field public final db:Lcom/mqunar/xutils/dbutils/DbUtils;

.field public final finderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Finder;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Lcom/mqunar/xutils/dbutils/table/Id;

.field public final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/table/Table;->db:Lcom/mqunar/xutils/dbutils/DbUtils;

    .line 49
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Id;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 51
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Table;->columnMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Table;->finderMap:Ljava/util/HashMap;

    .line 54
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Column;

    .line 55
    invoke-virtual {v0, p0}, Lcom/mqunar/xutils/dbutils/table/Column;->setTable(Lcom/mqunar/xutils/dbutils/table/Table;)V

    .line 56
    instance-of v2, v0, Lcom/mqunar/xutils/dbutils/table/Finder;

    if-eqz v2, :cond_28

    .line 57
    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 60
    :cond_47
    return-void
.end method

.method public static declared-synchronized get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/mqunar/xutils/dbutils/table/Table;"
        }
    .end annotation

    .prologue
    .line 63
    const-class v1, Lcom/mqunar/xutils/dbutils/table/Table;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getDaoConfig()Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Table;

    .line 65
    if-nez v0, :cond_3a

    .line 66
    new-instance v0, Lcom/mqunar/xutils/dbutils/table/Table;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;-><init>(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)V

    .line 67
    sget-object v3, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    .line 70
    :cond_3a
    monitor-exit v1

    return-object v0

    .line 63
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized remove(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    const-class v1, Lcom/mqunar/xutils/dbutils/table/Table;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getDaoConfig()Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v2, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    .line 76
    monitor-exit v1

    return-void

    .line 74
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized remove(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 79
    const-class v3, Lcom/mqunar/xutils/dbutils/table/Table;

    monitor-enter v3

    :try_start_3
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 80
    const/4 v2, 0x0

    .line 81
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/xutils/dbutils/table/Table;

    .line 83
    if-eqz v1, :cond_66

    iget-object v1, v1, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getDaoConfig()Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 90
    :goto_59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 91
    sget-object v1, Lcom/mqunar/xutils/dbutils/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_69

    .line 94
    :cond_64
    monitor-exit v3

    return-void

    :cond_66
    move-object v0, v2

    :cond_67
    move-object v2, v0

    .line 89
    goto :goto_16

    .line 79
    :catchall_69
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6c
    move-object v0, v2

    goto :goto_59
.end method


# virtual methods
.method public isCheckedDatabase()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/table/Table;->checkedDatabase:Z

    return v0
.end method

.method public setCheckedDatabase(Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/mqunar/xutils/dbutils/table/Table;->checkedDatabase:Z

    .line 104
    return-void
.end method
