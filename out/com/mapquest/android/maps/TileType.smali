.class Lcom/mapquest/android/maps/TileType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static HYB:Lcom/mapquest/android/maps/TileType;

.field public static MAP:Lcom/mapquest/android/maps/TileType;

.field public static MOBMAP:Lcom/mapquest/android/maps/TileType;

.field public static SAT:Lcom/mapquest/android/maps/TileType;

.field public static SATHYB:Lcom/mapquest/android/maps/TileType;

.field public static TRAFFIC:Lcom/mapquest/android/maps/TileType;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4
    new-instance v0, Lcom/mapquest/android/maps/TileType;

    const-string v1, "map"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/TileType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    .line 5
    new-instance v0, Lcom/mapquest/android/maps/TileType;

    const-string v1, "sat"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/TileType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    .line 6
    new-instance v0, Lcom/mapquest/android/maps/TileType;

    const-string v1, "hyb"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/TileType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    .line 7
    new-instance v0, Lcom/mapquest/android/maps/TileType;

    const-string v1, "sathyb"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/TileType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/TileType;->SATHYB:Lcom/mapquest/android/maps/TileType;

    .line 8
    new-instance v0, Lcom/mapquest/android/maps/TileType;

    const-string v1, "mobmap"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/TileType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/TileType;->MOBMAP:Lcom/mapquest/android/maps/TileType;

    .line 9
    new-instance v0, Lcom/mapquest/android/maps/TileType;

    const-string v1, "traffic"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/TileType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/TileType;->TRAFFIC:Lcom/mapquest/android/maps/TileType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapquest/android/maps/TileType;
    .registers 2

    .prologue
    .line 17
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    iget-object v0, v0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    iget-object v0, v0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    goto :goto_c

    :cond_1a
    sget-object v0, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    iget-object v0, v0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    goto :goto_c

    :cond_27
    sget-object v0, Lcom/mapquest/android/maps/TileType;->SATHYB:Lcom/mapquest/android/maps/TileType;

    iget-object v0, v0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/mapquest/android/maps/TileType;->SATHYB:Lcom/mapquest/android/maps/TileType;

    goto :goto_c

    :cond_34
    sget-object v0, Lcom/mapquest/android/maps/TileType;->TRAFFIC:Lcom/mapquest/android/maps/TileType;

    iget-object v0, v0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/mapquest/android/maps/TileType;->TRAFFIC:Lcom/mapquest/android/maps/TileType;

    goto :goto_c

    :cond_41
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MOBMAP:Lcom/mapquest/android/maps/TileType;

    iget-object v0, v0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/mapquest/android/maps/TileType;->MOBMAP:Lcom/mapquest/android/maps/TileType;

    goto :goto_c

    :cond_4e
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mapquest/android/maps/TileType;->value:Ljava/lang/String;

    return-object v0
.end method
