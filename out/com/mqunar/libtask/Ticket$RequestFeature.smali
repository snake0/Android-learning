.class public enum Lcom/mqunar/libtask/Ticket$RequestFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/tools/EnumUtils$ITypeCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/libtask/Ticket$RequestFeature;",
        ">;",
        "Lcom/mqunar/tools/EnumUtils$ITypeCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum ADD_CANCELSAMET:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum ADD_INSERT2HEAD:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum CACHE_DEP:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum CACHE_DOB:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum CACHE_FORCE:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum CANCELABLE:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum MULTI_TRANSFER:Lcom/mqunar/libtask/Ticket$RequestFeature;

.field public static final enum PROGRESS:Lcom/mqunar/libtask/Ticket$RequestFeature;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature;

    const-string v1, "CANCELABLE"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/libtask/Ticket$RequestFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->CANCELABLE:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 112
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$1;

    const-string v1, "ADD_ONORDER"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/libtask/Ticket$RequestFeature$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 121
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$2;

    const-string v1, "ADD_INSERT2HEAD"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/libtask/Ticket$RequestFeature$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_INSERT2HEAD:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 131
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$3;

    const-string v1, "ADD_CANCELSAMET"

    invoke-direct {v0, v1, v6}, Lcom/mqunar/libtask/Ticket$RequestFeature$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_CANCELSAMET:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 141
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$4;

    const-string v1, "CACHE_FORCE"

    invoke-direct {v0, v1, v7}, Lcom/mqunar/libtask/Ticket$RequestFeature$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_FORCE:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 150
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$5;

    const-string v1, "CACHE_DEP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mqunar/libtask/Ticket$RequestFeature$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_DEP:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 159
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$6;

    const-string v1, "CACHE_NEVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mqunar/libtask/Ticket$RequestFeature$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 168
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature$7;

    const-string v1, "CACHE_DOB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mqunar/libtask/Ticket$RequestFeature$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_DOB:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 177
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature;

    const-string v1, "MULTI_TRANSFER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mqunar/libtask/Ticket$RequestFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->MULTI_TRANSFER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 183
    new-instance v0, Lcom/mqunar/libtask/Ticket$RequestFeature;

    const-string v1, "PROGRESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mqunar/libtask/Ticket$RequestFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->PROGRESS:Lcom/mqunar/libtask/Ticket$RequestFeature;

    .line 107
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    sget-object v1, Lcom/mqunar/libtask/Ticket$RequestFeature;->CANCELABLE:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_INSERT2HEAD:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_CANCELSAMET:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_FORCE:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_DEP:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_DOB:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mqunar/libtask/Ticket$RequestFeature;->MULTI_TRANSFER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mqunar/libtask/Ticket$RequestFeature;->PROGRESS:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->$VALUES:[Lcom/mqunar/libtask/Ticket$RequestFeature;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/mqunar/libtask/u;)V
    .registers 4

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/mqunar/libtask/Ticket$RequestFeature;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/libtask/Ticket$RequestFeature;
    .registers 2

    .prologue
    .line 107
    const-class v0, Lcom/mqunar/libtask/Ticket$RequestFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/Ticket$RequestFeature;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/libtask/Ticket$RequestFeature;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/mqunar/libtask/Ticket$RequestFeature;->$VALUES:[Lcom/mqunar/libtask/Ticket$RequestFeature;

    invoke-virtual {v0}, [Lcom/mqunar/libtask/Ticket$RequestFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 189
    const/4 v0, -0x1

    return v0
.end method
