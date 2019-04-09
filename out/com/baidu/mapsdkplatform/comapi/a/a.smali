.class public Lcom/baidu/mapsdkplatform/comapi/a/a;
.super Lcom/baidu/mapsdkplatform/comapi/a/c;


# instance fields
.field private a:Landroid/animation/Animator;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

.field private e:I

.field private f:I

.field private g:[F


# direct methods
.method public varargs constructor <init>([F)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a/c;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->b:J

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->c:Landroid/view/animation/Interpolator;

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->f:I

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->g:[F

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-object v0
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "alpha"

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->g:[F

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_24

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->f:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->b:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->c:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_24
    return-object v0
.end method

.method public a()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_4
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->e:I

    return-void
.end method

.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    :cond_7
    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->b:J

    return-void
.end method

.method protected a(Landroid/animation/Animator;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/b;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public b()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->a:Landroid/animation/Animator;

    :cond_c
    return-void
.end method

.method public b(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->f:I

    :cond_4
    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/a;->e:I

    return v0
.end method

.method public c(I)V
    .registers 2

    return-void
.end method
