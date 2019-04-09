.class public final Lcom/baidu/techain/rp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 13
    const-string v0, ""

    .line 15
    :try_start_2
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1311
    iget-object v2, v1, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v3, "rpiiem"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 18
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1315
    iget-object v2, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v3, "rpiiem"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1316
    iget-object v1, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 26
    :cond_2d
    :goto_2d
    return-object v0

    .line 24
    :catch_2e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2d
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 30
    const-string v0, ""

    .line 32
    :try_start_2
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1320
    iget-object v2, v1, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v3, "rpandid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 35
    invoke-static {p0}, Lcom/baidu/techain/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1324
    iget-object v2, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v3, "rpandid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1325
    iget-object v1, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 43
    :cond_2d
    :goto_2d
    return-object v0

    .line 41
    :catch_2e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2d
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 47
    const-string v0, ""

    .line 49
    :try_start_2
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1329
    iget-object v2, v1, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v3, "rpmacadd"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 52
    invoke-static {}, Lcom/baidu/techain/b/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1333
    iget-object v2, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v3, "rpmacadd"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1334
    iget-object v1, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 60
    :cond_2d
    :goto_2d
    return-object v0

    .line 58
    :catch_2e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2d
.end method
