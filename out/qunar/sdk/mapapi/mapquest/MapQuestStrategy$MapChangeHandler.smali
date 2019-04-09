.class Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private mapQuestWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V
    .registers 3

    .prologue
    .line 725
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->mapQuestWR:Ljava/lang/ref/WeakReference;

    .line 726
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->mapQuestWR:Ljava/lang/ref/WeakReference;

    .line 727
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const v3, 0xff03

    const v2, 0xff09

    .line 731
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->mapQuestWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    .line 732
    if-eqz v0, :cond_2b

    .line 733
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2c

    .line 734
    invoke-virtual {p0, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 735
    invoke-virtual {p0, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeMessages(I)V

    .line 737
    :cond_1d
    invoke-virtual {p0, v2}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 738
    invoke-virtual {p0, v2}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeMessages(I)V

    .line 740
    :cond_26
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 745
    :cond_2b
    :goto_2b
    return-void

    .line 741
    :cond_2c
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2b

    .line 742
    # invokes: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapforceReFefreshFinish()V
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$600(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V

    goto :goto_2b
.end method
