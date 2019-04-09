.class public final Lcom/baidu/techain/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/techain/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .registers 7

    .prologue
    .line 16
    :try_start_0
    invoke-static {p2}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 36
    :cond_6
    :goto_6
    return-void

    .line 19
    :cond_7
    invoke-static {p3}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 20
    invoke-static {p2, p3}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 22
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 24
    sget-object v0, Lcom/baidu/techain/c;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    new-instance v0, Lcom/baidu/techain/d;

    .line 29
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/baidu/techain/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/baidu/techain/d;->startWatching()V

    .line 32
    sget-object v1, Lcom/baidu/techain/c;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_6

    .line 34
    :catch_4d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6
.end method

.method public static a(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 41
    if-nez p0, :cond_3

    .line 56
    :cond_2
    :goto_2
    return-void

    .line 45
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 47
    sget-object v0, Lcom/baidu/techain/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/d;

    .line 48
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/baidu/techain/d;->stopWatching()V

    .line 50
    sget-object v1, Lcom/baidu/techain/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Lcom/baidu/techain/d;->a()Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_2

    .line 54
    :catch_32
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2
.end method
