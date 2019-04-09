.class public Lcom/mapquest/android/maps/OverlayItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ITEM_STATE_FOCUSED_MASK:I = 0x4

.field public static final ITEM_STATE_PRESSED_MASK:I = 0x2

.field public static final ITEM_STATE_SELECTED_MASK:I = 0x1


# instance fields
.field private extraInfo:Landroid/os/Bundle;

.field protected mAlignment:I

.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field protected mPoint:Lcom/mapquest/android/maps/GeoPoint;

.field protected mSnippet:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayItem;->mPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 20
    iput-object p2, p0, Lcom/mapquest/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/mapquest/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 66
    const/4 v0, 0x0

    .line 67
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_2a

    .line 68
    const/4 v1, 0x1

    const v3, 0x10100a7

    aput v3, v2, v0

    .line 71
    :goto_e
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_28

    .line 72
    add-int/lit8 v0, v1, 0x1

    const v3, 0x10100a1

    aput v3, v2, v1

    .line 75
    :goto_19
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_24

    .line 76
    add-int/lit8 v1, v0, 0x1

    const v1, 0x101009c

    aput v1, v2, v0

    .line 79
    :cond_24
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 80
    return-void

    :cond_28
    move v0, v1

    goto :goto_19

    :cond_2a
    move v1, v0

    goto :goto_e
.end method


# virtual methods
.method public getAlignment()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mAlignment:I

    return v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->extraInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMarker(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/mapquest/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPoint()Lcom/mapquest/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mPoint:Lcom/mapquest/android/maps/GeoPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/mapquest/android/maps/OverlayItem;->state:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 107
    iput-object v1, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_c
    return-void
.end method

.method public routableAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/mapquest/android/maps/OverlayItem;->mPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/OverlayItem;->mPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlignment(I)V
    .registers 2

    .prologue
    .line 91
    iput p1, p0, Lcom/mapquest/android/maps/OverlayItem;->mAlignment:I

    .line 92
    return-void
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayItem;->extraInfo:Landroid/os/Bundle;

    .line 62
    return-void
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    .line 42
    return-void
.end method

.method setState(I)V
    .registers 2

    .prologue
    .line 87
    iput p1, p0, Lcom/mapquest/android/maps/OverlayItem;->state:I

    .line 88
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    .line 50
    return-void
.end method
