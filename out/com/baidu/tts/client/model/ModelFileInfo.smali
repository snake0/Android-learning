.class public Lcom/baidu/tts/client/model/ModelFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateAbsPath(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/tts/tools/ResourceTools;->getModelFileAbsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public getAbsPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 143
    sget-object v0, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/baidu/tts/f/g;->o:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/baidu/tts/f/g;->e:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->f:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setAbsPath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setLength(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    :cond_8
    :goto_8
    return-void

    .line 119
    :cond_9
    sget-object v0, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/baidu/tts/f/g;->o:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    goto :goto_8
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setServerid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->f:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    :try_start_5
    sget-object v0, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    sget-object v0, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    sget-object v0, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    sget-object v0, Lcom/baidu/tts/f/g;->o:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    sget-object v0, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 139
    :goto_3c
    return-object v1

    .line 135
    :catch_3d
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3c
.end method
