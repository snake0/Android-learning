.class public final Lcom/baidu/techain/core/f;
.super Ldalvik/system/DexClassLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/baidu/techain/core/f;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    if-nez v0, :cond_a

    .line 63
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/baidu/techain/core/f;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 70
    :cond_a
    :goto_a
    return-object v0

    .line 66
    :catch_b
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_a
.end method

.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/techain/core/f;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/baidu/techain/core/f;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_26

    move-result-object v1

    .line 28
    :goto_a
    if-nez v1, :cond_53

    .line 30
    :try_start_c
    invoke-virtual {p0}, Lcom/baidu/techain/core/f;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 31
    invoke-virtual {p0}, Lcom/baidu/techain/core/f;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_48

    move-result-object v0

    .line 45
    :cond_1a
    :goto_1a
    if-eqz p2, :cond_1f

    .line 46
    invoke-virtual {p0, v0}, Lcom/baidu/techain/core/f;->resolveClass(Ljava/lang/Class;)V

    .line 48
    :cond_1f
    if-nez v0, :cond_25

    .line 50
    :try_start_21
    invoke-super {p0, p1, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_4e

    move-result-object v0

    .line 55
    :cond_25
    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    move-object v1, v0

    goto :goto_a

    .line 34
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "findBootstrapClassOrNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_47} :catch_48

    goto :goto_1a

    .line 41
    :catch_48
    move-exception v0

    move-object v0, v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1a

    .line 52
    :catch_4e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_25

    :cond_53
    move-object v0, v1

    goto :goto_1a
.end method
