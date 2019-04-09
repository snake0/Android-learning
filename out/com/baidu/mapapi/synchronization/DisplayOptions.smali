.class public final Lcom/baidu/mapapi/synchronization/DisplayOptions;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private c:Z

.field private d:Z

.field private e:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private f:Z

.field private g:Z

.field private h:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private i:Z

.field private j:Z

.field private k:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private q:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private r:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private s:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private t:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private u:I

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x14

    const/16 v0, 0x32

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->c:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->d:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->f:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->g:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->i:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->l:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->m:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->n:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->o:Z

    iput v2, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->u:I

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->y:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->z:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->A:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->B:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->C:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->D:Z

    iput v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->E:I

    iput v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->F:I

    iput v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->G:I

    iput v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->H:I

    const-string v0, "SDK_Default_Icon_Start.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->c:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->d:Z

    const-string v0, "SDK_Default_Icon_End.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->f:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->g:Z

    const-string v0, "SDK_Default_Icon_Car.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->i:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->j:Z

    const-string v0, "SDK_Default_Icon_Passenger.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->l:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->m:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->n:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->o:Z

    const-string v0, "SDK_Default_Traffic_Texture_Smooth.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->p:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const-string v0, "SDK_Default_Traffic_Texture_Slow.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->q:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const-string v0, "SDK_Default_Traffic_Texture_Congestion.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->r:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const-string v0, "SDK_Default_Traffic_Texture_SevereCongestion.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->s:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const-string v0, "SDK_Default_Route_Texture_Bule_Arrow.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput v2, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->u:I

    return-void
.end method


# virtual methods
.method public getCarIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getCarInfoWindowView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->v:Landroid/view/View;

    return-object v0
.end method

.method public getEndPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getEndPositionInfoWindowView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->x:Landroid/view/View;

    return-object v0
.end method

.method public getPaddingBottom()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->H:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->E:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->F:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->G:I

    return v0
.end method

.method public getPassengerIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getRouteLineWidth()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->u:I

    return v0
.end method

.method public getStartPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getStartPositionInfoWindowView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->w:Landroid/view/View;

    return-object v0
.end method

.method public getTrafficTextureList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->p:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->q:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->r:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->s:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isShowCarInfoWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->C:Z

    return v0
.end method

.method public isShowCarMarker()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->i:Z

    return v0
.end method

.method public isShowCarMarkerInSpan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->j:Z

    return v0
.end method

.method public isShowEndPositionInfoWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->A:Z

    return v0
.end method

.method public isShowEndPositionMarker()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->f:Z

    return v0
.end method

.method public isShowEndPositionMarkerInSpan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->g:Z

    return v0
.end method

.method public isShowPassengerIcon()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->l:Z

    return v0
.end method

.method public isShowPassengerIconInSpan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->m:Z

    return v0
.end method

.method public isShowRoutePlan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->n:Z

    return v0
.end method

.method public isShowRoutePlanInSpan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->o:Z

    return v0
.end method

.method public isShowStartPositionInfoWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->y:Z

    return v0
.end method

.method public isShowStartPositionMarker()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->c:Z

    return v0
.end method

.method public isShowStartPositionMarkerInSpan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->d:Z

    return v0
.end method

.method public setCarIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarIcon descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setCarInfoWindowView(Landroid/view/View;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->v:Landroid/view/View;

    return-object p0
.end method

.method public setCongestionTrafficTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CongestionTrafficTexture descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->r:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setEndPositionIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EndPositionIcon descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setEndPositionInfoWindowView(Landroid/view/View;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->x:Landroid/view/View;

    return-object p0
.end method

.method public setMapViewPadding(IIII)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 9

    const/16 v0, 0x1e

    if-ltz p1, :cond_a

    if-ltz p3, :cond_a

    if-ltz p2, :cond_a

    if-gez p4, :cond_52

    :cond_a
    sget-object v1, Lcom/baidu/mapapi/synchronization/DisplayOptions;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding param is invalid. paddingLeft = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "paddingRight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "paddingTop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "paddingBottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    if-gez p1, :cond_55

    move p1, v0

    :cond_55
    iput p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->E:I

    if-gez p2, :cond_5a

    move p2, v0

    :cond_5a
    iput p2, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->G:I

    if-gez p3, :cond_67

    :goto_5e
    iput v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->F:I

    if-gez p4, :cond_64

    const/16 p4, 0x32

    :cond_64
    iput p4, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->H:I

    return-object p0

    :cond_67
    move v0, p3

    goto :goto_5e
.end method

.method public setPassengerIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PassengerIcon descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setRouteLineWidth(I)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    const/16 v1, 0x28

    const/4 v0, 0x5

    if-ge p1, v0, :cond_8

    iput v0, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->u:I

    :goto_7
    return-object p0

    :cond_8
    if-le p1, v1, :cond_d

    iput v1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->u:I

    goto :goto_7

    :cond_d
    iput p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->u:I

    goto :goto_7
.end method

.method public setSevereCongestionTrafficTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SevereCongestionTrafficTexture descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->s:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setSlowTrafficTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SlowTrafficTexture descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->q:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setSmoothTrafficTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SmoothTrafficTexture descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->p:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setStartPositionIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StartPositionIcon descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setStartPositionInfoWindowView(Landroid/view/View;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->w:Landroid/view/View;

    return-object p0
.end method

.method public setUnknownTrafficTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UnknownTrafficTexture descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public showCarIcon(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->i:Z

    return-object p0
.end method

.method public showCarIconInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->j:Z

    return-object p0
.end method

.method public showCarInfoWindow(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->C:Z

    return-object p0
.end method

.method public showCarInfoWindowInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->D:Z

    return-object p0
.end method

.method public showEndPositionIcon(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->f:Z

    return-object p0
.end method

.method public showEndPositionIconInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->g:Z

    return-object p0
.end method

.method public showEndPositionInfoWindow(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->A:Z

    return-object p0
.end method

.method public showEndPositionInfoWindowInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->B:Z

    return-object p0
.end method

.method public showPassengereIcon(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->l:Z

    return-object p0
.end method

.method public showPassengereIconInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->m:Z

    return-object p0
.end method

.method public showRoutePlan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->n:Z

    return-object p0
.end method

.method public showRoutePlanInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->o:Z

    return-object p0
.end method

.method public showStartPositionIcon(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->c:Z

    return-object p0
.end method

.method public showStartPositionIconInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->d:Z

    return-object p0
.end method

.method public showStartPositionInfoWindow(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->y:Z

    return-object p0
.end method

.method public showStartPositionInfoWindowInSpan(Z)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/synchronization/DisplayOptions;->z:Z

    return-object p0
.end method
