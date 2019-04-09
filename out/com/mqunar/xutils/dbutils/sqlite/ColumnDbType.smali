.class public final enum Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

.field public static final enum BLOB:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

.field public static final enum INTEGER:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

.field public static final enum REAL:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

.field public static final enum TEXT:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v3, v2}, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->INTEGER:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    const-string v1, "REAL"

    const-string v2, "REAL"

    invoke-direct {v0, v1, v4, v2}, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->REAL:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v5, v2}, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->TEXT:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    new-instance v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    const-string v1, "BLOB"

    const-string v2, "BLOB"

    invoke-direct {v0, v1, v6, v2}, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->BLOB:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    sget-object v1, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->INTEGER:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->REAL:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->TEXT:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->BLOB:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->$VALUES:[Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->$VALUES:[Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    invoke-virtual {v0}, [Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-object v0
.end method
