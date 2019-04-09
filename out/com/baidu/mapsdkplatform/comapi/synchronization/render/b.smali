.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/baidu/mapapi/synchronization/RoleOptions;

.field private static e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

.field private static f:Lcom/baidu/mapapi/map/Marker;

.field private static volatile g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

.field private static h:I

.field private static volatile p:I

.field private static r:Lcom/baidu/mapapi/model/LatLng;


# instance fields
.field private A:Z

.field private B:Ljava/lang/Thread;

.field private C:Z

.field private D:I

.field private E:I

.field private F:Lcom/baidu/mapapi/model/LatLngBounds;

.field private G:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;

.field private volatile H:J

.field private I:Z

.field private volatile J:Z

.field private volatile K:J

.field private volatile L:I

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lcom/baidu/mapapi/map/Polyline;

.field private P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Q:Z

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Z

.field private b:Lcom/baidu/mapapi/map/BaiduMap;

.field private c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

.field private i:Lcom/baidu/mapapi/map/Marker;

.field private j:Lcom/baidu/mapapi/map/Marker;

.field private k:Lcom/baidu/mapapi/map/Marker;

.field private l:Lcom/baidu/mapapi/map/Marker;

.field private m:Lcom/baidu/mapapi/map/Marker;

.field private n:Lcom/baidu/mapapi/map/Marker;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Thread;

.field private s:I

.field private t:D

.field private u:I

.field private v:Z

.field private volatile w:Z

.field private x:Ljava/lang/Thread;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 9

    const/16 v6, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t:D

    iput v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u:I

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y:Z

    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A:Z

    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C:Z

    iput v6, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D:I

    iput v6, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E:I

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F:Lcom/baidu/mapapi/model/LatLngBounds;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H:J

    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->J:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->K:J

    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    iput v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->R:I

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->U:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;

    invoke-direct {v1, p0, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V

    const-string v2, "Car moving"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;

    invoke-direct {v1, p0, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V

    const-string v2, "Passenger marker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;

    invoke-direct {v1, p0, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V

    const-string v2, "Adjust visible span"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    return-void
.end method

.method private A()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A:Z

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polyline;->remove()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    :cond_29
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    goto :goto_9
.end method

.method private B()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    :cond_c
    return-void
.end method

.method private C()V
    .registers 2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    :cond_c
    return-void
.end method

.method private D()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    goto :goto_8
.end method

.method private E()V
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowStartPositionMarker()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set start position marker not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-nez v0, :cond_2c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Start position marker already render ok"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2c
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_3a

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "No startPosition"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_3a
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getStartPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "No startPositionIcon, use default"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getStartPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :cond_52
    if-nez v0, :cond_5c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "There is no startPositionIcon"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_5c
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    if-nez v3, :cond_7d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1b

    :cond_7d
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_1b
.end method

.method private F()Lcom/baidu/mapapi/model/LatLng;
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getStartPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "The start position is null"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    const v2, 0x186a1

    const-string v3, "Start position is null"

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;->a(ILjava/lang/String;)V

    :cond_1d
    return-object v0
.end method

.method private G()V
    .registers 6

    const/4 v2, 0x0

    const v4, 0x3f666666    # 0.9f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowStartPositionInfoWindow()Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set start position infoWindow not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getStartPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "No startPosition"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_2f
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getStartPositionInfoWindowView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4a

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Start position infoWindow view is null, cannot display"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1e

    :cond_4a
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->alpha(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    if-nez v3, :cond_73

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1e

    :cond_73
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v4}, Lcom/baidu/mapapi/map/Marker;->setAnchor(FF)V

    goto :goto_1e
.end method

.method private H()V
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowEndPositionMarker()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set endPositionMarker not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-nez v0, :cond_2c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "EndPositionMarker already render ok"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getEndPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_3c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "End position coord is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_3c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getEndPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "The end position icon is null"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getEndPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :cond_54
    if-nez v0, :cond_5e

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "There is no endPositionIcon"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_5e
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    if-nez v3, :cond_7f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1b

    :cond_7f
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_1b
.end method

.method private I()V
    .registers 7

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowEndPositionInfoWindow()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set end position infoWindow not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getEndPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "End position coord is null when render end position infoWindow"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_30
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getEndPositionInfoWindowView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4b

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "End position infoWindow view is null, cannot display"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1f

    :cond_4b
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    if-nez v3, :cond_74

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1f

    :cond_74
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mapapi/map/Marker;->setAnchor(FF)V

    goto :goto_1f
.end method

.method private declared-synchronized J()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w:Z

    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-eqz v0, :cond_38

    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_38

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V

    const-string v2, "Passenger marker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private K()V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowPassengerIcon()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set not show passenger icon"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->J()V

    goto :goto_1b
.end method

.method private declared-synchronized L()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_21

    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-eq v0, v1, :cond_21

    :cond_1c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private M()V
    .registers 6

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowCarMarker()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set carMarker not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-nez v0, :cond_2e

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "CarIcon already render ok"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2e
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_3c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "The car(driver) position is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_3c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getCarIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "The car icon is null"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getCarIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :cond_54
    if-nez v0, :cond_5e

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "There is no car icon"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_5e
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->flat(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-nez v3, :cond_8e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1d

    :cond_8e
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    goto :goto_1d
.end method

.method private N()V
    .registers 7

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowCarInfoWindow()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set carInfoWindow not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    sput-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getCarInfoWindowView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "car position infoWindow view is null, cannot display"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    sput-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1f

    :cond_3b
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_49

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "CarPosition is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_49
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->alpha(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-nez v3, :cond_7a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1f

    :cond_7a
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mapapi/map/Marker;->setAnchor(FF)V

    goto :goto_1f
.end method

.method private O()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-nez v0, :cond_13

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private P()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_26

    :cond_1f
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    goto :goto_6

    :cond_26
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    goto :goto_6
.end method

.method private Q()V
    .registers 6

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowRoutePlan()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set route line not show"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polyline;->remove()V

    iput-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-nez v0, :cond_2a

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "No route line data"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2a
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->R()Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    if-ne v1, v0, :cond_35

    iput-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z:Z

    goto :goto_1d

    :cond_35
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    if-ne v1, v0, :cond_3f

    iput-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z:Z

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S()V

    goto :goto_1d

    :cond_3f
    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z:Z

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-nez v0, :cond_4c

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    const-wide/16 v0, 0x64

    :try_start_49
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_88

    :cond_4c
    :goto_4c
    sput v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iput v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    iput v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L:I

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polyline;->remove()V

    iput-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    :cond_71
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    :cond_80
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "LinkPointPolyline info is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catch_88
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "Exception caught when renderRouteLine"

    invoke-static {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    :cond_91
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->U()V

    goto :goto_1d
.end method

.method private R()Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;->a()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A:Z

    if-nez v2, :cond_21

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    :cond_21
    if-eqz v0, :cond_45

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-nez v2, :cond_45

    :cond_37
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Route line or order state changed or no render, need render"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    :goto_44
    return-object v0

    :cond_45
    if-eqz v1, :cond_67

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    :cond_5b
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->T:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Route line only need update traffic"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    goto :goto_44

    :cond_67
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    goto :goto_44
.end method

.method private S()V
    .registers 7

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_13
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Traffic status data is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    :cond_22
    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    sub-int/2addr v0, v3

    if-ltz v0, :cond_1a

    :try_start_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4e

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    sub-int/2addr v0, v3

    :goto_3a
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_73

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4e
    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    sub-int/2addr v0, v3

    :goto_53
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_73

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_73
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    add-int/2addr v0, v1

    new-array v3, v0, [I

    move v1, v2

    :goto_82
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    add-int/2addr v0, v4

    if-ge v1, v0, :cond_a8

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    sget v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_82

    :cond_a8
    array-length v0, v3

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/Polyline;->setIndexs([I)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_b0} :catch_b8

    :goto_b0
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-eqz v0, :cond_1a

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    goto/16 :goto_1a

    :catch_b8
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v3, "Exception caught when updateTrafficStatus"

    invoke-static {v1, v3, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0
.end method

.method private T()V
    .registers 8

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Route info or syncResponseResult is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b()Ljava/util/List;

    move-result-object v2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;->b()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_30
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "route section info is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    if-eqz v3, :cond_58

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_58

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "route section info or traffic status info is invalid"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_58
    const/4 v0, 0x0

    move v1, v0

    :goto_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6a

    :goto_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5a

    :cond_6a
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v1, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(ILjava/util/ArrayList;)I

    move-result v5

    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-direct {v6}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;-><init>()V

    invoke-virtual {v6, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {v6, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->b(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {v6, v5}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a(I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_9b
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13
.end method

.method private U()V
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-nez v1, :cond_9

    iput-boolean v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    :cond_9
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-eqz v1, :cond_fd

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_fa

    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    move-object v1, v0

    :goto_1e
    if-eqz v1, :cond_4f

    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    :try_start_22
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    sget v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    sget v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_42} :catch_5b

    :goto_42
    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ac()V

    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;)V

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L:I

    :cond_4f
    sput v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x3

    if-ge v3, v0, :cond_64

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v4, "Caught exception when renderRoutePolyLine"

    invoke-static {v3, v4, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    :cond_64
    move v1, v2

    :goto_65
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_8b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_75

    :goto_71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_65

    :cond_75
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->c()I

    move-result v0

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_8b
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getTrafficTextureList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9e
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-nez v0, :cond_f3

    new-instance v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getRouteLineWidth()I

    move-result v0

    :goto_ab
    new-instance v1, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->dottedLine(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->customTextureList(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->textureIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowRoutePlan()Z

    move-result v1

    if-nez v1, :cond_e1

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v3, "User set route line not display"

    invoke-static {v1, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->visible(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    :cond_e1
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Polyline;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-eqz v0, :cond_5a

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    goto/16 :goto_5a

    :cond_f3
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getRouteLineWidth()I

    move-result v0

    goto :goto_ab

    :cond_fa
    move-object v1, v0

    goto/16 :goto_1e

    :cond_fd
    move-object v1, v0

    goto/16 :goto_17
.end method

.method private V()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-nez v0, :cond_c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "CarMarker is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_b

    :cond_36
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->W()V

    goto :goto_b
.end method

.method private declared-synchronized W()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_37

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V

    const-string v2, "Car moving"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_37

    goto :goto_13

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized X()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Y()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    goto :goto_15
.end method

.method private Z()D
    .registers 9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_19

    :cond_16
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :cond_18
    return-wide v2

    :cond_19
    const-wide/16 v1, 0x0

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    sub-int/2addr v0, v3

    move-wide v6, v1

    move-wide v2, v6

    move v1, v0

    :goto_23
    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23
.end method

.method private a(D)D
    .registers 7

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u:I

    if-nez v0, :cond_7

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u:I

    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private a(DD)D
    .registers 11

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, p3, v0

    if-nez v0, :cond_a

    :goto_9
    return-wide p1

    :cond_a
    mul-double v0, p1, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, p3, p3

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    goto :goto_9
.end method

.method private a(DLcom/baidu/mapapi/model/LatLng;)D
    .registers 8

    iget-wide v0, p3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v2, p3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;D)D
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t:D

    return-wide p1
.end method

.method private a(ILjava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->K:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/map/Marker;)Lcom/baidu/mapapi/map/Marker;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    return-object p1
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x3

    sget v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "WAIT_PASSENGER State, no need calculate"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_1b
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLinkPolyLineInfos size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_e

    :cond_3b
    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    move v1, v0

    :goto_3e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_93

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-direct {p0, p1, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    move-object v0, v3

    goto :goto_e

    :cond_6c
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_7b

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    goto :goto_e

    :cond_7b
    invoke-direct {p0, v3, v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v4

    invoke-direct {p0, v3, v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v0

    if-eqz v4, :cond_8f

    if-eqz v0, :cond_8f

    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    move-object v0, v3

    goto :goto_e

    :cond_8f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    :cond_93
    move-object v0, v2

    goto/16 :goto_e
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowStartPositionMarkerInSpan()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set not show startPositionMarker in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_13
.end method

.method private declared-synchronized a(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 8

    const/16 v0, 0x32

    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->J:Z

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->J:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    if-nez v1, :cond_1f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Get map status failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    goto :goto_a

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    iget-object v1, v1, Lcom/baidu/mapapi/map/MapStatus;->winRound:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget v3, v1, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v2, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v1, :cond_79

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getPaddingLeft()I

    move-result v3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getPaddingTop()I

    move-result v2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getPaddingRight()I

    move-result v1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getPaddingBottom()I

    move-result v0

    :goto_50
    sub-int v3, v4, v3

    sub-int v1, v3, v1

    sub-int v2, v5, v2

    sub-int v0, v2, v0

    if-ltz v1, :cond_60

    if-ltz v0, :cond_60

    if-gt v1, v4, :cond_60

    if-le v0, v5, :cond_6f

    :cond_60
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Invalid width and height\uff0cuse default padding"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v4, -0x32

    add-int/lit8 v1, v0, -0x32

    add-int/lit8 v0, v5, -0x32

    add-int/lit8 v0, v0, -0x32

    :cond_6f
    invoke-static {p1, v1, v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;II)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    :try_end_78
    .catchall {:try_start_1f .. :try_end_78} :catchall_1c

    goto :goto_a

    :cond_79
    move v1, v0

    move v2, v0

    move v3, v0

    goto :goto_50
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/MyLocationData;)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    :try_start_3
    iget-wide v1, p1, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_c} :catch_23

    move-result-wide v1

    :try_start_d
    iget-wide v5, p1, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->longValue()J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_49

    move-result-wide v5

    move-wide v8, v5

    move-wide v5, v1

    move-wide v1, v8

    :goto_1a
    cmp-long v7, v3, v5

    if-nez v7, :cond_2f

    cmp-long v3, v3, v1

    if-nez v3, :cond_2f

    :cond_22
    :goto_22
    return v0

    :catch_23
    move-exception v1

    move-wide v1, v3

    :goto_25
    sget-object v5, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v6, "Trans latitude and longitude failed"

    invoke-static {v5, v6}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v1

    move-wide v1, v3

    goto :goto_1a

    :cond_2f
    const-wide/16 v3, -0x5a

    cmp-long v3, v5, v3

    if-ltz v3, :cond_22

    const-wide/16 v3, 0x5a

    cmp-long v3, v5, v3

    if-gtz v3, :cond_22

    const-wide/16 v3, -0xb4

    cmp-long v3, v1, v3

    if-ltz v3, :cond_22

    const-wide/16 v3, 0xb4

    cmp-long v1, v1, v3

    if-gtz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :catch_49
    move-exception v5

    goto :goto_25
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    if-eqz p1, :cond_b

    if-nez p2, :cond_12

    :cond_b
    if-nez p1, :cond_10

    if-nez p2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f

    :cond_12
    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2c

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_f

    :cond_2c
    move v0, v1

    goto :goto_f
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;D)Z
    .registers 19

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_34

    const/4 v2, 0x1

    :goto_b
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(DLcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v8

    invoke-direct/range {p0 .. p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v3

    if-eqz v2, :cond_36

    move-wide/from16 v0, p3

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(DD)D

    move-result-wide v3

    :goto_1d
    invoke-direct {p0, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(D)D

    move-result-wide v10

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    :goto_23
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v7, v5, v12

    if-lez v7, :cond_40

    const/4 v7, 0x1

    :goto_2c
    if-ne v7, v2, :cond_6c

    iget-boolean v7, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-eqz v7, :cond_42

    const/4 v2, 0x0

    :goto_33
    return v2

    :cond_34
    const/4 v2, 0x0

    goto :goto_b

    :cond_36
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, p3

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(DD)D

    move-result-wide v3

    mul-double/2addr v3, v5

    goto :goto_1d

    :cond_40
    const/4 v7, 0x0

    goto :goto_2c

    :cond_42
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v7, v12, p3

    if-nez v7, :cond_60

    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v12, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v7, v5, v6, v12, v13}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    :goto_52
    invoke-direct {p0, v7}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0, v7}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0, v10, v11}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(D)Z

    move-result v7

    if-nez v7, :cond_6a

    const/4 v2, 0x0

    goto :goto_33

    :cond_60
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    sub-double v12, v5, v8

    div-double v12, v12, p3

    invoke-direct {v7, v5, v6, v12, v13}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_52

    :cond_6a
    sub-double/2addr v5, v3

    goto :goto_23

    :cond_6c
    const/4 v2, 0x1

    goto :goto_33
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z
    .registers 16

    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v8, p3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, p3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v8, v0

    sub-double/2addr v6, v2

    mul-double/2addr v6, v8

    sub-double v0, v4, v0

    sub-double v2, v10, v2

    mul-double/2addr v0, v2

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/map/MyLocationData;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/map/MyLocationData;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    return p1
.end method

.method private aa()V
    .registers 21

    sget v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    if-nez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    sub-int/2addr v1, v2

    move v2, v1

    :goto_d
    sget v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    if-ge v2, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v10, v4, v6

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    div-double v12, v4, v10

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v6, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    div-double v14, v4, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v16

    const/4 v1, 0x1

    move v7, v1

    move-object v8, v3

    :goto_4e
    int-to-double v3, v7

    cmpg-double v1, v3, v10

    if-gtz v1, :cond_dd

    iget-wide v5, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v3, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    const-wide/16 v18, 0x0

    cmpl-double v1, v18, v16

    if-nez v1, :cond_81

    iget-wide v5, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v5, v14

    :goto_60
    new-instance v9, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v9, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    if-eqz v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z:Z

    if-eqz v1, :cond_96

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    goto :goto_4

    :cond_81
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v3, v16

    if-nez v1, :cond_8e

    iget-wide v3, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v3, v12

    goto :goto_60

    :cond_8e
    iget-wide v3, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double v5, v3, v14

    iget-wide v3, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v3, v12

    goto :goto_60

    :cond_96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v1, v2, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    if-eqz v1, :cond_c6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(I)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v8, v9

    goto/16 :goto_4e

    :cond_dd
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_d
.end method

.method private ab()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private ac()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    const-wide v1, 0x4076800000000000L    # 360.0

    :try_start_b
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->getAngle()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1d} :catch_24

    move-result v0

    :goto_1e
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/Marker;->setRotate(F)V

    goto :goto_4

    :catch_24
    move-exception v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v3, "Get DriverPosition Angle failed"

    invoke-static {v2, v3, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private declared-synchronized ad()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ae()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C:Z

    :cond_8
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1a
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    if-eqz v0, :cond_30

    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I:Z

    :cond_30
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_54

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V

    const-string v2, "Adjust visible span"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private af()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->G:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnSynchronizationListener(Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;)V

    return-void
.end method

.method private ag()V
    .registers 2

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    packed-switch v0, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ad()V

    goto :goto_5

    :pswitch_a
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ah()V

    goto :goto_5

    :pswitch_e
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ai()V

    goto :goto_5

    :pswitch_12
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->aj()V

    goto :goto_5

    :pswitch_16
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ak()V

    goto :goto_5

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method

.method private ah()V
    .registers 2

    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F:Lcom/baidu/mapapi/model/LatLngBounds;

    return-void
.end method

.method private ai()V
    .registers 2

    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F:Lcom/baidu/mapapi/model/LatLngBounds;

    return-void
.end method

.method private aj()V
    .registers 2

    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F:Lcom/baidu/mapapi/model/LatLngBounds;

    return-void
.end method

.method private ak()V
    .registers 2

    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F:Lcom/baidu/mapapi/model/LatLngBounds;

    return-void
.end method

.method private b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;D)D
    .registers 15

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide/16 v0, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v6, v6, p3

    if-nez v6, :cond_23

    iget-wide v0, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_22

    const-wide v2, 0x4076800000000000L    # 360.0

    :cond_22
    :goto_22
    return-wide v2

    :cond_23
    cmpl-double v6, v0, p3

    if-nez v6, :cond_37

    iget-wide v0, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_35

    const-wide v2, 0x4070e00000000000L    # 270.0

    goto :goto_22

    :cond_35
    move-wide v2, v4

    goto :goto_22

    :cond_37
    iget-wide v6, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, p3

    cmpg-double v6, v6, v0

    if-gez v6, :cond_42

    move-wide v0, v2

    :cond_42
    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    sub-double v2, v0, v4

    goto :goto_22
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H:J

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Y()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_9
    return-void
.end method

.method private b(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowEndPositionMarkerInSpan()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set not show endPositionMarker in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getEndPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_13
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;)V

    return-void
.end method

.method private b(D)Z
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, p1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    add-double/2addr v1, v3

    :try_start_a
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_20
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :catch_17
    move-exception v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v3, "Calc sleep interval failed"

    invoke-static {v2, v3, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_20
    move-exception v1

    goto :goto_16
.end method

.method private b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z
    .registers 7

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/Marker;->setRotate(F)V

    :cond_1e
    const-wide/16 v2, 0x0

    cmpl-double v2, v2, v0

    if-nez v2, :cond_2d

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v0

    :goto_28
    if-eqz v0, :cond_5

    sput-object p2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    goto :goto_5

    :cond_2d
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;D)Z

    move-result v0

    goto :goto_28
.end method

.method private b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z
    .registers 21

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-object/from16 v0, p3

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    const-wide v15, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v13, v15

    cmpg-double v13, v13, v9

    if-gtz v13, :cond_52

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v1, v5

    cmpg-double v1, v9, v1

    if-gtz v1, :cond_52

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v1, v5

    cmpg-double v1, v1, v11

    if-gtz v1, :cond_52

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v1, v3

    cmpg-double v1, v11, v1

    if-gtz v1, :cond_52

    const/4 v1, 0x1

    :goto_51
    return v1

    :cond_52
    const/4 v1, 0x0

    goto :goto_51
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I:Z

    return p1
.end method

.method private c(I)V
    .registers 7

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3e8

    sget v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y:Z

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    if-ne v1, v0, :cond_12

    if-eq v4, p1, :cond_18

    :cond_12
    if-ne v1, p1, :cond_26

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    if-ne v4, v0, :cond_26

    :cond_18
    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A:Z

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    if-eq v0, p1, :cond_28

    sput p1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    :goto_23
    return-void

    :cond_24
    move v0, v2

    goto :goto_a

    :cond_26
    move v0, v2

    goto :goto_19

    :cond_28
    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    goto :goto_23
.end method

.method private c(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_9
    return-void
.end method

.method private c(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowCarMarkerInSpan()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set not show carMarker in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I:Z

    if-eqz v0, :cond_24

    :cond_1c
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    :goto_20
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_13

    :cond_24
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    goto :goto_20
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;)V

    return-void
.end method

.method private c(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z
    .registers 13

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(D)D

    move-result-wide v5

    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    :goto_b
    iget-wide v7, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v7, v0, v7

    if-gtz v7, :cond_2e

    iget-boolean v7, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-eqz v7, :cond_17

    move v0, v2

    :goto_16
    return v0

    :cond_17
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v7}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0, v7}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-direct {p0, v5, v6}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(D)Z

    move-result v7

    if-nez v7, :cond_2c

    move v0, v2

    goto :goto_16

    :cond_2c
    add-double/2addr v0, v3

    goto :goto_b

    :cond_2e
    const/4 v0, 0x1

    goto :goto_16
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->J:Z

    return p1
.end method

.method private d(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D
    .registers 5

    invoke-static {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/b;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized d(I)I
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    sub-int v0, p1, v0

    sput p1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 8

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowPassengerIconInSpan()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set not show passengerMarker in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getLocationData()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v1

    if-nez v1, :cond_28

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "No passenger location data"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_28
    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/map/MyLocationData;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    :goto_37
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_13

    :cond_3b
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    goto :goto_37
.end method

.method static synthetic d(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y:Z

    return v0
.end method

.method private e(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D
    .registers 9

    iget-wide v0, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_e

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_d
    return-wide v0

    :cond_e
    iget-wide v0, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    iget-wide v2, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_d
.end method

.method private e(I)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "Route polyline points is null when remove"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_96

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_96

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_33
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "No need removeTravelledPolyLine"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_3b
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z:Z

    if-nez v0, :cond_13

    :try_start_3f
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_69

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    :cond_69
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/Polyline;->setIndexs([I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_76} :catch_91

    :goto_76
    :try_start_76
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_87} :catch_88

    goto :goto_13

    :catch_88
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "Get subList of PolyLinePointList failed"

    invoke-static {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76

    :cond_96
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polyline;->remove()V

    goto/16 :goto_13
.end method

.method private e(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->isShowRoutePlanInSpan()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "User set not show routeLine in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    goto :goto_13

    :cond_24
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V

    goto :goto_13
.end method

.method static synthetic e(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ac()V

    return-void
.end method

.method private f(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D
    .registers 5

    invoke-static {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/b;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    return v0
.end method

.method private f(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 4

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L:I

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/LinkPointPolyLineInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    return-void
.end method

.method static synthetic g(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)D
    .registers 3

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Z()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)V
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "There no routeLine info, no need show in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_26
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "There no routeLine position, no need show in span"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2e
    const/4 v0, 0x0

    move v1, v0

    :goto_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    :cond_47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_13
.end method

.method static synthetic h(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t:D

    return-wide v0
.end method

.method static synthetic h()I
    .registers 1

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    return v0
.end method

.method private h(Lcom/baidu/mapapi/model/LatLngBounds$Builder;)Lcom/baidu/mapapi/model/LatLngBounds;
    .registers 3

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->aa()V

    return-void
.end method

.method static synthetic j()Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    return-object v0
.end method

.method private k()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    :cond_11
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    :cond_1c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    :cond_27
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    :cond_32
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    :cond_3d
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getStartPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getCarIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getEndPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getEndPositionIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    :cond_60
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    goto :goto_5
.end method

.method static synthetic k(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ab()V

    return-void
.end method

.method private l()V
    .registers 3

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    :try_start_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_15

    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q:Ljava/lang/Thread;

    :cond_14
    return-void

    :catch_15
    move-exception v0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v1, "InterruptedException when release CarMoveThread"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method static synthetic l(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w:Z

    return v0
.end method

.method static synthetic m(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/BaiduMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method private m()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x:Ljava/lang/Thread;

    :cond_a
    return-void
.end method

.method static synthetic n(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/Marker;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    return-object v0
.end method

.method private n()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B:Ljava/lang/Thread;

    :cond_a
    return-void
.end method

.method static synthetic o(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->R:I

    return v0
.end method

.method private o()V
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    sput-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    const/16 v1, 0x3e8

    sput v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h:I

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->U:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V:Z

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p:I

    sput-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t:D

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Polyline;->remove()V

    iput-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->O:Lcom/baidu/mapapi/map/Polyline;

    :cond_35
    move v1, v0

    :goto_36
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    return-void
.end method

.method private p()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ad()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    :cond_21
    return-void
.end method

.method static synthetic p(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C:Z

    return v0
.end method

.method private q()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ae()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->G()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->K()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V()V

    goto :goto_6
.end method

.method static synthetic q(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ag()V

    return-void
.end method

.method static synthetic r(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/model/LatLngBounds;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->F:Lcom/baidu/mapapi/model/LatLngBounds;

    return-object v0
.end method

.method private r()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ae()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->G()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->K()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V()V

    goto :goto_6
.end method

.method static synthetic s(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H:J

    return-wide v0
.end method

.method private s()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->C()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->B()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ae()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->G()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->K()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V()V

    goto :goto_6
.end method

.method static synthetic t(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->K:J

    return-wide v0
.end method

.method private t()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->A()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ae()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->G()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->H()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->I()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->M()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->N()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->Q()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V()V

    goto :goto_6
.end method

.method static synthetic u(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D:I

    return v0
.end method

.method private u()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ad()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->w()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->x()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->y()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->z()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    :cond_1e
    return-void
.end method

.method static synthetic v(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E:I

    return v0
.end method

.method private v()Z
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-nez v1, :cond_1f

    :cond_9
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "No render data"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    const v2, 0x186a1

    const-string v3, "Get render data failed"

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;->a(ILjava/lang/String;)V

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v1, :cond_39

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    const-string v2, "BaiduMap is null"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    const v2, 0x186a2

    const-string v3, "BaiduMap instance is null."

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;->a(ILjava/lang/String;)V

    goto :goto_1e

    :cond_39
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private w()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l:Lcom/baidu/mapapi/map/Marker;

    :cond_17
    return-void
.end method

.method private x()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j:Lcom/baidu/mapapi/map/Marker;

    :cond_17
    return-void
.end method

.method private y()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n:Lcom/baidu/mapapi/map/Marker;

    :cond_c
    return-void
.end method

.method private z()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    :cond_c
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f:Lcom/baidu/mapapi/map/Marker;

    :cond_17
    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Marker;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i:Lcom/baidu/mapapi/map/Marker;

    return-object v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->D:I

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    sput-object p2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    sput-object p3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->G:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->af()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r:Lcom/baidu/mapapi/model/LatLng;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/UiSettings;->setRotateGesturesEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/UiSettings;->setCompassEnabled(Z)V

    return-void
.end method

.method declared-synchronized a(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    sput-object p1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d:Lcom/baidu/mapapi/synchronization/RoleOptions;

    sput-object p2, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-nez v0, :cond_10

    new-instance v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    :cond_10
    sput-object p3, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;

    return-void
.end method

.method b()Lcom/baidu/mapapi/map/Marker;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k:Lcom/baidu/mapapi/map/Marker;

    return-object v0
.end method

.method b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->E:I

    return-void
.end method

.method c()Lcom/baidu/mapapi/map/Marker;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m:Lcom/baidu/mapapi/map/Marker;

    return-object v0
.end method

.method public d()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V:Z

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->U:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->U:Z

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->J()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ae()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->W()V

    goto :goto_9
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->V:Z

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->X()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->L()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->ad()V

    return-void
.end method

.method public f()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The orderState in message is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined Message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void

    :pswitch_3f
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p()V

    goto :goto_3e

    :pswitch_43
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q()V

    goto :goto_3e

    :pswitch_47
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r()V

    goto :goto_3e

    :pswitch_4b
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s()V

    goto :goto_3e

    :pswitch_4f
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t()V

    goto :goto_3e

    :pswitch_53
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u()V

    goto :goto_3e

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
    .end packed-switch
.end method
