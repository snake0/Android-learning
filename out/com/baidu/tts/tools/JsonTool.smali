.class public Lcom/baidu/tts/tools/JsonTool;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 15
    if-eqz p0, :cond_8

    .line 16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 18
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getStringarray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 23
    if-eqz p0, :cond_14

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 25
    new-array v0, v2, [Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_15

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    aput-object v3, v0, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 32
    :cond_14
    const/4 v0, 0x0

    :cond_15
    return-object v0
.end method
