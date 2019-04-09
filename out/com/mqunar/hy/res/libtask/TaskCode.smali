.class public final enum Lcom/mqunar/hy/res/libtask/TaskCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/hy/res/libtask/TaskCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_CACHE_HIT:Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_NONE:Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_REQUEST:Lcom/mqunar/hy/res/libtask/TaskCode;

.field public static final enum TASK_RESULT:Lcom/mqunar/hy/res/libtask/TaskCode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_NONE"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_NONE:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 9
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_REQUEST:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 10
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_RESULT"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 11
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 12
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_PENDING"

    invoke-direct {v0, v1, v7}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 13
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_CACHE_HIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CACHE_HIT:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 14
    new-instance v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    const-string v1, "TASK_CANCEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/TaskCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mqunar/hy/res/libtask/TaskCode;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_NONE:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_REQUEST:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CACHE_HIT:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->$VALUES:[Lcom/mqunar/hy/res/libtask/TaskCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/hy/res/libtask/TaskCode;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/hy/res/libtask/TaskCode;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/mqunar/hy/res/libtask/TaskCode;->$VALUES:[Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0}, [Lcom/mqunar/hy/res/libtask/TaskCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/hy/res/libtask/TaskCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/TaskCode;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/TaskCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
