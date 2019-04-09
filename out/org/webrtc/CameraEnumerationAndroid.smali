.class public Lorg/webrtc/CameraEnumerationAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraEnumerationAndroid"

.field private static enumerator:Lorg/webrtc/CameraEnumerationAndroid$Enumerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lorg/webrtc/CameraEnumerator;

    invoke-direct {v0}, Lorg/webrtc/CameraEnumerator;-><init>()V

    sput-object v0, Lorg/webrtc/CameraEnumerationAndroid;->enumerator:Lorg/webrtc/CameraEnumerationAndroid$Enumerator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public static getClosestSupportedSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lorg/webrtc/CameraEnumerationAndroid$2;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid$2;-><init>(II)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public static getDeviceCount()I
    .registers 1

    .prologue
    .line 126
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 132
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 134
    :try_start_5
    invoke-static {p0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_39

    .line 140
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_54

    const-string v0, "front"

    .line 142
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Facing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Orientation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    return-object v0

    .line 135
    :catch_39
    move-exception v0

    .line 136
    const-string v1, "CameraEnumerationAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraInfo failed on index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_38

    .line 140
    :cond_54
    const-string v0, "back"

    goto :goto_f
.end method

.method public static getDeviceNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    :goto_7
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 119
    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 121
    :cond_16
    return-object v1
.end method

.method public static getFramerateRange(Landroid/hardware/Camera$Parameters;I)[I
    .registers 4

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 188
    const-string v0, "CameraEnumerationAndroid"

    const-string v1, "No supported preview fps range"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    .line 191
    :goto_17
    return-object v0

    :cond_18
    new-instance v1, Lorg/webrtc/CameraEnumerationAndroid$1;

    invoke-direct {v1, p1}, Lorg/webrtc/CameraEnumerationAndroid$1;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_17

    .line 189
    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getNameOfBackFacingDevice()Ljava/lang/String;
    .registers 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getNameOfDevice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNameOfDevice(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 214
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 215
    const/4 v0, 0x0

    :goto_6
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 217
    :try_start_c
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 218
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, p0, :cond_31

    .line 219
    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getDeviceName(I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_18

    move-result-object v0

    .line 225
    :goto_17
    return-object v0

    .line 221
    :catch_18
    move-exception v1

    .line 222
    const-string v3, "CameraEnumerationAndroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraInfo() failed on index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 225
    :cond_34
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getNameOfFrontFacingDevice()Ljava/lang/String;
    .registers 1

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getNameOfDevice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSupportedFormats(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v1, Lorg/webrtc/CameraEnumerationAndroid;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/webrtc/CameraEnumerationAndroid;->enumerator:Lorg/webrtc/CameraEnumerationAndroid$Enumerator;

    invoke-interface {v0, p0}, Lorg/webrtc/CameraEnumerationAndroid$Enumerator;->getSupportedFormats(I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSupportedFormatsAsJson(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 159
    invoke-static {p0}, Lorg/webrtc/CameraEnumerationAndroid;->getSupportedFormats(I)Ljava/util/List;

    move-result-object v0

    .line 160
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 162
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string v4, "width"

    iget v5, v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v4, "height"

    iget v5, v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v4, "framerate"

    iget v0, v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    add-int/lit16 v0, v0, 0x3e7

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 168
    :cond_3b
    const-string v0, "CameraEnumerationAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supported formats for camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setEnumerator(Lorg/webrtc/CameraEnumerationAndroid$Enumerator;)V
    .registers 3

    .prologue
    .line 58
    const-class v0, Lorg/webrtc/CameraEnumerationAndroid;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lorg/webrtc/CameraEnumerationAndroid;->enumerator:Lorg/webrtc/CameraEnumerationAndroid$Enumerator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 59
    monitor-exit v0

    return-void

    .line 58
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
