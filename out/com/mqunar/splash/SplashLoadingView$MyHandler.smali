.class Lcom/mqunar/splash/SplashLoadingView$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final loadingView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mqunar/splash/SplashLoadingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mqunar/splash/SplashLoadingView;)V
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->loadingView:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->loadingView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/splash/SplashLoadingView;

    .line 160
    if-nez v0, :cond_b

    .line 167
    :cond_a
    :goto_a
    return-void

    .line 161
    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_15

    .line 162
    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->showAnimation()V

    goto :goto_a

    .line 164
    :cond_15
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x10001

    if-ne v1, v2, :cond_a

    .line 165
    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->dismissAnimation()V

    goto :goto_a
.end method
