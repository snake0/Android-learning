.class public Lcom/baidu/tts/database/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/l/a;

.field private b:Lcom/baidu/tts/database/b;

.field private c:Ljava/util/concurrent/locks/ReadWriteLock;

.field private d:Ljava/util/concurrent/locks/Lock;

.field private e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/l/a;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/database/a;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 34
    iget-object v0, p0, Lcom/baidu/tts/database/a;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    .line 35
    iget-object v0, p0, Lcom/baidu/tts/database/a;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    .line 38
    iput-object p1, p0, Lcom/baidu/tts/database/a;->a:Lcom/baidu/tts/l/a;

    .line 39
    new-instance v0, Lcom/baidu/tts/database/b;

    iget-object v1, p0, Lcom/baidu/tts/database/a;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v1}, Lcom/baidu/tts/l/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/tts/database/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/database/a;->b:Lcom/baidu/tts/database/b;

    .line 40
    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/tts/database/a;->b:Lcom/baidu/tts/database/b;

    invoke-virtual {v0}, Lcom/baidu/tts/database/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/baidu/tts/database/a;->b:Lcom/baidu/tts/database/b;

    invoke-virtual {v0}, Lcom/baidu/tts/database/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_5
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_26

    move-result-object v1

    .line 47
    :try_start_9
    invoke-static {v1, p1}, Lcom/baidu/tts/database/SpeechModelTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_16
    .catchall {:try_start_9 .. :try_end_c} :catchall_21

    move-result v0

    .line 52
    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 55
    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_15
    return v0

    .line 49
    :catch_16
    move-exception v0

    .line 50
    const/4 v0, -0x1

    .line 52
    :try_start_18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    .line 55
    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_15

    .line 52
    :catchall_21
    move-exception v0

    :try_start_22
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 55
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select b.absPath from speechModel a left join modelFile b on a."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "=b.id where a.id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 83
    const/4 v0, 0x0

    .line 84
    if-eqz v1, :cond_2c

    .line 85
    sget-object v0, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    :cond_2c
    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 209
    const/4 v2, 0x0

    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-static {v3}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 212
    const-string v2, "version_min <= ? and version_max >= ?"

    .line 213
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 216
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getDomainArray()[Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getLanguageArray()[Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getQualityArray()[Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getGenderArray()[Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getSpeakerArray()[Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getModelIdsArray()[Ljava/lang/String;

    move-result-object v8

    .line 223
    const-string v9, "domain"

    invoke-static {v9, v3}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 224
    const-string v10, "language"

    invoke-static {v10, v4}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 225
    const-string v11, "quality"

    invoke-static {v11, v5}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    const-string v12, "gender"

    invoke-static {v12, v6}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 227
    const-string v13, "speaker"

    invoke-static {v13, v7}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 228
    const-string v14, "id"

    invoke-static {v14, v8}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 229
    const-string v15, "and"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/4 v2, 0x1

    aput-object v9, v16, v2

    const/4 v2, 0x2

    aput-object v10, v16, v2

    const/4 v2, 0x3

    aput-object v11, v16, v2

    const/4 v2, 0x4

    aput-object v12, v16, v2

    const/4 v2, 0x5

    aput-object v13, v16, v2

    const/4 v2, 0x6

    aput-object v14, v16, v2

    invoke-static/range {v15 .. v16}, Lcom/baidu/tts/tools/SqlTool;->buildConditions(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 233
    const/4 v1, 0x0

    .line 238
    :goto_7e
    return-object v1

    .line 235
    :cond_7f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select * from speechModel where "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    const/4 v9, 0x6

    new-array v9, v9, [[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v4, v9, v3

    const/4 v3, 0x2

    aput-object v5, v9, v3

    const/4 v3, 0x3

    aput-object v6, v9, v3

    const/4 v3, 0x4

    aput-object v7, v9, v3

    const/4 v3, 0x5

    aput-object v8, v9, v3

    invoke-static {v1, v9}, Lcom/baidu/tts/tools/DataTool;->connect([Ljava/lang/String;[[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_7e
.end method

.method public a(Ljava/util/Set;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 244
    :cond_8
    const/4 v0, 0x0

    .line 250
    :goto_9
    return-object v0

    .line 246
    :cond_a
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->fromSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, "id"

    invoke-static {v1, v0}, Lcom/baidu/tts/tools/SqlTool;->buildInCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from modelFile where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p0, v1, v0}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 282
    const/4 v2, 0x0

    .line 283
    :try_start_6
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_53

    move-result-object v3

    .line 285
    :try_start_a
    invoke-virtual {v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 286
    if-eqz v4, :cond_66

    .line 287
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_47
    .catchall {:try_start_a .. :try_end_1b} :catchall_5a

    .line 289
    :try_start_1b
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 290
    array-length v5, v2

    .line 291
    const/4 v0, 0x0

    :goto_21
    if-ge v0, v5, :cond_36

    .line 292
    aget-object v6, v2, v0

    aget-object v7, v2, v0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_35
    move-object v1, v2

    .line 295
    :cond_36
    if-eqz v4, :cond_3b

    .line 296
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_61
    .catchall {:try_start_1b .. :try_end_3b} :catchall_5a

    :cond_3b
    move-object v0, v1

    .line 302
    :goto_3c
    if-eqz v3, :cond_41

    .line 303
    :try_start_3e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_53

    .line 308
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 299
    :catch_47
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 300
    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    .line 302
    if-eqz v3, :cond_41

    .line 303
    :try_start_4f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_41

    .line 308
    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 302
    :catchall_5a
    move-exception v0

    if-eqz v3, :cond_60

    .line 303
    :try_start_5d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_60
    throw v0
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_53

    .line 299
    :catch_61
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4a

    :cond_66
    move-object v0, v2

    goto :goto_3c
.end method

.method public a(Lcom/baidu/tts/client/model/ModelBags;)V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    :try_start_5
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    invoke-static {v0, p1}, Lcom/baidu/tts/database/SpeechModelTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 203
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 205
    return-void

    .line 203
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/baidu/tts/client/model/ModelFileBags;)V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 190
    :try_start_5
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    invoke-static {v0, p1}, Lcom/baidu/tts/database/ModelFileTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelFileBags;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 193
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 195
    return-void

    .line 193
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    :try_start_5
    const-string v0, "replace into fsFileInfo (absPath,state) values (?, ?)"

    .line 146
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 148
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_29

    move-result-object v1

    .line 150
    :try_start_18
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_24

    .line 152
    :try_start_1b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 155
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    return-void

    .line 152
    :catchall_24
    move-exception v0

    :try_start_25
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 155
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_5
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_26

    move-result-object v1

    .line 64
    :try_start_9
    invoke-static {v1, p1}, Lcom/baidu/tts/database/ModelFileTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_16
    .catchall {:try_start_9 .. :try_end_c} :catchall_21

    move-result v0

    .line 69
    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 72
    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_15
    return v0

    .line 66
    :catch_16
    move-exception v0

    .line 67
    const/4 v0, -0x1

    .line 69
    :try_start_18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    .line 72
    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_15

    .line 69
    :catchall_21
    move-exception v0

    :try_start_22
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 72
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 318
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_53
    .catchall {:try_start_6 .. :try_end_b} :catchall_66

    .line 319
    :try_start_b
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 320
    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_48

    .line 322
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 323
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 325
    :cond_1f
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 326
    array-length v6, v4

    .line 327
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v6, :cond_3a

    .line 328
    aget-object v7, v4, v1

    aget-object v8, v4, v1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 330
    :cond_3a
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 333
    :cond_43
    if-eqz v3, :cond_48

    .line 334
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_6d
    .catchall {:try_start_b .. :try_end_48} :catchall_66

    .line 340
    :cond_48
    if-eqz v2, :cond_4d

    .line 341
    :try_start_4a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5f

    .line 346
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 337
    :catch_53
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 338
    :goto_56
    :try_start_56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_66

    .line 340
    if-eqz v2, :cond_4d

    .line 341
    :try_start_5b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_4d

    .line 346
    :catchall_5f
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 340
    :catchall_66
    move-exception v0

    if-eqz v2, :cond_6c

    .line 341
    :try_start_69
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_5f

    .line 337
    :catch_6d
    move-exception v1

    goto :goto_56
.end method

.method public c(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const-string v0, "select * from fsFileInfo where absPath=?"

    .line 161
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "select * from modelFile where id=?"

    .line 168
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const-string v0, "select * from speechModel where id=?"

    .line 182
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 184
    return-object v0
.end method
