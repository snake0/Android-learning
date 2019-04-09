.class Lcom/mqunar/qutui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/mqunar/qutui/k;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/k;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mqunar/qutui/n;->c:Lcom/mqunar/qutui/k;

    iput-object p2, p0, Lcom/mqunar/qutui/n;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mqunar/qutui/n;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Lcom/mqunar/qutui/n;->c:Lcom/mqunar/qutui/k;

    invoke-static {v0}, Lcom/mqunar/qutui/k;->a(Lcom/mqunar/qutui/k;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 281
    iget-object v0, p0, Lcom/mqunar/qutui/n;->c:Lcom/mqunar/qutui/k;

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

    if-eqz v0, :cond_15e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "^\\d+$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 286
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

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v10, Lcom/mqunar/qutui/model/LogModel;

    invoke-static {v1, v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/qutui/model/LogModel;

    .line 288
    const-wide/32 v10, 0x927c0

    add-long/2addr v10, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_78

    if-nez v1, :cond_14e

    .line 289
    :cond_78
    if-nez v1, :cond_15b

    .line 290
    new-instance v1, Lcom/mqunar/qutui/model/LogModel;

    invoke-direct {v1}, Lcom/mqunar/qutui/model/LogModel;-><init>()V

    .line 291
    iput-wide v5, v1, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    move-object v5, v1

    :goto_82
    move v6, v3

    .line 293
    :goto_83
    iget-object v1, v5, Lcom/mqunar/qutui/model/LogModel;->calledDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_b0

    .line 294
    iget-object v1, v5, Lcom/mqunar/qutui/model/LogModel;->calledDatas:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget-object v1, v1, Lcom/mqunar/qutui/model/LogModel$CallData;->key:Ljava/lang/String;

    iget-object v10, p0, Lcom/mqunar/qutui/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 295
    iget-boolean v1, p0, Lcom/mqunar/qutui/n;->b:Z

    if-eqz v1, :cond_139

    .line 296
    iget-object v1, v5, Lcom/mqunar/qutui/model/LogModel;->calledDatas:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget v2, v1, Lcom/mqunar/qutui/model/LogModel$CallData;->effectiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/mqunar/qutui/model/LogModel$CallData;->effectiveCount:I

    :goto_af
    move v2, v7

    .line 304
    :cond_b0
    if-nez v2, :cond_c0

    .line 305
    iget-object v1, v5, Lcom/mqunar/qutui/model/LogModel;->calledDatas:Ljava/util/List;

    new-instance v2, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget-object v6, p0, Lcom/mqunar/qutui/n;->a:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/mqunar/qutui/n;->b:Z

    invoke-direct {v2, v6, v10}, Lcom/mqunar/qutui/model/LogModel$CallData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_c0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v5, Lcom/mqunar/qutui/model/LogModel;->endTime:J

    .line 308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v7

    move v1, v4

    .line 313
    :goto_d5
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

    .line 314
    if-eqz v1, :cond_153

    if-eqz v0, :cond_153

    .line 316
    :goto_f1
    if-nez v0, :cond_12c

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 318
    new-instance v0, Lcom/mqunar/qutui/model/LogModel;

    invoke-direct {v0}, Lcom/mqunar/qutui/model/LogModel;-><init>()V

    .line 319
    iput-wide v2, v0, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    .line 320
    iget-object v4, v0, Lcom/mqunar/qutui/model/LogModel;->calledDatas:Ljava/util/List;

    new-instance v5, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget-object v6, p0, Lcom/mqunar/qutui/n;->a:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/mqunar/qutui/n;->b:Z

    invoke-direct {v5, v6, v7}, Lcom/mqunar/qutui/model/LogModel$CallData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/mqunar/qutui/model/LogModel;->endTime:J

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    :cond_12c
    iget-object v0, p0, Lcom/mqunar/qutui/n;->c:Lcom/mqunar/qutui/k;

    invoke-static {v0, v8}, Lcom/mqunar/qutui/k;->a(Lcom/mqunar/qutui/k;Landroid/content/SharedPreferences$Editor;)V

    .line 325
    if-eqz v1, :cond_138

    .line 326
    iget-object v0, p0, Lcom/mqunar/qutui/n;->c:Lcom/mqunar/qutui/k;

    invoke-static {v0}, Lcom/mqunar/qutui/k;->b(Lcom/mqunar/qutui/k;)V

    .line 328
    :cond_138
    return-void

    .line 298
    :cond_139
    iget-object v1, v5, Lcom/mqunar/qutui/model/LogModel;->calledDatas:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/qutui/model/LogModel$CallData;

    iget v2, v1, Lcom/mqunar/qutui/model/LogModel$CallData;->invalidCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/mqunar/qutui/model/LogModel$CallData;->invalidCount:I

    goto/16 :goto_af

    .line 293
    :cond_149
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_83

    .line 310
    :cond_14e
    if-nez v4, :cond_157

    move v0, v2

    move v1, v7

    .line 311
    goto :goto_d5

    :cond_153
    move v2, v0

    move v4, v1

    .line 315
    goto/16 :goto_1c

    :cond_157
    move v0, v2

    move v1, v4

    goto/16 :goto_d5

    :cond_15b
    move-object v5, v1

    goto/16 :goto_82

    :cond_15e
    move v0, v2

    move v1, v4

    goto :goto_f1
.end method
