.class public final Lcom/baidu/mapapi/synchronization/RoleOptions;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

.field private g:Lcom/baidu/mapapi/model/LatLng;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/baidu/mapapi/model/LatLng;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/baidu/mapapi/model/LatLng;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/synchronization/RoleOptions;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->b:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->c:I

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->e:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->BD09LL:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->b:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->c:I

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->j:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->m:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->o:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->BD09LL:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    return-void
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 4

    new-instance v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->from(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCoordType()Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    return-object v0
.end method

.method public getDriverId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverPosition()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->m:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getDriverPositionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverPositionPoiUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPosition()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->j:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getEndPositionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPositionPoiUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleType()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->c:I

    return v0
.end method

.method public getStartPosition()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getStartPositionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPositionPoiUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordType(Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->BD09LL:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-eq v0, p1, :cond_10

    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-eq v0, p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CoordType only can be BD09LL or COMMON, please check!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    return-object p0
.end method

.method public setDriverId(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "driverId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "[0-9a-zA-Z_]{1,64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "driverId must be number\uff0c alphabet\uff0c underline\uff0c and length less than 64 bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setDriverPosition(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "driverPosition is null, must be applied!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    :cond_14
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->m:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public setDriverPositionName(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setDriverPositionPoiUid(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setEndPosition(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endPosition is null, must be applied!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    :cond_14
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->j:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public setEndPositionName(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setEndPositionPoiUid(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "[0-9a-zA-Z_]{32}"

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "driverId must be number\uff0c alphabet\uff0c underline\uff0c and length is 32 bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setRoleType(I)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 5

    if-eqz p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "role type is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->c:I

    return-object p0
.end method

.method public setStartPosition(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StartPosition is null, must be applied!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v0, Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->f:Lcom/baidu/mapapi/synchronization/SyncCoordinateConverter$CoordType;

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    :cond_14
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public setStartPositionName(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setStartPositionPoiUid(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "[0-9a-zA-Z_]{1, 32}"

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userId must be number\uff0c alphabet\uff0c underline\uff0c and length is 32 bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/RoleOptions;->e:Ljava/lang/String;

    return-object p0
.end method
