.class public Lcom/baidu/tts/client/model/ModelFileBags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFileInfo(Lcom/baidu/tts/client/model/ModelFileInfo;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-nez v0, :cond_b

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public generateAbsPath(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 79
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 82
    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/model/ModelFileInfo;->generateAbsPath(Landroid/content/Context;)V

    goto :goto_a

    .line 85
    :cond_1a
    return-void
.end method

.method public getModelFileInfo(I)Lcom/baidu/tts/client/model/ModelFileInfo;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 91
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getModelFileInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/baidu/tts/client/model/ModelFileBags;->getModelFileInfo(I)Lcom/baidu/tts/client/model/ModelFileInfo;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_b

    .line 98
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public parseJson(Lorg/json/JSONArray;)V
    .registers 6

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 125
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_19

    .line 126
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 127
    new-instance v3, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelFileInfo;-><init>()V

    .line 128
    invoke-virtual {v3, v2}, Lcom/baidu/tts/client/model/ModelFileInfo;->parseJson(Lorg/json/JSONObject;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/baidu/tts/client/model/ModelFileBags;->addFileInfo(Lcom/baidu/tts/client/model/ModelFileInfo;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 131
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
    .line 62
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    :cond_8
    :goto_8
    return-void

    .line 65
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 69
    new-instance v3, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelFileInfo;-><init>()V

    .line 70
    invoke-virtual {v3, v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->setMap(Ljava/util/Map;)V

    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 73
    :cond_2a
    iput-object v1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    goto :goto_8
.end method

.method public setModelFileInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 45
    return-void
.end method

.method public toJson()Lorg/json/JSONArray;
    .registers 4

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/ModelFileBags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 111
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 114
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    .line 120
    :cond_25
    return-object v1
.end method
