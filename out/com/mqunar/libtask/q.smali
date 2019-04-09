.class Lcom/mqunar/libtask/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/mqunar/network/NetRequest;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 32
    :try_start_1
    iget-object v0, p1, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    const-string v2, "Pitcher-Url"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 33
    iget-object v0, p1, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    const-string v2, "Pitcher-Url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_6a

    .line 35
    :try_start_15
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    const-string v2, "Pitcher-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v2, "hotdog"

    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    const-string v3, "Pitcher-Type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 38
    const-string v2, "qrt"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_53
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 42
    invoke-static {p0}, Lcom/mqunar/libtask/q;->a(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 45
    const-string v2, "Cookie"

    invoke-virtual {p1, v2, v1}, Lcom/mqunar/network/NetRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_69} :catch_6d

    .line 50
    :cond_69
    :goto_69
    return-object v0

    .line 48
    :catch_6a
    move-exception v0

    move-object v0, v1

    goto :goto_69

    :catch_6d
    move-exception v1

    goto :goto_69

    :cond_6f
    move-object v0, v1

    goto :goto_69
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 90
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_f

    move-result-object v0

    .line 97
    :goto_5
    if-nez v0, :cond_e

    .line 100
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_14

    .line 106
    :cond_e
    :goto_e
    return-void

    .line 93
    :catch_f
    move-exception v1

    .line 94
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 101
    :catch_14
    move-exception v0

    .line 103
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 91
    :catch_19
    move-exception v1

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_31

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    if-eqz p2, :cond_31

    .line 56
    const-string v0, "set-cookie"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_31

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 59
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 61
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 62
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2a
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 74
    :cond_31
    :goto_31
    return-void

    .line 63
    :cond_32
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_2a

    .line 64
    check-cast v0, Ljava/util/List;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_3c

    .line 72
    :catch_4c
    move-exception v0

    goto :goto_31
.end method
