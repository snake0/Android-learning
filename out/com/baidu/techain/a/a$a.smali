.class final Lcom/baidu/techain/a/a$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/a/a;


# direct methods
.method public constructor <init>(Lcom/baidu/techain/a/a;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/techain/a/a$a;->a:Lcom/baidu/techain/a/a;

    .line 117
    const-string v0, "btechainh.db"

    const/4 v1, 0x0

    .line 1026
    iget v2, p1, Lcom/baidu/techain/a/a;->a:I

    .line 117
    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2026
    iget v1, p1, Lcom/baidu/techain/a/a;->a:I

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 119
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/a/a$a;->a:Lcom/baidu/techain/a/a;

    .line 3026
    iget-object v0, v0, Lcom/baidu/techain/a/a;->b:Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 128
    :goto_7
    return-void

    .line 126
    :catch_8
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_7
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 133
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "o="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 134
    if-ge p2, v2, :cond_2c

    if-lt p3, v2, :cond_2c

    .line 135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_21} :catch_50

    .line 137
    :try_start_21
    const-string v0, "ALTER TABLE pgntechain ADD COLUMN pr INTEGER  DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_48
    .catchall {:try_start_21 .. :try_end_29} :catchall_55

    .line 143
    :try_start_29
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 146
    :cond_2c
    :goto_2c
    if-ge p2, v4, :cond_3e

    if-lt p3, v4, :cond_3e

    .line 147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_33} :catch_50

    .line 149
    :try_start_33
    const-string v0, "ALTER TABLE pgntechain ADD COLUMN pdld INTEGER  DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3b} :catch_5a
    .catchall {:try_start_33 .. :try_end_3b} :catchall_62

    .line 155
    :try_start_3b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_50

    .line 158
    :cond_3e
    :goto_3e
    if-ge p2, v3, :cond_47

    if-lt p3, v3, :cond_47

    .line 160
    :try_start_42
    const-string v0, "drop table if exists tbchtechain"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_47} :catch_67

    .line 168
    :cond_47
    :goto_47
    return-void

    .line 141
    :catch_48
    move-exception v0

    :try_start_49
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_55

    .line 143
    :try_start_4c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_2c

    .line 166
    :catch_50
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_47

    .line 143
    :catchall_55
    move-exception v0

    :try_start_56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5a} :catch_50

    .line 153
    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    .line 155
    :try_start_5e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3e

    :catchall_62
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 162
    :catch_67
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_6b} :catch_50

    goto :goto_47
.end method
