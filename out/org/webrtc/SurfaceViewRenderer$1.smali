.class Lorg/webrtc/SurfaceViewRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceViewRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceViewRenderer;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$1;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$1;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    # invokes: Lorg/webrtc/SurfaceViewRenderer;->renderFrameOnRenderThread()V
    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$000(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 127
    return-void
.end method
