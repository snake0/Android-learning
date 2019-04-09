.class Lcom/mqunar/splash/AdSplash$2;
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
    .line 180
    iput-object p1, p0, Lcom/mqunar/splash/AdSplash$2;->this$0:Lcom/mqunar/splash/AdSplash;

    iput-object p2, p0, Lcom/mqunar/splash/AdSplash$2;->val$tv:Landroid/view/View;

    iput-object p3, p0, Lcom/mqunar/splash/AdSplash$2;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .registers 8
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/BaseControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 184
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$2;->val$tv:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$2;->val$tv:Landroid/view/View;

    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$2;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/mqunar/splash/AdSplash;->access$300(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    new-instance v0, Lcom/mqunar/tools/log/UELog;

    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$2;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v0, v1}, Lcom/mqunar/tools/log/UELog;-><init>(Landroid/content/Context;)V

    const-string v1, "AdSplash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$2;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/mqunar/splash/AdSplash;->access$300(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",activityname_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$2;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mqunar/splash/AdSplash;->access$100(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/tools/log/UELog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .registers 4

    .prologue
    .line 180
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/splash/AdSplash$2;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
