.class Lorg/webrtc/VideoCapturerAndroid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field final synthetic this$0:Lorg/webrtc/VideoCapturerAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/VideoCapturerAndroid;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lorg/webrtc/VideoCapturerAndroid$1;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 5

    .prologue
    .line 115
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1d

    .line 116
    const-string v0, "Camera server died!"

    .line 120
    :goto_6
    const-string v1, "VideoCapturerAndroid"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid$1;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    # getter for: Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;
    invoke-static {v1}, Lorg/webrtc/VideoCapturerAndroid;->access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 122
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid$1;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    # getter for: Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;
    invoke-static {v1}, Lorg/webrtc/VideoCapturerAndroid;->access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    .line 124
    :cond_1c
    return-void

    .line 118
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
