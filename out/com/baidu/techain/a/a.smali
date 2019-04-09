.class public final Lcom/baidu/techain/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lcom/baidu/techain/a/a;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field public c:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Lcom/baidu/techain/a/a$a;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/techain/a/a;->a:I

    .line 56
    const-string v0, "create table pgntechain(k INTEGER PRIMARY KEY ON CONFLICT ABORT,p TEXT UNIQUE ON CONFLICT ABORT,v TEXT,n INTEGER,s INTEGER,i INTEGER,u INTEGER,la INTEGER,o INTEGER,r INTEGER,ap INTEGER,apk TEXT,cl TEXT,b TEXT,t TEXT,ac BLOB,st INTEGER,du INTEGER,th INTEGER,m5 TEXT,rs INTEGER,l TEXT,pr INTEGER DEFAULT -1,pdld INTEGER DEFAULT 0,a TEXT)"

    iput-object v0, p0, Lcom/baidu/techain/a/a;->b:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/a/a;->f:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/baidu/techain/a/a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/techain/a/a$a;-><init>(Lcom/baidu/techain/a/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/a/a;->e:Lcom/baidu/techain/a/a$a;

    .line 93
    :try_start_1e
    iget-object v0, p0, Lcom/baidu/techain/a/a;->e:Lcom/baidu/techain/a/a$a;

    invoke-virtual {v0}, Lcom/baidu/techain/a/a$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_26} :catch_27

    .line 97
    :goto_26
    return-void

    .line 95
    :catch_27
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_26
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/techain/a/a;
    .registers 4

    .prologue
    .line 104
    const-class v1, Lcom/baidu/techain/a/a;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "i="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 105
    sget-object v0, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    if-nez v0, :cond_1d

    .line 106
    new-instance v0, Lcom/baidu/techain/a/a;

    invoke-direct {v0, p0}, Lcom/baidu/techain/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    .line 108
    :cond_1d
    sget-object v0, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(II)I
    .registers 8

    .prologue
    .line 600
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 601
    const-string v1, "u"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    iget-object v1, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    .line 606
    :goto_26
    return v0

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    goto :goto_26
.end method

.method public final a(Lcom/baidu/techain/core/ApkInfo;)J
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 172
    if-nez p1, :cond_5

    .line 207
    :goto_4
    return-wide v0

    .line 175
    :cond_5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 176
    const-string v3, "n"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v3, "p"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "a"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "l"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->libPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "v"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "apk"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->dexPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "ap"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v3, "cl"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "st"

    iget-wide v4, p1, Lcom/baidu/techain/core/ApkInfo;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v3, "du"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->duration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v3, "m5"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "th"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->applicationTheme:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v3, "pr"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_91

    .line 191
    new-instance v3, Lcom/baidu/techain/core/a;

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v4}, Lcom/baidu/techain/core/a;-><init>([Landroid/content/pm/ActivityInfo;)V

    .line 192
    const-string v4, "ac"

    .line 193
    invoke-virtual {v3}, Lcom/baidu/techain/core/a;->a()[B

    move-result-object v3

    .line 192
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 196
    :cond_91
    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {p0, v3}, Lcom/baidu/techain/a/a;->b(I)Z

    move-result v3

    .line 199
    if-eqz v3, :cond_b6

    .line 200
    :try_start_99
    iget-object v3, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgntechain"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "k="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_4

    .line 202
    :cond_b6
    const-string v3, "k"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    iget-object v3, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgntechain"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_c9} :catch_cc

    move-result-wide v0

    goto/16 :goto_4

    .line 207
    :catch_cc
    move-exception v2

    goto/16 :goto_4
.end method

.method public final a(I)Lcom/baidu/techain/core/ApkInfo;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 342
    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 347
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_18a
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a1

    move-result-object v1

    .line 349
    if-eqz v1, :cond_1bc

    .line 350
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 351
    new-instance v2, Lcom/baidu/techain/core/ApkInfo;

    invoke-direct {v2}, Lcom/baidu/techain/core/ApkInfo;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2a} :catch_1b6
    .catchall {:try_start_1f .. :try_end_2a} :catchall_1b4

    .line 352
    :try_start_2a
    iput p1, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 353
    const-string v0, "n"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    .line 354
    const-string v0, "p"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 355
    const-string v0, "a"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 356
    const-string v0, "l"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 357
    const-string v0, "v"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 358
    const-string v0, "apk"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->dexPath:Ljava/lang/String;

    .line 359
    const-string v0, "ap"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    .line 360
    const-string v0, "cl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->className:Ljava/lang/String;

    .line 361
    const-string v0, "th"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->applicationTheme:I

    .line 362
    const-string v0, "st"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/techain/core/ApkInfo;->startTime:J

    .line 363
    const-string v0, "du"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->duration:I

    .line 364
    const-string v0, "m5"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 365
    const-string v0, "pr"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 366
    const-string v0, "ac"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 367
    if-eqz v0, :cond_178

    .line 369
    invoke-static {v0}, Lcom/baidu/techain/core/a;->a([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 370
    if-eqz v4, :cond_178

    .line 371
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 372
    if-lez v5, :cond_178

    .line 373
    new-array v0, v5, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 374
    const/4 v0, 0x0

    move v3, v0

    :goto_e6
    if-ge v3, v5, :cond_178

    .line 375
    new-instance v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v6}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 376
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->a:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 377
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->j:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 378
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->h:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 379
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->f:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->flags:I

    .line 380
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->l:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 381
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->b:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 382
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->m:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 383
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->k:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 384
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->c:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 385
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->g:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 386
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->i:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 387
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->e:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 388
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->d:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 389
    iget-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aput-object v6, v0, v3
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_173} :catch_1b9
    .catchall {:try_start_2a .. :try_end_173} :catchall_1b4

    .line 374
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_e6

    :cond_178
    move-object v0, v2

    .line 400
    :goto_179
    if-eqz v1, :cond_184

    :try_start_17b
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_184

    .line 401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_184} :catch_185

    .line 408
    :cond_184
    :goto_184
    return-object v0

    .line 404
    :catch_185
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_184

    .line 397
    :catch_18a
    move-exception v0

    move-object v1, v8

    move-object v0, v8

    :goto_18d
    :try_start_18d
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_190
    .catchall {:try_start_18d .. :try_end_190} :catchall_1b4

    .line 400
    if-eqz v1, :cond_184

    :try_start_192
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_184

    .line 401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_192 .. :try_end_19b} :catch_19c

    goto :goto_184

    .line 404
    :catch_19c
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_184

    .line 399
    :catchall_1a1
    move-exception v0

    move-object v1, v8

    .line 400
    :goto_1a3
    if-eqz v1, :cond_1ae

    :try_start_1a5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1ae

    .line 401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1ae
    .catch Ljava/lang/Throwable; {:try_start_1a5 .. :try_end_1ae} :catch_1af

    .line 405
    :cond_1ae
    :goto_1ae
    throw v0

    .line 404
    :catch_1af
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1ae

    .line 399
    :catchall_1b4
    move-exception v0

    goto :goto_1a3

    .line 397
    :catch_1b6
    move-exception v0

    move-object v0, v8

    goto :goto_18d

    :catch_1b9
    move-exception v0

    move-object v0, v2

    goto :goto_18d

    :cond_1bc
    move-object v0, v8

    goto :goto_179
.end method

.method public final a()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/core/ApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 212
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :try_start_6
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_c1
    .catchall {:try_start_6 .. :try_end_13} :catchall_ab

    move-result-object v0

    .line 217
    if-eqz v0, :cond_95

    .line 218
    :goto_16
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 219
    new-instance v1, Lcom/baidu/techain/core/ApkInfo;

    invoke-direct {v1}, Lcom/baidu/techain/core/ApkInfo;-><init>()V

    .line 220
    const-string v2, "k"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 221
    const-string v2, "p"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 222
    const-string v2, "a"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 223
    const-string v2, "l"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/techain/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 224
    const-string v2, "v"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 225
    const-string v2, "st"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/techain/core/ApkInfo;->startTime:J

    .line 226
    const-string v2, "du"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/techain/core/ApkInfo;->duration:I

    .line 227
    const-string v2, "pr"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 228
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_84} :catch_85
    .catchall {:try_start_16 .. :try_end_84} :catchall_bd

    goto :goto_16

    .line 232
    :catch_85
    move-exception v1

    :goto_86
    :try_start_86
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_bd

    .line 235
    if-eqz v0, :cond_94

    :try_start_8b
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_94

    .line 236
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_94} :catch_a6

    .line 244
    :cond_94
    :goto_94
    return-object v9

    .line 235
    :cond_95
    if-eqz v0, :cond_94

    :try_start_97
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_94

    .line 236
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a0} :catch_a1

    goto :goto_94

    .line 239
    :catch_a1
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_94

    :catch_a6
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_94

    .line 234
    :catchall_ab
    move-exception v0

    .line 235
    :goto_ac
    if-eqz v8, :cond_b7

    :try_start_ae
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b7} :catch_b8

    .line 240
    :cond_b7
    :goto_b7
    throw v0

    .line 239
    :catch_b8
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_b7

    .line 234
    :catchall_bd
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_ac

    .line 232
    :catch_c1
    move-exception v0

    move-object v0, v8

    goto :goto_86
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 485
    :goto_11
    return-void

    .line 480
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const-string v2, "p=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 481
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_11

    .line 483
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_11
.end method

.method public final b()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 282
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 286
    :try_start_6
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x0

    const-string v3, "n=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 287
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_14} :catch_8a
    .catchall {:try_start_6 .. :try_end_14} :catchall_74

    move-result-object v0

    .line 289
    if-eqz v0, :cond_5e

    .line 290
    :goto_17
    :try_start_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 291
    const-string v1, "k"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 292
    const-string v2, "v"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_4d} :catch_4e
    .catchall {:try_start_17 .. :try_end_4d} :catchall_86

    goto :goto_17

    .line 297
    :catch_4e
    move-exception v1

    :goto_4f
    :try_start_4f
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_86

    .line 300
    if-eqz v0, :cond_5d

    :try_start_54
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5d} :catch_6f

    .line 308
    :cond_5d
    :goto_5d
    return-object v9

    .line 300
    :cond_5e
    if-eqz v0, :cond_5d

    :try_start_60
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_69} :catch_6a

    goto :goto_5d

    .line 304
    :catch_6a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5d

    :catch_6f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5d

    .line 299
    :catchall_74
    move-exception v0

    .line 300
    :goto_75
    if-eqz v8, :cond_80

    :try_start_77
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_80

    .line 301
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_80} :catch_81

    .line 305
    :cond_80
    :goto_80
    throw v0

    .line 304
    :catch_81
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_80

    .line 299
    :catchall_86
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_75

    .line 297
    :catch_8a
    move-exception v0

    move-object v0, v8

    goto :goto_4f
.end method

.method public final b(II)V
    .registers 8

    .prologue
    .line 679
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 680
    const-string v1, "pdld"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    :try_start_e
    iget-object v1, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_25} :catch_26

    .line 689
    :goto_25
    return-void

    .line 687
    :catch_26
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_25
.end method

.method public final b(I)Z
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 412
    .line 414
    const-string v1, "pgntechain"

    .line 418
    :try_start_5
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "p"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 419
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_25} :catch_40
    .catchall {:try_start_5 .. :try_end_25} :catchall_58

    move-result-object v1

    .line 422
    if-eqz v1, :cond_74

    .line 423
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_71
    .catchall {:try_start_28 .. :try_end_2b} :catchall_6a

    move-result v0

    if-lez v0, :cond_74

    move v0, v10

    .line 431
    :goto_2f
    if-eqz v1, :cond_3a

    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 439
    :cond_3a
    :goto_3a
    return v0

    .line 435
    :catch_3b
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3a

    .line 428
    :catch_40
    move-exception v0

    move-object v0, v9

    :goto_42
    :try_start_42
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_6d

    .line 431
    if-eqz v0, :cond_50

    :try_start_47
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_50

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_50} :catch_52

    :cond_50
    move v0, v8

    .line 436
    goto :goto_3a

    .line 435
    :catch_52
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v8

    .line 437
    goto :goto_3a

    .line 430
    :catchall_58
    move-exception v0

    .line 431
    :goto_59
    if-eqz v9, :cond_64

    :try_start_5b
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_64

    .line 432
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_64} :catch_65

    .line 436
    :cond_64
    :goto_64
    throw v0

    .line 435
    :catch_65
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_64

    .line 430
    :catchall_6a
    move-exception v0

    move-object v9, v1

    goto :goto_59

    :catchall_6d
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_59

    .line 428
    :catch_71
    move-exception v0

    move-object v0, v1

    goto :goto_42

    :cond_74
    move v0, v8

    goto :goto_2f
.end method

.method public final b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 622
    .line 626
    :try_start_3
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "r"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "b"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "t"

    aput-object v4, v2, v3

    const-string v3, "p=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_27} :catch_7c
    .catchall {:try_start_3 .. :try_end_27} :catchall_93

    move-result-object v1

    .line 633
    if-eqz v1, :cond_ae

    .line 634
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 635
    const-string v0, "r"

    .line 636
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_75

    move v0, v9

    .line 637
    :goto_3d
    const-string v2, "b"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 638
    const-string v3, "t"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    if-eqz v0, :cond_ae

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 641
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_62} :catch_a8
    .catchall {:try_start_2a .. :try_end_62} :catchall_a6

    .line 642
    const/4 v0, 0x0

    :try_start_63
    aput-object v2, v8, v0

    .line 643
    const/4 v0, 0x1

    aput-object v3, v8, v0
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_68} :catch_ab
    .catchall {:try_start_63 .. :try_end_68} :catchall_a6

    move-object v0, v8

    .line 651
    :goto_69
    if-eqz v1, :cond_74

    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_74

    .line 652
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_74} :catch_77

    .line 659
    :cond_74
    :goto_74
    return-object v0

    :cond_75
    move v0, v10

    .line 636
    goto :goto_3d

    .line 655
    :catch_77
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_74

    .line 648
    :catch_7c
    move-exception v0

    move-object v1, v8

    move-object v0, v8

    :goto_7f
    :try_start_7f
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_a6

    .line 651
    if-eqz v1, :cond_74

    :try_start_84
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_74

    .line 652
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_8d} :catch_8e

    goto :goto_74

    .line 655
    :catch_8e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_74

    .line 650
    :catchall_93
    move-exception v0

    move-object v1, v8

    .line 651
    :goto_95
    if-eqz v1, :cond_a0

    :try_start_97
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 652
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a0} :catch_a1

    .line 656
    :cond_a0
    :goto_a0
    throw v0

    .line 655
    :catch_a1
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_a0

    .line 650
    :catchall_a6
    move-exception v0

    goto :goto_95

    .line 648
    :catch_a8
    move-exception v0

    move-object v0, v8

    goto :goto_7f

    :catch_ab
    move-exception v0

    move-object v0, v8

    goto :goto_7f

    :cond_ae
    move-object v0, v8

    goto :goto_69
.end method

.method public final c(I)I
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 443
    .line 447
    :try_start_2
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "n"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 448
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_49
    .catchall {:try_start_2 .. :try_end_24} :catchall_61

    move-result-object v1

    .line 453
    if-eqz v1, :cond_7d

    .line 454
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 455
    const-string v0, "n"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_36} :catch_7a
    .catchall {:try_start_27 .. :try_end_36} :catchall_73

    move-result v8

    move v0, v8

    .line 462
    :goto_38
    if-eqz v1, :cond_43

    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_43

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_43} :catch_44

    .line 470
    :cond_43
    :goto_43
    return v0

    .line 466
    :catch_44
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43

    .line 459
    :catch_49
    move-exception v0

    move-object v0, v9

    :goto_4b
    :try_start_4b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_76

    .line 462
    if-eqz v0, :cond_59

    :try_start_50
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_59

    .line 463
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5b

    :cond_59
    move v0, v8

    .line 467
    goto :goto_43

    .line 466
    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v8

    .line 468
    goto :goto_43

    .line 461
    :catchall_61
    move-exception v0

    .line 462
    :goto_62
    if-eqz v9, :cond_6d

    :try_start_64
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 463
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6d} :catch_6e

    .line 467
    :cond_6d
    :goto_6d
    throw v0

    .line 466
    :catch_6e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6d

    .line 461
    :catchall_73
    move-exception v0

    move-object v9, v1

    goto :goto_62

    :catchall_76
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_62

    .line 459
    :catch_7a
    move-exception v0

    move-object v0, v1

    goto :goto_4b

    :cond_7d
    move v0, v8

    goto :goto_38
.end method

.method public final c(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 785
    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v8

    .line 854
    :cond_9
    :goto_9
    return-object v0

    .line 791
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x0

    const-string v3, "p=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 792
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1d} :catch_196
    .catchall {:try_start_a .. :try_end_1d} :catchall_1ae

    move-result-object v1

    .line 795
    if-eqz v1, :cond_1ce

    .line 796
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 797
    new-instance v2, Lcom/baidu/techain/core/ApkInfo;

    invoke-direct {v2}, Lcom/baidu/techain/core/ApkInfo;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2b} :catch_1c6
    .catchall {:try_start_20 .. :try_end_2b} :catchall_1c1

    .line 798
    :try_start_2b
    const-string v0, "k"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 799
    const-string v0, "n"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    .line 800
    const-string v0, "p"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 801
    const-string v0, "a"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 802
    const-string v0, "l"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 803
    const-string v0, "v"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 804
    const-string v0, "apk"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->dexPath:Ljava/lang/String;

    .line 805
    const-string v0, "ap"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    .line 806
    const-string v0, "cl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->className:Ljava/lang/String;

    .line 807
    const-string v0, "th"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->applicationTheme:I

    .line 808
    const-string v0, "st"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/techain/core/ApkInfo;->startTime:J

    .line 809
    const-string v0, "du"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->duration:I

    .line 810
    const-string v0, "m5"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 811
    const-string v0, "pr"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 812
    const-string v0, "ac"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 813
    if-eqz v0, :cond_182

    .line 815
    invoke-static {v0}, Lcom/baidu/techain/core/a;->a([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 816
    if-eqz v4, :cond_182

    .line 817
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 818
    if-lez v5, :cond_182

    .line 819
    new-array v0, v5, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move v3, v9

    .line 820
    :goto_f0
    if-ge v3, v5, :cond_182

    .line 821
    new-instance v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v6}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 822
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->a:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 823
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->j:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 824
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->h:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 825
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->f:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->flags:I

    .line 826
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->l:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 827
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->b:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 828
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->m:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 829
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->k:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 830
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->c:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 831
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->g:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 832
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget v0, v0, Lcom/baidu/techain/core/b;->i:I

    iput v0, v6, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 833
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->e:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 834
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/b;

    iget-object v0, v0, Lcom/baidu/techain/core/b;->d:Ljava/lang/String;

    iput-object v0, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 835
    iget-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aput-object v6, v0, v3
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_17d} :catch_1ca
    .catchall {:try_start_2b .. :try_end_17d} :catchall_1c1

    .line 820
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_f0

    :cond_182
    move-object v0, v2

    .line 846
    :goto_183
    if-eqz v1, :cond_9

    :try_start_185
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 847
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_185 .. :try_end_18e} :catch_190

    goto/16 :goto_9

    .line 850
    :catch_190
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_9

    .line 843
    :catch_196
    move-exception v0

    move-object v0, v8

    :goto_198
    :try_start_198
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_1c3

    .line 846
    if-eqz v8, :cond_9

    :try_start_19d
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 847
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1a6
    .catch Ljava/lang/Throwable; {:try_start_19d .. :try_end_1a6} :catch_1a8

    goto/16 :goto_9

    .line 850
    :catch_1a8
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_9

    .line 845
    :catchall_1ae
    move-exception v0

    move-object v1, v8

    .line 846
    :goto_1b0
    if-eqz v1, :cond_1bb

    :try_start_1b2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 847
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1bb
    .catch Ljava/lang/Throwable; {:try_start_1b2 .. :try_end_1bb} :catch_1bc

    .line 851
    :cond_1bb
    :goto_1bb
    throw v0

    .line 850
    :catch_1bc
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1bb

    .line 845
    :catchall_1c1
    move-exception v0

    goto :goto_1b0

    :catchall_1c3
    move-exception v0

    move-object v1, v8

    goto :goto_1b0

    .line 843
    :catch_1c6
    move-exception v0

    move-object v0, v8

    move-object v8, v1

    goto :goto_198

    :catch_1ca
    move-exception v0

    move-object v8, v1

    move-object v0, v2

    goto :goto_198

    :cond_1ce
    move-object v0, v8

    goto :goto_183
.end method

.method public final c()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 312
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 316
    :try_start_6
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x0

    const-string v3, "n=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 317
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_14} :catch_75
    .catchall {:try_start_6 .. :try_end_14} :catchall_5f

    move-result-object v0

    .line 319
    if-eqz v0, :cond_49

    .line 320
    :goto_17
    :try_start_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 321
    const-string v1, "k"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 322
    const-string v2, "p"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_38} :catch_39
    .catchall {:try_start_17 .. :try_end_38} :catchall_71

    goto :goto_17

    .line 327
    :catch_39
    move-exception v1

    :goto_3a
    :try_start_3a
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_71

    .line 330
    if-eqz v0, :cond_48

    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_48

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_48} :catch_5a

    .line 338
    :cond_48
    :goto_48
    return-object v9

    .line 330
    :cond_49
    if-eqz v0, :cond_48

    :try_start_4b
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_48

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_54} :catch_55

    goto :goto_48

    .line 334
    :catch_55
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_48

    :catch_5a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_48

    .line 329
    :catchall_5f
    move-exception v0

    .line 330
    :goto_60
    if-eqz v8, :cond_6b

    :try_start_62
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6b} :catch_6c

    .line 335
    :cond_6b
    :goto_6b
    throw v0

    .line 334
    :catch_6c
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6b

    .line 329
    :catchall_71
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_60

    .line 327
    :catch_75
    move-exception v0

    move-object v0, v8

    goto :goto_3a
.end method

.method public final c(II)V
    .registers 8

    .prologue
    .line 776
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 777
    const-string v1, "pr"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    iget-object v1, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    .line 782
    :goto_25
    return-void

    .line 780
    :catch_26
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_25
.end method

.method public final d()V
    .registers 8

    .prologue
    .line 489
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    invoke-virtual {p0}, Lcom/baidu/techain/a/a;->a()Ljava/util/List;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 493
    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 494
    invoke-static {v3}, Lcom/baidu/techain/b/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/baidu/techain/core/g;->b:Ljava/util/List;

    if-eqz v3, :cond_d

    sget-object v3, Lcom/baidu/techain/core/g;->b:Ljava/util/List;

    iget v4, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 496
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_d

    .line 518
    :catch_37
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 520
    :cond_3b
    return-void

    .line 500
    :cond_3c
    :try_start_3c
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v2

    .line 501
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 502
    if-eqz v2, :cond_57

    .line 503
    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/techain/core/g;->b(Ljava/lang/String;)Z

    .line 506
    :cond_57
    iget-object v3, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgntechain"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "k="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/techain/a/a;->f:Landroid/content/Context;

    .line 511
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.techain_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-static {v3}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/baidu/techain/a/a;->f:Landroid/content/Context;

    if-eqz v3, :cond_44

    .line 514
    iget-object v3, p0, Lcom/baidu/techain/a/a;->f:Landroid/content/Context;

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_bb} :catch_37

    goto :goto_44
.end method

.method public final d(I)Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 523
    .line 527
    :try_start_3
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "u"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 528
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_4f
    .catchall {:try_start_3 .. :try_end_25} :catchall_65

    move-result-object v1

    .line 533
    if-eqz v1, :cond_3c

    .line 534
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 535
    const-string v0, "u"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_7e
    .catchall {:try_start_28 .. :try_end_37} :catchall_77

    move-result v0

    if-ne v0, v8, :cond_48

    move v0, v8

    :goto_3b
    move v9, v0

    .line 542
    :cond_3c
    if-eqz v1, :cond_47

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_47

    .line 543
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_47} :catch_4a

    .line 550
    :cond_47
    :goto_47
    return v9

    :cond_48
    move v0, v9

    .line 535
    goto :goto_3b

    .line 546
    :catch_4a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_47

    .line 539
    :catch_4f
    move-exception v0

    move-object v0, v10

    :goto_51
    :try_start_51
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_7a

    .line 542
    if-eqz v0, :cond_47

    :try_start_56
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_47

    .line 543
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_47

    .line 546
    :catch_60
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_47

    .line 541
    :catchall_65
    move-exception v0

    .line 542
    :goto_66
    if-eqz v10, :cond_71

    :try_start_68
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_71

    .line 543
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_71} :catch_72

    .line 547
    :cond_71
    :goto_71
    throw v0

    .line 546
    :catch_72
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_71

    .line 541
    :catchall_77
    move-exception v0

    move-object v10, v1

    goto :goto_66

    :catchall_7a
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_66

    .line 539
    :catch_7e
    move-exception v0

    move-object v0, v1

    goto :goto_51
.end method

.method public final e(I)Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 554
    .line 558
    :try_start_3
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "s"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 559
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_4f
    .catchall {:try_start_3 .. :try_end_25} :catchall_65

    move-result-object v1

    .line 564
    if-eqz v1, :cond_3c

    .line 565
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 566
    const-string v0, "s"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_7e
    .catchall {:try_start_28 .. :try_end_37} :catchall_77

    move-result v0

    if-ne v0, v8, :cond_48

    move v0, v8

    :goto_3b
    move v9, v0

    .line 573
    :cond_3c
    if-eqz v1, :cond_47

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_47

    .line 574
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_47} :catch_4a

    .line 580
    :cond_47
    :goto_47
    return v9

    :cond_48
    move v0, v9

    .line 566
    goto :goto_3b

    .line 577
    :catch_4a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_47

    .line 570
    :catch_4f
    move-exception v0

    move-object v0, v10

    :goto_51
    :try_start_51
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_7a

    .line 573
    if-eqz v0, :cond_47

    :try_start_56
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_47

    .line 574
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_47

    .line 577
    :catch_60
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_47

    .line 572
    :catchall_65
    move-exception v0

    .line 573
    :goto_66
    if-eqz v10, :cond_71

    :try_start_68
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_71

    .line 574
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_71} :catch_72

    .line 578
    :cond_71
    :goto_71
    throw v0

    .line 577
    :catch_72
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_71

    .line 572
    :catchall_77
    move-exception v0

    move-object v10, v1

    goto :goto_66

    :catchall_7a
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_66

    .line 570
    :catch_7e
    move-exception v0

    move-object v0, v1

    goto :goto_51
.end method

.method public final f(I)V
    .registers 7

    .prologue
    .line 613
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 614
    const-string v1, "n"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    iget-object v1, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 619
    :goto_26
    return-void

    .line 617
    :catch_27
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_26
.end method

.method public final g(I)I
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 692
    .line 696
    :try_start_2
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pdld"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 697
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_49
    .catchall {:try_start_2 .. :try_end_24} :catchall_61

    move-result-object v1

    .line 702
    if-eqz v1, :cond_7d

    .line 703
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 704
    const-string v0, "pdld"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_36} :catch_7a
    .catchall {:try_start_27 .. :try_end_36} :catchall_73

    move-result v8

    move v0, v8

    .line 711
    :goto_38
    if-eqz v1, :cond_43

    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_43

    .line 712
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_43} :catch_44

    .line 719
    :cond_43
    :goto_43
    return v0

    .line 715
    :catch_44
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43

    .line 708
    :catch_49
    move-exception v0

    move-object v0, v9

    :goto_4b
    :try_start_4b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_76

    .line 711
    if-eqz v0, :cond_59

    :try_start_50
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_59

    .line 712
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5b

    :cond_59
    move v0, v8

    .line 716
    goto :goto_43

    .line 715
    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v8

    .line 717
    goto :goto_43

    .line 710
    :catchall_61
    move-exception v0

    .line 711
    :goto_62
    if-eqz v9, :cond_6d

    :try_start_64
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 712
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6d} :catch_6e

    .line 716
    :cond_6d
    :goto_6d
    throw v0

    .line 715
    :catch_6e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6d

    .line 710
    :catchall_73
    move-exception v0

    move-object v9, v1

    goto :goto_62

    :catchall_76
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_62

    .line 708
    :catch_7a
    move-exception v0

    move-object v0, v1

    goto :goto_4b

    :cond_7d
    move v0, v8

    goto :goto_38
.end method

.method public final h(I)V
    .registers 6

    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 763
    if-gtz p1, :cond_e

    .line 772
    :goto_d
    return-void

    .line 767
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_31} :catch_32

    goto :goto_d

    .line 770
    :catch_32
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_d
.end method
