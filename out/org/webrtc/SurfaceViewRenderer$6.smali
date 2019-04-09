.class Lorg/webrtc/SurfaceViewRenderer$6;
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
    .line 558
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$6;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$6;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->requestLayout()V

    .line 561
    return-void
.end method
