.class Lcom/mapquest/android/maps/Polygon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method private validateData()V
    .registers 8

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3e

    .line 27
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 28
    iget-object v1, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    iget-object v2, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/GeoPoint;

    .line 29
    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 30
    iget-object v1, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_3e
    return-void
.end method


# virtual methods
.method public contains(Lcom/mapquest/android/maps/GeoPoint;)Z
    .registers 17

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v5, v0

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v7, v0

    .line 43
    const/4 v0, 0x0

    move v3, v0

    :goto_16
    if-ge v3, v4, :cond_c6

    .line 44
    add-int/lit8 v0, v1, 0x1

    .line 45
    if-ne v0, v4, :cond_c9

    .line 46
    const/4 v0, 0x0

    move v1, v0

    .line 49
    :goto_1e
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v9, v0

    cmpg-double v0, v9, v7

    if-gez v0, :cond_40

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v9, v0

    cmpl-double v0, v9, v7

    if-gez v0, :cond_62

    :cond_40
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v9, v0

    cmpg-double v0, v9, v7

    if-gez v0, :cond_c7

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v9, v0

    cmpl-double v0, v9, v7

    if-ltz v0, :cond_c7

    :cond_62
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v9, v0

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v11, v0

    sub-double v11, v7, v11

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v13

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    sub-int v0, v13, v0

    int-to-double v13, v0

    div-double/2addr v11, v13

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v13

    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    sub-int v0, v13, v0

    int-to-double v13, v0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    cmpg-double v0, v9, v5

    if-gez v0, :cond_c7

    .line 50
    if-nez v2, :cond_c4

    const/4 v0, 0x1

    .line 43
    :goto_be
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto/16 :goto_16

    .line 50
    :cond_c4
    const/4 v0, 0x0

    goto :goto_be

    .line 54
    :cond_c6
    return v2

    :cond_c7
    move v0, v2

    goto :goto_be

    :cond_c9
    move v1, v0

    goto/16 :goto_1e
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    .line 22
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    iput-object p1, p0, Lcom/mapquest/android/maps/Polygon;->data:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lcom/mapquest/android/maps/Polygon;->validateData()V

    .line 15
    return-void
.end method
