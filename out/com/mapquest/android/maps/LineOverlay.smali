.class public Lcom/mapquest/android/maps/LineOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# static fields
.field private static final EPSILON:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TOUCH_TOLERANCE:I = 0x5


# instance fields
.field private DEBUG:Z

.field private boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private epsilon:I

.field private linePaint:Landroid/graphics/Paint;

.field private listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

.field private path:Landroid/graphics/Path;

.field private pointPaint:Landroid/graphics/Paint;

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private showPoints:Z

.field private volatile simplified:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

.field private simplifierThread:Landroid/os/HandlerThread;

.field private simplify:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/mapquest/android/maps/LineOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/LineOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 44
    const/16 v0, 0x9

    iput v0, p0, Lcom/mapquest/android/maps/LineOverlay;->epsilon:I

    .line 45
    iput-boolean v2, p0, Lcom/mapquest/android/maps/LineOverlay;->showPoints:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    .line 47
    iput-boolean v2, p0, Lcom/mapquest/android/maps/LineOverlay;->DEBUG:Z

    .line 48
    iput-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    .line 49
    iput-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    .line 50
    iput-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mapquest/android/maps/LineOverlay;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/LineOverlay;)Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/List;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mapquest/android/maps/LineOverlay;)Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mapquest/android/maps/LineOverlay;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mapquest/android/maps/LineOverlay;)I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/mapquest/android/maps/LineOverlay;->epsilon:I

    return v0
.end method

.method private createPointPaint()Landroid/graphics/Paint;
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_26

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 231
    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    :goto_25
    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    goto :goto_25
.end method

.method private drawLine(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    return-void
.end method

.method private isNearLine(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Util;->closestPoint(Lcom/mapquest/android/maps/GeoPoint;Ljava/util/List;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    .line 275
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v3, v2, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 276
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v2, p1, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 277
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    .line 278
    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private quitSimplifier()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    if-eqz v0, :cond_14

    .line 283
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    iget-object v0, v0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->reuse:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 285
    iput-object v2, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    .line 288
    :cond_14
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_25

    .line 289
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_23

    .line 291
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 294
    :cond_23
    iput-object v2, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    .line 297
    :cond_25
    return-void
.end method

.method private simplify(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/Projection;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapquest/android/maps/MapView;",
            "Lcom/mapquest/android/maps/Projection;",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    if-eqz v0, :cond_3c

    .line 206
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_28

    .line 207
    :cond_c
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "simplifier"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    .line 208
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;-><init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/MapView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    .line 212
    :cond_28
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    if-nez v0, :cond_3d

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    .line 214
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/mapquest/android/maps/LineOverlay$Simplifier;-><init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/Projection;Lcom/mapquest/android/maps/LineOverlay$1;)V

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_3c
    :goto_3c
    return-object p3

    .line 215
    :cond_3d
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 216
    iget-object p3, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    goto :goto_3c
.end method


# virtual methods
.method protected addPoint(Lcom/mapquest/android/maps/GeoPoint;I)V
    .registers 5

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    if-nez v0, :cond_b

    .line 313
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    .line 316
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    if-lez p2, :cond_21

    .line 318
    :goto_12
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_21

    .line 319
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    .line 323
    :cond_21
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    invoke-static {v0}, Lcom/mapquest/android/maps/BoundingBox;->calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 324
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    .line 301
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;

    .line 302
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    .line 303
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 304
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    .line 305
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    .line 306
    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    .line 308
    invoke-direct {p0}, Lcom/mapquest/android/maps/LineOverlay;->quitSimplifier()V

    .line 309
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 15

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    if-nez v0, :cond_16

    .line 120
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay$EventListener;

    invoke-direct {v0, p0, v2}, Lcom/mapquest/android/maps/LineOverlay$EventListener;-><init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/LineOverlay$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    .line 121
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    invoke-virtual {p2, v0}, Lcom/mapquest/android/maps/MapView;->addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 124
    :cond_16
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v6

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-static {v1, p2}, Lcom/mapquest/android/maps/Util;->createRectFromBoundingBox(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;

    move-result-object v1

    .line 127
    iget-object v3, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 128
    neg-int v4, v3

    neg-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 129
    invoke-static {v0, p2}, Lcom/mapquest/android/maps/Util;->createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v7

    .line 130
    iget-object v3, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    invoke-direct {p0, p2, v6, v3}, Lcom/mapquest/android/maps/LineOverlay;->simplify(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/Projection;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 131
    invoke-static {v1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v4, v5

    move-object v1, v2

    .line 140
    :goto_4c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_cc

    .line 141
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 142
    invoke-virtual {v7, v0}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 143
    add-int/lit8 v3, v4, 0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_88

    .line 144
    invoke-interface {v6, v0, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 145
    add-int/lit8 v0, v4, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 146
    invoke-virtual {v7, v0}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v1

    if-eqz v1, :cond_11e

    move-object v1, v2

    .line 147
    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v6, v0, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0, v3}, Lcom/mapquest/android/maps/LineOverlay;->drawLine(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move-object v0, v3

    .line 140
    :goto_83
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_4c

    :cond_88
    move-object v0, v1

    .line 151
    goto :goto_83

    .line 154
    :cond_8a
    invoke-interface {v6, v0, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 155
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->showPoints:Z

    if-eqz v0, :cond_ad

    .line 156
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_9c

    .line 157
    invoke-direct {p0}, Lcom/mapquest/android/maps/LineOverlay;->createPointPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 160
    :cond_9c
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v9, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    iget-object v10, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    :cond_ad
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v4, 0x1

    if-le v0, v3, :cond_11c

    .line 165
    add-int/lit8 v0, v4, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    move-object v3, v0

    .line 168
    :goto_be
    if-eqz v3, :cond_ca

    move-object v0, v2

    .line 169
    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v6, v3, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 170
    invoke-direct {p0, v1, v0}, Lcom/mapquest/android/maps/LineOverlay;->drawLine(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_ca
    move-object v0, v1

    goto :goto_83

    .line 175
    :cond_cc
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 176
    :goto_d4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_107

    .line 177
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 179
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v5, 0x1

    if-le v1, v3, :cond_11a

    .line 180
    add-int/lit8 v1, v5, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/GeoPoint;

    move-object v3, v1

    .line 183
    :goto_f1
    if-eqz v3, :cond_104

    move-object v1, v2

    .line 184
    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v6, v0, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    move-object v0, v2

    .line 185
    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v6, v3, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 186
    invoke-direct {p0, v1, v0}, Lcom/mapquest/android/maps/LineOverlay;->drawLine(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 176
    :cond_104
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 191
    :cond_107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->DEBUG:Z

    if-eqz v0, :cond_10e

    .line 196
    :cond_10e
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 197
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->DEBUG:Z

    if-eqz v0, :cond_119

    .line 202
    :cond_119
    return-void

    :cond_11a
    move-object v3, v2

    goto :goto_f1

    :cond_11c
    move-object v3, v2

    goto :goto_be

    :cond_11e
    move-object v0, v3

    goto/16 :goto_83
.end method

.method public isSimplify()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    return v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/LineOverlay;->isNearLine(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 242
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_23

    .line 251
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 252
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/LineOverlay;->isNearLine(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 253
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 254
    const/4 v0, 0x1

    .line 258
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    if-eqz v0, :cond_23

    .line 263
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 264
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/LineOverlay;->isNearLine(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 265
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 266
    const/4 v0, 0x1

    .line 270
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setBoundingBox(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 90
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mapquest/android/maps/LineOverlay;->setData(Ljava/util/List;Z)V

    .line 73
    return-void
.end method

.method public setData(Ljava/util/List;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;",
            "Lcom/mapquest/android/maps/BoundingBox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/mapquest/android/maps/LineOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    .line 64
    return-void
.end method

.method public setData(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/mapquest/android/maps/BoundingBox;->calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 68
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/mapquest/android/maps/LineOverlay;->setData(Ljava/util/List;Lcom/mapquest/android/maps/BoundingBox;)V

    .line 69
    return-void

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    goto :goto_6
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay;->linePaint:Landroid/graphics/Paint;

    .line 77
    return-void
.end method

.method public setPointPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 86
    return-void
.end method

.method public setShowPoints(ZLandroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mapquest/android/maps/LineOverlay;->showPoints:Z

    .line 81
    iput-object p2, p0, Lcom/mapquest/android/maps/LineOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 82
    return-void
.end method

.method public setSimplify(ZI)V
    .registers 4

    .prologue
    .line 97
    const/4 v0, -0x1

    if-le p2, v0, :cond_1b

    .line 98
    iput p2, p0, Lcom/mapquest/android/maps/LineOverlay;->epsilon:I

    .line 103
    :goto_5
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    if-eq v0, p1, :cond_1a

    .line 104
    iget-boolean v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    if-eqz v0, :cond_18

    .line 105
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-direct {p0}, Lcom/mapquest/android/maps/LineOverlay;->quitSimplifier()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;

    .line 110
    :cond_18
    iput-boolean p1, p0, Lcom/mapquest/android/maps/LineOverlay;->simplify:Z

    .line 112
    :cond_1a
    return-void

    .line 100
    :cond_1b
    const/16 v0, 0x9

    iput v0, p0, Lcom/mapquest/android/maps/LineOverlay;->epsilon:I

    goto :goto_5
.end method
