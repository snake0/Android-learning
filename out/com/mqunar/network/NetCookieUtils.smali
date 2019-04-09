.class public Lcom/mqunar/network/NetCookieUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .registers 8

    .prologue
    .line 78
    if-eqz p0, :cond_38

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    if-eqz p2, :cond_38

    .line 79
    const-string v0, "Set-Cookie"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_38

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 82
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 84
    array-length v3, v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v3, :cond_31

    aget-object v4, v1, v0

    .line 85
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 87
    :cond_31
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_39

    .line 92
    :cond_38
    :goto_38
    return-void

    .line 90
    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 28
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    if-eqz p2, :cond_59

    .line 29
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 30
    invoke-static {p0}, Lcom/mqunar/network/NetCookieUtils;->newInstanceIfNeed(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "Cookie"

    invoke-interface {p2, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 36
    if-eqz v2, :cond_30

    .line 38
    array-length v4, v2

    :goto_22
    if-ge v0, v4, :cond_30

    aget-object v5, v2, v0

    .line 39
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mqunar/network/NetCookieUtils;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 42
    :cond_30
    invoke-static {v3, v1}, Lcom/mqunar/network/NetCookieUtils;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 56
    :catch_58
    move-exception v0

    .line 58
    :cond_59
    :goto_59
    return-void

    .line 49
    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "Cookie"

    invoke-interface {p2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 53
    const-string v1, "Cookie"

    invoke-interface {p2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_73} :catch_58

    goto :goto_59
.end method

.method private static a(Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 62
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 63
    array-length v2, v1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 67
    :cond_1c
    return-void
.end method

.method public static clearSessionCookie(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 100
    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 101
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 105
    :goto_a
    return-void

    .line 103
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static newInstanceIfNeed(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 121
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_11

    move-result-object v0

    .line 128
    :goto_5
    if-nez v0, :cond_e

    .line 131
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_13

    .line 137
    :cond_e
    :goto_e
    return-void

    .line 122
    :catch_f
    move-exception v1

    goto :goto_5

    .line 124
    :catch_11
    move-exception v1

    goto :goto_5

    .line 132
    :catch_13
    move-exception v0

    goto :goto_e
.end method
