.class public Lcom/baidu/mapapi/animation/AnimationSet;
.super Lcom/baidu/mapapi/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/a/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/baidu/mapapi/animation/Animation;)V
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapapi/animation/Animation;)V

    :cond_9
    return-void
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setAnimatorSetMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->c(I)V

    return-void
.end method

.method public setDuration(J)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/animation/AnimationSet;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method
