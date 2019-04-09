.class Lcom/mqunar/dispatcher/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/dispatcher/DispatcherProxyActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/dispatcher/DispatcherProxyActivity;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mqunar/dispatcher/j;->a:Lcom/mqunar/dispatcher/DispatcherProxyActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    sget-boolean v0, Lcom/mqunar/core/QSpider;->loadDone:Z

    if-eqz v0, :cond_d

    .line 27
    iget-object v0, p0, Lcom/mqunar/dispatcher/j;->a:Lcom/mqunar/dispatcher/DispatcherProxyActivity;

    invoke-static {v0}, Lcom/mqunar/dispatcher/DispatcherProxyActivity;->a(Lcom/mqunar/dispatcher/DispatcherProxyActivity;)V

    .line 32
    :goto_c
    return-void

    .line 29
    :cond_d
    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/mqunar/dispatcher/j;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c
.end method
