.class public Lqunar/sdk/mapapi/QunarMapInitOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public compassEnabled:Z

.field public mapType:Lqunar/sdk/mapapi/QunarMapType;

.field public overlookingGesturesEnabled:Z

.field public rotateGesturesEnabled:Z

.field public scaleControlEnabled:Z

.field public zoomControlsEnabled:Z

.field public zoomGesturesEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->compassEnabled:Z

    .line 14
    iput-boolean v1, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->overlookingGesturesEnabled:Z

    .line 15
    iput-boolean v1, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->rotateGesturesEnabled:Z

    .line 16
    iput-boolean v0, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->scaleControlEnabled:Z

    .line 17
    iput-boolean v0, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomControlsEnabled:Z

    .line 18
    iput-boolean v1, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomGesturesEnabled:Z

    .line 19
    sget-object v0, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 23
    return-void
.end method
