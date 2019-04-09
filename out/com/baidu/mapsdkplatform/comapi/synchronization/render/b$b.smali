.class Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;


# direct methods
.method private constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Driver position is null, return"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_4b

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Driver position not bind to route"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_3b
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_19

    :cond_4b
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;D)D

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)D

    move-result-wide v2

    const-wide v4, 0x407f400000000000L    # 500.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_93

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;I)I

    goto :goto_19

    :cond_93
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->setPoint(Lcom/baidu/mapapi/model/LatLng;)V

    :try_start_9f
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a4} :catch_c1

    :goto_a4
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->h()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Z)Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->k(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    goto/16 :goto_0

    :catch_c1
    move-exception v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Catch exception when car moving"

    invoke-static {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a4
.end method
