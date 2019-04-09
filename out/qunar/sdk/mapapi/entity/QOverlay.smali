.class public Lqunar/sdk/mapapi/entity/QOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private extraInfo:Landroid/os/Bundle;

.field id:Ljava/lang/String;

.field protected mapType:Lqunar/sdk/mapapi/QunarMapType;

.field private overlay:Ljava/lang/Object;

.field private visible:Z

.field private zIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->visible:Z

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->id:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getExtraInfo()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->extraInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOverlayOption()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->overlay:Ljava/lang/Object;

    return-object v0
.end method

.method public getzIndex()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->zIndex:I

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->visible:Z

    return v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->overlay:Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 34
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    if-ne v0, v1, :cond_18

    .line 35
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->overlay:Ljava/lang/Object;

    instance-of v0, v0, Lcom/baidu/mapapi/map/Overlay;

    if-eqz v0, :cond_17

    .line 36
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->overlay:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 37
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    .line 43
    :cond_17
    :goto_17
    return-void

    .line 39
    :cond_18
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QOverlay;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->GAODE:Lqunar/sdk/mapapi/QunarMapType;

    if-ne v0, v1, :cond_17

    goto :goto_17
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QOverlay;->extraInfo:Landroid/os/Bundle;

    .line 75
    return-void
.end method

.method public setMapType(Lqunar/sdk/mapapi/QunarMapType;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QOverlay;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 79
    return-void
.end method

.method public setOverlayOption(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QOverlay;->overlay:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .prologue
    .line 66
    iput-boolean p1, p0, Lqunar/sdk/mapapi/entity/QOverlay;->visible:Z

    .line 67
    return-void
.end method

.method public setzIndex(I)V
    .registers 2

    .prologue
    .line 58
    iput p1, p0, Lqunar/sdk/mapapi/entity/QOverlay;->zIndex:I

    .line 59
    return-void
.end method
