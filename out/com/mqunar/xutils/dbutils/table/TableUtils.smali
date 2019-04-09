.class public Lcom/mqunar/xutils/dbutils/table/TableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Column;",
            ">;>;"
        }
    .end annotation
.end field

.field private static entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Id;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Column;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_90

    aget-object v3, v1, v0

    .line 75
    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 74
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 78
    :cond_26
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->isSupportColumnConverter(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 79
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 80
    new-instance v4, Lcom/mqunar/xutils/dbutils/table/Column;

    invoke-direct {v4, p0, v3}, Lcom/mqunar/xutils/dbutils/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 81
    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 82
    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_50} :catch_51

    goto :goto_23

    .line 101
    :catch_51
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 85
    :cond_56
    :try_start_56
    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->isForeign(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 86
    new-instance v4, Lcom/mqunar/xutils/dbutils/table/Foreign;

    invoke-direct {v4, p0, v3}, Lcom/mqunar/xutils/dbutils/table/Foreign;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 87
    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 88
    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 90
    :cond_73
    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->isFinder(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 91
    new-instance v4, Lcom/mqunar/xutils/dbutils/table/Finder;

    invoke-direct {v4, p0, v3}, Lcom/mqunar/xutils/dbutils/table/Finder;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 92
    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 93
    invoke-virtual {v4}, Lcom/mqunar/xutils/dbutils/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 98
    :cond_90
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_a3} :catch_51

    goto/16 :goto_8
.end method

.method static declared-synchronized getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/table/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v1, Lcom/mqunar/xutils/dbutils/table/TableUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 59
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    .line 67
    :goto_1b
    monitor-exit v1

    return-object v0

    .line 62
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {p0, v2, v0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 65
    sget-object v2, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_33

    goto :goto_1b

    .line 58
    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/table/Column;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mqunar/xutils/dbutils/table/Column;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 109
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Id;

    move-result-object v0

    .line 111
    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Column;

    goto :goto_e
.end method

.method public static getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Lcom/mqunar/xutils/dbutils/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/annotation/Table;

    .line 44
    if-eqz v0, :cond_f

    .line 45
    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/annotation/Table;->execAfterTableCreated()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static declared-synchronized getId(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Id;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/mqunar/xutils/dbutils/table/Id;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    const-class v4, Lcom/mqunar/xutils/dbutils/table/TableUtils;

    monitor-enter v4

    :try_start_4
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "field \'id\' not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_14

    .line 121
    :catchall_14
    move-exception v0

    monitor-exit v4

    throw v0

    .line 125
    :cond_17
    :try_start_17
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 126
    sget-object v0, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/table/Id;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_14

    .line 156
    :goto_2f
    monitor-exit v4

    return-object v0

    .line 129
    :cond_31
    const/4 v0, 0x0

    .line 130
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 131
    if-eqz v5, :cond_8a

    .line 133
    array-length v6, v5

    move v3, v2

    :goto_3a
    if-ge v3, v6, :cond_88

    aget-object v1, v5, v3

    .line 134
    const-class v7, Lcom/mqunar/xutils/dbutils/annotation/Id;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 140
    :goto_46
    if-nez v1, :cond_66

    .line 141
    array-length v3, v5

    :goto_49
    if-ge v2, v3, :cond_66

    aget-object v0, v5, v2

    .line 142
    const-string v6, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "_id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    :cond_65
    move-object v1, v0

    .line 150
    :cond_66
    :goto_66
    if-nez v1, :cond_79

    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Id;

    move-result-object v0

    goto :goto_2f

    .line 133
    :cond_71
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3a

    .line 141
    :cond_75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_49

    .line 154
    :cond_79
    new-instance v0, Lcom/mqunar/xutils/dbutils/table/Id;

    invoke-direct {v0, p0, v1}, Lcom/mqunar/xutils/dbutils/table/Id;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 155
    sget-object v1, Lcom/mqunar/xutils/dbutils/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_32 .. :try_end_87} :catchall_14

    goto :goto_2f

    :cond_88
    move-object v1, v0

    goto :goto_46

    :cond_8a
    move-object v1, v0

    goto :goto_66
.end method

.method private static getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Id;

    move-result-object v0

    .line 166
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Id;

    move-result-object v0

    .line 161
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Lcom/mqunar/xutils/dbutils/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/annotation/Table;

    .line 36
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 37
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_20
    return-object v0

    :cond_21
    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/annotation/Table;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method
