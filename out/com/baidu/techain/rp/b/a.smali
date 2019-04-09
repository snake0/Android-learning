.class public final Lcom/baidu/techain/rp/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/techain/rp/b/a;


# instance fields
.field private b:Lcom/baidu/techain/rp/b/a$a;

.field private c:Lcom/baidu/techain/e;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/baidu/techain/rp/b/a;->e:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/baidu/techain/rp/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/techain/rp/b/a$a;-><init>(Lcom/baidu/techain/rp/b/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/rp/b/a;->b:Lcom/baidu/techain/rp/b/a$a;

    .line 75
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/rp/b/a;->c:Lcom/baidu/techain/e;

    .line 1082
    :try_start_13
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->b:Lcom/baidu/techain/rp/b/a$a;

    invoke-virtual {v0}, Lcom/baidu/techain/rp/b/a$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 1085
    :goto_1b
    return-void

    .line 1084
    :catch_1c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1b
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;
    .registers 3

    .prologue
    .line 89
    const-class v1, Lcom/baidu/techain/rp/b/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/techain/rp/b/a;->a:Lcom/baidu/techain/rp/b/a;

    if-nez v0, :cond_e

    .line 90
    new-instance v0, Lcom/baidu/techain/rp/b/a;

    invoke-direct {v0, p0}, Lcom/baidu/techain/rp/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/techain/rp/b/a;->a:Lcom/baidu/techain/rp/b/a;

    .line 92
    :cond_e
    sget-object v0, Lcom/baidu/techain/rp/b/a;->a:Lcom/baidu/techain/rp/b/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(I)I
    .registers 9

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "r"

    const-string v3, "a=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_16

    move-result v0

    .line 176
    :goto_15
    return v0

    .line 174
    :catch_16
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_15
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    invoke-direct {p0, v0}, Lcom/baidu/techain/rp/b/a;->b(I)I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3d

    goto :goto_9

    .line 188
    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3d

    .line 191
    :try_start_21
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_38

    .line 196
    :goto_26
    const/4 v0, -0x1

    return v0

    .line 186
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2d} :catch_1d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_3d

    .line 191
    :try_start_2d
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_26

    .line 193
    :catch_33
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_26

    :catch_38
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_26

    .line 190
    :catchall_3d
    move-exception v0

    .line 191
    :try_start_3e
    iget-object v1, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_44

    .line 194
    :goto_43
    throw v0

    .line 193
    :catch_44
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43
.end method

.method public final a(Lcom/baidu/techain/rp/c/a;)J
    .registers 8

    .prologue
    .line 100
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 101
    const-string v0, "b"

    iget-object v1, p1, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "c"

    iget v1, p1, Lcom/baidu/techain/rp/c/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v0, "d"

    iget-wide v3, p1, Lcom/baidu/techain/rp/c/a;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string v0, "e"

    iget v1, p1, Lcom/baidu/techain/rp/c/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v0, "g"

    iget v1, p1, Lcom/baidu/techain/rp/c/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v0, "f"

    iget v1, p1, Lcom/baidu/techain/rp/c/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v0, "i"

    iget v1, p1, Lcom/baidu/techain/rp/c/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v0, "j"

    iget-object v1, p1, Lcom/baidu/techain/rp/c/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p1, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 113
    :try_start_57
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "xVOTuxgN3lkRN2v4"

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/baidu/techain/ac/F;->ae([B[B)[B

    move-result-object v1

    .line 115
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6f} :catch_81

    move-result-object v0

    .line 120
    :goto_70
    const-string v1, "h"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-wide/16 v0, -0x1

    .line 123
    :try_start_77
    iget-object v3, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "r"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7f} :catch_86

    move-result-wide v0

    .line 127
    :goto_80
    return-wide v0

    .line 117
    :catch_81
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_70

    .line 125
    :catch_86
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_80
.end method

.method public final a(Ljava/lang/String;)J
    .registers 8

    .prologue
    .line 131
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 132
    const-string v0, "b"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-wide/16 v0, -0x1

    .line 135
    :try_start_c
    iget-object v3, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "c"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_16

    move-result-wide v0

    .line 139
    :goto_15
    return-wide v0

    .line 137
    :catch_16
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_15
.end method

.method public final a()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/rp/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 291
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 293
    const-string v3, "i=5"

    .line 294
    const-string v7, "d desc"

    .line 297
    :try_start_a
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "100"

    .line 298
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_ec
    .catchall {:try_start_a .. :try_end_17} :catchall_ea

    move-result-object v0

    .line 300
    if-eqz v0, :cond_d5

    .line 301
    :goto_1a
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 302
    new-instance v3, Lcom/baidu/techain/rp/c/a;

    invoke-direct {v3}, Lcom/baidu/techain/rp/c/a;-><init>()V

    .line 303
    const-string v1, "a"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->a:I

    .line 304
    const-string v1, "b"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 305
    const-string v1, "c"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->c:I

    .line 306
    const-string v1, "d"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/baidu/techain/rp/c/a;->e:J

    .line 307
    const-string v1, "g"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->f:I

    .line 308
    const-string v1, "e"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->g:I

    .line 309
    const-string v1, "f"

    .line 310
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->h:I

    .line 311
    const-string v1, "i"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->i:I

    .line 312
    const-string v1, "j"

    .line 313
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->j:Ljava/lang/String;

    .line 314
    const-string v1, "h"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9a} :catch_bc
    .catchall {:try_start_1a .. :try_end_9a} :catchall_cc

    move-result-object v2

    .line 318
    :try_start_9b
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "xVOTuxgN3lkRN2v4"

    const-string v6, "utf-8"

    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 318
    invoke-virtual {v1, v4, v5}, Lcom/baidu/techain/ac/F;->ad([B[B)[B

    move-result-object v4

    .line 320
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b5} :catch_c6
    .catchall {:try_start_9b .. :try_end_b5} :catchall_cc

    .line 325
    :goto_b5
    :try_start_b5
    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 327
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ba} :catch_bc
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_cc

    goto/16 :goto_1a

    .line 331
    :catch_bc
    move-exception v1

    :goto_bd
    :try_start_bd
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_cc

    .line 333
    if-eqz v0, :cond_c5

    .line 335
    :try_start_c2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_e0

    .line 342
    :cond_c5
    :goto_c5
    return-object v10

    .line 322
    :catch_c6
    move-exception v1

    move-object v1, v2

    :try_start_c8
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_bc
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_b5

    .line 333
    :catchall_cc
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_cf
    if-eqz v9, :cond_d4

    .line 335
    :try_start_d1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_e5

    .line 338
    :cond_d4
    :goto_d4
    throw v0

    .line 333
    :cond_d5
    if-eqz v0, :cond_c5

    .line 335
    :try_start_d7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_c5

    .line 337
    :catch_db
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c5

    :catch_e0
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c5

    :catch_e5
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_d4

    .line 333
    :catchall_ea
    move-exception v0

    goto :goto_cf

    .line 331
    :catch_ec
    move-exception v0

    move-object v0, v9

    goto :goto_bd
.end method

.method public final a(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/rp/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 205
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    new-instance v2, Lcom/baidu/techain/e;

    iget-object v3, p0, Lcom/baidu/techain/rp/b/a;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1761
    iget-object v3, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v4, "re_net_wt"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 209
    const v4, 0x36ee80

    mul-int/2addr v3, v4

    .line 213
    if-ne p1, v8, :cond_fa

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(d <= ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-e*3600000) or e=0 )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    :goto_36
    const-string v7, "d desc"

    .line 231
    if-ne p1, v8, :cond_11d

    .line 232
    :try_start_3a
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x64

    .line 235
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 233
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4b} :catch_159
    .catchall {:try_start_3a .. :try_end_4b} :catchall_157

    move-result-object v0

    .line 245
    :goto_4c
    if-eqz v0, :cond_142

    .line 246
    :goto_4e
    :try_start_4e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_142

    .line 247
    new-instance v3, Lcom/baidu/techain/rp/c/a;

    invoke-direct {v3}, Lcom/baidu/techain/rp/c/a;-><init>()V

    .line 248
    const-string v1, "a"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->a:I

    .line 249
    const-string v1, "b"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 250
    const-string v1, "c"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->c:I

    .line 251
    const-string v1, "d"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/baidu/techain/rp/c/a;->e:J

    .line 252
    const-string v1, "g"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->f:I

    .line 253
    const-string v1, "e"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->g:I

    .line 254
    const-string v1, "f"

    .line 255
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->h:I

    .line 256
    const-string v1, "i"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->i:I

    .line 257
    const-string v1, "j"

    .line 258
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->j:Ljava/lang/String;

    .line 259
    const-string v1, "h"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_ce} :catch_f0
    .catchall {:try_start_4e .. :try_end_ce} :catchall_139

    move-result-object v2

    .line 263
    :try_start_cf
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "xVOTuxgN3lkRN2v4"

    const-string v6, "utf-8"

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 263
    invoke-virtual {v1, v4, v5}, Lcom/baidu/techain/ac/F;->ad([B[B)[B

    move-result-object v4

    .line 265
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e9} :catch_133
    .catchall {:try_start_cf .. :try_end_e9} :catchall_139

    .line 270
    :goto_e9
    :try_start_e9
    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 272
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ee} :catch_f0
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_139

    goto/16 :goto_4e

    .line 276
    :catch_f0
    move-exception v1

    :goto_f1
    :try_start_f1
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_139

    .line 278
    if-eqz v0, :cond_f9

    .line 280
    :try_start_f6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f9} :catch_14d

    .line 287
    :cond_f9
    :goto_f9
    return-object v10

    .line 219
    :cond_fa
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(d <= ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-e*3600000) or e=0 ) and (g!=2 or d<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v5, v3

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36

    .line 238
    :cond_11d
    :try_start_11d
    invoke-virtual {v2}, Lcom/baidu/techain/e;->y()I

    move-result v8

    .line 239
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 242
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_130} :catch_159
    .catchall {:try_start_11d .. :try_end_130} :catchall_157

    move-result-object v0

    goto/16 :goto_4c

    .line 267
    :catch_133
    move-exception v1

    move-object v1, v2

    :try_start_135
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_138} :catch_f0
    .catchall {:try_start_135 .. :try_end_138} :catchall_139

    goto :goto_e9

    .line 278
    :catchall_139
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_13c
    if-eqz v9, :cond_141

    .line 280
    :try_start_13e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_152

    .line 283
    :cond_141
    :goto_141
    throw v0

    .line 278
    :cond_142
    if-eqz v0, :cond_f9

    .line 280
    :try_start_144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_148

    goto :goto_f9

    .line 282
    :catch_148
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_f9

    :catch_14d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_f9

    :catch_152
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_141

    .line 278
    :catchall_157
    move-exception v0

    goto :goto_13c

    .line 276
    :catch_159
    move-exception v0

    move-object v0, v9

    goto :goto_f1
.end method

.method public final a(ZI)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/rp/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 349
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    if-eqz p1, :cond_e1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(d < ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-f*3600000) and f!= 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    :goto_21
    const-string v7, "d desc"

    .line 364
    const/4 v0, 0x2

    if-ne p2, v0, :cond_f6

    .line 365
    :try_start_26
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 366
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_14a
    .catchall {:try_start_26 .. :try_end_32} :catchall_148

    move-result-object v0

    .line 377
    :goto_33
    if-eqz v0, :cond_133

    .line 378
    :goto_35
    :try_start_35
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 379
    new-instance v3, Lcom/baidu/techain/rp/c/a;

    invoke-direct {v3}, Lcom/baidu/techain/rp/c/a;-><init>()V

    .line 380
    const-string v1, "a"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->a:I

    .line 381
    const-string v1, "b"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 382
    const-string v1, "c"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->c:I

    .line 383
    const-string v1, "d"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/baidu/techain/rp/c/a;->e:J

    .line 384
    const-string v1, "g"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->f:I

    .line 385
    const-string v1, "e"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->g:I

    .line 386
    const-string v1, "f"

    .line 387
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->h:I

    .line 388
    const-string v1, "i"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/techain/rp/c/a;->i:I

    .line 389
    const-string v1, "j"

    .line 390
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->j:Ljava/lang/String;

    .line 391
    const-string v1, "h"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_b5} :catch_d7
    .catchall {:try_start_35 .. :try_end_b5} :catchall_12a

    move-result-object v2

    .line 395
    :try_start_b6
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "xVOTuxgN3lkRN2v4"

    const-string v6, "utf-8"

    .line 396
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 395
    invoke-virtual {v1, v4, v5}, Lcom/baidu/techain/ac/F;->ad([B[B)[B

    move-result-object v4

    .line 397
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d0} :catch_124
    .catchall {:try_start_b6 .. :try_end_d0} :catchall_12a

    .line 402
    :goto_d0
    :try_start_d0
    iput-object v1, v3, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 404
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_d7
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_12a

    goto/16 :goto_35

    .line 408
    :catch_d7
    move-exception v1

    :goto_d8
    :try_start_d8
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_12a

    .line 410
    if-eqz v0, :cond_e0

    .line 412
    :try_start_dd
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_13e

    .line 419
    :cond_e0
    :goto_e0
    return-object v10

    .line 359
    :cond_e1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "d<="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0xf731400

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_21

    .line 369
    :cond_f6
    :try_start_f6
    new-instance v0, Lcom/baidu/techain/e;

    iget-object v1, p0, Lcom/baidu/techain/rp/b/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {v0}, Lcom/baidu/techain/e;->y()I

    move-result v8

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " 3g limit"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 372
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 375
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 373
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_121} :catch_14a
    .catchall {:try_start_f6 .. :try_end_121} :catchall_148

    move-result-object v0

    goto/16 :goto_33

    .line 399
    :catch_124
    move-exception v1

    move-object v1, v2

    :try_start_126
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_d7
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    goto :goto_d0

    .line 410
    :catchall_12a
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_12d
    if-eqz v9, :cond_132

    .line 412
    :try_start_12f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_143

    .line 415
    :cond_132
    :goto_132
    throw v0

    .line 410
    :cond_133
    if-eqz v0, :cond_e0

    .line 412
    :try_start_135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_e0

    .line 414
    :catch_139
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_e0

    :catch_13e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_e0

    :catch_143
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_132

    .line 410
    :catchall_148
    move-exception v0

    goto :goto_12d

    .line 408
    :catch_14a
    move-exception v0

    move-object v0, v9

    goto :goto_d8
.end method

.method public final b()I
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 423
    .line 424
    const/4 v9, 0x0

    .line 426
    :try_start_2
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_22
    .catchall {:try_start_2 .. :try_end_10} :catchall_34

    move-result-object v1

    .line 427
    if-eqz v1, :cond_4c

    .line 428
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_47
    .catchall {:try_start_13 .. :try_end_16} :catchall_40

    move-result v0

    .line 433
    :goto_17
    if-eqz v1, :cond_1c

    .line 435
    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 441
    :cond_1c
    :goto_1c
    return v0

    .line 437
    :catch_1d
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1c

    .line 431
    :catch_22
    move-exception v0

    move-object v0, v10

    :goto_24
    :try_start_24
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_43

    .line 433
    if-eqz v0, :cond_4a

    .line 435
    :try_start_29
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2e

    move v0, v9

    .line 438
    goto :goto_1c

    .line 437
    :catch_2e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v9

    .line 438
    goto :goto_1c

    .line 433
    :catchall_34
    move-exception v0

    :goto_35
    if-eqz v10, :cond_3a

    .line 435
    :try_start_37
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 438
    :cond_3a
    :goto_3a
    throw v0

    .line 437
    :catch_3b
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3a

    .line 433
    :catchall_40
    move-exception v0

    move-object v10, v1

    goto :goto_35

    :catchall_43
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_35

    .line 431
    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :cond_4a
    move v0, v9

    goto :goto_1c

    :cond_4c
    move v0, v9

    goto :goto_17
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 143
    .line 146
    :try_start_3
    const-string v3, "b=?"

    .line 147
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 148
    iget-object v0, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "c"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_2b
    .catchall {:try_start_3 .. :try_end_16} :catchall_3d

    move-result-object v1

    .line 149
    if-eqz v1, :cond_55

    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_50
    .catchall {:try_start_19 .. :try_end_1c} :catchall_49

    move-result v0

    if-lez v0, :cond_55

    move v0, v10

    .line 156
    :goto_20
    if-eqz v1, :cond_25

    .line 158
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 166
    :cond_25
    :goto_25
    return v0

    .line 160
    :catch_26
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_25

    .line 154
    :catch_2b
    move-exception v0

    move-object v0, v9

    :goto_2d
    :try_start_2d
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_4c

    .line 156
    if-eqz v0, :cond_53

    .line 158
    :try_start_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    move v0, v8

    .line 161
    goto :goto_25

    .line 160
    :catch_37
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v8

    .line 161
    goto :goto_25

    .line 156
    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v9, :cond_43

    .line 158
    :try_start_40
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    .line 161
    :cond_43
    :goto_43
    throw v0

    .line 160
    :catch_44
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43

    .line 156
    :catchall_49
    move-exception v0

    move-object v9, v1

    goto :goto_3e

    :catchall_4c
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3e

    .line 154
    :catch_50
    move-exception v0

    move-object v0, v1

    goto :goto_2d

    :cond_53
    move v0, v8

    goto :goto_25

    :cond_55
    move v0, v8

    goto :goto_20
.end method

.method public final c()I
    .registers 10

    .prologue
    .line 498
    const/4 v0, -0x1

    .line 499
    new-instance v1, Lcom/baidu/techain/e;

    iget-object v2, p0, Lcom/baidu/techain/rp/b/a;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1775
    iget-object v1, v1, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v4, "re_net_over"

    const/4 v5, 0x7

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 501
    const v4, 0x5265c00

    mul-int/2addr v1, v4

    .line 504
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(d <= ? or (d < ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-f*3600000) and f!= 0)) and b != \'1001001\'and i != 5 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 510
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    int-to-long v7, v1

    sub-long v1, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 512
    iget-object v1, p0, Lcom/baidu/techain/rp/b/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "r"

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_42} :catch_44

    move-result v0

    .line 516
    :goto_43
    return v0

    .line 514
    :catch_44
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43
.end method
