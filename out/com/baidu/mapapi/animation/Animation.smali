.class public abstract Lcom/baidu/mapapi/animation/Animation;
.super Ljava/lang/Object;


# instance fields
.field public bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method
