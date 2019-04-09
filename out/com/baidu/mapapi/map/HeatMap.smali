.class public Lcom/baidu/mapapi/map/HeatMap;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

.field public static final DEFAULT_OPACITY:D = 0.6

.field public static final DEFAULT_RADIUS:I = 0xc

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:[I

.field private static final e:[F

.field private static r:I


# instance fields
.field a:Lcom/baidu/mapapi/map/BaiduMap;

.field private f:Lcom/baidu/mapapi/map/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/mapapi/map/l",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/baidu/mapapi/map/Gradient;

.field private j:D

.field private k:Lcom/baidu/mapapi/map/f;

.field private l:[I

.field private m:[D

.field private n:[D

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mapapi/map/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const-class v0, Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->b:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/high16 v2, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/high16 v2, 0x40000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-array v0, v4, [I

    const/16 v1, 0xc8

    invoke-static {v3, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0xe1

    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xff

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->d:[I

    new-array v0, v4, [F

    fill-array-data v0, :array_e2

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->e:[F

    new-instance v0, Lcom/baidu/mapapi/map/Gradient;

    sget-object v1, Lcom/baidu/mapapi/map/HeatMap;->d:[I

    sget-object v2, Lcom/baidu/mapapi/map/HeatMap;->e:[F

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/Gradient;-><init>([I[F)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

    sput v3, Lcom/baidu/mapapi/map/HeatMap;->r:I

    return-void

    nop

    :array_e2
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/HeatMap$Builder;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->a(Lcom/baidu/mapapi/map/HeatMap$Builder;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->b(Lcom/baidu/mapapi/map/HeatMap$Builder;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->c(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/Gradient;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->i:Lcom/baidu/mapapi/map/Gradient;

    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->d(Lcom/baidu/mapapi/map/HeatMap$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap;->j:D

    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    iget v1, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/map/HeatMap;->a(ID)[D

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->m:[D

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->i:Lcom/baidu/mapapi/map/Gradient;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/HeatMap;->a(Lcom/baidu/mapapi/map/Gradient;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/HeatMap;->b(Ljava/util/Collection;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/map/HeatMap$Builder;Lcom/baidu/mapapi/map/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;-><init>(Lcom/baidu/mapapi/map/HeatMap$Builder;)V

    return-void
.end method

.method private static a(Ljava/util/Collection;Lcom/baidu/mapapi/map/f;II)D
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;",
            "Lcom/baidu/mapapi/map/f;",
            "II)D"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/baidu/mapapi/map/f;->a:D

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/baidu/mapapi/map/f;->c:D

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/baidu/mapapi/map/f;->b:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/baidu/mapapi/map/f;->d:D

    sub-double v11, v2, v7

    sub-double v13, v4, v9

    cmpl-double v6, v11, v13

    if-lez v6, :cond_a1

    sub-double/2addr v2, v7

    :goto_19
    mul-int/lit8 v4, p2, 0x2

    div-int v4, p3, v4

    int-to-double v4, v4

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v11

    double-to-int v4, v4

    int-to-double v4, v4

    div-double v11, v4, v2

    new-instance v13, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v13}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    const-wide/16 v2, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v4, v2

    :goto_31
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v15, v3

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v0, v3

    move-wide/from16 v17, v0

    sub-double/2addr v15, v7

    mul-double/2addr v15, v11

    double-to-int v6, v15

    sub-double v15, v17, v9

    mul-double/2addr v15, v11

    double-to-int v15, v15

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/util/LongSparseArray;

    if-nez v3, :cond_a8

    new-instance v3, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v6, v3

    :goto_6f
    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-nez v3, :cond_82

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_82
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    iget-wide v2, v2, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    add-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    int-to-long v15, v15

    move-wide v0, v15

    invoke-virtual {v6, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    cmpl-double v3, v15, v4

    if-lez v3, :cond_a6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_9f
    move-wide v4, v2

    goto :goto_31

    :cond_a1
    sub-double v2, v4, v9

    goto/16 :goto_19

    :cond_a5
    return-wide v4

    :cond_a6
    move-wide v2, v4

    goto :goto_9f

    :cond_a8
    move-object v6, v3

    goto :goto_6f
.end method

.method private static a([[D[ID)Landroid/graphics/Bitmap;
    .registers 17

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v4, p1, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    div-double v5, v0, p2

    array-length v3, p0

    mul-int v0, v3, v3

    new-array v1, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v3, :cond_3c

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_38

    aget-object v7, p0, v0

    aget-wide v7, v7, v2

    mul-int v9, v2, v3

    add-int/2addr v9, v0

    mul-double v10, v7, v5

    double-to-int v10, v10

    const-wide/16 v11, 0x0

    cmpl-double v7, v7, v11

    if-eqz v7, :cond_34

    array-length v7, p1

    if-ge v10, v7, :cond_31

    aget v7, p1, v10

    aput v7, v1, v9

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_31
    aput v4, v1, v9

    goto :goto_2e

    :cond_34
    const/4 v7, 0x0

    aput v7, v1, v9

    goto :goto_2e

    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_3c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/Tile;
    .registers 4

    const/16 v2, 0x100

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/map/Tile;

    invoke-direct {v1, v2, v2, v0}, Lcom/baidu/mapapi/map/Tile;-><init>(II[B)V

    return-object v1
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0}, Lcom/baidu/mapapi/map/HeatMap;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/mapapi/map/Gradient;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->i:Lcom/baidu/mapapi/map/Gradient;

    iget-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap;->j:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mapapi/map/Gradient;->a(D)[I

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->l:[I

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/HeatMap;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mapapi/map/HeatMap;->b(III)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/baidu/mapapi/map/Tile;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)[D
    .registers 15

    const/16 v12, 0x14

    const/16 v0, 0xb

    const/4 v3, 0x5

    new-array v4, v12, [D

    move v2, v3

    :goto_8
    if-ge v2, v0, :cond_31

    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    iget-object v5, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v10, v2, -0x3

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v1, v5, p1, v6}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/util/Collection;Lcom/baidu/mapapi/map/f;II)D

    move-result-wide v5

    aput-wide v5, v4, v2

    if-ne v2, v3, :cond_2d

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_2d

    aget-wide v5, v4, v2

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    :cond_31
    :goto_31
    if-ge v0, v12, :cond_3c

    const/16 v1, 0xa

    aget-wide v1, v4, v1

    aput-wide v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3c
    return-object v4
.end method

.method private static a(ID)[D
    .registers 10

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [D

    neg-int v0, p0

    :goto_7
    if-gt v0, p0, :cond_1c

    add-int v2, v0, p0

    neg-int v3, v0

    mul-int/2addr v3, v0

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, p1

    mul-double/2addr v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return-object v1
.end method

.method private static a([[D[D)[[D
    .registers 20

    move-object/from16 v0, p1

    array-length v1, v0

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v3, v1

    move-object/from16 v0, p0

    array-length v8, v0

    mul-int/lit8 v1, v3, 0x2

    sub-int v7, v8, v1

    add-int v1, v3, v7

    add-int/lit8 v5, v1, -0x1

    filled-new-array {v8, v8}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    move v6, v2

    :goto_25
    if-ge v6, v8, :cond_62

    const/4 v2, 0x0

    move v4, v2

    :goto_29
    if-ge v4, v8, :cond_5e

    aget-object v2, p0, v6

    aget-wide v9, v2, v4

    const-wide/16 v11, 0x0

    cmpl-double v2, v9, v11

    if-eqz v2, :cond_5a

    add-int v2, v6, v3

    if-ge v5, v2, :cond_54

    move v2, v5

    :goto_3a
    add-int/lit8 v11, v2, 0x1

    sub-int v2, v6, v3

    if-le v3, v2, :cond_57

    move v2, v3

    :goto_41
    if-ge v2, v11, :cond_5a

    aget-object v12, v1, v2

    aget-wide v13, v12, v4

    sub-int v15, v6, v3

    sub-int v15, v2, v15

    aget-wide v15, p1, v15

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    aput-wide v13, v12, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_54
    add-int v2, v6, v3

    goto :goto_3a

    :cond_57
    sub-int v2, v6, v3

    goto :goto_41

    :cond_5a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_29

    :cond_5e
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_25

    :cond_62
    filled-new-array {v7, v7}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v7, v3

    :goto_6f
    add-int/lit8 v4, v5, 0x1

    if-ge v7, v4, :cond_b4

    const/4 v4, 0x0

    move v6, v4

    :goto_75
    if-ge v6, v8, :cond_b0

    aget-object v4, v1, v7

    aget-wide v9, v4, v6

    const-wide/16 v11, 0x0

    cmpl-double v4, v9, v11

    if-eqz v4, :cond_ac

    add-int v4, v6, v3

    if-ge v5, v4, :cond_a6

    move v4, v5

    :goto_86
    add-int/lit8 v11, v4, 0x1

    sub-int v4, v6, v3

    if-le v3, v4, :cond_a9

    move v4, v3

    :goto_8d
    if-ge v4, v11, :cond_ac

    sub-int v12, v7, v3

    aget-object v12, v2, v12

    sub-int v13, v4, v3

    aget-wide v14, v12, v13

    sub-int v16, v6, v3

    sub-int v16, v4, v16

    aget-wide v16, p1, v16

    mul-double v16, v16, v9

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    :cond_a6
    add-int v4, v6, v3

    goto :goto_86

    :cond_a9
    sub-int v4, v6, v3

    goto :goto_8d

    :cond_ac
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_75

    :cond_b0
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_6f

    :cond_b4
    return-object v2
.end method

.method private b(III)V
    .registers 25

    sget-object v1, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-double v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    int-to-double v1, v1

    mul-double/2addr v1, v8

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    div-double v17, v1, v3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v17

    add-double/2addr v1, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit16 v3, v3, 0x100

    int-to-double v3, v3

    div-double v19, v1, v3

    if-ltz p1, :cond_27

    if-gez p2, :cond_28

    :cond_27
    :goto_27
    return-void

    :cond_28
    move/from16 v0, p1

    int-to-double v1, v0

    mul-double/2addr v1, v8

    sub-double v2, v1, v17

    add-int/lit8 v1, p1, 0x1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    add-double v4, v4, v17

    move/from16 v0, p2

    int-to-double v6, v0

    mul-double/2addr v6, v8

    sub-double v6, v6, v17

    add-int/lit8 v1, p2, 0x1

    int-to-double v10, v1

    mul-double/2addr v8, v10

    add-double v8, v8, v17

    new-instance v1, Lcom/baidu/mapapi/map/f;

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mapapi/map/f;-><init>(DDDD)V

    new-instance v10, Lcom/baidu/mapapi/map/f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v4, Lcom/baidu/mapapi/map/f;->a:D

    sub-double v11, v4, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v4, Lcom/baidu/mapapi/map/f;->c:D

    add-double v13, v4, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v4, Lcom/baidu/mapapi/map/f;->b:D

    sub-double v15, v4, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v4, Lcom/baidu/mapapi/map/f;->d:D

    add-double v17, v17, v4

    invoke-direct/range {v10 .. v18}, Lcom/baidu/mapapi/map/f;-><init>(DDDD)V

    invoke-virtual {v1, v10}, Lcom/baidu/mapapi/map/f;->a(Lcom/baidu/mapapi/map/f;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/HeatMap;->f:Lcom/baidu/mapapi/map/l;

    invoke-virtual {v4, v1}, Lcom/baidu/mapapi/map/l;->a(Lcom/baidu/mapapi/map/f;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x100

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x100

    filled-new-array {v1, v5}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v6

    iget v5, v6, Landroid/graphics/Point;->x:I

    int-to-double v10, v5

    sub-double/2addr v10, v2

    div-double v10, v10, v19

    double-to-int v5, v10

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v10, v6

    sub-double v10, v8, v10

    div-double v10, v10, v19

    double-to-int v6, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit16 v10, v10, 0x100

    if-lt v5, v10, :cond_d1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x100

    add-int/lit8 v5, v5, -0x1

    :cond_d1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit16 v10, v10, 0x100

    if-lt v6, v10, :cond_e5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, 0x100

    add-int/lit8 v6, v6, -0x1

    :cond_e5
    aget-object v5, v1, v5

    aget-wide v10, v5, v6

    iget-wide v12, v4, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    add-double/2addr v10, v12

    aput-wide v10, v5, v6

    goto :goto_9e

    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/map/HeatMap;->m:[D

    invoke-static {v1, v2}, Lcom/baidu/mapapi/map/HeatMap;->a([[D[D)[[D

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/map/HeatMap;->l:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapapi/map/HeatMap;->n:[D

    add-int/lit8 v4, p3, -0x1

    aget-wide v3, v3, v4

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mapapi/map/HeatMap;->a([[D[ID)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/map/HeatMap;->a(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/Tile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/Tile;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sget v2, Lcom/baidu/mapapi/map/HeatMap;->r:I

    if-le v1, v2, :cond_149

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/HeatMap;->a()V

    :cond_149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a()V

    goto/16 :goto_27
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    invoke-static {v0}, Lcom/baidu/mapapi/map/HeatMap;->d(Ljava/util/Collection;)Lcom/baidu/mapapi/map/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    new-instance v0, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Lcom/baidu/mapapi/map/f;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/l;-><init>(Lcom/baidu/mapapi/map/f;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->f:Lcom/baidu/mapapi/map/l;

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/WeightedLatLng;

    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->f:Lcom/baidu/mapapi/map/l;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/l;->a(Lcom/baidu/mapapi/map/l$a;)V

    goto :goto_29

    :cond_3b
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/HeatMap;->a(I)[D

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->n:[D

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)Lcom/baidu/mapapi/map/Tile;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Tile;

    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    new-instance v3, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-direct {v3, v0}, Lcom/baidu/mapapi/map/WeightedLatLng;-><init>(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    return-object v1
.end method

.method private static d(Ljava/util/Collection;)Lcom/baidu/mapapi/map/f;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/f;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v7, v0

    :cond_26
    :goto_26
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v11, v9

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WeightedLatLng;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v9, v0

    cmpg-double v0, v11, v1

    if-gez v0, :cond_45

    move-wide v1, v11

    :cond_45
    cmpl-double v0, v11, v3

    if-lez v0, :cond_4a

    move-wide v3, v11

    :cond_4a
    cmpg-double v0, v9, v5

    if-gez v0, :cond_4f

    move-wide v5, v9

    :cond_4f
    cmpl-double v0, v9, v7

    if-lez v0, :cond_26

    move-wide v7, v9

    goto :goto_26

    :cond_55
    new-instance v0, Lcom/baidu/mapapi/map/f;

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mapapi/map/f;-><init>(DDDD)V

    return-object v0
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(III)Lcom/baidu/mapapi/map/Tile;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/HeatMap;->c(Ljava/lang/String;)Lcom/baidu/mapapi/map/Tile;

    move-result-object v0

    if-eqz v0, :cond_28

    :goto_27
    return-object v0

    :cond_28
    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_64

    sget v0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    iget-object v2, v0, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-object v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-object v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ab;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v3, v3, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x100

    add-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-object v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ab;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v3, v3, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int v0, v3, v0

    div-int/lit16 v0, v0, 0x100

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    :cond_64
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v2, Lcom/baidu/mapapi/map/HeatMap;->r:I

    if-le v0, v2, :cond_71

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/HeatMap;->a()V

    :cond_71
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_86

    :try_start_79
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/mapapi/map/g;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/baidu/mapapi/map/g;-><init>(Lcom/baidu/mapapi/map/HeatMap;III)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/HeatMap;->b(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_79 .. :try_end_86} :catch_88

    :cond_86
    :goto_86
    const/4 v0, 0x0

    goto :goto_27

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_86
.end method

.method declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapapi/map/HeatMap;->d()V

    return-void
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public removeHeatMap()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/HeatMap;)V

    :cond_9
    return-void
.end method
