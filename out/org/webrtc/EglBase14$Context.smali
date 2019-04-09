.class public Lorg/webrtc/EglBase14$Context;
.super Lorg/webrtc/EglBase$Context;
.source "SourceFile"


# instance fields
.field private final egl14Context:Landroid/opengl/EGLContext;


# direct methods
.method constructor <init>(Landroid/opengl/EGLContext;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/webrtc/EglBase$Context;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/webrtc/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/EglBase14$Context;)Landroid/opengl/EGLContext;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/webrtc/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    return-object v0
.end method
