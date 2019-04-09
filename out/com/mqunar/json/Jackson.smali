.class public Lcom/mqunar/json/Jackson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/json/JsonUtils$IParser;


# instance fields
.field private a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/mqunar/json/Jackson;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    iget-object v0, p0, Lcom/mqunar/json/Jackson;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 27
    iget-object v0, p0, Lcom/mqunar/json/Jackson;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 28
    return-void
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
    invoke-virtual {p0, p1}, Lcom/mqunar/json/Jackson;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/json/Jackson;->fromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
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
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/json/Jackson;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_a
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_16

    .line 66
    :goto_a
    return-object v0

    .line 59
    :catch_b
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    .line 66
    :goto_f
    const/4 v0, 0x0

    goto :goto_a

    .line 61
    :catch_11
    move-exception v0

    .line 62
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_f

    .line 63
    :catch_16
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f
.end method

.method public parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
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
    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "do it later"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/json/Jackson;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 37
    :goto_6
    return-object v0

    .line 34
    :catch_7
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/json/Jackson;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 52
    :goto_6
    return-object v0

    .line 49
    :catch_7
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    .line 52
    const/4 v0, 0x0

    goto :goto_6
.end method
