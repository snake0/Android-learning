.class public Lcom/mapquest/android/util/ShapeTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final binaryChunkSize:I

.field private culledShapeOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final minASCII:I

.field private optimizeShape:Z

.field private precision:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mapquest/android/util/ShapeTransform;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/mapquest/android/util/ShapeTransform;->binaryChunkSize:I

    .line 21
    const/16 v0, 0x3f

    iput v0, p0, Lcom/mapquest/android/util/ShapeTransform;->minASCII:I

    .line 22
    iput v1, p0, Lcom/mapquest/android/util/ShapeTransform;->precision:I

    .line 23
    iput p1, p0, Lcom/mapquest/android/util/ShapeTransform;->precision:I

    .line 24
    return-void
.end method

.method private decodePoint(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 100
    .line 102
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    move v2, v1

    move v3, v1

    .line 106
    :goto_7
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v0, -0x3f

    .line 107
    and-int/lit8 v0, v4, 0x1f

    shl-int/2addr v0, v3

    or-int/2addr v0, v2

    .line 108
    add-int/lit8 v2, v3, 0x5

    .line 109
    const/16 v3, 0x20

    if-ge v4, v3, :cond_28

    .line 111
    and-int/lit8 v2, v0, 0x1

    if-lez v2, :cond_25

    shr-int/lit8 v0, v0, 0x1

    xor-int/lit8 v0, v0, -0x1

    .line 112
    :goto_21
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 113
    return v0

    .line 111
    :cond_25
    shr-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_28
    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_7
.end method

.method private encodeNumber(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const/16 v1, 0x20

    if-lt p1, v1, :cond_16

    .line 58
    and-int/lit8 v1, p1, 0x1f

    or-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x3f

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    shr-int/lit8 p1, p1, 0x5

    goto :goto_5

    .line 61
    :cond_16
    add-int/lit8 v1, p1, 0x3f

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeSignedNumber(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    shl-int/lit8 v0, p1, 0x1

    .line 48
    if-gez p1, :cond_6

    .line 49
    xor-int/lit8 v0, v0, -0x1

    .line 52
    :cond_6
    invoke-direct {p0, v0}, Lcom/mapquest/android/util/ShapeTransform;->encodeNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeCompressed(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x270f

    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_7

    .line 67
    const/4 v0, 0x0

    .line 95
    :goto_6
    return-object v0

    .line 69
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-boolean v2, p0, Lcom/mapquest/android/util/ShapeTransform;->optimizeShape:Z

    if-eqz v2, :cond_17

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mapquest/android/util/ShapeTransform;->culledShapeOffsets:Ljava/util/List;

    .line 78
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 79
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget v4, p0, Lcom/mapquest/android/util/ShapeTransform;->precision:I

    neg-int v4, v4

    int-to-double v7, v4

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 82
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v2, v1

    move v3, v0

    move v4, v0

    :goto_2d
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-ge v10, v6, :cond_61

    .line 83
    invoke-direct {p0, p1, v9}, Lcom/mapquest/android/util/ShapeTransform;->decodePoint(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v10

    add-int/2addr v4, v10

    .line 84
    invoke-direct {p0, p1, v9}, Lcom/mapquest/android/util/ShapeTransform;->decodePoint(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v10

    add-int/2addr v3, v10

    .line 85
    iget-boolean v10, p0, Lcom/mapquest/android/util/ShapeTransform;->optimizeShape:Z

    if-eqz v10, :cond_52

    if-ne v4, v2, :cond_52

    if-ne v3, v1, :cond_52

    .line 86
    iget-object v10, p0, Lcom/mapquest/android/util/ShapeTransform;->culledShapeOffsets:Ljava/util/List;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 88
    :cond_52
    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    int-to-double v10, v4

    mul-double/2addr v10, v7

    int-to-double v12, v3

    mul-double/2addr v12, v7

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v2, v4

    .line 90
    goto :goto_4f

    .line 94
    :cond_61
    iget-object v1, p0, Lcom/mapquest/android/util/ShapeTransform;->culledShapeOffsets:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 95
    goto :goto_6
.end method

.method public encodeCompressed(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    iget v3, p0, Lcom/mapquest/android/util/ShapeTransform;->precision:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    move v1, v0

    move v2, v0

    move v4, v0

    .line 33
    :goto_16
    if-ge v1, v6, :cond_44

    .line 34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 35
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v10, v3

    mul-double/2addr v10, v8

    double-to-int v5, v10

    .line 36
    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v10, v0

    mul-double/2addr v10, v8

    double-to-int v3, v10

    .line 37
    sub-int v0, v5, v4

    invoke-direct {p0, v0}, Lcom/mapquest/android/util/ShapeTransform;->encodeSignedNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sub-int v0, v3, v2

    invoke-direct {p0, v0}, Lcom/mapquest/android/util/ShapeTransform;->encodeSignedNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    move v2, v3

    move v4, v5

    goto :goto_16

    .line 43
    :cond_44
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCulledShapeOffsets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mapquest/android/util/ShapeTransform;->culledShapeOffsets:Ljava/util/List;

    return-object v0
.end method

.method public isOptimizedShape()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/mapquest/android/util/ShapeTransform;->optimizeShape:Z

    return v0
.end method

.method public setOptimizeShape(Z)V
    .registers 2

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/mapquest/android/util/ShapeTransform;->optimizeShape:Z

    .line 122
    return-void
.end method
