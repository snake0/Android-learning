.class public Lorg/webrtc/DataChannel$Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final binary:Z

.field public final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 74
    iput-boolean p2, p0, Lorg/webrtc/DataChannel$Buffer;->binary:Z

    .line 75
    return-void
.end method
