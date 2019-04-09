.class public Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/BooleanColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/BooleanColumnConverter;-><init>()V

    .line 68
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/ByteArrayColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/ByteArrayColumnConverter;-><init>()V

    .line 72
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, [B

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/ByteColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/ByteColumnConverter;-><init>()V

    .line 75
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/CharColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/CharColumnConverter;-><init>()V

    .line 79
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/DateColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/DateColumnConverter;-><init>()V

    .line 83
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/DoubleColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/DoubleColumnConverter;-><init>()V

    .line 86
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/FloatColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/FloatColumnConverter;-><init>()V

    .line 90
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/IntegerColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/IntegerColumnConverter;-><init>()V

    .line 94
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/LongColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/LongColumnConverter;-><init>()V

    .line 98
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/ShortColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/ShortColumnConverter;-><init>()V

    .line 102
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/SqlDateColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/SqlDateColumnConverter;-><init>()V

    .line 106
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/mqunar/xutils/dbutils/converter/StringColumnConverter;

    invoke-direct {v0}, Lcom/mqunar/xutils/dbutils/converter/StringColumnConverter;-><init>()V

    .line 109
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getColumnConverter(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;
    .registers 4

    .prologue
    .line 19
    sget-object v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 20
    sget-object v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    .line 31
    :cond_18
    :goto_18
    return-object v0

    .line 21
    :cond_19
    const-class v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 23
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    .line 24
    if-eqz v0, :cond_18

    .line 25
    sget-object v1, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_18

    .line 28
    :catch_33
    move-exception v0

    .line 31
    :cond_34
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getDbColumnType(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 35
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_b

    .line 37
    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    move-result-object v0

    .line 39
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->TEXT:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    goto :goto_a
.end method

.method public static isSupportColumnConverter(Ljava/lang/Class;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    sget-object v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59
    :goto_e
    return v1

    .line 49
    :cond_f
    const-class v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 51
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    .line 52
    if-eqz v0, :cond_28

    .line 53
    sget-object v3, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_28} :catch_2f

    .line 55
    :cond_28
    if-nez v0, :cond_2d

    move v0, v1

    :goto_2b
    move v1, v0

    goto :goto_e

    :cond_2d
    move v0, v2

    goto :goto_2b

    .line 56
    :catch_2f
    move-exception v0

    :cond_30
    move v1, v2

    .line 59
    goto :goto_e
.end method

.method public static registerColumnConverter(Ljava/lang/Class;Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;)V
    .registers 4

    .prologue
    .line 43
    sget-object v0, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
