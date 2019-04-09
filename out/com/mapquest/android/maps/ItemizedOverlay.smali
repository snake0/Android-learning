.class public abstract Lcom/mapquest/android/maps/ItemizedOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mapquest/android/maps/OverlayItem;",
        ">",
        "Lcom/mapquest/android/maps/Overlay;",
        "Lcom/mapquest/android/maps/Overlay$Snappable;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field bounds:Landroid/graphics/Rect;

.field private defaultAlignment:I

.field private defaultMarker:Landroid/graphics/drawable/Drawable;

.field private drawFocusedItem:Z

.field private fingerSize:I

.field private focusedIndex:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private latSpanE6:I

.field private listener:Lcom/mapquest/android/maps/ItemizedOverlay$OnFocusChangeListener;

.field private lngSpanE6:I

.field private pressedIndex:I

.field private rankIndex:[Ljava/lang/Integer;

.field private selectedIndex:I

.field private trackballGestureDetector:Lcom/mapquest/android/maps/TrackballGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/ItemizedOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 39
    const/16 v0, 0x21

    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->defaultAlignment:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    invoke-direct {v0}, Lcom/mapquest/android/maps/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 42
    iput v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 43
    iput v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->selectedIndex:I

    .line 44
    iput v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->pressedIndex:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->drawFocusedItem:Z

    .line 46
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->fingerSize:I

    .line 47
    new-instance v0, Lcom/mapquest/android/maps/TrackballGestureDetector;

    invoke-direct {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->trackballGestureDetector:Lcom/mapquest/android/maps/TrackballGestureDetector;

    .line 48
    iput-object v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->rankIndex:[Ljava/lang/Integer;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->bounds:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->defaultMarker:Landroid/graphics/drawable/Drawable;

    .line 51
    new-instance v0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;-><init>(Lcom/mapquest/android/maps/ItemizedOverlay;Lcom/mapquest/android/maps/ItemizedOverlay$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->gestureListener:Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->gestureListener:Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iput p2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->defaultAlignment:I

    .line 58
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->defaultAlignment:I

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/ItemizedOverlay;Lcom/mapquest/android/maps/MapView;II)I
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/mapquest/android/maps/ItemizedOverlay;->findItem(Lcom/mapquest/android/maps/MapView;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/ItemizedOverlay;I)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ItemizedOverlay;->press(I)V

    return-void
.end method

.method protected static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 161
    const/16 v0, 0x21

    invoke-static {p0, v0}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private changeState(III)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 279
    if-eq p1, p2, :cond_36

    if-le p2, v1, :cond_36

    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_36

    .line 281
    if-le p1, v1, :cond_26

    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_26

    .line 282
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/mapquest/android/maps/ItemizedOverlay;->removeStateBit(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/OverlayItem;->setState(I)V

    .line 286
    :cond_26
    invoke-virtual {p0, p2}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/mapquest/android/maps/ItemizedOverlay;->setStateBit(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/OverlayItem;->setState(I)V

    move p1, p2

    .line 291
    :cond_36
    return p1
.end method

.method private findItem(Lcom/mapquest/android/maps/MapView;II)I
    .registers 14

    .prologue
    const/4 v1, -0x1

    .line 303
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    .line 304
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 305
    iget v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    if-eq v2, v1, :cond_31

    .line 306
    iget v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {p0, v2}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 308
    invoke-direct {p0, v2}, Lcom/mapquest/android/maps/ItemizedOverlay;->getMarker(Lcom/mapquest/android/maps/OverlayItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int v5, p2, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int v6, p3, v6

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/mapquest/android/maps/ItemizedOverlay;->hitTest(Lcom/mapquest/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 309
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 323
    :cond_30
    :goto_30
    return v0

    .line 313
    :cond_31
    iget-object v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 315
    const/4 v2, 0x0

    move v9, v2

    move-object v2, v0

    move v0, v9

    :goto_3b
    if-ge v0, v4, :cond_5e

    .line 316
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v5

    .line 317
    invoke-virtual {v5}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 318
    invoke-direct {p0, v5}, Lcom/mapquest/android/maps/ItemizedOverlay;->getMarker(Lcom/mapquest/android/maps/OverlayItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int v7, p2, v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    sub-int v8, p3, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/mapquest/android/maps/ItemizedOverlay;->hitTest(Lcom/mapquest/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v5

    if-nez v5, :cond_30

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_5e
    move v0, v1

    .line 323
    goto :goto_30
.end method

.method private focus(I)V
    .registers 5

    .prologue
    .line 262
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 263
    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/mapquest/android/maps/ItemizedOverlay;->changeState(III)I

    move-result v1

    iput v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 264
    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->listener:Lcom/mapquest/android/maps/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    if-eq v0, v1, :cond_22

    .line 265
    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->listener:Lcom/mapquest/android/maps/ItemizedOverlay$OnFocusChangeListener;

    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    invoke-interface {v1, p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/mapquest/android/maps/ItemizedOverlay;Lcom/mapquest/android/maps/OverlayItem;)V

    .line 268
    :cond_22
    return-void
.end method

.method private getMarker(Lcom/mapquest/android/maps/OverlayItem;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    if-nez v0, :cond_13

    .line 64
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->defaultMarker:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 68
    :cond_13
    return-object v0
.end method

.method private press(I)V
    .registers 4

    .prologue
    .line 275
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->pressedIndex:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/mapquest/android/maps/ItemizedOverlay;->changeState(III)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->pressedIndex:I

    .line 276
    return-void
.end method

.method private removeStateBit(II)I
    .registers 4

    .prologue
    .line 299
    const v0, 0xffffff

    xor-int/2addr v0, p2

    and-int/2addr v0, p1

    return v0
.end method

.method private select(I)V
    .registers 4

    .prologue
    .line 271
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->selectedIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/mapquest/android/maps/ItemizedOverlay;->changeState(III)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->selectedIndex:I

    .line 272
    return-void
.end method

.method private setStateBit(II)I
    .registers 4

    .prologue
    .line 295
    or-int v0, p1, p2

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 122
    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->selectedIndex:I

    .line 123
    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->pressedIndex:I

    .line 124
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    .line 125
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getMarker(Lcom/mapquest/android/maps/OverlayItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_d

    .line 129
    :cond_22
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    return-void
.end method

.method protected abstract createItem(I)Lcom/mapquest/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ItemizedOverlay;->clear()V

    .line 147
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 12

    .prologue
    .line 82
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v7

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v1

    .line 85
    invoke-static {v0, p2}, Lcom/mapquest/android/maps/Util;->createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/BoundingBox;->intersect(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 87
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 90
    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_24
    if-ltz v6, :cond_50

    .line 91
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    if-eq v0, v6, :cond_4c

    .line 92
    invoke-virtual {p0, v6}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v2

    .line 93
    invoke-direct {p0, v2}, Lcom/mapquest/android/maps/ItemizedOverlay;->getMarker(Lcom/mapquest/android/maps/OverlayItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 94
    invoke-virtual {v2}, Lcom/mapquest/android/maps/OverlayItem;->getAlignment()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 95
    invoke-virtual {v2}, Lcom/mapquest/android/maps/OverlayItem;->getAlignment()I

    move-result v0

    invoke-static {v4, v0}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 98
    :cond_3f
    invoke-virtual {v2}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/OverlayItem;Landroid/graphics/Point;Landroid/graphics/drawable/Drawable;Z)V

    .line 90
    :cond_4c
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_24

    .line 103
    :cond_50
    iget-boolean v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->drawFocusedItem:Z

    if-eqz v0, :cond_76

    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_76

    .line 104
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    invoke-interface {v7, v1, v3}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 106
    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getMarker(Lcom/mapquest/android/maps/OverlayItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/OverlayItem;Landroid/graphics/Point;Landroid/graphics/drawable/Drawable;Z)V

    .line 110
    :cond_76
    return-void
.end method

.method drawItem(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/OverlayItem;Landroid/graphics/Point;Landroid/graphics/drawable/Drawable;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "TT;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->bounds:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 75
    invoke-static {v0, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 76
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-static {p1, p4, v0, v1, p5}, Lcom/mapquest/android/maps/ItemizedOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 79
    :cond_23
    return-void
.end method

.method public getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    return-object v0
.end method

.method public getCenter()Lcom/mapquest/android/maps/GeoPoint;
    .registers 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 138
    :cond_12
    return-object v0
.end method

.method public getFocus()Lcom/mapquest/android/maps/OverlayItem;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 173
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    goto :goto_5
.end method

.method protected getIndexToDraw(I)I
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->rankIndex:[Ljava/lang/Integer;

    if-nez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->rankIndex:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4
.end method

.method public final getItem(I)Lcom/mapquest/android/maps/OverlayItem;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    return-object v0
.end method

.method public final getLastFocusedIndex()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    return v0
.end method

.method public getLatSpanE6()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->latSpanE6:I

    return v0
.end method

.method public getLonSpanE6()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->lngSpanE6:I

    return v0
.end method

.method protected hitTest(Lcom/mapquest/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 328
    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->fingerSize:I

    shr-int/lit8 v1, v1, 0x1

    .line 329
    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 330
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public nextFocus(Z)Lcom/mapquest/android/maps/OverlayItem;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 186
    if-eqz p1, :cond_23

    .line 187
    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 192
    :goto_a
    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    if-ltz v1, :cond_2a

    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    iget-object v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 193
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    .line 196
    :goto_22
    return-object v0

    .line 189
    :cond_23
    iget v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    goto :goto_a

    .line 195
    :cond_2a
    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 196
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 338
    const/16 v0, 0x42

    if-eq p1, v0, :cond_8

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1e

    :cond_8
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1e

    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1, p2, p3}, Lcom/mapquest/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected onTap(I)Z
    .registers 3

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 5

    .prologue
    .line 364
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, p1, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 365
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, v1, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->findItem(Lcom/mapquest/android/maps/MapView;II)I

    move-result v0

    .line 366
    const/4 v1, -0x1

    if-le v0, v1, :cond_21

    .line 367
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->focus(I)V

    .line 368
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->select(I)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    .line 371
    :goto_20
    return v0

    :cond_21
    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/Overlay;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    goto :goto_20
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->gestureListener:Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->setMapView(Lcom/mapquest/android/maps/MapView;)V

    .line 377
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->trackballGestureDetector:Lcom/mapquest/android/maps/TrackballGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    .line 382
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->trackballGestureDetector:Lcom/mapquest/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->isScroll()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 383
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->trackballGestureDetector:Lcom/mapquest/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    .line 384
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->focus(I)V

    .line 392
    :cond_1f
    :goto_1f
    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    :goto_23
    return v0

    .line 386
    :cond_24
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->focus(I)V

    goto :goto_1f

    .line 388
    :cond_2c
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->trackballGestureDetector:Lcom/mapquest/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->isTap()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 389
    iget v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    goto :goto_23
.end method

.method protected final populate()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ItemizedOverlay;->size()I

    move-result v6

    .line 206
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 208
    const v0, -0x55d4a80

    .line 209
    const v1, 0x55d4a80

    .line 210
    const v2, -0xaba9500

    .line 211
    const v3, 0xaba9500

    move v5, v4

    .line 214
    :goto_1d
    if-ge v5, v6, :cond_5d

    .line 215
    invoke-virtual {p0, v5}, Lcom/mapquest/android/maps/ItemizedOverlay;->createItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v7

    .line 216
    invoke-virtual {v7}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v8

    .line 217
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    if-le v9, v0, :cond_31

    .line 218
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    .line 221
    :cond_31
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    if-ge v9, v1, :cond_3b

    .line 222
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 225
    :cond_3b
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    if-le v9, v2, :cond_45

    .line 226
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    .line 229
    :cond_45
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    if-ge v9, v3, :cond_4f

    .line 230
    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 233
    :cond_4f
    invoke-virtual {v7, v4}, Lcom/mapquest/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-virtual {v7, v4}, Lcom/mapquest/android/maps/OverlayItem;->setState(I)V

    .line 235
    iget-object v8, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 238
    :cond_5d
    iget-object v5, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    new-instance v7, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v7, v0, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v7, v5, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    .line 239
    iget-object v5, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    new-instance v7, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v7, v1, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v7, v5, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    .line 240
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->latSpanE6:I

    .line 241
    sub-int v0, v2, v3

    iput v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->lngSpanE6:I

    .line 242
    iput v10, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 243
    iput v10, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->selectedIndex:I

    .line 244
    iput v10, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->pressedIndex:I

    .line 245
    new-array v0, v6, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->rankIndex:[Ljava/lang/Integer;

    move v0, v4

    .line 247
    :goto_81
    if-ge v0, v6, :cond_8e

    .line 248
    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->rankIndex:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 251
    :cond_8e
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->rankIndex:[Ljava/lang/Integer;

    new-instance v1, Lcom/mapquest/android/maps/ItemizedOverlay$1;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/ItemizedOverlay$1;-><init>(Lcom/mapquest/android/maps/ItemizedOverlay;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 259
    return-void
.end method

.method public remove(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ItemizedOverlay;->populate()V

    .line 154
    :cond_c
    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .registers 2

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->drawFocusedItem:Z

    .line 166
    return-void
.end method

.method public setFocus(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 346
    move v0, v1

    .line 348
    :goto_2
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ItemizedOverlay;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 349
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v2

    .line 350
    if-ne v2, p1, :cond_12

    .line 356
    :goto_e
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->focus(I)V

    .line 357
    return-void

    .line 348
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    move v0, v1

    goto :goto_e
.end method

.method protected setLastFocusedIndex(I)V
    .registers 2

    .prologue
    .line 360
    iput p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->focusedIndex:I

    .line 361
    return-void
.end method

.method public setOnFocusChangeListener(Lcom/mapquest/android/maps/ItemizedOverlay$OnFocusChangeListener;)V
    .registers 2

    .prologue
    .line 396
    iput-object p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay;->listener:Lcom/mapquest/android/maps/ItemizedOverlay$OnFocusChangeListener;

    .line 397
    return-void
.end method

.method public abstract size()I
.end method
