.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private bdMapWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;)V
    .registers 3

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->bdMapWR:Ljava/lang/ref/WeakReference;

    .line 527
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->bdMapWR:Ljava/lang/ref/WeakReference;

    .line 528
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const v3, 0xff03

    const v2, 0xff09

    .line 532
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->bdMapWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    .line 533
    if-eqz v0, :cond_2b

    .line 534
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2c

    .line 535
    invoke-virtual {p0, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 536
    invoke-virtual {p0, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeMessages(I)V

    .line 538
    :cond_1d
    invoke-virtual {p0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 539
    invoke-virtual {p0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeMessages(I)V

    .line 541
    :cond_26
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 546
    :cond_2b
    :goto_2b
    return-void

    .line 542
    :cond_2c
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2b

    .line 543
    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapforceReFefreshFinish()V
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$300(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;)V

    goto :goto_2b
.end method
