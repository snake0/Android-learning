.class public Lcom/mapquest/android/maps/MapView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final GUARANTEE_TILELOAD_PERCENTAGE:F = 0.5f

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAP_VIEW_BACKGROUND:I

.field private static final PRELOAD:I = 0x7ae3


# instance fields
.field animators:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mapquest/android/maps/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private bottomMargin:I

.field private builtInZoomControls:Z

.field centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

.field configuration:Lcom/mapquest/android/maps/Configuration;

.field private context:Landroid/content/Context;

.field currentScale:F

.field private customTilePaint:Landroid/graphics/Paint;

.field private defaultTilePaint:Landroid/graphics/Paint;

.field eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

.field private firedMapLoaded:Z

.field focalPoint:Landroid/graphics/Point;

.field private height:I

.field private isPause:Z

.field private leftMargin:I

.field private loadingTile:Landroid/graphics/Bitmap;

.field private logo:Z

.field private logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

.field private mapController:Lcom/mapquest/android/maps/MapController;

.field mapEventCallback:Landroid/os/Handler;

.field private mapViewEventListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mapquest/android/maps/MapView$MapViewEventListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private networkConnectivityListener:Lcom/mapquest/android/maps/NetworkConnectivityListener;

.field overlayController:Lcom/mapquest/android/maps/OverlayController;

.field private provider:Lcom/mapquest/android/maps/MapProvider;

.field private reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

.field private rightMargin:I

.field private rotRect:Landroid/graphics/Rect;

.field private rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

.field private rotateDegrees:F

.field scalePoint:Landroid/graphics/Point;

.field scaling:Z

.field private showTerms:Z

.field private tileCacher:Lcom/mapquest/android/maps/TileCacher;

.field private tileCount:I

.field private tileFactory:Lcom/mapquest/android/maps/TileFactory;

.field private tileProvider:Lcom/mapquest/android/maps/TileDownloader;

.field private topMargin:I

.field private totalTileCount:I

.field private trackBallHandler:Lcom/mapquest/android/maps/DefaultTrackBallHandler;

.field trafficManager:Lcom/mapquest/android/maps/TrafficManager;

.field visibleRect:Landroid/graphics/Rect;

.field private width:I

.field private zoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private zoomControls:Landroid/widget/ZoomControls;

.field private zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xee

    .line 48
    const-class v0, Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/MapView;->LOG_TAG:Ljava/lang/String;

    .line 49
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/mapquest/android/maps/MapView;->MAP_VIEW_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 97
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 101
    iput-boolean v6, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    .line 102
    iput-boolean v6, p0, Lcom/mapquest/android/maps/MapView;->logo:Z

    .line 103
    iput-boolean v6, p0, Lcom/mapquest/android/maps/MapView;->showTerms:Z

    .line 104
    const/4 v1, 0x2

    iput v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 105
    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    const-wide v2, 0x4043eaaa524d70c0L    # 39.833322799504

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v2

    const-wide v3, -0x3fa75aaf00000012L    # -98.583068847656

    invoke-static {v3, v4}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 106
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->defaultTilePaint:Landroid/graphics/Paint;

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    .line 109
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->firedMapLoaded:Z

    .line 110
    iput v5, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I

    .line 111
    iput v5, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    .line 112
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    .line 113
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    .line 115
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    .line 116
    sget-object v1, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->provider:Lcom/mapquest/android/maps/MapProvider;

    .line 117
    sget-object v1, Lcom/mapquest/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    .line 118
    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    .line 119
    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    iput v5, p0, Lcom/mapquest/android/maps/MapView;->topMargin:I

    .line 121
    iput v5, p0, Lcom/mapquest/android/maps/MapView;->bottomMargin:I

    .line 122
    iput v5, p0, Lcom/mapquest/android/maps/MapView;->rightMargin:I

    .line 123
    iput v5, p0, Lcom/mapquest/android/maps/MapView;->leftMargin:I

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapViewEventListeners:Ljava/util/HashMap;

    .line 125
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    .line 127
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->visibleRect:Landroid/graphics/Rect;

    .line 128
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mapquest/android/maps/MapView;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mapquest/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-boolean v2, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 165
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    .line 166
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->logo:Z

    .line 167
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->showTerms:Z

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 169
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    const-wide v3, 0x4043eaaa524d70c0L    # 39.833322799504

    invoke-static {v3, v4}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v1

    const-wide v3, -0x3fa75aaf00000012L    # -98.583068847656

    invoke-static {v3, v4}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 170
    iput-boolean v2, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->defaultTilePaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    .line 173
    iput-boolean v2, p0, Lcom/mapquest/android/maps/MapView;->firedMapLoaded:Z

    .line 174
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I

    .line 175
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    .line 176
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    .line 177
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    .line 179
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    .line 180
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->provider:Lcom/mapquest/android/maps/MapProvider;

    .line 181
    sget-object v0, Lcom/mapquest/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    .line 182
    iput-object v7, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    .line 183
    iput-object v7, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 184
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->topMargin:I

    .line 185
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->bottomMargin:I

    .line 186
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->rightMargin:I

    .line 187
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->leftMargin:I

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapViewEventListeners:Ljava/util/HashMap;

    .line 189
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->visibleRect:Landroid/graphics/Rect;

    .line 192
    const-string v0, ""

    move v1, v2

    .line 194
    :goto_89
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_b5

    .line 195
    const-string v3, "apiKey"

    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 196
    invoke-interface {p2, v1, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .line 197
    if-ne v0, v6, :cond_ac

    .line 198
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v3, "apiKey"

    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_a9
    :goto_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 200
    :cond_ac
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    .line 205
    :cond_b5
    invoke-virtual {p0, p1, v0}, Lcom/mapquest/android/maps/MapView;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 97
    iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 133
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    .line 134
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->logo:Z

    .line 135
    iput-boolean v5, p0, Lcom/mapquest/android/maps/MapView;->showTerms:Z

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 137
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    const-wide v1, 0x4043eaaa524d70c0L    # 39.833322799504

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v1

    const-wide v2, -0x3fa75aaf00000012L    # -98.583068847656

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 138
    iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->defaultTilePaint:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    .line 141
    iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->firedMapLoaded:Z

    .line 142
    iput v4, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I

    .line 143
    iput v4, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    .line 144
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    .line 147
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    .line 148
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->provider:Lcom/mapquest/android/maps/MapProvider;

    .line 149
    sget-object v0, Lcom/mapquest/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    .line 150
    iput-object v6, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    .line 151
    iput-object v6, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 152
    iput v4, p0, Lcom/mapquest/android/maps/MapView;->topMargin:I

    .line 153
    iput v4, p0, Lcom/mapquest/android/maps/MapView;->bottomMargin:I

    .line 154
    iput v4, p0, Lcom/mapquest/android/maps/MapView;->rightMargin:I

    .line 155
    iput v4, p0, Lcom/mapquest/android/maps/MapView;->leftMargin:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapViewEventListeners:Ljava/util/HashMap;

    .line 157
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->visibleRect:Landroid/graphics/Rect;

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/mapquest/android/maps/MapView;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/MapController;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/MapView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/MapView;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/mapquest/android/maps/MapView;I)I
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    return p1
.end method

.method private createZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_1c

    .line 341
    new-instance v0, Landroid/widget/ZoomButtonsController;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 342
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    .line 343
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/mapquest/android/maps/MapView$3;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/MapView$3;-><init>(Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 358
    :cond_1c
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method private createZoomControls()Landroid/widget/ZoomControls;
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-nez v0, :cond_28

    .line 318
    new-instance v0, Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    .line 319
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 320
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/mapquest/android/maps/MapView$1;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/MapView$1;-><init>(Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/mapquest/android/maps/MapView$2;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/MapView$2;-><init>(Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    :cond_28
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    if-eqz v0, :cond_32

    .line 333
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 336
    :cond_32
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method private drawTile(Lcom/mapquest/android/maps/Tile;Landroid/graphics/Canvas;Z)V
    .registers 10

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 422
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v0, :cond_3b

    .line 423
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    if-ne v0, v1, :cond_3b

    .line 424
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v1

    .line 425
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    .line 426
    const/4 v0, 0x0

    .line 427
    if-eqz v1, :cond_5f

    .line 428
    invoke-virtual {v1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 430
    :cond_30
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->removeTile(Lcom/mapquest/android/maps/Tile;)V

    .line 450
    :cond_3b
    :goto_3b
    return-void

    .line 434
    :cond_3c
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I

    .line 439
    :cond_42
    :goto_42
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_3b

    .line 443
    if-eqz p2, :cond_3b

    if-eqz v0, :cond_3b

    .line 444
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    sget-object v4, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-ne v1, v4, :cond_6e

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    :goto_5b
    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3b

    .line 435
    :cond_5f
    if-eqz p3, :cond_42

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    sget-object v2, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-eq v1, v2, :cond_42

    .line 436
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getLoadingTile()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_42

    .line 444
    :cond_6e
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->defaultTilePaint:Landroid/graphics/Paint;

    goto :goto_5b
.end method

.method private drawTiles(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/GeoPoint;IZ)I
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_17

    .line 454
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v1, :cond_17

    .line 455
    if-nez p3, :cond_18

    .line 497
    :cond_17
    :goto_17
    return v0

    .line 458
    :cond_18
    iget v6, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 459
    iget-object v7, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 460
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    if-eq p3, v1, :cond_24

    if-ltz p3, :cond_24

    .line 461
    iput p3, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 464
    :cond_24
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    if-eq p2, v1, :cond_2a

    .line 465
    iput-object p2, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 468
    :cond_2a
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 469
    iput v0, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I

    .line 470
    iput v0, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    .line 474
    :try_start_30
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    sget-object v2, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-ne v0, v2, :cond_43

    .line 475
    sget-object v2, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->iterateTiles(ILcom/mapquest/android/maps/TileType;ZLandroid/graphics/Canvas;Z)V

    .line 478
    :cond_43
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->iterateTiles(ILcom/mapquest/android/maps/TileType;ZLandroid/graphics/Canvas;Z)V

    .line 479
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->tileCount:I
    :try_end_52
    .catchall {:try_start_30 .. :try_end_52} :catchall_5f

    .line 481
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    if-eq v6, v1, :cond_58

    .line 482
    iput v6, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 485
    :cond_58
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    if-eq v7, v1, :cond_17

    .line 486
    iput-object v7, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    goto :goto_17

    .line 481
    :catchall_5f
    move-exception v0

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    if-eq v6, v1, :cond_66

    .line 482
    iput v6, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 485
    :cond_66
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    if-eq v7, v1, :cond_6c

    .line 486
    iput-object v7, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    :cond_6c
    throw v0
.end method

.method private static getSdkVersion()I
    .registers 2

    .prologue
    .line 1608
    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private iterateTiles(ILcom/mapquest/android/maps/TileType;ZLandroid/graphics/Canvas;Z)V
    .registers 23

    .prologue
    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_152

    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v3

    if-eqz v3, :cond_152

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v3, :cond_152

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v3, :cond_152

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v3

    if-eqz v3, :cond_152

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v12, v3, Landroid/graphics/Point;->y:I

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v13, v3, Landroid/graphics/Point;->x:I

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v3}, Lcom/mapquest/android/maps/TileFactory;->getTileSize()I

    move-result v4

    .line 508
    const/4 v9, 0x0

    .line 509
    const/4 v8, 0x0

    .line 510
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v10

    invoke-virtual {v3, v5, v6, v7, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 512
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_5e

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/mapquest/android/maps/RotatableProjection;->rotateMapRect(Landroid/graphics/Rect;)V

    .line 516
    :cond_5e
    const/4 v10, 0x0

    :goto_5f
    if-eqz v9, :cond_63

    if-nez v8, :cond_152

    .line 517
    :cond_63
    const/4 v6, 0x0

    .line 518
    const/4 v5, 0x0

    .line 519
    const/4 v7, 0x0

    .line 520
    rem-int/lit8 v3, v10, 0x2

    if-nez v3, :cond_bb

    neg-int v3, v4

    .line 521
    :goto_6b
    div-int/lit8 v14, v10, 0x2

    rem-int/lit8 v15, v10, 0x2

    add-int/2addr v14, v15

    mul-int/2addr v3, v14

    add-int v14, v12, v3

    .line 523
    const/4 v3, 0x0

    :goto_74
    if-eqz v6, :cond_78

    if-nez v5, :cond_15b

    .line 524
    :cond_78
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_bd

    neg-int v7, v4

    .line 525
    :goto_7d
    div-int/lit8 v15, v3, 0x2

    rem-int/lit8 v16, v3, 0x2

    add-int v15, v15, v16

    mul-int/2addr v7, v15

    add-int/2addr v7, v13

    .line 526
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    invoke-virtual {v15, v7, v14, v11}, Lcom/mapquest/android/maps/RotatableProjection;->offsetFromFocalPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    .line 527
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    iget v15, v11, Landroid/graphics/Point;->x:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v7, v15, v0, v1, v2}, Lcom/mapquest/android/maps/TileFactory;->buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;

    move-result-object v7

    .line 528
    if-nez v7, :cond_bf

    move-object v5, v7

    move-object v7, v11

    .line 558
    :goto_a5
    if-nez v5, :cond_12c

    .line 559
    rem-int/lit8 v3, v10, 0x2

    if-nez v3, :cond_128

    .line 560
    const/4 v3, 0x1

    move v5, v9

    .line 574
    :goto_ad
    rem-int/lit8 v6, v10, 0x2

    if-eqz v6, :cond_14c

    .line 575
    if-eqz v3, :cond_153

    .line 576
    add-int/lit8 v6, v10, 0x1

    .line 516
    :goto_b5
    add-int/lit8 v10, v6, 0x1

    move-object v11, v7

    move v8, v3

    move v9, v5

    goto :goto_5f

    :cond_bb
    move v3, v4

    .line 520
    goto :goto_6b

    :cond_bd
    move v7, v4

    .line 524
    goto :goto_7d

    .line 532
    :cond_bf
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    invoke-virtual {v7}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/mapquest/android/maps/RotatableProjection;->offsetToFocalPoint(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_df

    .line 534
    if-eqz p3, :cond_119

    .line 535
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mapquest/android/maps/MapView;->queueTile(Lcom/mapquest/android/maps/Tile;)V

    .line 541
    :cond_df
    :goto_df
    rem-int/lit8 v15, v3, 0x2

    if-eqz v15, :cond_123

    .line 542
    if-eqz v5, :cond_e7

    .line 543
    add-int/lit8 v3, v3, 0x1

    .line 549
    :cond_e7
    :goto_e7
    invoke-virtual {v7}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_fe

    .line 550
    const/4 v5, 0x1

    .line 553
    :cond_fe
    invoke-virtual {v7}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_115

    .line 554
    const/4 v6, 0x1

    .line 523
    :cond_115
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_74

    .line 537
    :cond_119
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v7, v1, v2}, Lcom/mapquest/android/maps/MapView;->drawTile(Lcom/mapquest/android/maps/Tile;Landroid/graphics/Canvas;Z)V

    goto :goto_df

    .line 545
    :cond_123
    if-eqz v6, :cond_e7

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    .line 562
    :cond_128
    const/4 v3, 0x1

    move v5, v3

    move v3, v8

    goto :goto_ad

    .line 565
    :cond_12c
    invoke-virtual {v5}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v3, v6, :cond_159

    .line 566
    const/4 v3, 0x1

    .line 569
    :goto_13b
    invoke-virtual {v5}, Lcom/mapquest/android/maps/Tile;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_156

    .line 570
    const/4 v5, 0x1

    goto/16 :goto_ad

    .line 578
    :cond_14c
    if-eqz v5, :cond_153

    .line 579
    add-int/lit8 v6, v10, 0x1

    goto/16 :goto_b5

    .line 586
    :cond_152
    return-void

    :cond_153
    move v6, v10

    goto/16 :goto_b5

    :cond_156
    move v5, v9

    goto/16 :goto_ad

    :cond_159
    move v3, v8

    goto :goto_13b

    :cond_15b
    move-object v5, v7

    move-object v7, v11

    goto/16 :goto_a5
.end method

.method private queueTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 589
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    .line 590
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 591
    if-nez v0, :cond_19

    .line 592
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/TileDownloader;->queueTile(Lcom/mapquest/android/maps/Tile;)V

    .line 595
    :cond_19
    return-void
.end method

.method private redoLayout(ZIIII)V
    .registers 25

    .prologue
    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getChildCount()I

    move-result v12

    .line 1080
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v4

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v5

    .line 1084
    const/4 v1, 0x0

    move v11, v1

    :goto_13
    if-ge v11, v12, :cond_17f

    .line 1085
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mapquest/android/maps/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1086
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_17a

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;

    if-eqz v1, :cond_17a

    .line 1087
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 1088
    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    if-nez v3, :cond_dc

    .line 1089
    iget-object v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    if-nez v3, :cond_9c

    .line 1091
    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1092
    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1107
    :goto_41
    iget v9, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1108
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1109
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1110
    iget v1, v2, Landroid/graphics/Point;->x:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_e6

    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1111
    :goto_54
    iget v3, v2, Landroid/graphics/Point;->y:I

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_ea

    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1112
    :goto_5d
    add-int v8, v1, v14

    .line 1113
    add-int v7, v3, v15

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingRight()I

    move-result v10

    sub-int v16, v6, v10

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingRight()I

    move-result v10

    sub-int v17, v6, v10

    .line 1116
    const/4 v6, 0x0

    move v10, v9

    move v9, v1

    move v1, v3

    move v3, v6

    .line 1118
    :goto_7a
    if-eqz v10, :cond_16f

    add-int/lit8 v6, v3, 0x1

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v3, v0, :cond_16f

    .line 1119
    and-int/lit8 v3, v10, 0x20

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v3, v0, :cond_f0

    .line 1120
    iget v3, v2, Landroid/graphics/Point;->y:I

    const v7, 0x7fffffff

    if-eq v3, v7, :cond_ee

    .line 1121
    :goto_93
    sub-int v3, v1, v15

    .line 1122
    xor-int/lit8 v7, v10, 0x20

    move v10, v7

    move v7, v1

    move v1, v3

    move v3, v6

    goto :goto_7a

    .line 1094
    :cond_9c
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    iget-object v6, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    invoke-interface {v3, v6, v2}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 1095
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_ba

    .line 1096
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v2}, Lcom/mapquest/android/maps/MapView;->scalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 1099
    :cond_ba
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    const v7, 0x7fffffff

    if-eq v3, v7, :cond_d8

    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    :goto_c5
    add-int/2addr v3, v6

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1100
    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    const v7, 0x7fffffff

    if-eq v3, v7, :cond_da

    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    :goto_d3
    add-int/2addr v3, v6

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_41

    .line 1099
    :cond_d8
    const/4 v3, 0x0

    goto :goto_c5

    .line 1100
    :cond_da
    const/4 v3, 0x0

    goto :goto_d3

    .line 1103
    :cond_dc
    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1104
    iget v3, v1, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_41

    .line 1110
    :cond_e6
    shr-int/lit8 v1, v5, 0x1

    goto/16 :goto_54

    .line 1111
    :cond_ea
    shr-int/lit8 v3, v4, 0x1

    goto/16 :goto_5d

    :cond_ee
    move v1, v4

    .line 1120
    goto :goto_93

    .line 1123
    :cond_f0
    and-int/lit8 v3, v10, 0x10

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v3, v0, :cond_10a

    .line 1124
    iget v3, v2, Landroid/graphics/Point;->y:I

    const v7, 0x7fffffff

    if-eq v3, v7, :cond_108

    .line 1125
    :goto_ff
    add-int v3, v1, v15

    .line 1126
    xor-int/lit8 v7, v10, 0x10

    move v10, v7

    move v7, v3

    move v3, v6

    goto/16 :goto_7a

    .line 1124
    :cond_108
    const/4 v1, 0x0

    goto :goto_ff

    .line 1127
    :cond_10a
    and-int/lit8 v3, v10, 0x8

    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v3, v0, :cond_127

    .line 1128
    iget v3, v2, Landroid/graphics/Point;->x:I

    const v8, 0x7fffffff

    if-eq v3, v8, :cond_125

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1129
    :goto_11b
    sub-int v8, v3, v14

    .line 1130
    xor-int/lit8 v9, v10, 0x8

    move v10, v9

    move v9, v8

    move v8, v3

    move v3, v6

    goto/16 :goto_7a

    :cond_125
    move v3, v5

    .line 1128
    goto :goto_11b

    .line 1131
    :cond_127
    and-int/lit8 v3, v10, 0x4

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v3, v0, :cond_143

    .line 1132
    iget v3, v2, Landroid/graphics/Point;->x:I

    const v7, 0x7fffffff

    if-eq v3, v7, :cond_141

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1133
    :goto_138
    add-int v7, v3, v14

    .line 1134
    xor-int/lit8 v9, v10, 0x4

    move v10, v9

    move v9, v3

    move v3, v6

    goto/16 :goto_7a

    .line 1132
    :cond_141
    const/4 v3, 0x0

    goto :goto_138

    .line 1135
    :cond_143
    and-int/lit8 v3, v10, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_159

    .line 1136
    shr-int/lit8 v3, v14, 0x1

    sub-int v8, v9, v3

    .line 1137
    add-int v3, v8, v14

    .line 1138
    xor-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    move v8, v3

    move v3, v6

    goto/16 :goto_7a

    .line 1139
    :cond_159
    and-int/lit8 v3, v10, 0x2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v3, v0, :cond_180

    .line 1140
    shr-int/lit8 v3, v15, 0x1

    sub-int v3, v1, v3

    .line 1141
    add-int v1, v3, v15

    .line 1142
    xor-int/lit8 v7, v10, 0x2

    move v10, v7

    move v7, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_7a

    .line 1146
    :cond_16f
    add-int v3, v9, v16

    add-int v1, v1, v17

    add-int v6, v8, v16

    add-int v7, v7, v17

    invoke-virtual {v13, v3, v1, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1084
    :cond_17a
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_13

    .line 1150
    :cond_17f
    return-void

    :cond_180
    move v3, v6

    goto/16 :goto_7a
.end method

.method private renderOverlays(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1046
    :try_start_2
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-eqz v0, :cond_21

    .line 1047
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 1048
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1051
    :cond_21
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    if-eqz v0, :cond_2a

    .line 1052
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/TrafficManager;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;)V

    .line 1055
    :cond_2a
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/OverlayController;->renderOverlays(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_3d

    .line 1057
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-eqz v0, :cond_3c

    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1063
    :cond_3c
    return-void

    .line 1057
    :catchall_3d
    move-exception v0

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4b

    iget-boolean v1, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-eqz v1, :cond_4b

    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4b
    throw v0
.end method

.method private scalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 9

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1066
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-eqz v0, :cond_29

    .line 1067
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    .line 1068
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Landroid/graphics/Point;->y:I

    .line 1069
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 1075
    :goto_28
    return-object p3

    .line 1071
    :cond_29
    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 1072
    iput p2, p3, Landroid/graphics/Point;->y:I

    goto :goto_28
.end method

.method private updateZoomControls()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 374
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v3}, Lcom/mapquest/android/maps/TileFactory;->getMaxZoomLevel()I

    move-result v3

    if-ge v1, v3, :cond_3d

    move v1, v0

    .line 375
    :goto_d
    iget v3, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v4}, Lcom/mapquest/android/maps/TileFactory;->getMinZoomLevel()I

    move-result v4

    if-le v3, v4, :cond_18

    move v2, v0

    .line 376
    :cond_18
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_26

    .line 377
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 381
    :cond_26
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_3c

    .line 382
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomControls;

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 384
    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 387
    :cond_3c
    return-void

    :cond_3d
    move v1, v2

    .line 374
    goto :goto_d
.end method


# virtual methods
.method public addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V
    .registers 5

    .prologue
    .line 1539
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1540
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/mapquest/android/maps/MapView$4;

    invoke-direct {v2, p0, p1}, Lcom/mapquest/android/maps/MapView$4;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1596
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapViewEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    invoke-static {v1}, Lcom/mapquest/android/maps/EventDispatcher;->registerHandler(Landroid/os/Handler;)V

    .line 1598
    return-void
.end method

.method addTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v0, :cond_1e

    .line 403
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    if-ne v0, v1, :cond_1e

    .line 404
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-ne v0, v1, :cond_1f

    .line 405
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-eq v0, v1, :cond_27

    .line 419
    :cond_1e
    :goto_1e
    return-void

    .line 408
    :cond_1f
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-eq v0, v1, :cond_1e

    .line 412
    :cond_27
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 413
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    goto :goto_1e

    .line 415
    :cond_3b
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->removeTile(Lcom/mapquest/android/maps/Tile;)V

    goto :goto_1e
.end method

.method public canCoverCenter()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 784
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    .line 787
    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v4}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v4

    sget-object v5, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-eq v4, v5, :cond_39

    .line 788
    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v5

    iget-object v6, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v6}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v6

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/mapquest/android/maps/TileFactory;->buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;

    move-result-object v2

    .line 789
    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v4, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v3, v4}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v2

    .line 790
    if-eqz v2, :cond_37

    .line 796
    :cond_36
    :goto_36
    return v0

    :cond_37
    move v0, v1

    .line 790
    goto :goto_36

    .line 792
    :cond_39
    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v5

    sget-object v6, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/mapquest/android/maps/TileFactory;->buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;

    move-result-object v4

    .line 793
    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v6, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v5, v6}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v4

    .line 794
    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v6

    sget-object v7, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    invoke-interface {v5, v2, v3, v6, v7}, Lcom/mapquest/android/maps/TileFactory;->buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;

    move-result-object v2

    .line 795
    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v5, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v3, v5}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v2

    .line 796
    if-eqz v2, :cond_6d

    if-nez v4, :cond_36

    :cond_6d
    move v0, v1

    goto :goto_36
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 801
    instance-of v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;

    return v0
.end method

.method clearAnimators()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 261
    return-void
.end method

.method public clearTilesInMemory()V
    .registers 3

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v0, :cond_11

    .line 1459
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_11

    .line 1461
    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->clear()V

    .line 1465
    :cond_11
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 1368
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    if-eqz v0, :cond_10

    .line 1369
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager;->destroy()V

    .line 1370
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    .line 1373
    :cond_10
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_1b

    .line 1374
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->destroy()V

    .line 1375
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;

    .line 1378
    :cond_1b
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    if-eqz v0, :cond_26

    .line 1379
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileDownloader;->destroy()V

    .line 1380
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    .line 1383
    :cond_26
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v0, :cond_31

    .line 1384
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TileCacher;->destroy()V

    .line 1385
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    .line 1388
    :cond_31
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    .line 1389
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayController;->destroy()V

    .line 1390
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    if-eqz v0, :cond_49

    .line 1391
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    instance-of v0, v0, Lcom/mapquest/android/maps/TouchEventHandler;

    if-eqz v0, :cond_47

    .line 1392
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->destroy()V

    .line 1395
    :cond_47
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    .line 1398
    :cond_49
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->networkConnectivityListener:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    if-eqz v0, :cond_54

    .line 1399
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->networkConnectivityListener:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->stopListening()V

    .line 1400
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->networkConnectivityListener:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    .line 1403
    :cond_54
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_61

    .line 1404
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1405
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 1406
    iput-boolean v2, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    .line 1409
    :cond_61
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    if-eqz v0, :cond_6c

    .line 1410
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->removeHandler(Landroid/os/Handler;)V

    .line 1411
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    .line 1414
    :cond_6c
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    .line 1415
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    .line 1416
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7b

    .line 1417
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1418
    iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    .line 1421
    :cond_7b
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->destroyDrawingCache()V

    .line 1422
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/mapquest/android/maps/MapActivity;

    if-eqz v0, :cond_8b

    .line 1423
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->context:Landroid/content/Context;

    check-cast v0, Lcom/mapquest/android/maps/MapActivity;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapActivity;->removeMapView(Lcom/mapquest/android/maps/MapView;)V

    .line 1426
    :cond_8b
    return-void
.end method

.method public displayZoomControls(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 805
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    if-eqz v0, :cond_18

    .line 806
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 807
    if-eqz p1, :cond_17

    .line 808
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    .line 809
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 817
    :cond_17
    :goto_17
    return-void

    .line 811
    :cond_18
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 812
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setFocusable(Z)V

    .line 813
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V

    .line 814
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->requestFocus()Z

    goto :goto_17
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->generateDefaultLayoutParams()Lcom/mapquest/android/maps/MapView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/mapquest/android/maps/MapView$LayoutParams;
    .registers 6

    .prologue
    const/4 v4, -0x2

    const-wide/16 v2, 0x0

    .line 820
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    const/4 v2, 0x3

    invoke-direct {v0, v4, v4, v1, v2}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IILcom/mapquest/android/maps/GeoPoint;I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 824
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 828
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBottomMargin()I
    .registers 2

    .prologue
    .line 1481
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->bottomMargin:I

    return v0
.end method

.method public getBoundingBox(Lcom/mapquest/android/maps/BoundingBox;)Lcom/mapquest/android/maps/BoundingBox;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 728
    if-nez p1, :cond_8

    .line 729
    new-instance p1, Lcom/mapquest/android/maps/BoundingBox;

    invoke-direct {p1}, Lcom/mapquest/android/maps/BoundingBox;-><init>()V

    .line 732
    :cond_8
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    .line 733
    if-nez v3, :cond_10

    .line 734
    const/4 p1, 0x0

    .line 778
    :goto_f
    return-object p1

    .line 736
    :cond_10
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    .line 737
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    .line 738
    if-nez v1, :cond_20

    if-nez v0, :cond_20

    .line 739
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->width:I

    .line 740
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->height:I

    .line 743
    :cond_20
    invoke-interface {v3, v2, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v4

    .line 744
    invoke-interface {v3, v1, v0}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v5

    .line 745
    iget v6, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_bb

    .line 746
    invoke-interface {v3, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    .line 747
    invoke-interface {v3, v2, v0}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 748
    const/4 v3, 0x4

    new-array v6, v3, [Lcom/mapquest/android/maps/GeoPoint;

    aput-object v4, v6, v2

    const/4 v3, 0x1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const/4 v0, 0x3

    aput-object v5, v6, v0

    .line 749
    const-wide v0, 0x4066800000000000L    # 180.0

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v4

    .line 750
    const-wide v0, -0x3f99800000000000L    # -180.0

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    .line 751
    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v1

    .line 752
    const-wide v7, 0x4056800000000000L    # 90.0

    invoke-static {v7, v8}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v0

    move v9, v2

    move v2, v1

    move v1, v0

    move v0, v9

    .line 754
    :goto_6d
    array-length v5, v6

    if-ge v0, v5, :cond_ab

    .line 755
    aget-object v5, v6, v0

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    if-ge v5, v4, :cond_7e

    .line 756
    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    .line 759
    :cond_7e
    aget-object v5, v6, v0

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    if-le v5, v3, :cond_8c

    .line 760
    aget-object v3, v6, v0

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 763
    :cond_8c
    aget-object v5, v6, v0

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-le v5, v2, :cond_9a

    .line 764
    aget-object v2, v6, v0

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 767
    :cond_9a
    aget-object v5, v6, v0

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-ge v5, v1, :cond_a8

    .line 768
    aget-object v1, v6, v0

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 754
    :cond_a8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 772
    :cond_ab
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v0, v2, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    .line 773
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v0, v1, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    goto/16 :goto_f

    .line 776
    :cond_bb
    iput-object v4, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    .line 777
    iput-object v5, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    goto/16 :goto_f
.end method

.method public getConfiguration()Lcom/mapquest/android/maps/Configuration;
    .registers 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    return-object v0
.end method

.method public getController()Lcom/mapquest/android/maps/MapController;
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;

    return-object v0
.end method

.method public getFocalPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 390
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getLatitudeSpan()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    .line 837
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v2

    invoke-interface {v1, v3, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 838
    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getLeftMargin()I
    .registers 2

    .prologue
    .line 1497
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->leftMargin:I

    return v0
.end method

.method getLoadingTile()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 1430
    const-string v0, "/com/mapquest/android/maps/loading.jpg"

    .line 1431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    .line 1432
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 1437
    :cond_18
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLongitudeSpan()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 842
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    .line 843
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    .line 844
    if-ge v1, v0, :cond_2c

    const-wide v2, 0x4076800000000000L    # 360.0

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v2

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    :goto_2b
    return v0

    :cond_2c
    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_2b
.end method

.method public getMapCenter()Lcom/mapquest/android/maps/GeoPoint;
    .registers 4

    .prologue
    .line 852
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public getMapHeight()I
    .registers 2

    .prologue
    .line 930
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->height:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->height:I

    goto :goto_8
.end method

.method getMapProvider()Lcom/mapquest/android/maps/MapProvider;
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMapProvider()Lcom/mapquest/android/maps/MapProvider;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMapRotation()F
    .registers 2

    .prologue
    .line 908
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    return v0
.end method

.method public getMapWidth()I
    .registers 2

    .prologue
    .line 926
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->width:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->width:I

    goto :goto_8
.end method

.method public getMaxZoomLevel()I
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMaxZoomLevel()I

    move-result v0

    return v0
.end method

.method public getOverlayByKey(Ljava/lang/String;)Lcom/mapquest/android/maps/Overlay;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v1

    .line 710
    :goto_8
    return-object v0

    .line 699
    :cond_9
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 703
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    move-object v0, v1

    .line 704
    goto :goto_8

    .line 707
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 708
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_8
.end method

.method public getOverlays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayController;->getOverlays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lcom/mapquest/android/maps/Projection;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    return-object v0
.end method

.method public getRightMargin()I
    .registers 2

    .prologue
    .line 1489
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->rightMargin:I

    return v0
.end method

.method getTileCacher()Lcom/mapquest/android/maps/TileCacher;
    .registers 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    return-object v0
.end method

.method getTileFactory()Lcom/mapquest/android/maps/TileFactory;
    .registers 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    return-object v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 1473
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->topMargin:I

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-nez v0, :cond_a

    .line 869
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->createZoomControls()Landroid/widget/ZoomControls;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    .line 872
    :cond_a
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    if-eqz v0, :cond_14

    .line 873
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 876
    :cond_14
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public getZoomLevel()I
    .registers 2

    .prologue
    .line 864
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    return v0
.end method

.method handleOverlayEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/OverlayController;->onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    return v0
.end method

.method initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 213
    instance-of v0, p1, Lcom/mapquest/android/maps/MapActivity;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/mapquest/android/maps/MapActivity;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapActivity;->addMapView(Lcom/mapquest/android/maps/MapView;)V

    .line 217
    :cond_b
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->context:Landroid/content/Context;

    .line 218
    new-instance v0, Lcom/mapquest/android/maps/Configuration;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/Configuration;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    .line 219
    new-instance v0, Lcom/mapquest/android/maps/MapController;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/MapController;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;

    .line 220
    new-instance v0, Lcom/mapquest/android/maps/MapView$MapEventHandler;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/MapView$MapEventHandler;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    .line 221
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->registerHandler(Landroid/os/Handler;)V

    .line 222
    new-instance v0, Lcom/mapquest/android/maps/TileCacher;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/TileCacher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    .line 223
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/TileCacher;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    .line 224
    new-instance v0, Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, v2, p0}, Lcom/mapquest/android/maps/MapConfiguration;-><init>(ZLcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    .line 225
    if-eqz p2, :cond_dc

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_dc

    .line 226
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/Configuration;->setApiKey(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/Configuration;->setPlatformApiKey(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setMapProvider(Lcom/mapquest/android/maps/MapProvider;)V

    .line 233
    :goto_55
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapView;->setMapCenter(Lcom/mapquest/android/maps/GeoPoint;I)V

    .line 234
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->defaultTilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->defaultTilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 236
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 237
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 238
    invoke-virtual {p0, v2}, Lcom/mapquest/android/maps/MapView;->setFocusable(Z)V

    .line 239
    sget v0, Lcom/mapquest/android/maps/MapView;->MAP_VIEW_BACKGROUND:I

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setBackgroundColor(I)V

    .line 240
    new-instance v0, Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/TouchEventHandler;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    .line 241
    new-instance v0, Lcom/mapquest/android/maps/RotatableProjection;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v1}, Lcom/mapquest/android/maps/TileFactory;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/RotatableProjection;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/Projection;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    .line 242
    new-instance v0, Lcom/mapquest/android/maps/OverlayController;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/OverlayController;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    .line 243
    new-instance v0, Lcom/mapquest/android/maps/NetworkConnectivityListener;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/NetworkConnectivityListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->networkConnectivityListener:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    .line 244
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->networkConnectivityListener:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->startListening()V

    .line 245
    const-string v0, "logo"

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 246
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mapquest/android/maps/MapView;->width:I

    .line 248
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 250
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v1

    mul-double v1, v2, v4

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->height:I

    .line 251
    new-instance v0, Lcom/mapquest/android/maps/MapView$AssetUpdater;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/MapView$AssetUpdater;-><init>(Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView$AssetUpdater;->start()V

    .line 252
    return-void

    .line 230
    :cond_dc
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setMapProvider(Lcom/mapquest/android/maps/MapProvider;)V

    goto/16 :goto_55
.end method

.method public isSatellite()Z
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->isSatellite()Z

    move-result v0

    return v0
.end method

.method public isStreetView()Z
    .registers 2

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public isTraffic()Z
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager;->isEnabled()Z

    move-result v0

    goto :goto_5
.end method

.method moved()V
    .registers 7

    .prologue
    .line 1445
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->redoLayout(ZIIII)V

    .line 1446
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 892
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 893
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    if-eqz v0, :cond_11

    .line 894
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 897
    :cond_11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 900
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 901
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_d

    .line 902
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 905
    :cond_d
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/16 v1, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 945
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 946
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 947
    if-eqz p1, :cond_2b

    .line 949
    :try_start_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 950
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v0, v1, :cond_2b

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gt v0, v1, :cond_2c

    .line 1042
    :cond_2b
    :goto_2b
    return-void

    .line 954
    :cond_2c
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 955
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1b9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1b9

    .line 956
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Animator;

    .line 957
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Animator;->animate()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 958
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 961
    :cond_5b
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 962
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 969
    :cond_66
    :goto_66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 971
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b1

    .line 973
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_83

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1d3

    .line 975
    :cond_83
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 976
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move v0, v6

    .line 979
    :goto_9a
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 980
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 981
    if-eqz v0, :cond_b1

    .line 982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 987
    :cond_b1
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_14b

    .line 988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 989
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mapquest/android/maps/RotatableProjection;->mapPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 990
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/mapquest/android/maps/RotatableProjection;->offsetToFocalPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 991
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 992
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-eqz v0, :cond_1be

    iget v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    move v1, v0

    .line 993
    :goto_e8
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 994
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_fe

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_144

    :cond_fe
    invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v2

    if-eqz v2, :cond_144

    .line 995
    iget v2, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 996
    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 997
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v4, v5}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 998
    iput v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 999
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1000
    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v8

    add-int/2addr v4, v5

    .line 1001
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 1002
    iput v2, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 1003
    iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 1006
    :cond_144
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->drawTiles(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/GeoPoint;IZ)I

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1010
    :cond_14b
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-eqz v0, :cond_155

    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_18f

    .line 1011
    :cond_155
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_1d1

    move v0, v6

    .line 1012
    :goto_15c
    iget v1, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_165

    .line 1013
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1016
    :cond_165
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/mapquest/android/maps/MapView;->drawTiles(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/GeoPoint;IZ)I

    move-result v0

    .line 1017
    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->totalTileCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_18f

    iget v0, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_18f

    .line 1018
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mapquest/android/maps/MapView;->setScale(FFFF)V

    .line 1022
    :cond_18f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1023
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/mapquest/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_19d

    .line 1024
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    invoke-static {p1, p0, v0}, Lcom/mapquest/android/maps/MapView$Reticle;->draw(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Point;)V

    .line 1027
    :cond_19d
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MapView;->renderOverlays(Landroid/graphics/Canvas;)V

    .line 1028
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/mapquest/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_1ab

    .line 1029
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    invoke-static {p1, p0, v0}, Lcom/mapquest/android/maps/MapView$Reticle;->draw(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Point;)V

    .line 1032
    :cond_1ab
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->logo:Z

    if-eqz v0, :cond_2b

    .line 1033
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2b

    .line 1035
    :catch_1b6
    move-exception v0

    goto/16 :goto_2b

    .line 965
    :cond_1b9
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto/16 :goto_66

    .line 992
    :cond_1be
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    int-to-double v0, v0

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1cc} :catch_1b6

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    goto/16 :goto_e8

    :cond_1d1
    move v0, v7

    .line 1011
    goto :goto_15c

    :cond_1d3
    move v0, v7

    goto/16 :goto_9a
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 1180
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1181
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1184
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v2, p1, p2, p0}, Lcom/mapquest/android/maps/OverlayController;->onKeyDown(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1199
    :goto_a
    return v0

    .line 1186
    :cond_b
    const/16 v2, 0x13

    if-ne p1, v2, :cond_1d

    .line 1187
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/mapquest/android/maps/MapController;->scrollBy(II)V

    goto :goto_a

    .line 1189
    :cond_1d
    const/16 v2, 0x14

    if-ne p1, v2, :cond_30

    .line 1190
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    neg-int v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/mapquest/android/maps/MapController;->scrollBy(II)V

    goto :goto_a

    .line 1192
    :cond_30
    const/16 v2, 0x16

    if-ne p1, v2, :cond_42

    .line 1193
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/mapquest/android/maps/MapController;->scrollBy(II)V

    goto :goto_a

    .line 1195
    :cond_42
    const/16 v2, 0x15

    if-ne p1, v2, :cond_55

    .line 1196
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    neg-int v3, v3

    invoke-virtual {v2, v3, v1}, Lcom/mapquest/android/maps/MapController;->scrollBy(II)V

    goto :goto_a

    :cond_55
    move v0, v1

    .line 1199
    goto :goto_a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0, p1, p2, p0}, Lcom/mapquest/android/maps/OverlayController;->onKeyUp(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .prologue
    .line 1153
    invoke-direct/range {p0 .. p5}, Lcom/mapquest/android/maps/MapView;->redoLayout(ZIIII)V

    .line 1154
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    .line 1157
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1158
    invoke-virtual {p0, p1, p2}, Lcom/mapquest/android/maps/MapView;->measureChildren(II)V

    .line 1159
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/mapquest/android/maps/MapView;->resolveSize(II)I

    move-result v0

    .line 1160
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/mapquest/android/maps/MapView;->resolveSize(II)I

    move-result v1

    .line 1161
    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapView;->setMeasuredDimension(II)V

    .line 1167
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_33

    .line 1168
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 1169
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 1170
    const/4 v3, 0x5

    .line 1171
    sub-int/2addr v1, v3

    .line 1172
    sub-int v0, v1, v0

    .line 1173
    add-int/2addr v2, v3

    .line 1174
    iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->logoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1177
    :cond_33
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 1522
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    if-eqz v0, :cond_f

    .line 1523
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileDownloader;->destroy()V

    .line 1524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    .line 1526
    :cond_f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 1209
    const-string v0, "STATE_CENTER_LAT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "STATE_CENTER_LNG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1210
    const-string v0, "STATE_CENTER_LAT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1211
    const-string v1, "STATE_CENTER_LNG"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1212
    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v0, v1}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v2, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 1215
    :cond_23
    const-string v0, "STATE_ZOOM_LEVEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1216
    const-string v0, "STATE_ZOOM_LEVEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1217
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1218
    iput v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 1222
    :cond_39
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 1514
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    if-nez v0, :cond_10

    .line 1515
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/TileCacher;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    .line 1517
    :cond_10
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1518
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v0, :cond_1a

    .line 1226
    const-string v0, "STATE_CENTER_LAT"

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1227
    const-string v0, "STATE_CENTER_LNG"

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1230
    :cond_1a
    const-string v0, "STATE_ZOOM_LEVEL"

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 291
    if-gtz p1, :cond_5

    if-lez p2, :cond_53

    .line 292
    :cond_5
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_54

    .line 293
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setMapRotation(F)V

    .line 299
    :goto_11
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 300
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 301
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 302
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 303
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->height:I

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/TileCacher;->checkCacheSize(II)V

    .line 306
    :cond_43
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->firedMapLoaded:Z

    if-nez v0, :cond_4c

    .line 307
    iput-boolean v3, p0, Lcom/mapquest/android/maps/MapView;->firedMapLoaded:Z

    .line 308
    invoke-static {v3}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 311
    :cond_4c
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 312
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 314
    :cond_53
    return-void

    .line 295
    :cond_54
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->width:I

    .line 296
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->height:I

    goto :goto_11
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->isPause:Z

    .line 1530
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v0, :cond_14

    .line 1531
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    .line 1532
    if-eqz v0, :cond_14

    .line 1533
    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->clear()V

    .line 1536
    :cond_14
    return-void
.end method

.method onTap(Lcom/mapquest/android/maps/GeoPoint;)Z
    .registers 3

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/OverlayController;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1242
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->context:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1243
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1244
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1245
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_3f

    .line 1246
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1247
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1253
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->requestFocus()Z

    .line 1254
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/MapView;->handleOverlayEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    .line 1263
    :goto_3e
    return v0

    .line 1249
    :cond_3f
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_34

    .line 1250
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V

    goto :goto_34

    .line 1258
    :cond_49
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->eventHandler:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/TouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    .line 1259
    goto :goto_3e

    :cond_57
    move v0, v2

    .line 1263
    goto :goto_3e
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->overlayController:Lcom/mapquest/android/maps/OverlayController;

    invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/OverlayController;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1268
    const/4 v0, 0x1

    .line 1274
    :goto_9
    return v0

    .line 1270
    :cond_a
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trackBallHandler:Lcom/mapquest/android/maps/DefaultTrackBallHandler;

    if-nez v0, :cond_15

    .line 1271
    new-instance v0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/DefaultTrackBallHandler;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->trackBallHandler:Lcom/mapquest/android/maps/DefaultTrackBallHandler;

    .line 1274
    :cond_15
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trackBallHandler:Lcom/mapquest/android/maps/DefaultTrackBallHandler;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->handleTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public preLoad()V
    .registers 7

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_77

    .line 603
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v0, :cond_77

    .line 604
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    if-eqz v0, :cond_77

    .line 605
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    if-nez v0, :cond_29

    .line 606
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/TileCacher;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/TileCacher;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    .line 609
    :cond_29
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileDownloader;->beginQueue()V

    .line 612
    :try_start_2e
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    sget-object v1, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/TileFactory;->isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 613
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    sget-object v2, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->iterateTiles(ILcom/mapquest/android/maps/TileType;ZLandroid/graphics/Canvas;Z)V

    .line 616
    :cond_51
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v1}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/TileFactory;->isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 617
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->iterateTiles(ILcom/mapquest/android/maps/TileType;ZLandroid/graphics/Canvas;Z)V
    :try_end_72
    .catchall {:try_start_2e .. :try_end_72} :catchall_78

    .line 620
    :cond_72
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileDownloader;->endQueue()V

    .line 626
    :cond_77
    return-void

    .line 620
    :catchall_78
    move-exception v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v1}, Lcom/mapquest/android/maps/TileDownloader;->endQueue()V

    throw v0
.end method

.method preLoadDelayed(J)V
    .registers 5

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapEventCallback:Landroid/os/Handler;

    const/16 v1, 0x7ae3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 599
    return-void
.end method

.method queueAnimator(Lcom/mapquest/android/maps/Animator;)V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 257
    return-void
.end method

.method public removeMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V
    .registers 3

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapViewEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1602
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->mapViewEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->removeHandler(Landroid/os/Handler;)V

    .line 1605
    :cond_13
    return-void
.end method

.method public removeOverlayByKey(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/MapView;->getOverlayByKey(Ljava/lang/String;)Lcom/mapquest/android/maps/Overlay;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_d

    .line 717
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 720
    :cond_d
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 721
    return-void
.end method

.method public setBottomMargin(I)V
    .registers 2

    .prologue
    .line 1485
    iput p1, p0, Lcom/mapquest/android/maps/MapView;->bottomMargin:I

    .line 1486
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1279
    iput-boolean p1, p0, Lcom/mapquest/android/maps/MapView;->builtInZoomControls:Z

    .line 1280
    if-eqz p1, :cond_1c

    .line 1281
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 1282
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 1283
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_1b

    .line 1284
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 1296
    :cond_1b
    :goto_1b
    return-void

    .line 1287
    :cond_1c
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_25

    .line 1288
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1291
    :cond_25
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_1b

    .line 1292
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_1b
.end method

.method public setFocalPoint(Landroid/graphics/Point;)V
    .registers 6

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 395
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapquest/android/maps/RotatableProjection;->setRotate(FII)V

    .line 396
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->moved()V

    .line 397
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 398
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 399
    return-void
.end method

.method public setLeftMargin(I)V
    .registers 2

    .prologue
    .line 1501
    iput p1, p0, Lcom/mapquest/android/maps/MapView;->leftMargin:I

    .line 1502
    return-void
.end method

.method public setLoadingTile(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->loadingTile:Landroid/graphics/Bitmap;

    .line 1442
    return-void
.end method

.method setLogoShown(Z)V
    .registers 2

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/mapquest/android/maps/MapView;->logo:Z

    .line 288
    return-void
.end method

.method protected setMapCenter(Lcom/mapquest/android/maps/GeoPoint;I)V
    .registers 4

    .prologue
    .line 362
    monitor-enter p0

    .line 363
    :try_start_1
    iput p2, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 364
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 365
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    .line 367
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->updateZoomControls()V

    .line 368
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_12

    .line 369
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 371
    :cond_12
    return-void

    .line 365
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method setMapFactory(Lcom/mapquest/android/maps/MapProvider;)V
    .registers 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/MapProvider;

    move-result-object v0

    if-eq p1, v0, :cond_40

    .line 265
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapProvider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 266
    new-instance v0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    .line 273
    :cond_17
    :goto_17
    new-instance v0, Lcom/mapquest/android/maps/RotatableProjection;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v1}, Lcom/mapquest/android/maps/TileFactory;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/RotatableProjection;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/Projection;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    .line 274
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_31

    .line 276
    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->clear()V

    .line 279
    :cond_31
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    if-lez v0, :cond_40

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    if-lez v0, :cond_40

    .line 280
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 284
    :cond_40
    return-void

    .line 267
    :cond_41
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapProvider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 268
    new-instance v0, Lcom/mapquest/android/maps/MapQuestTileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/MapQuestTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    goto :goto_17

    .line 269
    :cond_53
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapProvider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 270
    new-instance v0, Lcom/mapquest/android/maps/TomTomTileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/TomTomTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    goto :goto_17
.end method

.method setMapProvider(Lcom/mapquest/android/maps/MapProvider;)V
    .registers 4

    .prologue
    .line 1345
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapProvider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1346
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapProvider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1347
    new-instance v0, Lcom/mapquest/android/maps/TomTomTileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/TomTomTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    .line 1355
    :goto_23
    new-instance v0, Lcom/mapquest/android/maps/RotatableProjection;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v1}, Lcom/mapquest/android/maps/TileFactory;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/RotatableProjection;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/Projection;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    .line 1356
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->isSatellite()Z

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/Configuration;->isSatelliteLabeled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapView;->setSatellite(ZZ)V

    .line 1357
    return-void

    .line 1349
    :cond_40
    new-instance v0, Lcom/mapquest/android/maps/MapQuestTileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/MapQuestTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    goto :goto_23

    .line 1352
    :cond_4a
    new-instance v0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    goto :goto_23
.end method

.method setMapRotation(F)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    .line 912
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_45

    .line 913
    add-float v0, p1, v1

    rem-float/2addr v0, v1

    .line 914
    iput v0, p0, Lcom/mapquest/android/maps/MapView;->rotateDegrees:F

    .line 915
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/mapquest/android/maps/RotatableProjection;->setRotate(FII)V

    .line 916
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 917
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotatableProjection:Lcom/mapquest/android/maps/RotatableProjection;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/RotatableProjection;->rotateMapRect(Landroid/graphics/Rect;)V

    .line 918
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->width:I

    .line 919
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->rotRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapView;->height:I

    .line 920
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->moved()V

    .line 921
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 923
    :cond_45
    return-void
.end method

.method public setReticleDrawMode(Lcom/mapquest/android/maps/MapView$ReticleDrawMode;)V
    .registers 2

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->reticalMode:Lcom/mapquest/android/maps/MapView$ReticleDrawMode;

    .line 1300
    return-void
.end method

.method public setRightMargin(I)V
    .registers 2

    .prologue
    .line 1493
    iput p1, p0, Lcom/mapquest/android/maps/MapView;->rightMargin:I

    .line 1494
    return-void
.end method

.method public setSatellite(Z)V
    .registers 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/Configuration;->setSatellite(Z)V

    .line 1304
    return-void
.end method

.method setSatellite(ZZ)V
    .registers 5

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-eqz v0, :cond_42

    .line 1308
    :cond_c
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->isSatellite()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->isSatelliteLabeled()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/mapquest/android/maps/TileType;->SATHYB:Lcom/mapquest/android/maps/TileType;

    .line 1309
    :goto_1e
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    if-eqz v1, :cond_27

    .line 1310
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v1, v0}, Lcom/mapquest/android/maps/TileFactory;->setType(Lcom/mapquest/android/maps/TileType;)V

    .line 1313
    :cond_27
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    if-eqz v0, :cond_30

    .line 1314
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileProvider:Lcom/mapquest/android/maps/TileDownloader;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileDownloader;->clearQueue()V

    .line 1317
    :cond_30
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    if-lez v0, :cond_42

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    if-lez v0, :cond_42

    .line 1318
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1319
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    .line 1323
    :cond_42
    return-void

    .line 1308
    :cond_43
    sget-object v0, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    goto :goto_1e

    :cond_46
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    goto :goto_1e
.end method

.method setScale(FFFF)V
    .registers 7

    .prologue
    .line 1360
    iput p1, p0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    .line 1361
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1362
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1363
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->moved()V

    .line 1364
    return-void
.end method

.method public setStreetView(Z)V
    .registers 2

    .prologue
    .line 1326
    return-void
.end method

.method public setTileLayerPaint(Landroid/graphics/Paint;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 934
    if-nez p1, :cond_8

    .line 935
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 938
    :cond_8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 939
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 940
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 941
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->customTilePaint:Landroid/graphics/Paint;

    .line 942
    return-void
.end method

.method public setTopMargin(I)V
    .registers 2

    .prologue
    .line 1477
    iput p1, p0, Lcom/mapquest/android/maps/MapView;->topMargin:I

    .line 1478
    return-void
.end method

.method public setTraffic(Z)V
    .registers 5

    .prologue
    .line 1330
    if-eqz p1, :cond_1d

    .line 1331
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->getTrafficURL()Ljava/lang/String;

    move-result-object v0

    .line 1332
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->configuration:Lcom/mapquest/android/maps/Configuration;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/Configuration;->getPlatformApiKey()Ljava/lang/String;

    move-result-object v1

    .line 1334
    new-instance v2, Lcom/mapquest/android/maps/TrafficManager;

    invoke-direct {v2, p0, v0, v1}, Lcom/mapquest/android/maps/TrafficManager;-><init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    .line 1335
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/TrafficManager;->setTraffic(Z)V

    .line 1342
    :cond_1c
    :goto_1c
    return-void

    .line 1336
    :cond_1d
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    if-eqz v0, :cond_1c

    .line 1337
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager;->destroy()V

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->trafficManager:Lcom/mapquest/android/maps/TrafficManager;

    .line 1339
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto :goto_1c
.end method

.method setZoomLevel(I)V
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMaxZoomLevel()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 634
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMaxZoomLevel()I

    move-result p1

    .line 637
    :cond_e
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMinZoomLevel()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 638
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMinZoomLevel()I

    move-result p1

    .line 641
    :cond_1c
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p0, v0, p1}, Lcom/mapquest/android/maps/MapView;->setMapCenter(Lcom/mapquest/android/maps/GeoPoint;I)V

    .line 642
    return-void
.end method

.method validateZoomLevel(I)Z
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMaxZoomLevel()I

    move-result v0

    if-gt p1, v0, :cond_12

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->tileFactory:Lcom/mapquest/android/maps/TileFactory;

    invoke-interface {v0}, Lcom/mapquest/android/maps/TileFactory;->getMinZoomLevel()I

    move-result v0

    if-lt p1, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method visibleRegion()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->visibleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mapquest/android/maps/MapView;->leftMargin:I

    iget v2, p0, Lcom/mapquest/android/maps/MapView;->topMargin:I

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/mapquest/android/maps/MapView;->rightMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/mapquest/android/maps/MapView;->bottomMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1469
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->visibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method zoomEnd()V
    .registers 2

    .prologue
    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    .line 1454
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1455
    return-void
.end method

.method zoomStart()V
    .registers 2

    .prologue
    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    .line 1450
    return-void
.end method

.method zoomToSpan(II)V
    .registers 9

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 645
    shr-int/lit8 v0, p1, 0x1

    .line 646
    shr-int/lit8 v1, p2, 0x1

    .line 647
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v4, v5}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v4, v5}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    rem-int/2addr v2, v3

    .line 648
    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v4, v5}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    rem-int/2addr v1, v3

    .line 649
    new-instance v3, Lcom/mapquest/android/maps/BoundingBox;

    new-instance v4, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v4, v5, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    sub-int v0, v5, v0

    invoke-direct {v2, v0, v1}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {v3, v4, v2}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/mapquest/android/maps/MapView;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;Z)V

    .line 651
    return-void
.end method

.method zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;Z)V
    .registers 10

    .prologue
    const/4 v1, 0x6

    const/16 v6, 0x17

    const/16 v5, 0x15

    .line 654
    iget v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    if-ge v0, v1, :cond_b

    .line 655
    iput v1, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 658
    :cond_b
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->visibleRegion()Landroid/graphics/Rect;

    move-result-object v1

    .line 659
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ProjectionX;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, p1, v2, v3}, Lcom/mapquest/android/maps/ProjectionX;->calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I

    move-result v0

    .line 662
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 663
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 664
    if-eqz p2, :cond_44

    .line 665
    invoke-static {v5}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 666
    invoke-virtual {p1}, Lcom/mapquest/android/maps/BoundingBox;->getCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 667
    invoke-static {v6}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 670
    :cond_44
    iput v0, p0, Lcom/mapquest/android/maps/MapView;->zoomLevel:I

    .line 671
    if-eqz p2, :cond_7b

    .line 672
    invoke-virtual {p1}, Lcom/mapquest/android/maps/BoundingBox;->getCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 673
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 674
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v3, v1

    add-int/2addr v1, v2

    .line 675
    invoke-static {v5}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 676
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 677
    invoke-static {v6}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 680
    :cond_7b
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 693
    :cond_80
    :goto_80
    return-void

    .line 683
    :cond_81
    if-eqz p2, :cond_80

    .line 684
    invoke-virtual {p1}, Lcom/mapquest/android/maps/BoundingBox;->getCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 685
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 686
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v3, v1

    add-int/2addr v1, v2

    .line 687
    invoke-static {v5}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 688
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 689
    invoke-static {v6}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_80
.end method
