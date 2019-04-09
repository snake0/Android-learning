.class public final Lcom/baidu/mapapi/map/ArcOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private e:I

.field private f:I

.field private g:Lcom/baidu/mapapi/model/LatLng;

.field private h:Lcom/baidu/mapapi/model/LatLng;

.field private i:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapapi/map/ArcOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/ArcOptions;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .registers 3

    new-instance v0, Lcom/baidu/mapapi/map/Arc;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Arc;-><init>()V

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Arc;->x:Z

    iget v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Arc;->w:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->y:Landroid/os/Bundle;

    iget v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/Arc;->a:I

    iget v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    iput v1, v0, Lcom/baidu/mapapi/map/Arc;->b:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->h:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->i:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public color(I)Lcom/baidu/mapapi/map/ArcOptions;
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/ArcOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    return v0
.end method

.method public getEndPoint()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->i:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMiddlePoint()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->h:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getStartPoint()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    return v0
.end method

.method public getZIndex()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->a:I

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    return v0
.end method

.method public points(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/ArcOptions;
    .registers 6

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start and middle and end points can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eq p1, p2, :cond_14

    if-eq p1, p3, :cond_14

    if-ne p2, p3, :cond_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start and middle and end points can not be same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iput-object p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    iput-object p2, p0, Lcom/baidu/mapapi/map/ArcOptions;->h:Lcom/baidu/mapapi/model/LatLng;

    iput-object p3, p0, Lcom/baidu/mapapi/map/ArcOptions;->i:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/ArcOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    return-object p0
.end method

.method public width(I)Lcom/baidu/mapapi/map/ArcOptions;
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    :cond_4
    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/ArcOptions;
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->a:I

    return-object p0
.end method
