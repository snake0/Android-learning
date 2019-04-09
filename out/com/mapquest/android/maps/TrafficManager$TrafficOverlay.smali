.class Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;
.super Lcom/mapquest/android/maps/DrawableOverlay;
.source "SourceFile"


# instance fields
.field private minZoomLevel:I

.field final synthetic this$0:Lcom/mapquest/android/maps/TrafficManager;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/TrafficManager;)V
    .registers 3

    .prologue
    .line 297
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    invoke-direct {p0}, Lcom/mapquest/android/maps/DrawableOverlay;-><init>()V

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->minZoomLevel:I

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/TrafficManager;Lcom/mapquest/android/maps/TrafficManager$1;)V
    .registers 3

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;-><init>(Lcom/mapquest/android/maps/TrafficManager;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 6

    .prologue
    .line 315
    iget v0, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->minZoomLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->minZoomLevel:I

    if-lt v0, v1, :cond_10

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/mapquest/android/maps/DrawableOverlay;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V

    .line 319
    :cond_10
    return-void
.end method

.method public getMinZoomLevel()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->minZoomLevel:I

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 4

    .prologue
    .line 310
    const/16 v0, 0xb4

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 311
    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/DrawableOverlay;->setDrawable(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/BoundingBox;)V

    .line 312
    return-void
.end method

.method public setMinZoomLevel(I)V
    .registers 2

    .prologue
    .line 306
    iput p1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->minZoomLevel:I

    .line 307
    return-void
.end method
