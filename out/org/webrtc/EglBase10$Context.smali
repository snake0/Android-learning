.class public Lorg/webrtc/EglBase10$Context;
.super Lorg/webrtc/EglBase$Context;
.source "SourceFile"


# instance fields
.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/webrtc/EglBase$Context;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/webrtc/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/webrtc/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method
