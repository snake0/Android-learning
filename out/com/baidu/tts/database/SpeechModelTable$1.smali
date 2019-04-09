.class final Lcom/baidu/tts/database/SpeechModelTable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/database/f$a;


# instance fields
.field final synthetic a:Lcom/baidu/tts/client/model/ModelBags;


# direct methods
.method constructor <init>(Lcom/baidu/tts/client/model/ModelBags;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/tts/database/SpeechModelTable$1;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 16

    .prologue
    .line 80
    :try_start_0
    const-string v0, "insert into speechModel (name, version_min, version_max, language, gender, speaker, domain, quality, text_data_id, speech_data_id, id) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 82
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/baidu/tts/database/SpeechModelTable$1;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelBags;->getModelInfos()Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 85
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelInfo;

    .line 87
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMin()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMax()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getGender()Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeaker()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getDomain()Ljava/lang/String;

    move-result-object v9

    .line 94
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getQuality()Ljava/lang/String;

    move-result-object v10

    .line 95
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getTextDataId()Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeechDataId()Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 99
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 105
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    goto :goto_10

    .line 114
    :catch_7c
    move-exception v0

    .line 115
    const/4 v0, 0x0

    :goto_7e
    return v0

    .line 113
    :cond_7f
    const/4 v0, 0x1

    goto :goto_7e
.end method
