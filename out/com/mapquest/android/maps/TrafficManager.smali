.class Lcom/mapquest/android/maps/TrafficManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLOW_PADDING:I = 0x28

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private currentImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

.field private enabled:Z

.field private flowDownloadTask:Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;

.field private flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

.field private handler:Landroid/os/Handler;

.field private inFlight:Z

.field private key:Ljava/lang/String;

.field private keyValid:Z

.field private queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

.field private view:Lcom/mapquest/android/maps/MapView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/TrafficManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrafficManager;->inFlight:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    .line 26
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrafficManager;->enabled:Z

    .line 27
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrafficManager;->keyValid:Z

    .line 32
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    .line 33
    iput-object p2, p0, Lcom/mapquest/android/maps/TrafficManager;->baseUrl:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/mapquest/android/maps/TrafficManager;->key:Ljava/lang/String;

    .line 35
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->keyValid:Z

    .line 39
    :cond_1e
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/mapquest/android/maps/TrafficManager$1;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/TrafficManager$1;-><init>(Lcom/mapquest/android/maps/TrafficManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->handler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/TrafficManager;)Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/TrafficManager;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mapquest/android/maps/TrafficManager;->handleMove()V

    return-void
.end method

.method private handleMove()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 211
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/TrafficManager;->createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->currentImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->currentImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/BoundingBox;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 213
    :cond_28
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TrafficManager;->refreshFlow()V

    .line 216
    :cond_2b
    return-void
.end method

.method private retrieveImage(Ljava/lang/String;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 119
    new-instance v0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-direct {v0, p0, p1, p2}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;-><init>(Lcom/mapquest/android/maps/TrafficManager;Ljava/lang/String;Lcom/mapquest/android/maps/BoundingBox;)V

    .line 120
    iget-boolean v1, p0, Lcom/mapquest/android/maps/TrafficManager;->inFlight:Z

    if-eqz v1, :cond_18

    .line 122
    iput-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    .line 129
    :cond_17
    :goto_17
    return-void

    .line 124
    :cond_18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrafficManager;->inFlight:Z

    .line 125
    new-instance v1, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;

    invoke-direct {v1, p0, v0, p0}, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;-><init>(Lcom/mapquest/android/maps/TrafficManager;Lcom/mapquest/android/maps/TrafficManager$TrafficImage;Lcom/mapquest/android/maps/TrafficManager;)V

    iput-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->flowDownloadTask:Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;

    .line 126
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->flowDownloadTask:Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_17
.end method


# virtual methods
.method public addEventListener()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->registerHandler(Landroid/os/Handler;)V

    .line 133
    return-void
.end method

.method public constructUrl(Lcom/mapquest/android/maps/BoundingBox;II)Ljava/lang/String;
    .registers 10

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/flow?key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mapquest/android/maps/TrafficManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Lcom/mapquest/android/maps/BoundingBox;->getCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ProjectionX;

    .line 103
    iget-object v3, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/mapquest/android/maps/ProjectionX;->getScaleFactor(I)I

    move-result v0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&mapLat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-static {v4}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&mapLng="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mapHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mapWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mapScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, "&imageType=png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, "&projection=merc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sdk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapquest/android/maps/Util;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 190
    if-nez v0, :cond_9

    .line 191
    const/4 v0, 0x0

    .line 205
    :goto_8
    return-object v0

    .line 194
    :cond_9
    if-eqz p1, :cond_21

    .line 196
    :try_start_b
    invoke-static {p1, p2}, Lcom/mapquest/android/maps/Util;->createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_8

    .line 197
    :catch_10
    move-exception v0

    .line 199
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v1, v3, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v3, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    goto :goto_8

    .line 202
    :cond_21
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v1, v3, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v3, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    goto :goto_8
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TrafficManager;->removeEventListener()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    .line 73
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->enabled:Z

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V

    .line 186
    :cond_a
    return-void
.end method

.method protected imageReceived(Lcom/mapquest/android/maps/TrafficManager$TrafficImage;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->inFlight:Z

    .line 141
    invoke-virtual {p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    if-eqz v0, :cond_23

    .line 142
    invoke-virtual {p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gt v0, v1, :cond_24

    invoke-virtual {p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gt v0, v1, :cond_24

    .line 160
    :cond_23
    :goto_23
    return-void

    .line 145
    :cond_24
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/BoundingBox;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 146
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mapquest/android/maps/TrafficManager;->retrieveImage(Ljava/lang/String;Lcom/mapquest/android/maps/BoundingBox;)V

    .line 147
    iput-object v2, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    .line 152
    :goto_49
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager;->currentImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    .line 153
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->setDrawable(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/BoundingBox;)V

    .line 154
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_23

    .line 155
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto :goto_23

    .line 149
    :cond_62
    iput-object v2, p0, Lcom/mapquest/android/maps/TrafficManager;->queuedRequest:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    goto :goto_49
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->enabled:Z

    return v0
.end method

.method public refreshFlow()V
    .registers 5

    .prologue
    const/16 v3, -0x28

    .line 76
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/MapProvider;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/MapProvider;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    if-eq v0, v1, :cond_66

    .line 77
    :cond_14
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/Configuration;->getTrafficMinimumZoomLevel()I

    move-result v1

    if-lt v0, v1, :cond_67

    .line 78
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v1

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v1, v1, 0x28

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {p0, v2, v0}, Lcom/mapquest/android/maps/TrafficManager;->createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_66

    .line 83
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->createOriginRectFromBoundingBox(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/MapProvider;

    move-result-object v2

    sget-object v3, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    if-eq v2, v3, :cond_66

    .line 85
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/mapquest/android/maps/TrafficManager;->constructUrl(Lcom/mapquest/android/maps/BoundingBox;II)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-direct {p0, v1, v0}, Lcom/mapquest/android/maps/TrafficManager;->retrieveImage(Ljava/lang/String;Lcom/mapquest/android/maps/BoundingBox;)V

    .line 95
    :cond_66
    :goto_66
    return-void

    .line 90
    :cond_67
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->destroy()V

    .line 91
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto :goto_66
.end method

.method public removeEventListener()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->removeHandler(Landroid/os/Handler;)V

    .line 137
    return-void
.end method

.method protected setApiKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager;->key:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTraffic(Z)V
    .registers 4

    .prologue
    .line 163
    if-eqz p1, :cond_27

    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->keyValid:Z

    if-eqz v0, :cond_27

    .line 164
    new-instance v0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;-><init>(Lcom/mapquest/android/maps/TrafficManager;Lcom/mapquest/android/maps/TrafficManager$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    .line 165
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/Configuration;->getTrafficMinimumZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->setMinZoomLevel(I)V

    .line 166
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TrafficManager;->addEventListener()V

    .line 167
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TrafficManager;->refreshFlow()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->enabled:Z

    .line 179
    :goto_26
    return-void

    .line 170
    :cond_27
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    if-eqz v0, :cond_30

    .line 171
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->destroy()V

    .line 174
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TrafficManager;->enabled:Z

    .line 175
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TrafficManager;->removeEventListener()V

    .line 176
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager;->view:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto :goto_26
.end method
