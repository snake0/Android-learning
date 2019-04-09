.class Lcom/mqunar/splash/AdSplash$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/AdSplash;

.field final synthetic val$splashActivity:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/AdSplash;Lcom/mqunar/splash/SplashActivity;)V
    .registers 3

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    iput-object p2, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mqunar/splash/AdSplash;->access$400(Lcom/mqunar/splash/AdSplash;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_82

    .line 200
    :try_start_8
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeController;->getAnimatable()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_7d

    .line 205
    :goto_15
    new-instance v0, Lcom/mqunar/tools/log/UELog;

    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v0, v1}, Lcom/mqunar/tools/log/UELog;-><init>(Landroid/content/Context;)V

    const-string v1, "AdSplash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickAdGif_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/mqunar/splash/AdSplash;->access$000(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",activityname_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mqunar/splash/AdSplash;->access$100(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/tools/log/UELog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_4a
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashActivity;->removeGoHomeMessage()V

    .line 211
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-static {v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->clickUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/mqunar/splash/AdSplash;->access$500(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 213
    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-static {v1, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    :cond_6c
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->clickUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/mqunar/splash/AdSplash;->access$500(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashActivity;->finish()V

    .line 217
    return-void

    .line 201
    :catch_7d
    move-exception v0

    .line 203
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 207
    :cond_82
    new-instance v0, Lcom/mqunar/tools/log/UELog;

    iget-object v1, p0, Lcom/mqunar/splash/AdSplash$3;->val$splashActivity:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v0, v1}, Lcom/mqunar/tools/log/UELog;-><init>(Landroid/content/Context;)V

    const-string v1, "AdSplash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickAd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/mqunar/splash/AdSplash;->access$300(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",activityname_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash$3;->this$0:Lcom/mqunar/splash/AdSplash;

    # getter for: Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mqunar/splash/AdSplash;->access$100(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/tools/log/UELog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method
