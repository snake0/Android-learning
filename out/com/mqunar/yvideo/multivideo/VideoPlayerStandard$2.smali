.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

.field final synthetic val$dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

.field final synthetic val$outPutPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iput-object p2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->val$dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    iput-object p3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->val$outPutPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 219
    new-instance v1, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;

    invoke-direct {v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->val$dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "URL_KEY_DEFAULT"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addInputPath(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->val$outPutPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addOutputPath(Ljava/lang/String;)V

    .line 222
    const-string v0, "-y"

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;)V

    .line 223
    const-string v0, "-f"

    const-string v2, "image2"

    invoke-virtual {v1, v0, v2}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "-t"

    const-string v2, "0.001"

    invoke-virtual {v1, v0, v2}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Lcom/mqunar/yvideo/ffmpeg/FFMpegCmdHelper;->execute()Z

    move-result v0

    .line 226
    if-eqz v0, :cond_3e

    .line 227
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2$1;

    invoke-direct {v1, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2$1;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;)V

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_3e
    return-void
.end method
