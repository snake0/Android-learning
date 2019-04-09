.class public final Lorg/acra/builder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lorg/acra/config/ACRAConfiguration;

.field private final c:Lorg/acra/collector/c;

.field private final d:Lorg/acra/builder/LastActivityManager;

.field private final e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final f:Lorg/acra/builder/ReportPrimer;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lorg/acra/builder/c;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/collector/c;Lorg/acra/builder/LastActivityManager;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/builder/ReportPrimer;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/collector/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/acra/builder/LastActivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Thread$UncaughtExceptionHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/acra/builder/ReportPrimer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/builder/c;->g:Z

    .line 65
    iput-object p1, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    .line 67
    iput-object p3, p0, Lorg/acra/builder/c;->c:Lorg/acra/collector/c;

    .line 68
    iput-object p4, p0, Lorg/acra/builder/c;->d:Lorg/acra/builder/LastActivityManager;

    .line 69
    iput-object p5, p0, Lorg/acra/builder/c;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 70
    iput-object p6, p0, Lorg/acra/builder/c;->f:Lorg/acra/builder/ReportPrimer;

    .line 71
    return-void
.end method

.method static synthetic a(Lorg/acra/builder/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lorg/acra/collector/CrashReportData;)Ljava/io/File;
    .registers 7
    .param p1    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-virtual {p1, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 369
    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v1}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3a

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_48

    sget-object v0, Lorg/acra/a;->a:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Lorg/acra/b/e;

    iget-object v2, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/acra/b/e;-><init>(Landroid/content/Context;)V

    .line 374
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lorg/acra/b/e;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 370
    :cond_3a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_13

    :cond_48
    const-string v0, ""

    goto :goto_1b
.end method

.method private static a(Lorg/acra/config/ACRAConfiguration;)Lorg/acra/builder/EndingPrimer;
    .registers 6
    .param p0    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p0}, Lorg/acra/config/ACRAConfiguration;->endingPrimerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/builder/EndingPrimer;
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_36

    .line 300
    :goto_a
    return-object v0

    .line 294
    :catch_b
    move-exception v0

    .line 295
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not construct ReportPrimer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/acra/config/ACRAConfiguration;->endingPrimerClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - not priming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    :goto_30
    new-instance v0, Lorg/acra/builder/a;

    invoke-direct {v0}, Lorg/acra/builder/a;-><init>()V

    goto :goto_a

    .line 296
    :catch_36
    move-exception v0

    .line 297
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not construct ReportPrimer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/acra/config/ACRAConfiguration;->endingPrimerClass()Ljava/lang/Class;

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

.method private a(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)V
    .registers 14
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/builder/ReportBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    .line 327
    iget-object v0, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 330
    iget-object v1, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resNotifIcon()I

    move-result v1

    .line 332
    iget-object v2, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->resNotifTickerText()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 335
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating Notification for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p1, p2}, Lorg/acra/builder/c;->b(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;

    move-result-object v5

    .line 337
    iget-object v6, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    sget v7, Lorg/acra/builder/c;->h:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lorg/acra/builder/c;->h:I

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 339
    iget-object v6, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    iget-object v7, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v7}, Lorg/acra/config/ACRAConfiguration;->resNotifTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 340
    iget-object v7, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    iget-object v8, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v8}, Lorg/acra/config/ACRAConfiguration;->resNotifText()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 342
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 353
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 358
    invoke-direct {p0, p1, p2}, Lorg/acra/builder/c;->b(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;

    move-result-object v2

    .line 359
    const-string v3, "FORCE_CANCEL"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    iget-object v3, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 363
    const/16 v2, 0x29a

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 364
    return-void
.end method

.method private a(Ljava/io/File;Lorg/acra/collector/CrashReportData;)V
    .registers 7
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing crash report file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Lorg/acra/b/c;

    invoke-direct {v0}, Lorg/acra/b/c;-><init>()V

    .line 394
    invoke-virtual {v0, p2, p1}, Lorg/acra/b/c;->a(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 398
    :goto_22
    return-void

    .line 395
    :catch_23
    move-exception v0

    .line 396
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "An error occurred while writing the report file..."

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method private a(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
    .registers 8
    .param p1    # Lorg/acra/builder/ReportBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    if-eqz p3, :cond_2a

    .line 229
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating CrashReportDialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, p2, p1}, Lorg/acra/builder/c;->b(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    .line 231
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    :cond_2a
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for Toast + worker ended. Kill Application ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isEndApplication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isEndApplication()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 238
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getUncaughtExceptionThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/acra/builder/c;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 240
    :cond_59
    return-void
.end method

.method static synthetic a(Lorg/acra/builder/c;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/builder/c;->a(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    return-void
.end method

.method private b(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;
    .registers 7
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/builder/ReportBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating DialogIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    const-string v1, "REPORT_FILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    const-string v1, "REPORT_EXCEPTION"

    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 413
    const-string v1, "REPORT_CONFIG"

    iget-object v2, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 414
    return-object v0
.end method

.method static synthetic b(Lorg/acra/builder/c;)Lorg/acra/config/ACRAConfiguration;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    return-object v0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iget-object v0, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->alsoReportToAndroidFramework()Z

    move-result v1

    .line 248
    if-eqz p1, :cond_20

    const/4 v0, 0x1

    .line 249
    :goto_9
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    iget-object v0, p0, Lorg/acra/builder/c;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_22

    .line 251
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Handing Exception on to default ExceptionHandler"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lorg/acra/builder/c;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 288
    :goto_1f
    return-void

    .line 248
    :cond_20
    const/4 v0, 0x0

    goto :goto_9

    .line 261
    :cond_22
    iget-object v0, p0, Lorg/acra/builder/c;->d:Lorg/acra/builder/LastActivityManager;

    invoke-virtual {v0}, Lorg/acra/builder/LastActivityManager;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_51

    .line 263
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "Finishing the last Activity prior to killing the Process"

    invoke-interface {v1, v2, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Lorg/acra/builder/c$3;

    invoke-direct {v1, p0, v0}, Lorg/acra/builder/c$3;-><init>(Lorg/acra/builder/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p1, v0, :cond_4c

    .line 274
    iget-object v0, p0, Lorg/acra/builder/c;->d:Lorg/acra/builder/LastActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/acra/builder/LastActivityManager;->a(I)V

    .line 276
    :cond_4c
    iget-object v0, p0, Lorg/acra/builder/c;->d:Lorg/acra/builder/LastActivityManager;

    invoke-virtual {v0}, Lorg/acra/builder/LastActivityManager;->a()V

    .line 280
    :cond_51
    :try_start_51
    iget-object v0, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-static {v0}, Lorg/acra/builder/c;->a(Lorg/acra/config/ACRAConfiguration;)Lorg/acra/builder/EndingPrimer;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lorg/acra/builder/EndingPrimer;->primeEnding(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5c} :catch_69

    .line 285
    :goto_5c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 286
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_1f

    .line 281
    :catch_69
    move-exception v0

    .line 282
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primeEnding failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method private b(Z)V
    .registers 5

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/acra/builder/c;->g:Z

    if-eqz v0, :cond_12

    .line 310
    new-instance v0, Lorg/acra/sender/c;

    iget-object v1, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/c;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 311
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/acra/sender/c;->a(ZZ)V

    .line 315
    :goto_11
    return-void

    .line 313
    :cond_12
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Would be sending reports, but ACRA is disabled"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Lorg/acra/builder/c;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_30

    .line 94
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lorg/acra/builder/c;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 102
    :goto_2f
    return-void

    .line 98
    :cond_30
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - no default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
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

    iget-object v3, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public a(Lorg/acra/builder/ReportBuilder;)V
    .registers 12
    .param p1    # Lorg/acra/builder/ReportBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 119
    iget-boolean v0, p0, Lorg/acra/builder/c;->g:Z

    if-nez v0, :cond_10

    .line 120
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "ACRA is disabled. Report not sent."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_f
    :goto_f
    return-void

    .line 125
    :cond_10
    iget-object v0, p0, Lorg/acra/builder/c;->f:Lorg/acra/builder/ReportPrimer;

    iget-object v1, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lorg/acra/builder/ReportPrimer;->primeReport(Landroid/content/Context;Lorg/acra/builder/ReportBuilder;)V

    .line 129
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isSendSilently()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 131
    iget-object v0, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    move v1, v3

    .line 144
    :goto_24
    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v2, :cond_38

    iget-object v2, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->resToastText()I

    move-result v2

    if-eqz v2, :cond_b0

    sget-object v2, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v2, :cond_38

    sget-object v2, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v2, :cond_b0

    :cond_38
    move v6, v5

    .line 147
    :goto_39
    new-instance v2, Lorg/acra/builder/c$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lorg/acra/builder/c$a;-><init>(Lorg/acra/builder/c$1;)V

    .line 148
    if-eqz v6, :cond_49

    .line 149
    new-instance v4, Lorg/acra/builder/c$1;

    invoke-direct {v4, p0, v2}, Lorg/acra/builder/c$1;-><init>(Lorg/acra/builder/c;Lorg/acra/builder/c$a;)V

    invoke-virtual {v4}, Lorg/acra/builder/c$1;->start()V

    .line 170
    :cond_49
    iget-object v4, p0, Lorg/acra/builder/c;->c:Lorg/acra/collector/c;

    invoke-virtual {v4, p1}, Lorg/acra/collector/c;->a(Lorg/acra/builder/ReportBuilder;)Lorg/acra/collector/CrashReportData;

    move-result-object v7

    .line 174
    invoke-direct {p0, v7}, Lorg/acra/builder/c;->a(Lorg/acra/collector/CrashReportData;)Ljava/io/File;

    move-result-object v4

    .line 175
    invoke-direct {p0, v4, v7}, Lorg/acra/builder/c;->a(Ljava/io/File;Lorg/acra/collector/CrashReportData;)V

    .line 177
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/acra/ErrorReporter;->clearCustomData()V

    .line 178
    new-instance v7, Lorg/acra/d/b;

    iget-object v8, p0, Lorg/acra/builder/c;->a:Landroid/content/Context;

    iget-object v9, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v7, v8, v9}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v7}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 179
    sget-object v8, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v8, :cond_7a

    sget-object v8, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v8, :cond_7a

    const-string v8, "acra.alwaysaccept"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 184
    :cond_7a
    invoke-direct {p0, v1}, Lorg/acra/builder/c;->b(Z)V

    .line 185
    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_87

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isEndApplication()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 196
    :cond_87
    :goto_87
    sget-object v1, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_c3

    const-string v0, "acra.alwaysaccept"

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 199
    :goto_93
    if-eqz v6, :cond_c5

    .line 201
    new-instance v0, Lorg/acra/builder/c$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/acra/builder/c$2;-><init>(Lorg/acra/builder/c;Lorg/acra/builder/c$a;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    invoke-virtual {v0}, Lorg/acra/builder/c$2;->start()V

    goto/16 :goto_f

    .line 133
    :cond_a1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 139
    iget-object v1, p0, Lorg/acra/builder/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v2, :cond_ca

    move v1, v5

    .line 140
    goto/16 :goto_24

    :cond_b0
    move v6, v3

    .line 144
    goto :goto_39

    .line 191
    :cond_b2
    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_87

    .line 192
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v8, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v9, "Creating Notification."

    invoke-interface {v1, v8, v9}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v4, p1}, Lorg/acra/builder/c;->a(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)V

    goto :goto_87

    :cond_c3
    move v5, v3

    .line 196
    goto :goto_93

    .line 220
    :cond_c5
    invoke-direct {p0, p1, v4, v5}, Lorg/acra/builder/c;->a(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    goto/16 :goto_f

    :cond_ca
    move v1, v3

    goto/16 :goto_24
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/acra/builder/c;->g:Z

    .line 110
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/acra/builder/c;->g:Z

    return v0
.end method
