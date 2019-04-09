.class public Lcom/baidu/tts/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/tts/database/a;

.field private c:Lcom/baidu/tts/database/d;

.field private d:Lcom/baidu/tts/l/a/i;

.field private e:Lcom/baidu/tts/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/baidu/tts/l/a;->a:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/baidu/tts/l/a;->g()V

    .line 50
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/baidu/tts/database/a;

    invoke-direct {v0, p0}, Lcom/baidu/tts/database/a;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    .line 54
    new-instance v0, Lcom/baidu/tts/database/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/database/d;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    .line 55
    new-instance v0, Lcom/baidu/tts/l/a/i;

    invoke-direct {v0, p0}, Lcom/baidu/tts/l/a/i;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    .line 56
    new-instance v0, Lcom/baidu/tts/d/d;

    invoke-direct {v0}, Lcom/baidu/tts/d/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    .line 57
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/d;->a(Lcom/baidu/tts/l/a;)V

    .line 58
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0}, Lcom/baidu/tts/d/d;->a()V

    .line 59
    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/database/d;->a(II)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a/i;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            "Z)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/l/a/i;->a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a/i;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/d;->a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/tts/client/model/LibEngineParams;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a/i;->a()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/database/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/baidu/tts/tools/DataTool;->isMapEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    .line 117
    :goto_e
    return v0

    .line 99
    :cond_f
    sget-object v0, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    sget-object v4, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v4}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 105
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    cmp-long v0, v5, v0

    if-eqz v0, :cond_4c

    move v0, v3

    .line 107
    goto :goto_e

    .line 109
    :cond_4c
    invoke-static {}, Lcom/baidu/tts/tools/MD5;->getInstance()Lcom/baidu/tts/tools/MD5;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/tts/tools/MD5;->getBigFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 111
    const/4 v0, 0x1

    goto :goto_e

    :cond_5c
    move v0, v3

    .line 113
    goto :goto_e

    :cond_5e
    move v0, v3

    .line 117
    goto :goto_e
.end method

.method public b()Lcom/baidu/tts/client/model/BasicHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a/i;->b()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a/i;->b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/baidu/tts/tools/DataTool;->isMapEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 134
    :goto_e
    return v0

    .line 127
    :cond_f
    sget-object v0, Lcom/baidu/tts/f/g;->r:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    sget-object v3, Lcom/baidu/tts/f/g;->s:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v0}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 130
    invoke-virtual {p0, v1}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;)Z

    move-result v1

    .line 131
    if-eqz v0, :cond_35

    if-eqz v1, :cond_35

    .line 132
    const/4 v0, 0x1

    goto :goto_e

    :cond_35
    move v0, v2

    .line 134
    goto :goto_e
.end method

.method public c(Ljava/util/Set;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 229
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 230
    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 231
    :cond_19
    const-string v0, "params error"

    .line 272
    :goto_1b
    return-object v0

    .line 234
    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    new-instance v1, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v1}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 236
    invoke-virtual {v1, v0}, Lcom/baidu/tts/client/model/Conditions;->appendId(Ljava/lang/String;)V

    .line 237
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelBags;

    .line 239
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelBags;->toJson()Lorg/json/JSONArray;

    move-result-object v6

    .line 240
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 241
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_51} :catch_52

    goto :goto_20

    .line 269
    :catch_52
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    :cond_56
    :goto_56
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 243
    :cond_5b
    :try_start_5b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 244
    const-string v6, "^[0-9]+$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 245
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 246
    const-string v6, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "needUpdate"

    const/4 v6, 0x2

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_20

    .line 250
    :cond_83
    const-string v1, "GetServerModelsWork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "params error id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not int"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 256
    :cond_a3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_56

    .line 257
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, v4}, Lcom/baidu/tts/l/a/i;->a(Lorg/json/JSONArray;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    .line 260
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 261
    :goto_c3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_56

    .line 262
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 265
    :cond_d3
    const-string v0, "GetServerModelsWork"

    const-string v1, "servers return result is empty"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_da} :catch_52

    goto/16 :goto_56
.end method

.method public c()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0}, Lcom/baidu/tts/d/d;->b()V

    .line 159
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/d;->a(Ljava/lang/String;)J

    .line 196
    return-void
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/tts/l/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public e()Lcom/baidu/tts/database/a;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0}, Lcom/baidu/tts/database/d;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
