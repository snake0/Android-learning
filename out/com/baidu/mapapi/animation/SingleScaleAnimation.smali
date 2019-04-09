.class public Lcom/baidu/mapapi/animation/SingleScaleAnimation;
.super Lcom/baidu/mapapi/animation/Animation;


# direct methods
.method public varargs constructor <init>(Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;[F)V
    .registers 5

    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    if-eqz p2, :cond_8

    array-length v0, p2

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the scales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;->SCALE_X:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    if-ne p1, v0, :cond_1d

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/j;-><init>(I[F)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    sget-object v0, Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;->SCALE_Y:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    if-ne p1, v0, :cond_1c

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/j;-><init>(I[F)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    goto :goto_1c
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b(I)V

    return-void
.end method

.method public setRepeatMode(Lcom/baidu/mapapi/animation/Animation$RepeatMode;)V
    .registers 4

    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->RESTART:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->REVERSE:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    goto :goto_a
.end method
