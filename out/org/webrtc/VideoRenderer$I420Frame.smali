.class public Lorg/webrtc/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final height:I

.field private nativeFramePointer:J

.field public rotationDegree:I

.field public final samplingMatrix:[F

.field public textureId:I

.field public final width:I

.field public final yuvFrame:Z

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public final yuvStrides:[I


# direct methods
.method constructor <init>(IIII[FJ)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 94
    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 95
    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 96
    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 97
    iput-object p5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 98
    iput p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 100
    iput p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 101
    iput-wide p6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 102
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_34

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation degree not multiple of 90: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_34
    return-void
.end method

.method constructor <init>(III[I[Ljava/nio/ByteBuffer;J)V
    .registers 11

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 68
    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 69
    iput-object p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 70
    iput-object p5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 72
    iput p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 73
    iput-wide p6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 74
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_2f

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation degree not multiple of 90: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2f
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 86
    return-void

    .line 81
    nop

    :array_3a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/webrtc/VideoRenderer$I420Frame;)J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/webrtc/VideoRenderer$I420Frame;J)J
    .registers 3

    .prologue
    .line 43
    iput-wide p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide p1
.end method


# virtual methods
.method public rotatedHeight()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_9

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    goto :goto_8
.end method

.method public rotatedWidth()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_9

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
