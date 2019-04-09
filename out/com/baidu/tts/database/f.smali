.class public Lcom/baidu/tts/database/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/baidu/tts/database/f$a;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/database/f$a;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    iput-object p2, p0, Lcom/baidu/tts/database/f;->b:Lcom/baidu/tts/database/f$a;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/baidu/tts/database/f;->b:Lcom/baidu/tts/database/f$a;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2b

    .line 29
    :try_start_9
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 30
    iget-object v1, p0, Lcom/baidu/tts/database/f;->b:Lcom/baidu/tts/database/f$a;

    iget-object v2, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v1, v2}, Lcom/baidu/tts/database/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 31
    if-eqz v0, :cond_1d

    .line 32
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_2c
    .catchall {:try_start_9 .. :try_end_1d} :catchall_3f

    .line 37
    :cond_1d
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2b

    .line 38
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 39
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 43
    :cond_2b
    :goto_2b
    return v0

    .line 34
    :catch_2c
    move-exception v1

    .line 35
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3f

    .line 37
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2b

    .line 38
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 39
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2b

    .line 37
    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4e

    .line 38
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 39
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4e
    throw v0
.end method
