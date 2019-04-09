.class public final Lcom/baidu/techain/core/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    .line 18
    iput-object p3, p0, Lcom/baidu/techain/core/h;->b:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/baidu/techain/core/h;->c:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/baidu/techain/core/h;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1c

    :try_start_4
    iget-object v2, p1, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p1, Lcom/baidu/techain/core/h;->b:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p1, Lcom/baidu/techain/core/h;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    move v0, v1

    .line 42
    :cond_1d
    :goto_1d
    return v0

    .line 29
    :cond_1e
    iget-object v2, p1, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/baidu/techain/core/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/techain/core/h;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/baidu/techain/core/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/techain/core/h;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_3c
    move v0, v1

    .line 32
    goto :goto_1d

    .line 35
    :cond_3e
    iget-object v2, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    if-eqz v2, :cond_1d

    .line 38
    iget-object v2, p0, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    iget-object v3, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4a} :catch_4e

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_1d

    .line 41
    :catch_4e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v1

    .line 42
    goto :goto_1d
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginloaderIntentFilter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/core/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/core/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    .line 52
    :goto_35
    return-object v0

    :catch_36
    move-exception v0

    const-string v0, ""

    goto :goto_35
.end method
