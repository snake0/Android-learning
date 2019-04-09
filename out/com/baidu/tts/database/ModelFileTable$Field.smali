.class public final enum Lcom/baidu/tts/database/ModelFileTable$Field;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/database/ModelFileTable$Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum b:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum c:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum d:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum e:Lcom/baidu/tts/database/ModelFileTable$Field;

.field private static final synthetic h:[Lcom/baidu/tts/database/ModelFileTable$Field;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "ID"

    const-string v2, "id"

    const-string v3, "integer primary key"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->a:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 25
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "LENGTH"

    const-string v2, "length"

    const-string v3, "bigint"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->b:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 26
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "MD5"

    const-string v2, "md5"

    const-string v3, "varchar(32)"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->c:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 27
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "NAME"

    const-string v2, "name"

    const-string v3, "varchar(256) not null default unnamed"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->d:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 28
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "ABS_PATH"

    const-string v2, "absPath"

    const-string v3, "varchar"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->e:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/tts/database/ModelFileTable$Field;

    sget-object v1, Lcom/baidu/tts/database/ModelFileTable$Field;->a:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/database/ModelFileTable$Field;->b:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/tts/database/ModelFileTable$Field;->c:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/tts/database/ModelFileTable$Field;->d:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/tts/database/ModelFileTable$Field;->e:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v1, v0, v8

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->h:[Lcom/baidu/tts/database/ModelFileTable$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->f:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->g:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/database/ModelFileTable$Field;
    .registers 2

    .prologue
    .line 23
    const-class v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/database/ModelFileTable$Field;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->h:[Lcom/baidu/tts/database/ModelFileTable$Field;

    invoke-virtual {v0}, [Lcom/baidu/tts/database/ModelFileTable$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/database/ModelFileTable$Field;

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->g:Ljava/lang/String;

    return-object v0
.end method
