.class public Lcom/mqunar/json/JsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/mqunar/json/JsonUtils$IParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/mqunar/json/b;

    invoke-direct {v0}, Lcom/mqunar/json/b;-><init>()V

    sput-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static chooseParser(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 78
    :try_start_0
    const-string v0, "fastjson"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    new-instance v0, Lcom/mqunar/json/a;

    invoke-direct {v0}, Lcom/mqunar/json/a;-><init>()V

    sput-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    .line 88
    :goto_f
    return-void

    .line 80
    :cond_10
    const-string v0, "jackson"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 81
    new-instance v0, Lcom/mqunar/json/Jackson;

    invoke-direct {v0}, Lcom/mqunar/json/Jackson;-><init>()V

    sput-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_f

    .line 85
    :catch_20
    move-exception v0

    .line 86
    new-instance v0, Lcom/mqunar/json/JsonwireException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not found in library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/json/JsonwireException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3a
    :try_start_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no such parser found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_20
.end method

.method public static fromBean(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
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
    .line 109
    sget-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p0}, Lcom/mqunar/json/JsonUtils$IParser;->fromBean(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
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
    .line 105
    sget-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p0}, Lcom/mqunar/json/JsonUtils$IParser;->fromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getParserName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/json/JsonUtils$IParser;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/json/JsonUtils$IParser;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    sget-object v0, Lcom/mqunar/json/JsonUtils;->a:Lcom/mqunar/json/JsonUtils$IParser;

    invoke-interface {v0, p0}, Lcom/mqunar/json/JsonUtils$IParser;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
