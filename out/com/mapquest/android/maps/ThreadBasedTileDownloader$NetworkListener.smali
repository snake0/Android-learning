.class Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V
    .registers 2

    .prologue
    .line 853
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 854
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/ThreadBasedTileDownloader$1;)V
    .registers 3

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 857
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 865
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 866
    return-void

    .line 859
    :pswitch_9
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    const/4 v1, 0x1

    # setter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$402(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Z)Z

    goto :goto_5

    .line 862
    :pswitch_10
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    const/4 v1, 0x0

    # setter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$402(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Z)Z

    goto :goto_5

    .line 857
    nop

    :pswitch_data_18
    .packed-switch 0x3d
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method
