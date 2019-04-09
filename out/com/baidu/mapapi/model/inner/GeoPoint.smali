.class public Lcom/baidu/mapapi/model/inner/GeoPoint;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    iput-wide p3, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_3

    iget-wide v2, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    move-object v0, p1

    check-cast v0, Lcom/baidu/mapapi/model/inner/GeoPoint;

    iget-wide v4, v0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_26

    iget-wide v2, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    check-cast p1, Lcom/baidu/mapapi/model/inner/GeoPoint;

    iget-wide v4, p1, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_24
    move v1, v0

    goto :goto_3

    :cond_26
    move v0, v1

    goto :goto_24
.end method

.method public getLatitudeE6()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    return-wide v0
.end method

.method public getLongitudeE6()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    return-wide v0
.end method

.method public setLatitudeE6(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    return-void
.end method

.method public setLongitudeE6(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoPoint: Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
