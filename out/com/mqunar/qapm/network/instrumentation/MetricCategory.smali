.class public final enum Lcom/mqunar/qapm/network/instrumentation/MetricCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/qapm/network/instrumentation/MetricCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum DATABASE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum IMAGE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum JSON:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum NETWORK:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum NONE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum VIEW_LAYOUT:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field public static final enum VIEW_LOADING:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

.field private static final methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/qapm/network/instrumentation/MetricCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "NONE"

    const-string v2, "None"

    invoke-direct {v0, v1, v4, v2}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->NONE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 11
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "VIEW_LOADING"

    const-string v2, "View Loading"

    invoke-direct {v0, v1, v5, v2}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->VIEW_LOADING:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 12
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "VIEW_LAYOUT"

    const-string v2, "Layout"

    invoke-direct {v0, v1, v6, v2}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->VIEW_LAYOUT:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 13
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "DATABASE"

    const-string v2, "Database"

    invoke-direct {v0, v1, v7, v2}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->DATABASE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 14
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "IMAGE"

    const-string v2, "Images"

    invoke-direct {v0, v1, v8, v2}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->IMAGE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 15
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "JSON"

    const/4 v2, 0x5

    const-string v3, "JSON"

    invoke-direct {v0, v1, v2, v3}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->JSON:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 16
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    const-string v1, "NETWORK"

    const/4 v2, 0x6

    const-string v3, "Network"

    invoke-direct {v0, v1, v2, v3}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->NETWORK:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->NONE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->VIEW_LOADING:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->VIEW_LAYOUT:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->DATABASE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->IMAGE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->JSON:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->NETWORK:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->$VALUES:[Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 49
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory$1;

    invoke-direct {v0}, Lcom/mqunar/qapm/network/instrumentation/MetricCategory$1;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->methodMap:Ljava/util/Map;

    .line 54
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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->categoryName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static categoryForMethod(Ljava/lang/String;)Lcom/mqunar/qapm/network/instrumentation/MetricCategory;
    .registers 3

    .prologue
    .line 30
    if-nez p0, :cond_5

    .line 31
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->NONE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 44
    :cond_4
    :goto_4
    return-object v0

    .line 33
    :cond_5
    const/4 v0, 0x0

    .line 34
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 35
    if-ltz v1, :cond_14

    .line 36
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_14
    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->methodMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    .line 40
    if-nez v0, :cond_4

    .line 41
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->NONE:Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/qapm/network/instrumentation/MetricCategory;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/qapm/network/instrumentation/MetricCategory;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->$VALUES:[Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    invoke-virtual {v0}, [Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/qapm/network/instrumentation/MetricCategory;

    return-object v0
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/MetricCategory;->categoryName:Ljava/lang/String;

    return-object v0
.end method
