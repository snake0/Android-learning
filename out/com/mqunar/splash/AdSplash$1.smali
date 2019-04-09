.class Lcom/mqunar/splash/AdSplash$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener",
        "<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/AdSplash;

.field final synthetic val$splashActivity:Lcom/mqunar/splash/SplashActivity;

.field final synthetic val$tv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/AdSplash;Landroid/view/View;Lcom/mqunar/splash/SplashActivity;)V
    .registers 4

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    iput-object p2, p0, Lcom/mqunar/splash/AdSplash$1;->val$tv:Landroid/view/View;

    iput-object p3, p0, Lcom/mqunar/splash/AdSplash$1;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/BaseControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const-string v0, "yjytest"

    const-string v1, "getImage fail"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mqunar/splash/AdSplash;->access$200(Lcom/mqunar/splash/AdSplash;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mqunar/splash/AdSplash;->access$200(Lcom/mqunar/splash/AdSplash;)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 151
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/mqunar/splash/AdSplash;->access$300(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    new-instance v2, Lcom/mqunar/splash/AdSplash$1$1;

    invoke-direct {v2, p0}, Lcom/mqunar/splash/AdSplash$1$1;-><init>(Lcom/mqunar/splash/AdSplash$1;)V

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 164
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .registers 11
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 127
    const-string v1, "yjytest"

    const-string v2, "onFinalImageSet"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-eqz p3, :cond_6f

    .line 131
    :try_start_c
    instance-of v1, p3, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    if-eqz v1, :cond_23

    .line 132
    move-object v0, p3

    check-cast v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    move-object v1, v0

    .line 133
    new-instance v2, Lcom/mqunar/splash/AdSplash$LoopCountModifyingBackend;

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/mqunar/splash/AdSplash$LoopCountModifyingBackend;-><init>(Lcom/mqunar/splash/AdSplash;Lcom/facebook/fresco/animation/backend/AnimationBackend;I)V

    invoke-virtual {v1, v2}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_23} :catch_70

    .line 138
    :cond_23
    :goto_23
    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 139
    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$1;->val$tv:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$1;->val$tv:Landroid/view/View;

    iget-object v2, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/mqunar/splash/AdSplash;->access$000(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lcom/mqunar/tools/log/UELog;

    iget-object v2, p0, Lcom/mqunar/splash/AdSplash$1;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v1, v2}, Lcom/mqunar/tools/log/UELog;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/mqunar/splash/AdSplash;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAdGif_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/mqunar/splash/AdSplash;->access$000(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",activityname_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mqunar/splash/AdSplash$1;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mqunar/splash/AdSplash;->access$100(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/tools/log/UELog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_6f
    return-void

    .line 135
    :catch_70
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .registers 4

    .prologue
    .line 124
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/splash/AdSplash$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
