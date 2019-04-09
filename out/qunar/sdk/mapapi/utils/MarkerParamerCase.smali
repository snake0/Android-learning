.class public final enum Lqunar/sdk/mapapi/utils/MarkerParamerCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqunar/sdk/mapapi/utils/MarkerParamerCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field public static final enum ABSOLUTEPATH_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field public static final enum ASSETNAME_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field public static final enum FILENAME_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field public static final enum IMAGE_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field public static final enum RESOURCEID_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field public static final enum VIEW_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;


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
    new-instance v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    const-string v1, "ASSETNAME_TYPE"

    invoke-direct {v0, v1, v3}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ASSETNAME_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 9
    new-instance v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    const-string v1, "FILENAME_TYPE"

    invoke-direct {v0, v1, v4}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->FILENAME_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 10
    new-instance v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    const-string v1, "ABSOLUTEPATH_TYPE"

    invoke-direct {v0, v1, v5}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ABSOLUTEPATH_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 11
    new-instance v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    const-string v1, "IMAGE_TYPE"

    invoke-direct {v0, v1, v6}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->IMAGE_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 12
    new-instance v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    const-string v1, "RESOURCEID_TYPE"

    invoke-direct {v0, v1, v7}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->RESOURCEID_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 13
    new-instance v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    const-string v1, "VIEW_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->VIEW_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    sget-object v1, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ASSETNAME_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    aput-object v1, v0, v3

    sget-object v1, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->FILENAME_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    aput-object v1, v0, v4

    sget-object v1, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ABSOLUTEPATH_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    aput-object v1, v0, v5

    sget-object v1, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->IMAGE_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    aput-object v1, v0, v6

    sget-object v1, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->RESOURCEID_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->VIEW_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    aput-object v2, v0, v1

    sput-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->$VALUES:[Lqunar/sdk/mapapi/utils/MarkerParamerCase;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqunar/sdk/mapapi/utils/MarkerParamerCase;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    return-object v0
.end method

.method public static values()[Lqunar/sdk/mapapi/utils/MarkerParamerCase;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->$VALUES:[Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    invoke-virtual {v0}, [Lqunar/sdk/mapapi/utils/MarkerParamerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    return-object v0
.end method
