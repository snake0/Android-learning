.class abstract Lcom/mapquest/android/maps/Animator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected animating:Z

.field private duration:I

.field private finishIt:Z

.field protected mapView:Lcom/mapquest/android/maps/MapView;

.field protected message:Landroid/os/Message;

.field protected runnable:Ljava/lang/Runnable;

.field protected started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-class v0, Lcom/mapquest/android/maps/Animator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/Animator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->started:Z

    .line 16
    iput-object p1, p0, Lcom/mapquest/android/maps/Animator;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->started:Z

    .line 20
    iput-object p1, p0, Lcom/mapquest/android/maps/Animator;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 21
    iput-object p2, p0, Lcom/mapquest/android/maps/Animator;->runnable:Ljava/lang/Runnable;

    .line 22
    return-void
.end method


# virtual methods
.method public animate()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    iget-boolean v2, p0, Lcom/mapquest/android/maps/Animator;->started:Z

    if-nez v2, :cond_b

    .line 71
    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->started:Z

    .line 72
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Animator;->preAnimation()V

    .line 75
    :cond_b
    iget-boolean v2, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/mapquest/android/maps/Animator;->doAnimation()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 92
    :goto_15
    return v0

    .line 78
    :cond_16
    iget-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->finishIt:Z

    if-eqz v0, :cond_21

    .line 79
    :cond_1e
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Animator;->postAnimation()V

    .line 82
    :cond_21
    iput-boolean v1, p0, Lcom/mapquest/android/maps/Animator;->started:Z

    .line 83
    iput-boolean v1, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    .line 85
    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v2, p0, Lcom/mapquest/android/maps/Animator;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_30
    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->message:Landroid/os/Message;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 89
    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_41
    move v0, v1

    .line 92
    goto :goto_15
.end method

.method abstract doAnimation()Z
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/mapquest/android/maps/Animator;->duration:I

    return v0
.end method

.method public getMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->message:Landroid/os/Message;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mapquest/android/maps/Animator;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    return v0
.end method

.method abstract postAnimation()V
.end method

.method abstract preAnimation()V
.end method

.method public setDuration(I)V
    .registers 2

    .prologue
    .line 25
    iput p1, p0, Lcom/mapquest/android/maps/Animator;->duration:I

    .line 26
    return-void
.end method

.method public setMessage(Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mapquest/android/maps/Animator;->message:Landroid/os/Message;

    .line 46
    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mapquest/android/maps/Animator;->runnable:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method public startAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    .line 50
    iput-object v2, p0, Lcom/mapquest/android/maps/Animator;->message:Landroid/os/Message;

    .line 51
    iput-boolean v1, p0, Lcom/mapquest/android/maps/Animator;->finishIt:Z

    .line 52
    iput-object v2, p0, Lcom/mapquest/android/maps/Animator;->runnable:Ljava/lang/Runnable;

    .line 53
    iput-boolean v1, p0, Lcom/mapquest/android/maps/Animator;->started:Z

    .line 54
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->animating:Z

    .line 58
    return-void
.end method

.method public stopAnimation(Z)V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Animator;->finishIt:Z

    .line 62
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Animator;->stopAnimation()V

    .line 63
    return-void
.end method
