.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;
.implements Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

.field private c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

.field private d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context invalid, please check!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-eqz p2, :cond_18

    instance-of v0, p2, Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_20

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BaiduMap is null or invalid, please check!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-direct {p0, p3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b(Lcom/baidu/mapapi/synchronization/RoleOptions;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RoleOptions is invalid, please check!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-direct {v0, p3, p4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;-><init>(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/synchronization/RoleOptions;)Z
    .registers 19

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_4
    const-wide/16 v11, 0x0

    const-wide/16 v9, 0x0

    const-wide v7, -0x3f99800000000000L    # -180.0

    const-wide v5, 0x4066800000000000L    # 180.0

    const-wide v3, -0x3fa9800000000000L    # -90.0

    const-wide v1, 0x4056800000000000L    # 90.0

    sget-object v13, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    move-result-object v14

    if-ne v13, v14, :cond_74

    new-instance v13, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    invoke-direct {v13}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->from(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v14

    new-instance v15, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v15, v3, v4, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v14, v15}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->from(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v14

    new-instance v15, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v15, v1, v2, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v14, v15}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->from(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v13

    new-instance v14, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v14, v9, v10, v11, v12}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    iget-wide v11, v9, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v9, v9, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    :cond_74
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v11

    if-nez v11, :cond_9b

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v9

    if-nez v9, :cond_9b

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_9b
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v7, v9, v7

    if-ltz v7, :cond_bb

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_bb

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpg-double v3, v5, v3

    if-ltz v3, :cond_bb

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v1, v3, v1

    if-lez v1, :cond_be

    :cond_bb
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_be
    const/4 v1, 0x1

    goto/16 :goto_3
.end method

.method private a(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Z
    .registers 3

    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->BD09LL:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-eq v0, p1, :cond_8

    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-ne v0, p1, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Lcom/baidu/mapapi/synchronization/RoleOptions;)Z
    .registers 5

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getOrderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getOrderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getRoleType()I

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getStartPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/synchronization/RoleOptions;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/synchronization/RoleOptions;)Z

    move-result v0

    if-nez v0, :cond_fd

    :cond_5c
    if-nez p1, :cond_67

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "The roleOptions is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    const/4 v0, 0x0

    :goto_66
    return v0

    :cond_67
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The roleOptions content is: OrderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DriverId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StartPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getStartPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EndPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getEndPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DriverPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CoordType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_65

    :cond_fd
    const/4 v0, 0x1

    goto/16 :goto_66
.end method

.method private e(I)Z
    .registers 3

    if-ltz p1, :cond_5

    const/4 v0, 0x5

    if-le p1, v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a()V

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a()V

    :cond_19
    return-void
.end method

.method public a(FJ)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;->onRoutePlanInfoFreshFinished(FJ)V

    :cond_9
    return-void
.end method

.method public a(I)V
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The order state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    const/16 v1, 0x3ea

    const-string v2, "Order state is invalid."

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;->onSynchronizationProcessResult(ILjava/lang/String;)V

    :cond_2b
    const/4 p1, 0x0

    :cond_2c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a(I)V

    :cond_35
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a(I)V

    :cond_3e
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;->onSynchronizationProcessResult(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V
    .registers 5

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b(Lcom/baidu/mapapi/synchronization/RoleOptions;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_8
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    const/16 v1, 0x3eb

    const-string v2, "Order param is invalid."

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;->onSynchronizationProcessResult(ILjava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V

    goto :goto_15
.end method

.method public a(Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;)V
    .registers 4

    if-nez p1, :cond_11

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "SynchronizationDisplayListener is null, must be applied."

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "synchronizationDisplayListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    return-void
.end method

.method public b()V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b()V

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b()V

    :cond_19
    return-void
.end method

.method public b(I)V
    .registers 4

    const/16 v0, 0x1e

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1c

    :goto_5
    if-le v1, v0, :cond_1a

    :goto_7
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b(I)V

    :cond_10
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b(I)V

    :cond_19
    return-void

    :cond_1a
    move v0, v1

    goto :goto_7

    :cond_1c
    move v1, p1

    goto :goto_5
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;->onSynchronizationProcessResult(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public b(Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    :cond_7
    return-void
.end method

.method public c()V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->c()V

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->f()V

    :cond_19
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    :cond_20
    return-void
.end method

.method public c(I)V
    .registers 4

    const/16 v0, 0x1e

    const/16 v1, 0xa

    if-ge p1, v1, :cond_14

    :goto_6
    if-le v1, v0, :cond_12

    :goto_8
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->c(I)V

    :cond_11
    return-void

    :cond_12
    move v0, v1

    goto :goto_8

    :cond_14
    move v1, p1

    goto :goto_6
.end method

.method public c(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->d:Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mapapi/synchronization/SynchronizationDisplayListener;->onSynchronizationProcessResult(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->c(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public d()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "Data manager instance is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->c()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method public d(I)V
    .registers 4

    const/16 v0, 0x1e

    const/4 v1, 0x5

    if-ge p1, v1, :cond_13

    :goto_5
    if-le v1, v0, :cond_11

    :goto_7
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->d(I)V

    :cond_10
    return-void

    :cond_11
    move v0, v1

    goto :goto_7

    :cond_13
    move v1, p1

    goto :goto_5
.end method

.method public e()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "Data manager instance is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->d()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method public f()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->a:Ljava/lang/String;

    const-string v1, "Data manager instance is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/a/a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->e()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method
