.class Lcom/mqunar/qutui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/mqunar/qutui/k;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/k;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mqunar/qutui/m;->c:Lcom/mqunar/qutui/k;

    iput-object p2, p0, Lcom/mqunar/qutui/m;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/mqunar/qutui/m;->c:Lcom/mqunar/qutui/k;

    invoke-static {v0}, Lcom/mqunar/qutui/k;->a(Lcom/mqunar/qutui/k;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 205
    iget-object v0, p0, Lcom/mqunar/qutui/m;->c:Lcom/mqunar/qutui/k;

    invoke-virtual {v0}, Lcom/mqunar/qutui/k;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    move v4, v3

    :cond_1c
    :goto_1c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "^\\d+$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "localLog:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v1, v10}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v10, Lcom/mqunar/qutui/model/LogModel;

    invoke-static {v1, v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/qutui/model/LogModel;

    .line 212
    const-wide/32 v10, 0x927c0

    add-long/2addr v10, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_78

    if-nez v1, :cond_1a0

    .line 213
    :cond_78
    if-nez v1, :cond_1dd

    .line 214
    new-instance v1, Lcom/mqunar/qutui/model/LogModel;

    invoke-direct {v1}, Lcom/mqunar/qutui/model/LogModel;-><init>()V

    .line 215
    iput-wide v5, v1, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    move-object v5, v1

    .line 217
    :goto_82
    iget-object v1, p0, Lcom/mqunar/qutui/m;->a:Ljava/util/Map;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/mqunar/qutui/m;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_95

    .line 218
    iget-object v1, v5, Lcom/mqunar/qutui/model/LogModel;->installMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mqunar/qutui/m;->a:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 220
    :cond_95
    iget-object v1, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_119

    .line 221
    iget-object v1, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_ab
    :goto_ab
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v6, v3

    .line 223
    :goto_b8
    iget-object v2, v5, Lcom/mqunar/qutui/model/LogModel;->callDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_1da

    .line 224
    iget-object v2, v5, Lcom/mqunar/qutui/model/LogModel;->callDatas:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget-object v2, v2, Lcom/mqunar/qutui/model/LogModel$CallData;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 225
    iget-object v2, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_106

    .line 226
    iget-object v2, v5, Lcom/mqunar/qutui/model/LogModel;->callDatas:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget v6, v2, Lcom/mqunar/qutui/model/LogModel$CallData;->effectiveCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/mqunar/qutui/model/LogModel$CallData;->effectiveCount:I

    :goto_ec
    move v2, v7

    .line 234
    :goto_ed
    if-nez v2, :cond_ab

    .line 235
    iget-object v6, v5, Lcom/mqunar/qutui/model/LogModel;->callDatas:Ljava/util/List;

    new-instance v11, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget-object v2, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v11, v1, v2}, Lcom/mqunar/qutui/model/LogModel$CallData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 228
    :cond_106
    iget-object v2, v5, Lcom/mqunar/qutui/model/LogModel;->callDatas:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget v6, v2, Lcom/mqunar/qutui/model/LogModel$CallData;->invalidCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/mqunar/qutui/model/LogModel$CallData;->invalidCount:I

    goto :goto_ec

    .line 223
    :cond_115
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_b8

    .line 239
    :cond_119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v5, Lcom/mqunar/qutui/model/LogModel;->endTime:J

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v7

    move v1, v4

    .line 245
    :goto_12e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needUpload = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    if-eqz v1, :cond_1a5

    if-eqz v0, :cond_1a5

    move v4, v1

    .line 248
    :goto_14b
    if-nez v0, :cond_1c9

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    new-instance v5, Lcom/mqunar/qutui/model/LogModel;

    invoke-direct {v5}, Lcom/mqunar/qutui/model/LogModel;-><init>()V

    .line 251
    iput-wide v2, v5, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    .line 252
    iget-object v0, p0, Lcom/mqunar/qutui/m;->a:Ljava/util/Map;

    if-eqz v0, :cond_163

    .line 253
    iget-object v0, v5, Lcom/mqunar/qutui/model/LogModel;->installMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mqunar/qutui/m;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 255
    :cond_163
    iget-object v0, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a9

    .line 256
    iget-object v0, p0, Lcom/mqunar/qutui/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_179
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    iget-object v7, v5, Lcom/mqunar/qutui/model/LogModel;->callDatas:Ljava/util/List;

    new-instance v9, Lcom/mqunar/qutui/model/LogModel$CallData;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v9, v1, v0}, Lcom/mqunar/qutui/model/LogModel$CallData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_179

    .line 242
    :cond_1a0
    if-nez v4, :cond_1d6

    move v0, v2

    move v1, v7

    .line 243
    goto :goto_12e

    :cond_1a5
    move v2, v0

    move v4, v1

    .line 247
    goto/16 :goto_1c

    .line 260
    :cond_1a9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/mqunar/qutui/model/LogModel;->endTime:J

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    :cond_1c9
    iget-object v0, p0, Lcom/mqunar/qutui/m;->c:Lcom/mqunar/qutui/k;

    invoke-static {v0, v8}, Lcom/mqunar/qutui/k;->a(Lcom/mqunar/qutui/k;Landroid/content/SharedPreferences$Editor;)V

    .line 264
    if-eqz v4, :cond_1d5

    .line 265
    iget-object v0, p0, Lcom/mqunar/qutui/m;->c:Lcom/mqunar/qutui/k;

    invoke-static {v0}, Lcom/mqunar/qutui/k;->b(Lcom/mqunar/qutui/k;)V

    .line 267
    :cond_1d5
    return-void

    :cond_1d6
    move v0, v2

    move v1, v4

    goto/16 :goto_12e

    :cond_1da
    move v2, v3

    goto/16 :goto_ed

    :cond_1dd
    move-object v5, v1

    goto/16 :goto_82

    :cond_1e0
    move v0, v2

    goto/16 :goto_14b
.end method
