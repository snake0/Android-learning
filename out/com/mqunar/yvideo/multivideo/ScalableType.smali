.class public final enum Lcom/mqunar/yvideo/multivideo/ScalableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/yvideo/multivideo/ScalableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum CENTER_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum END_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum FIT_END:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum FIT_START:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum FIT_XY:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum LEFT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum LEFT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum LEFT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum LEFT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum NONE:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum RIGHT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum RIGHT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum RIGHT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field public static final enum START_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;


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
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->NONE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 6
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_XY:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 7
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "FIT_START"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_START:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 8
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v6}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 9
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "FIT_END"

    invoke-direct {v0, v1, v7}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_END:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 11
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 12
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "LEFT_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 13
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "LEFT_BOTTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 14
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER_TOP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 15
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 16
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER_BOTTOM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 17
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "RIGHT_TOP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 18
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "RIGHT_CENTER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 19
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 21
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "LEFT_TOP_CROP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 22
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "LEFT_CENTER_CROP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 23
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "LEFT_BOTTOM_CROP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 24
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER_TOP_CROP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 25
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER_CROP"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 26
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER_BOTTOM_CROP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 27
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "RIGHT_TOP_CROP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 28
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "RIGHT_CENTER_CROP"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 29
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "RIGHT_BOTTOM_CROP"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 31
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "START_INSIDE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->START_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 32
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "CENTER_INSIDE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 33
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    const-string v1, "END_INSIDE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->END_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 3
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/mqunar/yvideo/multivideo/ScalableType;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->NONE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_XY:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_START:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_END:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->START_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/mqunar/yvideo/multivideo/ScalableType;->END_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->$VALUES:[Lcom/mqunar/yvideo/multivideo/ScalableType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/yvideo/multivideo/ScalableType;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/yvideo/multivideo/ScalableType;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/yvideo/multivideo/ScalableType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->$VALUES:[Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v0}, [Lcom/mqunar/yvideo/multivideo/ScalableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/yvideo/multivideo/ScalableType;

    return-object v0
.end method
