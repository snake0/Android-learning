.class public Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static df:Ljava/text/DecimalFormat;


# instance fields
.field latitude:D

.field longitude:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public distance(Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;)D
    .registers 12

    .prologue
    .line 48
    const-wide v2, 0x41584dae00000000L    # 6371000.0

    .line 49
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v4, p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    iget-wide v6, p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    sub-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    .line 52
    iget-wide v4, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 53
    add-double/2addr v0, v4

    .line 54
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_6e

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 57
    :cond_6e
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_76

    .line 58
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 60
    :cond_76
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 61
    mul-double/2addr v0, v2

    .line 62
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    if-ne p1, p0, :cond_5

    .line 36
    :cond_4
    :goto_4
    return v0

    .line 31
    :cond_5
    instance-of v2, p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;

    if-eqz v2, :cond_39

    .line 32
    check-cast p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;

    .line 33
    sget-object v2, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->df:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->df:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->df:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->df:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_37
    move v0, v1

    goto :goto_4

    :cond_39
    move v0, v1

    .line 36
    goto :goto_4
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 19
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 11
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .registers 3

    .prologue
    .line 23
    iput-wide p1, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    .line 24
    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    .prologue
    .line 15
    iput-wide p1, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
