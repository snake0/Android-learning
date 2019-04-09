.class public Lqunar/sdk/mapapi/QunarMapView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/PermissionsListener;


# static fields
.field private static final REQUEST_CODE_MAP:I = 0x33


# instance fields
.field private context:Landroid/content/Context;

.field private displayMap:Landroid/view/ViewGroup;

.field private mapOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

.field private mapView:Lqunar/sdk/mapapi/IMapView;

.field private permissionsListener:Lqunar/sdk/PermissionsListener;

.field private qunarMap:Lqunar/sdk/mapapi/QunarMap;

.field private qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    .line 28
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    .line 29
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    .line 35
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    .line 36
    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/QunarMapView;->init(Lqunar/sdk/mapapi/QunarMapInitOptions;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    .line 28
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    .line 29
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    .line 41
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lqunar/sdk/mapapi/QunarMapInitOptions;

    invoke-direct {v0}, Lqunar/sdk/mapapi/QunarMapInitOptions;-><init>()V

    .line 44
    iput-boolean v1, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->compassEnabled:Z

    .line 45
    iput-boolean v1, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomControlsEnabled:Z

    .line 46
    iput-boolean v1, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->scaleControlEnabled:Z

    .line 47
    invoke-static {}, Lqunar/sdk/mapapi/SDKInitializer;->getSDKInitializer()Lqunar/sdk/mapapi/SDKInitializer;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_26

    .line 49
    invoke-virtual {v1}, Lqunar/sdk/mapapi/SDKInitializer;->getInitMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_26

    .line 51
    iput-object v1, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 55
    :cond_26
    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/QunarMapView;->init(Lqunar/sdk/mapapi/QunarMapInitOptions;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    .line 28
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    .line 29
    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    .line 60
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    .line 61
    invoke-direct {p0, p2}, Lqunar/sdk/mapapi/QunarMapView;->init(Lqunar/sdk/mapapi/QunarMapInitOptions;)V

    .line 62
    return-void
.end method

.method private createViewWithPermission()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 90
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    iget-object v1, p0, Lqunar/sdk/mapapi/QunarMapView;->mapOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    invoke-static {v0, v1}, Lqunar/sdk/mapapi/QunarMapFacade;->initMapView(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)Lqunar/sdk/mapapi/IMapView;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    .line 91
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-eqz v0, :cond_2c

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    iget-object v1, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v1}, Lqunar/sdk/mapapi/IMapView;->getMapView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    .line 94
    iget-object v1, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 95
    iget-object v1, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 96
    iget-object v1, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lqunar/sdk/mapapi/QunarMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_2c
    return-void
.end method

.method private init(Lqunar/sdk/mapapi/QunarMapInitOptions;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_1c

    .line 73
    new-instance p1, Lqunar/sdk/mapapi/QunarMapInitOptions;

    invoke-direct {p1}, Lqunar/sdk/mapapi/QunarMapInitOptions;-><init>()V

    .line 74
    iput-boolean v0, p1, Lqunar/sdk/mapapi/QunarMapInitOptions;->compassEnabled:Z

    .line 75
    iput-boolean v0, p1, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomControlsEnabled:Z

    .line 76
    iput-boolean v0, p1, Lqunar/sdk/mapapi/QunarMapInitOptions;->scaleControlEnabled:Z

    .line 77
    invoke-static {}, Lqunar/sdk/mapapi/SDKInitializer;->getSDKInitializer()Lqunar/sdk/mapapi/SDKInitializer;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1c

    .line 79
    invoke-virtual {v0}, Lqunar/sdk/mapapi/SDKInitializer;->getInitMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1c

    .line 81
    iput-object v0, p1, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 85
    :cond_1c
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarMapView;->mapOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    .line 86
    invoke-direct {p0}, Lqunar/sdk/mapapi/QunarMapView;->createViewWithPermission()V

    .line 87
    return-void
.end method


# virtual methods
.method public getDisplayMap()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getQunarMap()Lqunar/sdk/mapapi/QunarMap;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    if-nez v0, :cond_10

    .line 102
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v1

    invoke-static {v0, v1}, Lqunar/sdk/mapapi/QunarMapFacade;->initMap(Landroid/view/ViewGroup;Lqunar/sdk/mapapi/QunarMapType;)Lqunar/sdk/mapapi/QunarMap;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    .line 104
    :cond_10
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    return-object v0
.end method

.method public getQunarMapControl()Lqunar/sdk/mapapi/QunarMapControl;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    if-nez v0, :cond_10

    .line 109
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v1

    invoke-static {v0, v1}, Lqunar/sdk/mapapi/QunarMapFacade;->initMap(Landroid/view/ViewGroup;Lqunar/sdk/mapapi/QunarMapType;)Lqunar/sdk/mapapi/QunarMap;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    .line 111
    :cond_10
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    if-nez v0, :cond_1a

    .line 112
    invoke-static {p0}, Lqunar/sdk/mapapi/QunarMapFacade;->initMapControl(Lqunar/sdk/mapapi/QunarMapView;)Lqunar/sdk/mapapi/QunarMapControl;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    .line 114
    :cond_1a
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    return-object v0
.end method

.method public getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v0}, Lqunar/sdk/mapapi/IMapView;->getInitOptions()Lqunar/sdk/mapapi/QunarMapInitOptions;

    move-result-object v0

    iget-object v0, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    goto :goto_5
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    const-string v1, "the_guy_want_to_cry"

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/QunarMap;->destroy(Ljava/lang/String;)V

    .line 126
    :cond_c
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    if-eqz v0, :cond_17

    .line 127
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    const-string v1, "the_guy_want_to_cry"

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/QunarMapControl;->destroy(Ljava/lang/String;)V

    .line 129
    :cond_17
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-eqz v0, :cond_20

    .line 130
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v0}, Lqunar/sdk/mapapi/IMapView;->onDestroy()V

    .line 132
    :cond_20
    iput-object v2, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMapControl:Lqunar/sdk/mapapi/QunarMapControl;

    .line 133
    iput-object v2, p0, Lqunar/sdk/mapapi/QunarMapView;->qunarMap:Lqunar/sdk/mapapi/QunarMap;

    .line 134
    iput-object v2, p0, Lqunar/sdk/mapapi/QunarMapView;->displayMap:Landroid/view/ViewGroup;

    .line 135
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v0}, Lqunar/sdk/mapapi/IMapView;->onPause()V

    .line 142
    :cond_9
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 176
    const/16 v0, 0x33

    if-ne p1, v0, :cond_f

    .line 177
    array-length v0, p3

    if-lez v0, :cond_10

    aget v0, p3, v2

    if-nez v0, :cond_10

    .line 178
    invoke-direct {p0}, Lqunar/sdk/mapapi/QunarMapView;->createViewWithPermission()V

    .line 183
    :cond_f
    :goto_f
    return-void

    .line 179
    :cond_10
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 180
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    const-string v1, "\u8bfb\u53d6\u8bbe\u5907\u4fe1\u606f\u5931\u8d25\uff0c\u65e0\u6cd5\u63d0\u4f9b\u5730\u56fe\u670d\u52a1\u2026\u2026"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v0}, Lqunar/sdk/mapapi/IMapView;->onResume()V

    .line 149
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v0, p1}, Lqunar/sdk/mapapi/IMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->mapView:Lqunar/sdk/mapapi/IMapView;

    invoke-interface {v0}, Lqunar/sdk/mapapi/IMapView;->onStop()V

    .line 161
    :cond_9
    return-void
.end method

.method public requestPermission([Ljava/lang/String;I)V
    .registers 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->permissionsListener:Lqunar/sdk/PermissionsListener;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 170
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->permissionsListener:Lqunar/sdk/PermissionsListener;

    invoke-interface {v0, p1, p2}, Lqunar/sdk/PermissionsListener;->requestPermission([Ljava/lang/String;I)V

    .line 172
    :cond_f
    return-void
.end method

.method public setPermissionsListener(Lqunar/sdk/PermissionsListener;)V
    .registers 5

    .prologue
    .line 65
    iput-object p1, p0, Lqunar/sdk/mapapi/QunarMapView;->permissionsListener:Lqunar/sdk/PermissionsListener;

    .line 66
    iget-object v0, p0, Lqunar/sdk/mapapi/QunarMapView;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    invoke-virtual {p0, v0, v1}, Lqunar/sdk/mapapi/QunarMapView;->requestPermission([Ljava/lang/String;I)V

    .line 69
    :cond_19
    return-void
.end method
