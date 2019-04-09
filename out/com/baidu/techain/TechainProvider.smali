.class public Lcom/baidu/techain/TechainProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/baidu/techain/TechainProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 22
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    .prologue
    .line 29
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 31
    :try_start_3
    const-string v0, "p"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 32
    invoke-virtual {p0}, Lcom/baidu/techain/TechainProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1048
    invoke-static {}, Lcom/baidu/techain/b/r;->a()Lcom/baidu/techain/b/r;

    move-result-object v1

    new-instance v2, Lcom/baidu/techain/TechainProvider$1;

    invoke-direct {v2, p5, v0}, Lcom/baidu/techain/TechainProvider$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/baidu/techain/b/r;->a(Ljava/lang/Runnable;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1b} :catch_1d

    .line 37
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0

    .line 35
    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1b
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
