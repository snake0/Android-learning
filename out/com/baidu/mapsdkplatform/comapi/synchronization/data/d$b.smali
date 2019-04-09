.class Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    :goto_4
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->e()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->g()I

    move-result v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->h()Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(IZ)V

    invoke-static {v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Z)Z

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_4d

    :goto_29
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d()I

    move-result v0

    :goto_37
    const/4 v1, 0x3

    if-lt v0, v1, :cond_5d

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j()J

    move-result-wide v5

    int-to-long v7, v0

    mul-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-ltz v1, :cond_56

    move-wide v0, v2

    :goto_49
    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(J)J

    goto :goto_4

    :catch_4d
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_29

    :cond_56
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j()J

    move-result-wide v5

    int-to-long v0, v0

    mul-long/2addr v0, v5

    goto :goto_49

    :cond_5d
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(J)J

    goto :goto_4

    :cond_65
    return-void

    :cond_66
    move v0, v4

    goto :goto_37
.end method
