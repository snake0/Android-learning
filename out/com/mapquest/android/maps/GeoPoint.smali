.class public Lcom/mapquest/android/maps/GeoPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latitude:I

.field private longitude:I


# direct methods
.method public constructor <init>(DD)V
    .registers 10

    .prologue
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Double;

    mul-double v1, p1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/GeoPoint;->setLatitudeE6(I)V

    .line 25
    new-instance v0, Ljava/lang/Double;

    mul-double v1, p3, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/GeoPoint;->setLongitudeE6(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .prologue
    const/16 v1, 0x3e8

    const/16 v0, -0x3e8

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-ge p1, v1, :cond_b

    if-gt p1, v0, :cond_f

    :cond_b
    if-ge p2, v1, :cond_f

    if-le p2, v0, :cond_f

    .line 19
    :cond_f
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/GeoPoint;->setLatitudeE6(I)V

    .line 20
    invoke-direct {p0, p2}, Lcom/mapquest/android/maps/GeoPoint;->setLongitudeE6(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    .line 11
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    .line 12
    return-void
.end method

.method private setLatitudeE6(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    .line 38
    return-void
.end method

.method private setLongitudeE6(I)V
    .registers 9

    .prologue
    const-wide v5, 0x41b5752a00000000L    # 3.6E8

    .line 49
    move v0, p1

    :goto_6
    int-to-double v1, v0

    const-wide v3, 0x41a5752a00000000L    # 1.8E8

    cmpl-double v1, v1, v3

    if-lez v1, :cond_14

    .line 50
    int-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_6

    .line 53
    :cond_14
    :goto_14
    int-to-double v1, v0

    const-wide v3, -0x3e5a8ad600000000L    # -1.8E8

    cmpg-double v1, v1, v3

    if-gez v1, :cond_22

    .line 54
    int-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_14

    .line 57
    :cond_22
    iput v0, p0, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    if-ne p0, p1, :cond_6

    move v0, v1

    .line 81
    :cond_5
    :goto_5
    return v0

    .line 75
    :cond_6
    if-eqz p1, :cond_5

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 80
    check-cast p1, Lcom/mapquest/android/maps/GeoPoint;

    .line 81
    iget v2, p0, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    iget v3, p1, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    iget v3, p1, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    if-ne v2, v3, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method public getLatitude()D
    .registers 5

    .prologue
    .line 33
    iget v0, p0, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitudeE6()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    return v0
.end method

.method public getLongitude()D
    .registers 5

    .prologue
    .line 45
    iget v0, p0, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitudeE6()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 65
    .line 67
    iget v0, p0, Lcom/mapquest/android/maps/GeoPoint;->latitude:I

    add-int/lit8 v0, v0, 0x1f

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mapquest/android/maps/GeoPoint;->longitude:I

    add-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lat/Lng: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
