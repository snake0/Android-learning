.class Lcom/mqunar/json/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/json/JsonUtils$IParser;


# instance fields
.field a:Lcom/mqunar/json/JsonUtils$IParser;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_3
    const-string v0, "com.alibaba.fastjson.JSON"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/mqunar/json/a;

    invoke-direct {v0}, Lcom/mqunar/json/a;-><init>()V

    iput-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    .line 49
    :cond_f
    :goto_f
    return-void

    .line 34
    :catch_10
    move-exception v0

    .line 39
    :try_start_11
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 41
    new-instance v0, Lcom/mqunar/json/Jackson;

    invoke-direct {v0}, Lcom/mqunar/json/Jackson;-><init>()V

    iput-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 43
    :catch_1e
    move-exception v0

    .line 46
    iget-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;

    if-nez v0, :cond_f

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No json found"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fromBean(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p1}, Lcom/mqunar/json/JsonUtils$IParser;->fromBean(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p1}, Lcom/mqunar/json/JsonUtils$IParser;->fromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/json/JsonUtils$IParser;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/json/JsonUtils$IParser;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/json/b;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p1}, Lcom/mqunar/json/JsonUtils$IParser;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
