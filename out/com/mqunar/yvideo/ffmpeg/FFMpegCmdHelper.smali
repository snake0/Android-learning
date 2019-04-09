.class public Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputPath:Ljava/lang/String;

.field private log:Z

.field private outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->log:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    const-string v1, "ffmpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public addInputPath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->inputPath:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public addOutputPath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->outputPath:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public addParam(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public enableLog()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->log:Z

    .line 44
    return-void
.end method

.method public execute()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->outputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v2

    .line 71
    :goto_13
    return v0

    .line 52
    :cond_14
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    const-string v3, "-i"

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->inputPath:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    iget-object v3, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->outputPath:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-boolean v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->log:Z

    if-eqz v0, :cond_35

    .line 60
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    const-string v3, "-d"

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    :cond_35
    iget-object v0, p0, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->cmd:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmd;->ffmpegRun([Ljava/lang/String;)I

    move-result v0

    .line 71
    if-nez v0, :cond_47

    move v0, v1

    goto :goto_13

    :cond_47
    move v0, v2

    goto :goto_13
.end method
