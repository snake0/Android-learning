.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber",
        "<",
        "Lcom/facebook/common/references/CloseableReference",
        "<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 245
    if-eqz v0, :cond_27

    .line 247
    :try_start_8
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 249
    instance-of v2, v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz v2, :cond_28

    .line 250
    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v2, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;

    invoke-direct {v3, p0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 261
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 264
    :cond_27
    :goto_27
    return-void

    .line 261
    :cond_28
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    goto :goto_27

    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v1
.end method
