.class public Lorg/acra/anr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;I)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 36
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, p1, :cond_31

    .line 37
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 38
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_2d

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 42
    iget v4, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    .line 49
    :goto_2c
    return-object v1

    .line 36
    :cond_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 49
    :cond_31
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method static a(Landroid/content/Context;IILjava/lang/String;)Z
    .registers 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 67
    invoke-static {p0, p1}, Lorg/acra/anr/a;->a(Landroid/content/Context;I)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_35

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget v3, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v2, v3, :cond_35

    .line 70
    new-instance v2, Lorg/acra/anr/ANRException;

    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/acra/anr/ANRException;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v0}, Lorg/acra/anr/ANRException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 72
    iput p2, v2, Lorg/acra/anr/ANRException;->monitorMode:I

    .line 73
    iput-object p3, v2, Lorg/acra/anr/ANRException;->tracesFilePath:Ljava/lang/String;

    .line 75
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method
