.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/app/Application;

.field private final crashReportDataFactory:Lorg/acra/collector/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private errorReporterEnable:Z

.field private volatile exceptionHandlerInitializer:Lorg/acra/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBeforeWriteCrashAdders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/BeforeWriteCrashAdder;",
            ">;"
        }
    .end annotation
.end field

.field public mLastActivityManager:Lorg/acra/builder/LastActivityManager;

.field private final reportExecutor:Lorg/acra/builder/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final supportedAndroidVersion:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mBeforeWriteCrashAdders:Ljava/util/List;

    .line 88
    new-instance v0, Lorg/acra/ErrorReporter$1;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$1;-><init>(Lorg/acra/ErrorReporter;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/b;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    .line 99
    iput-boolean v2, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    .line 101
    iput-boolean v2, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    .line 102
    iput-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    .line 103
    iput-object v1, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    .line 104
    iput-object v1, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    .line 105
    iput-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;ZZZ)V
    .registers 15
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mBeforeWriteCrashAdders:Ljava/util/List;

    .line 88
    new-instance v0, Lorg/acra/ErrorReporter$1;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$1;-><init>(Lorg/acra/ErrorReporter;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/b;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    .line 121
    iput-object p1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    .line 122
    iput-object p2, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    .line 123
    iput-boolean p5, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    .line 128
    invoke-virtual {p2}, Lorg/acra/config/ACRAConfiguration;->getReportFields()Lorg/acra/a/d;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/a/d;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 129
    iget-object v0, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/collector/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 136
    :goto_2d
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 138
    new-instance v0, Lorg/acra/builder/LastActivityManager;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-direct {v0, v1, p2}, Lorg/acra/builder/LastActivityManager;-><init>(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mLastActivityManager:Lorg/acra/builder/LastActivityManager;

    .line 139
    new-instance v0, Lorg/acra/collector/c;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    iget-object v6, p0, Lorg/acra/ErrorReporter;->mLastActivityManager:Lorg/acra/builder/LastActivityManager;

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/acra/collector/c;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;Ljava/util/Calendar;Ljava/lang/String;Lorg/acra/builder/LastActivityManager;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    .line 143
    if-eqz p6, :cond_6a

    .line 144
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    .line 145
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 151
    :goto_51
    invoke-static {p2}, Lorg/acra/ErrorReporter;->getReportPrimer(Lorg/acra/config/ACRAConfiguration;)Lorg/acra/builder/ReportPrimer;

    move-result-object v6

    .line 153
    new-instance v0, Lorg/acra/builder/c;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mLastActivityManager:Lorg/acra/builder/LastActivityManager;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/acra/builder/c;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/collector/c;Lorg/acra/builder/LastActivityManager;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/builder/ReportPrimer;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    .line 154
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, p4}, Lorg/acra/builder/c;->a(Z)V

    .line 155
    return-void

    :cond_68
    move-object v5, v7

    .line 131
    goto :goto_2d

    :cond_6a
    move-object v5, v7

    .line 147
    goto :goto_51
.end method

.method private dealBackgroundCrashInfo(Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 390
    new-instance v0, Lorg/acra/d/b;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    const-string v1, "acra.backgroundCrashCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "acra.backgroundCrashCount"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    const/4 v0, 0x5

    if-le v1, v0, :cond_6d

    .line 395
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA caught a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "not get exception info , because backgroundCrashCount > 5"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 398
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 400
    :cond_6d
    return-void
.end method

.method private dealSilentBackgroundCrashInfo(Ljava/lang/Throwable;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 408
    new-instance v1, Lorg/acra/d/b;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v1, v2, v3}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v1}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    const-string v2, "acra.silentBackgroundCrashCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 411
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "acra.silentBackgroundCrashCount"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 412
    const/4 v1, 0x5

    if-le v2, v1, :cond_41

    .line 413
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not handler silent exception info , because silentBackgroundCrashCount > 5 silent exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x1

    .line 417
    :cond_41
    return v0
.end method

.method private exeAdders(Ljava/lang/Throwable;)V
    .registers 8
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 296
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mBeforeWriteCrashAdders:Ljava/util/List;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/acra/ErrorReporter;->mBeforeWriteCrashAdders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_46

    .line 297
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mBeforeWriteCrashAdders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/BeforeWriteCrashAdder;

    .line 299
    if-eqz v0, :cond_12

    .line 301
    :try_start_20
    iget-object v2, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-interface {v0, v2, p1}, Lorg/acra/BeforeWriteCrashAdder;->add(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_12

    .line 302
    :catch_26
    move-exception v0

    .line 303
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BeforeWriteCrashAdder.add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 308
    :cond_46
    return-void
.end method

.method private static getReportPrimer(Lorg/acra/config/ACRAConfiguration;)Lorg/acra/builder/ReportPrimer;
    .registers 6
    .param p0    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 580
    :try_start_0
    invoke-virtual {p0}, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/builder/ReportPrimer;
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_36

    .line 587
    :goto_a
    return-object v0

    .line 581
    :catch_b
    move-exception v0

    .line 582
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not construct ReportPrimer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - not priming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    :goto_30
    new-instance v0, Lorg/acra/builder/b;

    invoke-direct {v0}, Lorg/acra/builder/b;-><init>()V

    goto :goto_a

    .line 583
    :catch_36
    move-exception v0

    .line 584
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not construct ReportPrimer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - not priming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private performDeprecatedReportPriming()V
    .registers 6

    .prologue
    .line 571
    :try_start_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/b;

    invoke-interface {v0, p0}, Lorg/acra/b;->a(Lorg/acra/ErrorReporter;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 575
    :goto_5
    return-void

    .line 572
    :catch_6
    move-exception v0

    .line 573
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private setIdToCustomData()V
    .registers 3

    .prologue
    .line 315
    const-string v0, "vid"

    sget-object v1, Lorg/acra/ACRA;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    const-string v0, ""

    sget-object v1, Lorg/acra/ACRA;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 318
    const-string v0, "cid"

    sget-object v1, Lorg/acra/ACRA;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    :cond_18
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 323
    const-string v0, "uid"

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-static {v1}, Lorg/acra/util/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    :cond_32
    return-void
.end method


# virtual methods
.method public addBeforeWriteCrashAdder(Lorg/acra/BeforeWriteCrashAdder;)V
    .registers 3

    .prologue
    .line 286
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mBeforeWriteCrashAdders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_9
    return-void
.end method

.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {p0, p1, p2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    :cond_7
    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .registers 4

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_2e

    .line 497
    new-instance v0, Lorg/acra/util/e;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/util/e;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 498
    iget-object v1, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 499
    invoke-virtual {v0}, Lorg/acra/util/e;->a()V

    .line 501
    :cond_18
    iget-object v1, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 502
    invoke-virtual {v0}, Lorg/acra/util/e;->b()V

    .line 504
    :cond_23
    iget-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v1}, Lorg/acra/builder/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 505
    invoke-virtual {v0}, Lorg/acra/util/e;->c()V

    .line 508
    :cond_2e
    return-void
.end method

.method public clearCustomData()V
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_9

    .line 261
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    invoke-virtual {v0}, Lorg/acra/collector/c;->a()V

    .line 263
    :cond_9
    return-void
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_b

    .line 276
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    invoke-virtual {v0, p1}, Lorg/acra/collector/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Z)V

    .line 563
    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .registers 8
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 521
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_21

    .line 524
    :try_start_4
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->setIdToCustomData()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_22

    .line 530
    :goto_7
    if-eqz p1, :cond_c

    .line 533
    :try_start_9
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->exeAdders(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_42

    .line 540
    :cond_c
    :goto_c
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->performDeprecatedReportPriming()V

    .line 543
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 544
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    .line 545
    if-eqz p2, :cond_1c

    .line 546
    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->endApplication()Lorg/acra/builder/ReportBuilder;

    .line 548
    :cond_1c
    iget-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, v1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/c;)V

    .line 550
    :cond_21
    return-void

    .line 525
    :catch_22
    move-exception v0

    .line 526
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCParam is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 534
    :catch_42
    move-exception v0

    .line 535
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adder is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .registers 7
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 428
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_e

    .line 431
    sget-boolean v0, Lorg/acra/builder/LastActivityManager;->a:Z

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->dealSilentBackgroundCrashInfo(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 458
    :cond_e
    :goto_e
    return-void

    .line 437
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->setIdToCustomData()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_2d

    .line 442
    :goto_12
    if-eqz p1, :cond_17

    .line 445
    :try_start_14
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->exeAdders(Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_4d

    .line 451
    :cond_17
    :goto_17
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->performDeprecatedReportPriming()V

    .line 453
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->sendSilently()Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, v1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/c;)V

    goto :goto_e

    .line 438
    :catch_2d
    move-exception v0

    .line 439
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCParam is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 446
    :catch_4d
    move-exception v0

    .line 447
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adder is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public recodeModuleInfo(Ljava/lang/String;I)Lorg/acra/ErrorReporter;
    .registers 5

    .prologue
    .line 467
    const-string v0, "moduleName"

    invoke-virtual {p0, v0, p1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    const-string v0, "moduleVersion"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    return-object p0
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_b

    .line 250
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/c;

    invoke-virtual {v0, p1}, Lorg/acra/collector/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public setEnabled(Z)V
    .registers 6

    .prologue
    .line 479
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_3b

    .line 480
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    if-eqz v0, :cond_3f

    .line 481
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3c

    const-string v0, "enabled"

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, p1}, Lorg/acra/builder/c;->a(Z)V

    .line 487
    :cond_3b
    :goto_3b
    return-void

    .line 481
    :cond_3c
    const-string v0, "disabled"

    goto :goto_1b

    .line 484
    :cond_3f
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public setExceptionHandlerInitializer(Lorg/acra/b;)V
    .registers 3
    .param p1    # Lorg/acra/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_8

    .line 229
    if-eqz p1, :cond_9

    :goto_6
    iput-object p1, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/b;

    .line 237
    :cond_8
    return-void

    .line 229
    :cond_9
    new-instance p1, Lorg/acra/ErrorReporter$2;

    invoke-direct {p1, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    goto :goto_6
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 336
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->errorReporterEnable:Z

    if-eqz v0, :cond_18

    .line 339
    sget-boolean v0, Lorg/acra/builder/LastActivityManager;->a:Z

    if-nez v0, :cond_b

    .line 340
    invoke-direct {p0, p2}, Lorg/acra/ErrorReporter;->dealBackgroundCrashInfo(Ljava/lang/Throwable;)V

    .line 345
    :cond_b
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0}, Lorg/acra/builder/c;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 346
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, p1, p2}, Lorg/acra/builder/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 384
    :cond_18
    :goto_18
    return-void

    .line 352
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->setIdToCustomData()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_84

    .line 359
    :goto_1c
    :try_start_1c
    invoke-direct {p0, p2}, Lorg/acra/ErrorReporter;->exeAdders(Ljava/lang/Throwable;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_a5

    .line 366
    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA caught a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Building report"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->performDeprecatedReportPriming()V

    .line 372
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->endApplication()Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, v1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/c;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_73} :catch_74

    goto :goto_18

    .line 378
    :catch_74
    move-exception v0

    .line 380
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "ACRA failed to capture the error - handing off to native error reporter"

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/c;

    invoke-virtual {v0, p1, p2}, Lorg/acra/builder/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 353
    :catch_84
    move-exception v0

    .line 354
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCParam is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 360
    :catch_a5
    move-exception v0

    .line 361
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adder is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method
