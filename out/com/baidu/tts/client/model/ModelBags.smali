.class public Lcom/baidu/tts/client/model/ModelBags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addModelInfo(Lcom/baidu/tts/client/model/ModelInfo;)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    .line 56
    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public getModelInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public parseJson(Lorg/json/JSONArray;)V
    .registers 6

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 94
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_19

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/baidu/tts/client/model/ModelInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelInfo;-><init>()V

    .line 97
    invoke-virtual {v3, v2}, Lcom/baidu/tts/client/model/ModelInfo;->parseJson(Lorg/json/JSONObject;)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/baidu/tts/client/model/ModelBags;->addModelInfo(Lcom/baidu/tts/client/model/ModelInfo;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 100
    :cond_19
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p1, :cond_25

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 65
    new-instance v3, Lcom/baidu/tts/client/model/ModelInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelInfo;-><init>()V

    .line 66
    invoke-virtual {v3, v0}, Lcom/baidu/tts/client/model/ModelInfo;->setMap(Ljava/util/Map;)V

    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 69
    :cond_23
    iput-object v1, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    .line 71
    :cond_25
    return-void
.end method

.method public setModelInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 36
    return-void
.end method

.method public toJson()Lorg/json/JSONArray;
    .registers 4

    .prologue
    .line 78
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 80
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelInfo;

    .line 83
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    .line 89
    :cond_25
    return-object v1
.end method
