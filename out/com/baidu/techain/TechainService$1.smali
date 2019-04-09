.class final Lcom/baidu/techain/TechainService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/techain/TechainService;


# direct methods
.method constructor <init>(Lcom/baidu/techain/TechainService;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    iput-object p2, p0, Lcom/baidu/techain/TechainService$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/baidu/techain/TechainService$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/techain/TechainService$1;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/techain/TechainService$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 38
    iget-object v2, p0, Lcom/baidu/techain/TechainService$1;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 39
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-static {v0}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;)V

    .line 74
    :goto_2e
    return-void

    .line 43
    :cond_2f
    iget-object v2, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-virtual {v2}, Lcom/baidu/techain/TechainService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/techain/TechainService$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 45
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    iget-object v1, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-virtual {v1}, Lcom/baidu/techain/TechainService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/techain/TechainService$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;Ljava/lang/ClassLoader;Landroid/content/Intent;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-static {v0}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 71
    :catch_50
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 72
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-static {v0}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;)V

    goto :goto_2e

    .line 50
    :cond_5a
    :try_start_5a
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v2

    .line 51
    if-nez v2, :cond_66

    .line 52
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-static {v0}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;)V

    goto :goto_2e

    .line 56
    :cond_66
    iget-object v3, p0, Lcom/baidu/techain/TechainService$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 58
    if-nez v2, :cond_81

    .line 59
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-static {v0}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;)V

    goto :goto_2e

    .line 63
    :cond_81
    iget-object v3, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    iget-object v2, v2, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/baidu/techain/TechainService$1;->a:Landroid/content/Intent;

    invoke-static {v3, v2, v4}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;Ljava/lang/ClassLoader;Landroid/content/Intent;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v0, v2, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/TechainService$1;->a:Landroid/content/Intent;

    .line 67
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/TechainService$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 69
    iget-object v0, p0, Lcom/baidu/techain/TechainService$1;->c:Lcom/baidu/techain/TechainService;

    invoke-static {v0}, Lcom/baidu/techain/TechainService;->a(Lcom/baidu/techain/TechainService;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_ba} :catch_50

    goto/16 :goto_2e
.end method
