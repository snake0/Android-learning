.class Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;


# direct methods
.method private constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->p(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->i()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->q(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Z)Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->r(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/model/LatLngBounds;)V

    :try_start_2e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J

    :cond_4a
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_53} :catch_54

    goto :goto_0

    :catch_54
    move-exception v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sleep InterruptedException"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5f
    return-void
.end method
