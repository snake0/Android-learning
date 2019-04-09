.class public Lcom/mqunar/xutils/dbutils/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .registers 2

    .prologue
    .line 42
    if-eqz p0, :cond_5

    .line 44
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 48
    :cond_5
    :goto_5
    return-void

    .line 45
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 33
    if-eqz p0, :cond_5

    .line 35
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 39
    :cond_5
    :goto_5
    return-void

    .line 36
    :catch_6
    move-exception v0

    goto :goto_5
.end method
