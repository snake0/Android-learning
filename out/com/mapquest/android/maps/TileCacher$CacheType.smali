.class public final enum Lcom/mapquest/android/maps/TileCacher$CacheType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mapquest/android/maps/TileCacher$CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mapquest/android/maps/TileCacher$CacheType;

.field public static final enum ALL:Lcom/mapquest/android/maps/TileCacher$CacheType;

.field public static final enum DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

.field public static final enum MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/mapquest/android/maps/TileCacher$CacheType;

    const-string v1, "DB"

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/TileCacher$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    .line 98
    new-instance v0, Lcom/mapquest/android/maps/TileCacher$CacheType;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v3}, Lcom/mapquest/android/maps/TileCacher$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    .line 99
    new-instance v0, Lcom/mapquest/android/maps/TileCacher$CacheType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/mapquest/android/maps/TileCacher$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->ALL:Lcom/mapquest/android/maps/TileCacher$CacheType;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mapquest/android/maps/TileCacher$CacheType;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->ALL:Lcom/mapquest/android/maps/TileCacher$CacheType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->$VALUES:[Lcom/mapquest/android/maps/TileCacher$CacheType;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapquest/android/maps/TileCacher$CacheType;
    .registers 2

    .prologue
    .line 96
    const-class v0, Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/TileCacher$CacheType;

    return-object v0
.end method

.method public static values()[Lcom/mapquest/android/maps/TileCacher$CacheType;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->$VALUES:[Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0}, [Lcom/mapquest/android/maps/TileCacher$CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapquest/android/maps/TileCacher$CacheType;

    return-object v0
.end method
