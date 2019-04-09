.class Lorg/webrtc/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceTextureHelper;)V
    .registers 2

    .prologue
    .line 383
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x0

    # setter for: Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z
    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->access$302(Lorg/webrtc/SurfaceTextureHelper;Z)Z

    .line 386
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    # getter for: Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z
    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$400(Lorg/webrtc/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 387
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    # invokes: Lorg/webrtc/SurfaceTextureHelper;->release()V
    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$500(Lorg/webrtc/SurfaceTextureHelper;)V

    .line 391
    :goto_13
    return-void

    .line 389
    :cond_14
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    # invokes: Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V
    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$200(Lorg/webrtc/SurfaceTextureHelper;)V

    goto :goto_13
.end method
