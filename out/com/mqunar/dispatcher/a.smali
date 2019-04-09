.class Lcom/mqunar/dispatcher/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/dispatcher/DispatcherActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mqunar/dispatcher/a;->a:Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    sget-boolean v0, Lcom/mqunar/core/QSpider;->loadDone:Z

    if-eqz v0, :cond_d

    .line 44
    iget-object v0, p0, Lcom/mqunar/dispatcher/a;->a:Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-static {v0}, Lcom/mqunar/dispatcher/DispatcherActivity;->a(Lcom/mqunar/dispatcher/DispatcherActivity;)V

    .line 49
    :goto_c
    return-void

    .line 46
    :cond_d
    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/mqunar/dispatcher/a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c
.end method
