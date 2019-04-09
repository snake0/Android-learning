.class public Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final height:I

.field public final imageFormat:I

.field public final maxFramerate:I

.field public final minFramerate:I

.field public final width:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x11

    iput v0, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->imageFormat:I

    .line 78
    iput p1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    .line 79
    iput p2, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 80
    iput p3, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->minFramerate:I

    .line 81
    iput p4, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    .line 82
    return-void
.end method

.method public static frameSize(III)I
    .registers 5

    .prologue
    .line 94
    const/16 v0, 0x11

    if-eq p2, v0, :cond_c

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t know how to calculate the frame size of non-NV21 image formats."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_c
    mul-int v0, p0, p1

    invoke-static {p2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method


# virtual methods
.method public frameSize()I
    .registers 4

    .prologue
    .line 86
    iget v0, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize(III)I

    move-result v0

    return v0
.end method

.method public isSameFormat(Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_4

    .line 110
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v2, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    iget v2, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    iget v2, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->minFramerate:I

    iget v2, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->minFramerate:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->minFramerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
