.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a(Lcom/baidu/mapapi/map/BaiduMap;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e()V

    :cond_9
    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a(I)V

    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f()V

    :cond_9
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d(I)V

    :cond_9
    return-void
.end method

.method public c()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a:Ljava/lang/String;

    const-string v1, "The mSyncRenderStrategic created failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->b()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->b(I)V

    :cond_9
    return-void
.end method

.method public d()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a:Ljava/lang/String;

    const-string v1, "The mSyncRenderStrategic created failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->c()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->c(I)V

    :cond_9
    return-void
.end method

.method public e()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->a:Ljava/lang/String;

    const-string v1, "The mSyncRenderStrategic created failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    :cond_c
    return-void
.end method
