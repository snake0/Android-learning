.class final Lcom/baidu/techain/core/d$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/ac/Callback;

.field final synthetic b:Lcom/baidu/techain/core/d;


# direct methods
.method constructor <init>(Lcom/baidu/techain/core/d;Lcom/baidu/techain/ac/Callback;)V
    .registers 3

    .prologue
    .line 205
    iput-object p1, p0, Lcom/baidu/techain/core/d$1;->b:Lcom/baidu/techain/core/d;

    iput-object p2, p0, Lcom/baidu/techain/core/d$1;->a:Lcom/baidu/techain/ac/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 209
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 211
    iget-object v0, p0, Lcom/baidu/techain/core/d$1;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->d()V

    .line 213
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/techain/core/d$1;->b:Lcom/baidu/techain/core/d;

    invoke-static {v1}, Lcom/baidu/techain/core/d;->b(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/techain/e;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 217
    iget-object v0, p0, Lcom/baidu/techain/core/d$1;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->b(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/e;->a()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 218
    iget-object v0, p0, Lcom/baidu/techain/core/d$1;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->b(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/e;

    move-result-object v0

    .line 1097
    iget-object v1, v0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "iio"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1098
    iget-object v0, v0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    :goto_43
    new-instance v0, Lcom/baidu/techain/ac/U;

    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/techain/ac/U;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/baidu/techain/ac/U;->start()V

    .line 225
    iget-object v0, p0, Lcom/baidu/techain/core/d$1;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_5b

    .line 226
    iget-object v0, p0, Lcom/baidu/techain/core/d$1;->a:Lcom/baidu/techain/ac/Callback;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_5b
    :goto_5b
    return-void

    .line 220
    :cond_5c
    iget-object v0, p0, Lcom/baidu/techain/core/d$1;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v0

    .line 1723
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1724
    const-string v2, "n"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_71} :catch_81

    .line 1727
    :try_start_71
    iget-object v0, v0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    const-string v3, "n=-1"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_43

    .line 1729
    :catch_7c
    move-exception v0

    :try_start_7d
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_43

    .line 230
    :catch_81
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5b
.end method
