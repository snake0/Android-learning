.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;

    iput-object p2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    return-void
.end method
