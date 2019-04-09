.class public Lqunar/sdk/mapapi/entity/QMarkerV2;
.super Lqunar/sdk/mapapi/entity/QMarker;
.source "SourceFile"


# instance fields
.field private draggable:Z

.field private flat:Z

.field private opacity:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lqunar/sdk/mapapi/entity/QMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpacity()F
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lqunar/sdk/mapapi/entity/QMarkerV2;->opacity:F

    return v0
.end method

.method public isDraggable()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarkerV2;->draggable:Z

    return v0
.end method

.method public isFlat()Z
    .registers 2

    .prologue
    .line 9
    iget-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarkerV2;->flat:Z

    return v0
.end method

.method public setDraggable(Z)V
    .registers 2

    .prologue
    .line 21
    iput-boolean p1, p0, Lqunar/sdk/mapapi/entity/QMarkerV2;->draggable:Z

    .line 22
    return-void
.end method

.method public setFlat(Z)V
    .registers 2

    .prologue
    .line 13
    iput-boolean p1, p0, Lqunar/sdk/mapapi/entity/QMarkerV2;->flat:Z

    .line 14
    return-void
.end method

.method public setOpacity(F)V
    .registers 2

    .prologue
    .line 29
    iput p1, p0, Lqunar/sdk/mapapi/entity/QMarkerV2;->opacity:F

    .line 30
    return-void
.end method
