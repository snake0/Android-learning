.class public final enum Lcom/mqunar/yvideo/multivideo/PivotPoint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/yvideo/multivideo/PivotPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum CENTER_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

.field public static final enum RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 5
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "LEFT_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 6
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 7
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "CENTER_TOP"

    invoke-direct {v0, v1, v6}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 8
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v7}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 9
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "CENTER_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 10
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 11
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "RIGHT_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 12
    new-instance v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mqunar/yvideo/multivideo/PivotPoint;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->$VALUES:[Lcom/mqunar/yvideo/multivideo/PivotPoint;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/yvideo/multivideo/PivotPoint;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/yvideo/multivideo/PivotPoint;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->$VALUES:[Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v0}, [Lcom/mqunar/yvideo/multivideo/PivotPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/yvideo/multivideo/PivotPoint;

    return-object v0
.end method
