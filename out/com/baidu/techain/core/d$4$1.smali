.class final Lcom/baidu/techain/core/d$4$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/core/g;

.field final synthetic b:Lcom/baidu/techain/core/ApkInfo;

.field final synthetic c:Lcom/baidu/techain/core/d$4;


# direct methods
.method constructor <init>(Lcom/baidu/techain/core/d$4;Lcom/baidu/techain/core/g;Lcom/baidu/techain/core/ApkInfo;)V
    .registers 4

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/baidu/techain/core/d$4$1;->c:Lcom/baidu/techain/core/d$4;

    iput-object p2, p0, Lcom/baidu/techain/core/d$4$1;->a:Lcom/baidu/techain/core/g;

    iput-object p3, p0, Lcom/baidu/techain/core/d$4$1;->b:Lcom/baidu/techain/core/ApkInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1457
    iget-object v0, p0, Lcom/baidu/techain/core/d$4$1;->a:Lcom/baidu/techain/core/g;

    iget-object v1, p0, Lcom/baidu/techain/core/d$4$1;->c:Lcom/baidu/techain/core/d$4;

    iget-object v1, v1, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/core/g;->b(Ljava/lang/String;)Z

    .line 1460
    iget-object v0, p0, Lcom/baidu/techain/core/d$4$1;->c:Lcom/baidu/techain/core/d$4;

    iget-object v0, v0, Lcom/baidu/techain/core/d$4;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/core/d$4$1;->c:Lcom/baidu/techain/core/d$4;

    iget-object v1, v1, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/a/a;->a(Ljava/lang/String;)V

    .line 1461
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;)V

    .line 1463
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/techain/core/d$4$1;->b:Lcom/baidu/techain/core/ApkInfo;

    iget-object v1, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "f="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1464
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1467
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1468
    invoke-static {v0}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 1469
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "d: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1472
    :cond_7c
    return-void
.end method
