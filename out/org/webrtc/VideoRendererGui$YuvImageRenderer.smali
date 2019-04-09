.class Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/VideoRenderer$Callbacks;


# instance fields
.field private copyTimeNs:J

.field private final displayLayout:Landroid/graphics/Rect;

.field private drawTimeNs:J

.field private final drawer:Lorg/webrtc/RendererCommon$GlDrawer;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private id:I

.field private final layoutInPercentage:Landroid/graphics/Rect;

.field private layoutMatrix:[F

.field private mirror:Z

.field private pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

.field private final pendingFrameLock:Ljava/lang/Object;

.field private rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

.field private rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

.field private rotatedSamplingMatrix:[F

.field private rotationDegree:I

.field private scalingType:Lorg/webrtc/RendererCommon$ScalingType;

.field private screenHeight:I

.field private screenWidth:I

.field seenFrame:Z

.field private startTimeNs:J

.field private surface:Landroid/opengl/GLSurfaceView;

.field private textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

.field private final updateLayoutLock:Ljava/lang/Object;

.field private updateLayoutProperties:Z

.field private videoHeight:I

.field private videoWidth:I

.field private yuvTextures:[I

.field private final yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;


# direct methods
.method private constructor <init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;)V
    .registers 15

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    .line 100
    new-instance v0, Lorg/webrtc/RendererCommon$YuvUploader;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$YuvUploader;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrameLock:Ljava/lang/Object;

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutLock:Ljava/lang/Object;

    .line 161
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YuvImageRenderer.Create id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->surface:Landroid/opengl/GLSurfaceView;

    .line 163
    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    .line 164
    iput-object p7, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    .line 165
    iput-boolean p8, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    .line 166
    iput-object p9, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p3, p5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p4, p6

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, p3, p4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    .line 168
    iput-boolean v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutProperties:Z

    .line 169
    iput v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotationDegree:I

    .line 170
    return-void

    .line 99
    :array_68
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoRendererGui$1;)V
    .registers 11

    .prologue
    .line 92
    invoke-direct/range {p0 .. p9}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;-><init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->release()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->createTextures()V

    return-void
.end method

.method static synthetic access$702(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;Lorg/webrtc/RendererCommon$RendererEvents;)Lorg/webrtc/RendererCommon$RendererEvents;
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    return-object p1
.end method

.method static synthetic access$800(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->draw()V

    return-void
.end method

.method private createTextures()V
    .registers 5

    .prologue
    .line 188
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  YuvImageRenderer.createTextures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on GL thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    :goto_2d
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3d

    .line 193
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    const/16 v2, 0xde1

    invoke-static {v2}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v2

    aput v2, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 196
    :cond_3d
    new-instance v0, Lorg/webrtc/GlTextureFrameBuffer;

    const/16 v1, 0x1907

    invoke-direct {v0, v1}, Lorg/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

    .line 197
    return-void
.end method

.method private draw()V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-boolean v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z

    if-nez v1, :cond_6

    .line 297
    :cond_5
    :goto_5
    return-void

    .line 236
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 239
    iget-object v10, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrameLock:Ljava/lang/Object;

    monitor-enter v10

    .line 240
    :try_start_d
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v1, :cond_b1

    const/4 v0, 0x1

    move v7, v0

    .line 241
    :goto_13
    if-eqz v7, :cond_1f

    iget-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 242
    iput-wide v8, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    .line 245
    :cond_1f
    if-eqz v7, :cond_63

    .line 246
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget-object v0, v0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v1, v1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/webrtc/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotatedSamplingMatrix:[F

    .line 248
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget-boolean v0, v0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v0, :cond_b4

    .line 249
    sget-object v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    .line 250
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v2, v2, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v3, v3, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget-object v4, v4, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    iget-object v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget-object v5, v5, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/RendererCommon$YuvUploader;->uploadYuvData([III[I[Ljava/nio/ByteBuffer;)V

    .line 271
    :goto_51
    iget-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->copyTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->copyTimeNs:J

    .line 272
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {v0}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 275
    :cond_63
    monitor-exit v10
    :try_end_64
    .catchall {:try_start_d .. :try_end_64} :catchall_105

    .line 277
    invoke-direct {p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutMatrix()V

    .line 278
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotatedSamplingMatrix:[F

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutMatrix:[F

    invoke-static {v0, v1}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v2

    .line 281
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v1

    .line 282
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    sget-object v1, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    if-ne v0, v1, :cond_108

    .line 283
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIII)V

    .line 290
    :goto_94
    if-eqz v7, :cond_5

    .line 291
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    .line 292
    iget-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawTimeNs:J

    .line 293
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    rem-int/lit16 v0, v0, 0x12c

    if-nez v0, :cond_5

    .line 294
    invoke-direct {p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->logStatistics()V

    goto/16 :goto_5

    :cond_b1
    move v7, v0

    .line 240
    goto/16 :goto_13

    .line 253
    :cond_b4
    :try_start_b4
    sget-object v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_TEXTURE:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    .line 256
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v1

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 259
    const v0, 0x8d40

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1}, Lorg/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 260
    const-string v0, "glBindFramebuffer"

    invoke-static {v0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v1, v1, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotatedSamplingMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v5}, Lorg/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v6}, Lorg/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lorg/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIII)V

    .line 265
    invoke-static {}, Lorg/webrtc/RendererCommon;->identityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotatedSamplingMatrix:[F

    .line 268
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 269
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto/16 :goto_51

    .line 275
    :catchall_105
    move-exception v0

    monitor-exit v10
    :try_end_107
    .catchall {:try_start_b4 .. :try_end_107} :catchall_105

    throw v0

    .line 286
    :cond_108
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCopy:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1}, Lorg/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v1

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lorg/webrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIII)V

    goto/16 :goto_94
.end method

.method private logStatistics()V
    .registers 9

    .prologue
    .line 300
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    sub-long/2addr v0, v2

    .line 301
    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Frames received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Dropped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Rendered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    if-lez v2, :cond_c9

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    if-lez v2, :cond_c9

    .line 305
    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-double v4, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. FPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    long-to-double v0, v0

    div-double v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Draw time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawTimeNs:J

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " us. Copy time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->copyTimeNs:J

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " us"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_c9
    return-void
.end method

.method private declared-synchronized release()V
    .registers 3

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->surface:Landroid/opengl/GLSurfaceView;

    .line 178
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$GlDrawer;->release()V

    .line 179
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrameLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_1e

    .line 180
    :try_start_c
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v0, :cond_18

    .line 181
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {v0}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 184
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 177
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSize(III)V
    .registers 8

    .prologue
    .line 346
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    if-ne p2, v0, :cond_d

    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotationDegree:I

    if-ne p3, v0, :cond_d

    .line 366
    :goto_c
    return-void

    .line 350
    :cond_d
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_44

    .line 351
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Reporting frame resolution changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 356
    :cond_44
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_47
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". YuvImageRenderer.setSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iput p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    .line 361
    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    .line 362
    iput p3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotationDegree:I

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutProperties:Z

    .line 364
    const-string v0, "VideoRendererGui"

    const-string v2, "  YuvImageRenderer.setSize done."

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    monitor-exit v1

    goto/16 :goto_c

    :catchall_92
    move-exception v0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_47 .. :try_end_94} :catchall_92

    throw v0
.end method

.method private updateLayoutMatrix()V
    .registers 8

    .prologue
    .line 200
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_3
    iget-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutProperties:Z

    if-nez v0, :cond_9

    .line 202
    monitor-exit v1

    .line 229
    :goto_8
    return-void

    .line 206
    :cond_9
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenWidth:I

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x63

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x63

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenWidth:I

    iget-object v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    iget v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    iget-object v6, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". AdjustTextureCoords. Allowed display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotationDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Mirror: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_130

    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    int-to-float v0, v0

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 218
    :goto_ad
    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v2, v0, v3, v4}, Lorg/webrtc/RendererCommon;->getDisplaySize(Lorg/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, v5, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 222
    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Adjusted display size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-boolean v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->displayLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v0, v3}, Lorg/webrtc/RendererCommon;->getLayoutMatrix(ZFF)[F

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutMatrix:[F

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutProperties:Z

    .line 227
    const-string v0, "VideoRendererGui"

    const-string v2, "  AdjustTextureCoords done"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    monitor-exit v1

    goto/16 :goto_8

    :catchall_12d
    move-exception v0

    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_3 .. :try_end_12f} :catchall_12d

    throw v0

    .line 214
    :cond_130
    :try_start_130
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    int-to-float v0, v0

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I
    :try_end_135
    .catchall {:try_start_130 .. :try_end_135} :catchall_12d

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto/16 :goto_ad
.end method


# virtual methods
.method public declared-synchronized renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .registers 7

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->surface:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_a

    .line 372
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b4

    .line 410
    :goto_8
    monitor-exit p0

    return-void

    .line 375
    :cond_a
    :try_start_a
    # getter for: Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->access$000()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_17

    .line 376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    # setter for: Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 378
    :cond_17
    iget-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_44

    .line 379
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Reporting first rendered frame."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 382
    :cond_44
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    .line 383
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrameLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_b4

    .line 385
    :try_start_4d
    iget-boolean v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v0, :cond_b7

    .line 386
    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    if-lt v0, v2, :cond_70

    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_70

    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_b7

    .line 389
    :cond_70
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect strides "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 392
    monitor-exit v1

    goto/16 :goto_8

    .line 404
    :catchall_b1
    move-exception v0

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_4d .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    .line 370
    :catchall_b4
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_b7
    :try_start_b7
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v0, :cond_ca

    .line 398
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    .line 399
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z

    .line 401
    monitor-exit v1

    goto/16 :goto_8

    .line 403
    :cond_ca
    iput-object p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 404
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_b7 .. :try_end_cd} :catchall_b1

    .line 405
    :try_start_cd
    iget v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v1, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setSize(III)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z

    .line 409
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->surface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_de
    .catchall {:try_start_cd .. :try_end_de} :catchall_b4

    goto/16 :goto_8
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPosition(IIIILorg/webrtc/RendererCommon$ScalingType;Z)V
    .registers 12

    .prologue
    const/16 v3, 0x64

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p2, p4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_16
    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    if-ne p5, v2, :cond_28

    iget-boolean v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    if-ne p6, v2, :cond_28

    .line 333
    monitor-exit v1

    .line 343
    :goto_27
    return-void

    .line 335
    :cond_28
    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". YuvImageRenderer.setPosition: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Scaling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Mirror: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->layoutInPercentage:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    iput-object p5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    .line 340
    iput-boolean p6, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutProperties:Z

    .line 342
    monitor-exit v1

    goto :goto_27

    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_16 .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public setScreenSize(II)V
    .registers 7

    .prologue
    .line 314
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_3
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenWidth:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    if-ne p2, v0, :cond_d

    .line 316
    monitor-exit v1

    .line 324
    :goto_c
    return-void

    .line 318
    :cond_d
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". YuvImageRenderer.setScreenSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iput p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenWidth:I

    .line 321
    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateLayoutProperties:Z

    .line 323
    monitor-exit v1

    goto :goto_c

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v0
.end method
