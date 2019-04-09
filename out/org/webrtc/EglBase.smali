.class public abstract Lorg/webrtc/EglBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIG_PIXEL_BUFFER:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER:[I

.field public static final CONFIG_PLAIN:[I

.field public static final CONFIG_RECORDABLE:[I

.field public static final CONFIG_RGBA:[I

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xb

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_40

    sput-object v0, Lorg/webrtc/EglBase;->CONFIG_RGBA:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lorg/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 76
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Lorg/webrtc/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    sput-object v0, Lorg/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    return-void

    .line 53
    :array_2a
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 60
    :array_40
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 68
    :array_5a
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 76
    :array_74
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 85
    :array_92
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static create()Lorg/webrtc/EglBase;
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    sget-object v1, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {v0, v1}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lorg/webrtc/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_c

    instance-of v0, p0, Lorg/webrtc/EglBase14$Context;

    if-eqz v0, :cond_14

    :cond_c
    new-instance v0, Lorg/webrtc/EglBase14;

    check-cast p0, Lorg/webrtc/EglBase14$Context;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/EglBase14;-><init>(Lorg/webrtc/EglBase14$Context;[I)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lorg/webrtc/EglBase10;

    check-cast p0, Lorg/webrtc/EglBase10$Context;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/EglBase10;-><init>(Lorg/webrtc/EglBase10$Context;[I)V

    goto :goto_13
.end method


# virtual methods
.method public abstract createDummyPbufferSurface()V
.end method

.method public abstract createPbufferSurface(II)V
.end method

.method public abstract createSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract createSurface(Landroid/view/Surface;)V
.end method

.method public abstract detachCurrent()V
.end method

.method public abstract getEglBaseContext()Lorg/webrtc/EglBase$Context;
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public abstract swapBuffers()V
.end method
