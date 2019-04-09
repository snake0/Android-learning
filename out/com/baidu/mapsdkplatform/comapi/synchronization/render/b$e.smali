.class Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->d:I

    return-void
.end method


# virtual methods
.method public onMapStatusChangeReason(I)V
    .registers 9

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->b:I

    if-eq v0, p1, :cond_8

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->c:I

    if-ne v0, p1, :cond_47

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->t(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J

    :goto_27
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Z)Z

    :goto_2d
    return-void

    :cond_2e
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->u(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v5}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->s(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)J

    move-result-wide v5

    sub-long v0, v5, v0

    sub-long v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J

    goto :goto_27

    :cond_47
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->d:I

    if-ne v0, p1, :cond_5a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$e;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->v(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;J)J

    goto :goto_2d

    :cond_5a
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined reason type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method
