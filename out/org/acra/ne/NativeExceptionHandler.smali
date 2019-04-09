.class public Lorg/acra/ne/NativeExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/acra/ne/NativeException;)V
    .registers 3
    .param p0    # Lorg/acra/ne/NativeException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/acra/ne/NativeException;->getCrashFileDirectory()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 77
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)V

    .line 80
    :cond_1e
    return-void
.end method

.method public static native endApplication()V
.end method

.method public static handleCrash(Lorg/acra/ne/NativeException;)V
    .registers 6

    .prologue
    .line 40
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "handle native Crash"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_9
    invoke-virtual {p0}, Lorg/acra/ne/NativeException;->getCrashFileDirectory()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 48
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/acra/ne/NativeException;->setCrashFileDirectory(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/acra/ErrorReporter;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 53
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "handleNativeException \u7b49\u5f85Java\u4ee3\u7801\u4e2d\u7684\u7ebf\u7a0b"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_57
    .catchall {:try_start_9 .. :try_end_40} :catchall_83

    .line 62
    :goto_40
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "handleNativeException \u7ed3\u675f\u7a0b\u5e8f"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lorg/acra/ne/NativeExceptionHandler;->endApplication()V

    .line 65
    :goto_4c
    return-void

    .line 56
    :cond_4d
    :try_start_4d
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "dmp not found"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_56} :catch_57
    .catchall {:try_start_4d .. :try_end_56} :catchall_83

    goto :goto_40

    .line 58
    :catch_57
    move-exception v0

    .line 59
    :try_start_58
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNativeHandler error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_58 .. :try_end_76} :catchall_83

    .line 62
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "handleNativeException \u7ed3\u675f\u7a0b\u5e8f"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lorg/acra/ne/NativeExceptionHandler;->endApplication()V

    goto :goto_4c

    .line 62
    :catchall_83
    move-exception v0

    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "handleNativeException \u7ed3\u675f\u7a0b\u5e8f"

    invoke-interface {v1, v2, v3}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lorg/acra/ne/NativeExceptionHandler;->endApplication()V

    throw v0
.end method

.method public static native setDumpDir(Ljava/lang/String;I)V
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    new-instance v0, Lorg/acra/b/e;

    invoke-direct {v0, p1}, Lorg/acra/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/acra/b/e;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Lorg/acra/util/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Lorg/acra/ne/NativeExceptionHandler;->setDumpDir(Ljava/lang/String;I)V

    .line 32
    return-void
.end method
