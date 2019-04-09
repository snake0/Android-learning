.class public Lcom/baidu/tts/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/tts/e/c;


# instance fields
.field private b:Lcom/baidu/tts/e/c$a;

.field private c:Ljava/util/concurrent/locks/ReadWriteLock;

.field private d:Ljava/util/concurrent/locks/Lock;

.field private e:Ljava/util/concurrent/locks/Lock;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/e/c;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 50
    iget-object v0, p0, Lcom/baidu/tts/e/c;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    .line 51
    iget-object v0, p0, Lcom/baidu/tts/e/c;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    .line 55
    iput-object p1, p0, Lcom/baidu/tts/e/c;->f:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/baidu/tts/e/c$a;

    iget-object v1, p0, Lcom/baidu/tts/e/c;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/baidu/tts/e/c$a;-><init>(Lcom/baidu/tts/e/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/e/c;->b:Lcom/baidu/tts/e/c$a;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/tts/e/c;
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/baidu/tts/e/c;->a:Lcom/baidu/tts/e/c;

    if-nez v0, :cond_13

    .line 61
    const-class v1, Lcom/baidu/tts/e/c;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v0, Lcom/baidu/tts/e/c;->a:Lcom/baidu/tts/e/c;

    if-nez v0, :cond_12

    .line 63
    new-instance v0, Lcom/baidu/tts/e/c;

    invoke-direct {v0, p0}, Lcom/baidu/tts/e/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/tts/e/c;->a:Lcom/baidu/tts/e/c;

    .line 65
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 67
    :cond_13
    sget-object v0, Lcom/baidu/tts/e/c;->a:Lcom/baidu/tts/e/c;

    return-object v0

    .line 65
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private c()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/tts/e/c;->b:Lcom/baidu/tts/e/c$a;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/tts/e/c;->b:Lcom/baidu/tts/e/c$a;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 98
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    invoke-direct {p0}, Lcom/baidu/tts/e/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_e3

    .line 105
    :try_start_d
    const-string v1, "result"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "cmd_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "cmd_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "result"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_38} :catch_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_38} :catch_73
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_9c
    .catchall {:try_start_d .. :try_end_38} :catchall_c5

    move-result-object v1

    .line 107
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_3c} :catch_de
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_da
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_d6
    .catchall {:try_start_39 .. :try_end_3c} :catchall_d2

    move-result v2

    .line 116
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v9, v2

    .line 120
    :goto_49
    return v9

    .line 109
    :catch_4a
    move-exception v1

    .line 110
    :goto_4b
    :try_start_4b
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_c5

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_49

    .line 111
    :catch_73
    move-exception v1

    .line 112
    :goto_74
    :try_start_74
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_74 .. :try_end_90} :catchall_c5

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_49

    .line 113
    :catch_9c
    move-exception v1

    .line 114
    :goto_9d
    :try_start_9d
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_9d .. :try_end_b9} :catchall_c5

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_49

    .line 116
    :catchall_c5
    move-exception v1

    :goto_c6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 116
    :catchall_d2
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_c6

    .line 113
    :catch_d6
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_9d

    .line 111
    :catch_da
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_74

    .line 109
    :catch_de
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto/16 :goto_4b

    :cond_e3
    move-object v1, v8

    move v2, v9

    goto/16 :goto_3d
.end method

.method public a(JIIILjava/lang/String;)V
    .registers 12

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    invoke-direct {p0}, Lcom/baidu/tts/e/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 75
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    const-string v2, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const-string v2, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v2, "cmd_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v2, "cmd_id"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "result"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_3d} :catch_46
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_3d} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3d} :catch_92
    .catchall {:try_start_9 .. :try_end_3d} :catchall_b8

    .line 90
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    :goto_45
    return-void

    .line 83
    :catch_46
    move-exception v0

    .line 84
    :try_start_47
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_b8

    .line 90
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_45

    .line 85
    :catch_6c
    move-exception v0

    .line 86
    :try_start_6d
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_b8

    .line 90
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_45

    .line 87
    :catch_92
    move-exception v0

    .line 88
    :try_start_93
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_93 .. :try_end_af} :catchall_b8

    .line 90
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_45

    .line 90
    :catchall_b8
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    iget-object v1, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 202
    :cond_9
    :goto_9
    return-void

    .line 181
    :cond_a
    iget-object v1, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 182
    invoke-direct {p0}, Lcom/baidu/tts/e/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 184
    :try_start_13
    const-string v1, ""

    .line 185
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_39

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 188
    :cond_39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_69

    .line 189
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "result"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_69} :catch_72
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_69} :catch_99
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_69} :catch_c0
    .catchall {:try_start_13 .. :try_end_69} :catchall_e7

    .line 199
    :cond_69
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 200
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_9

    .line 192
    :catch_72
    move-exception v0

    .line 193
    :try_start_73
    const-string v1, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_e7

    .line 199
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 200
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_9

    .line 194
    :catch_99
    move-exception v0

    .line 195
    :try_start_9a
    const-string v1, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_9a .. :try_end_b6} :catchall_e7

    .line 199
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 200
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_9

    .line 196
    :catch_c0
    move-exception v0

    .line 197
    :try_start_c1
    const-string v1, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_c1 .. :try_end_dd} :catchall_e7

    .line 199
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 200
    iget-object v0, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_9

    .line 199
    :catchall_e7
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 200
    iget-object v1, p0, Lcom/baidu/tts/e/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b()Ljava/util/Map;
    .registers 16
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
    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    invoke-direct {p0}, Lcom/baidu/tts/e/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 131
    const-string v0, "select * from result limit 0,500"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 134
    :goto_1f
    :try_start_1f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_2a} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_2a} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_103
    .catchall {:try_start_1f .. :try_end_2a} :catchall_12c

    .line 137
    :try_start_2a
    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 138
    const-string v7, "time"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 139
    const-string v8, "code"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 140
    const-string v9, "cmd_type"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 141
    const-string v10, "cmd_id"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 142
    const-string v11, "result"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 144
    const-string v12, "time"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v0, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    const-string v7, "error_code"

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    if-nez v8, :cond_85

    .line 147
    const-string v7, "cmd_type"

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v7, "cmd_id"

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string v7, "voice_to_text_result"

    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_8f} :catch_90
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_8f} :catch_be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_8f} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_8f} :catch_c4
    .catchall {:try_start_2a .. :try_end_8f} :catchall_12c

    goto :goto_1f

    .line 154
    :catch_90
    move-exception v0

    .line 155
    :try_start_91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_91 .. :try_end_94} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_94} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_103
    .catchall {:try_start_91 .. :try_end_94} :catchall_12c

    goto :goto_1f

    .line 162
    :catch_95
    move-exception v0

    .line 163
    :try_start_96
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_12c

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 173
    :goto_bd
    return-object v1

    .line 156
    :catch_be
    move-exception v0

    .line 157
    :try_start_bf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_c2} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_bf .. :try_end_c2} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_103
    .catchall {:try_start_bf .. :try_end_c2} :catchall_12c

    goto/16 :goto_1f

    .line 164
    :catch_c4
    move-exception v0

    .line 165
    :try_start_c5
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_12c

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_bd

    .line 160
    :cond_ed
    :try_start_ed
    const-string v0, "listId"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "list"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ed .. :try_end_f7} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_ed .. :try_end_f7} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f7} :catch_103
    .catchall {:try_start_ed .. :try_end_f7} :catchall_12c

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_bd

    .line 166
    :catch_103
    move-exception v0

    .line 167
    :try_start_104
    const-string v2, "SynthesizeResultDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_104 .. :try_end_120} :catchall_12c

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iget-object v0, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_bd

    .line 169
    :catchall_12c
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iget-object v1, p0, Lcom/baidu/tts/e/c;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
