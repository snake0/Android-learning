.class public Lqunar/sdk/mapapi/QunarInfoWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callbackData:Ljava/lang/Object;

.field private infoWindowClickListener:Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;

.field private marker:Lqunar/sdk/mapapi/entity/QMarker;

.field private offsetPixelY:I

.field private paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field private view:Landroid/view/View;

.field private viewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lqunar/sdk/mapapi/entity/QMarker;Ljava/lang/Object;ILqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;)V
    .registers 7

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->offsetPixelY:I

    .line 35
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->viewBitmap:Landroid/graphics/Bitmap;

    .line 36
    sget-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->IMAGE_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 37
    iput-object p2, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->marker:Lqunar/sdk/mapapi/entity/QMarker;

    .line 38
    iput-object p3, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->callbackData:Ljava/lang/Object;

    .line 39
    iput p4, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->offsetPixelY:I

    .line 40
    iput-object p5, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->infoWindowClickListener:Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lqunar/sdk/mapapi/entity/QMarker;Ljava/lang/Object;ILqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;)V
    .registers 7

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->offsetPixelY:I

    .line 25
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->view:Landroid/view/View;

    .line 26
    sget-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->VIEW_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 27
    iput-object p2, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->marker:Lqunar/sdk/mapapi/entity/QMarker;

    .line 28
    iput-object p3, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->callbackData:Ljava/lang/Object;

    .line 29
    iput p4, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->offsetPixelY:I

    .line 30
    iput-object p5, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->infoWindowClickListener:Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;

    .line 31
    return-void
.end method


# virtual methods
.method public getCallbackData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->callbackData:Ljava/lang/Object;

    return-object v0
.end method

.method public getInfoWindowClickListener()Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->infoWindowClickListener:Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;

    return-object v0
.end method

.method public getMarker()Lqunar/sdk/mapapi/entity/QMarker;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->marker:Lqunar/sdk/mapapi/entity/QMarker;

    return-object v0
.end method

.method public getOffsetPixelY()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->offsetPixelY:I

    return v0
.end method

.method public getParamerCase()Lqunar/sdk/mapapi/utils/MarkerParamerCase;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarInfoWindow;->viewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
