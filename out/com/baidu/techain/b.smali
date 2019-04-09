.class public final Lcom/baidu/techain/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/baidu/techain/b;->a:I

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/baidu/techain/b;->c:I

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/baidu/techain/b;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    move-object v0, p0

    .line 202
    :goto_1
    if-eqz v0, :cond_f

    .line 203
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_a

    .line 204
    const-string v0, ""

    .line 227
    :goto_9
    return-object v0

    .line 206
    :cond_a
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_2a

    move-result-object v0

    goto :goto_1

    .line 209
    :cond_f
    const/4 v2, 0x0

    .line 211
    :try_start_10
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_31

    .line 212
    :try_start_15
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 214
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_3e

    move-result-object v0

    .line 218
    :try_start_21
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_2a

    goto :goto_9

    .line 220
    :catch_25
    move-exception v1

    :try_start_26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_9

    .line 225
    :catch_2a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 227
    const-string v0, ""

    goto :goto_9

    .line 216
    :catchall_31
    move-exception v0

    move-object v1, v2

    :goto_33
    if-eqz v1, :cond_38

    .line 218
    :try_start_35
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_2a

    .line 221
    :cond_38
    :goto_38
    :try_start_38
    throw v0

    .line 220
    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3d} :catch_2a

    goto :goto_38

    .line 216
    :catchall_3e
    move-exception v0

    goto :goto_33
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 142
    return-void
.end method

.method public static b()V
    .registers 0

    .prologue
    .line 190
    return-void
.end method

.method public static c()V
    .registers 0

    .prologue
    .line 238
    return-void
.end method
