.class Lcom/mqunar/yvideo/YVideoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/YVideoManager;

.field final synthetic val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

.field final synthetic val$needLog:Z

.field final synthetic val$outPutPath:Ljava/lang/String;

.field final synthetic val$srcPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/YVideoManager;Ljava/lang/String;Ljava/lang/String;Lcom/mqunar/yvideo/CompressCallBack;Z)V
    .registers 6

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mqunar/yvideo/YVideoManager$1;->this$0:Lcom/mqunar/yvideo/YVideoManager;

    iput-object p2, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$srcPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$outPutPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    iput-boolean p5, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$needLog:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/high16 v7, 0x44200000    # 640.0f

    const/16 v1, 0x280

    .line 43
    :try_start_4
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$srcPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$outPutPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 44
    :cond_14
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    if-eqz v0, :cond_1f

    .line 45
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    const-string v2, "\u8f93\u5165\u8f93\u51fa\u8def\u5f84\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-interface {v0, v2}, Lcom/mqunar/yvideo/CompressCallBack;->onError(Ljava/lang/String;)V

    .line 49
    :cond_1f
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->this$0:Lcom/mqunar/yvideo/YVideoManager;

    iget-object v2, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$srcPath:Ljava/lang/String;

    # invokes: Lcom/mqunar/yvideo/YVideoManager;->canCompress(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/mqunar/yvideo/YVideoManager;->access$000(Lcom/mqunar/yvideo/YVideoManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 50
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    if-eqz v0, :cond_34

    .line 51
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    const-string v1, "\u8be5\u89c6\u9891\u683c\u5f0f\u4e0d\u652f\u6301\u538b\u7f29"

    invoke-interface {v0, v1}, Lcom/mqunar/yvideo/CompressCallBack;->onError(Ljava/lang/String;)V

    .line 162
    :cond_34
    :goto_34
    return-void

    .line 56
    :cond_35
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$srcPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 58
    const/16 v0, 0x13

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    const/16 v0, 0x12

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    const/4 v0, 0x0

    .line 61
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-le v4, v6, :cond_18f

    .line 62
    const/16 v0, 0x18

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 64
    :goto_59
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    if-le v2, v0, :cond_110

    const/4 v3, 0x1

    .line 73
    :goto_64
    if-ge v2, v1, :cond_68

    if-lt v0, v1, :cond_18c

    .line 74
    :cond_68
    if-eqz v3, :cond_113

    .line 75
    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-double v2, v2

    .line 77
    int-to-double v5, v0

    div-double v2, v5, v2

    double-to-int v0, v2

    .line 87
    :goto_71
    rem-int/lit8 v2, v1, 0x2

    sub-int/2addr v1, v2

    .line 88
    rem-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    .line 90
    new-instance v2, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;

    invoke-direct {v2}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;-><init>()V

    .line 91
    iget-object v3, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$srcPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addInputPath(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$outPutPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addOutputPath(Ljava/lang/String;)V

    .line 93
    iget-boolean v3, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$needLog:Z

    if-eqz v3, :cond_8d

    .line 94
    invoke-virtual {v2}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->enableLog()V

    .line 101
    :cond_8d
    const-string v3, "-s"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "-threads"

    const-string v1, "5"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-nez v4, :cond_11e

    .line 119
    :cond_b2
    :goto_b2
    const-string v0, "-r"

    const-string v1, "24"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "-profile:v"

    const-string v1, "baseline"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "-c:a"

    const-string v1, "copy"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-nez v4, :cond_150

    .line 137
    :cond_c9
    :goto_c9
    const-string v0, "-c:v"

    const-string v1, "libx264"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "-preset"

    const-string v1, "ultrafast"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "-crf"

    const-string v1, "23"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "-y"

    invoke-virtual {v2, v0}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;)V

    .line 145
    const-string v0, "-tune:v"

    const-string v1, "fastdecode"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->execute()Z

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    if-eqz v1, :cond_34

    .line 150
    if-eqz v0, :cond_183

    .line 151
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    iget-object v1, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$outPutPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mqunar/yvideo/CompressCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_fb} :catch_fd

    goto/16 :goto_34

    .line 156
    :catch_fd
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    iget-object v1, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    if-eqz v1, :cond_34

    .line 159
    iget-object v1, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/yvideo/CompressCallBack;->onError(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 70
    :cond_110
    const/4 v3, 0x0

    goto/16 :goto_64

    .line 79
    :cond_113
    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-double v5, v0

    .line 81
    int-to-double v2, v2

    div-double/2addr v2, v5

    double-to-int v0, v2

    move v8, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_71

    .line 110
    :cond_11e
    :try_start_11e
    const-string v0, "90"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 111
    const-string v0, "-vf"

    const-string v1, "transpose=2"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    .line 112
    :cond_12e
    const-string v0, "180"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 113
    const-string v0, "-vf"

    const-string v1, "vflip,hflip"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b2

    .line 114
    :cond_13f
    const-string v0, "270"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 115
    const-string v0, "-vf"

    const-string v1, "transpose=1"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b2

    .line 129
    :cond_150
    const-string v0, "90"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 130
    const-string v0, "-metadata:s:v:0"

    const-string v1, "rotate=90"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 131
    :cond_161
    const-string v0, "180"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 132
    const-string v0, "-metadata:s:v:0"

    const-string v1, "rotate=180"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 133
    :cond_172
    const-string v0, "270"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 134
    const-string v0, "-metadata:s:v:0"

    const-string v1, "rotate=270"

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 153
    :cond_183
    iget-object v0, p0, Lcom/mqunar/yvideo/YVideoManager$1;->val$callBack:Lcom/mqunar/yvideo/CompressCallBack;

    const-string v1, "\u538b\u7f29\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/mqunar/yvideo/CompressCallBack;->onError(Ljava/lang/String;)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_18a} :catch_fd

    goto/16 :goto_34

    :cond_18c
    move v1, v2

    goto/16 :goto_71

    :cond_18f
    move-object v4, v0

    goto/16 :goto_59
.end method
