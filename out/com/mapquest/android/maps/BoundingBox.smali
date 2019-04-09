.class public Lcom/mapquest/android/maps/BoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lr:Lcom/mapquest/android/maps/GeoPoint;

.field public ul:Lcom/mapquest/android/maps/GeoPoint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    .line 15
    iput-object p2, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    .line 16
    return-void
.end method

.method public static calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)",
            "Lcom/mapquest/android/maps/BoundingBox;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    .line 60
    if-eqz p0, :cond_5c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 61
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 62
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 63
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    move v3, v1

    move v4, v1

    move v1, v0

    .line 66
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 68
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-le v6, v3, :cond_44

    .line 69
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    .line 74
    :cond_35
    :goto_35
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-ge v6, v2, :cond_4f

    .line 75
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    move v0, v1

    move v1, v2

    :goto_41
    move v2, v1

    move v1, v0

    .line 79
    goto :goto_1f

    .line 70
    :cond_44
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-ge v6, v4, :cond_35

    .line 71
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    goto :goto_35

    .line 76
    :cond_4f
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-le v6, v1, :cond_6f

    .line 77
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    move v0, v1

    move v1, v2

    goto :goto_41

    :cond_5c
    move v2, v1

    move v3, v1

    move v4, v1

    .line 82
    :cond_5f
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    new-instance v5, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v5, v3, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v4, v1}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    .line 83
    return-object v0

    :cond_6f
    move v0, v1

    move v1, v2

    goto :goto_41
.end method

.method public static intersect(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/BoundingBox;)Z
    .registers 4

    .prologue
    .line 51
    iget-object v0, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    if-lt v0, v1, :cond_3a

    iget-object v0, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    if-gt v0, v1, :cond_3a

    iget-object v0, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    if-gt v0, v1, :cond_3a

    iget-object v0, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    if-lt v0, v1, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method


# virtual methods
.method public contains(Lcom/mapquest/android/maps/BoundingBox;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_44

    iget-object v1, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    iget-object v2, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    if-lt v1, v2, :cond_44

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    iget-object v2, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    if-gt v1, v2, :cond_44

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    iget-object v2, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    if-gt v1, v2, :cond_44

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    iget-object v2, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    if-lt v1, v2, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0
.end method

.method public contains(Lcom/mapquest/android/maps/GeoPoint;)Z
    .registers 4

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    if-gt v0, v1, :cond_32

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    if-lt v0, v1, :cond_32

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    if-gt v0, v1, :cond_32

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    if-lt v0, v1, :cond_32

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public getCenter()Lcom/mapquest/android/maps/GeoPoint;
    .registers 5

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v0, :cond_2c

    .line 20
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    iget-object v3, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    .line 23
    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/BoundingBox;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    if-eqz p1, :cond_55

    .line 38
    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 43
    :goto_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_55
    iget-object v1, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_50
.end method
