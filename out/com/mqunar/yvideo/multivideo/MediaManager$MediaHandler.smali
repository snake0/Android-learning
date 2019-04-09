.class public Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;


# direct methods
.method public constructor <init>(Lcom/mqunar/yvideo/multivideo/MediaManager;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;

    .line 143
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 167
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 151
    :pswitch_a
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;

    iput v1, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoWidth:I

    .line 152
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;

    iput v1, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoHeight:I

    .line 153
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->prepare()V

    .line 155
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9

    .line 156
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_26

    .line 157
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 159
    :cond_26
    new-instance v0, Landroid/view/Surface;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->surface:Landroid/view/Surface;

    .line 160
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setSurface(Landroid/view/Surface;)V

    goto :goto_9

    .line 164
    :pswitch_39
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->this$0:Lcom/mqunar/yvideo/multivideo/MediaManager;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->release()V

    goto :goto_9

    .line 149
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_39
    .end packed-switch
.end method
