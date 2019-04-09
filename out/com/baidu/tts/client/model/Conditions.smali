.class public Lcom/baidu/tts/client/model/Conditions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendDomain(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 159
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    :goto_6
    return-void

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    .line 165
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public appendGender(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 137
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    :goto_6
    return-void

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    .line 143
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public appendId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 115
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    :goto_6
    return-void

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    .line 121
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public appendLanguage(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 126
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    :goto_6
    return-void

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    .line 132
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public appendQuality(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 170
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    :goto_6
    return-void

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    .line 176
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public appendSpeaker(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 148
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    :goto_6
    return-void

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    .line 154
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public getDomainArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomains()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    return-object v0
.end method

.method public getGenderArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenderJA()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getGenders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getJSONConditions()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 239
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 241
    :try_start_5
    sget-object v0, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    sget-object v0, Lcom/baidu/tts/f/g;->ab:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    sget-object v0, Lcom/baidu/tts/f/g;->G:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    sget-object v0, Lcom/baidu/tts/f/g;->j:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    sget-object v0, Lcom/baidu/tts/f/g;->L:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    sget-object v0, Lcom/baidu/tts/f/g;->k:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    sget-object v0, Lcom/baidu/tts/f/g;->l:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_6a} :catch_6b

    .line 252
    :goto_6a
    return-object v1

    .line 248
    :catch_6b
    move-exception v0

    .line 250
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6a
.end method

.method public getLanguageArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    return-object v0
.end method

.method public getModelIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    return-object v0
.end method

.method public getModelIdsArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualitys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    return-object v0
.end method

.method public getSpeakerArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakerJA()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/tools/JsonTool;->fromSetToJson(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDomains(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    .line 98
    return-void
.end method

.method public setDomains([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 189
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->fromArrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    .line 190
    return-void
.end method

.method public setGenders(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    .line 70
    return-void
.end method

.method public setLanguages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    .line 56
    return-void
.end method

.method public setLanguages([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 193
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->fromArrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    .line 194
    return-void
.end method

.method public setModelIds(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    .line 42
    return-void
.end method

.method public setQualitys(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    .line 112
    return-void
.end method

.method public setQualitys([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 197
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->fromArrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    .line 198
    return-void
.end method

.method public setSpeakers(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    .line 84
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->b:Ljava/lang/String;

    .line 236
    return-void
.end method
