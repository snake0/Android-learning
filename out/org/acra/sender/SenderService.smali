.class public Lorg/acra/sender/SenderService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Lorg/acra/b/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    const-string v0, "ACRA SenderService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lorg/acra/b/e;

    invoke-direct {v0, p0}, Lorg/acra/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/sender/SenderService;->b:Lorg/acra/b/e;

    .line 33
    return-void
.end method

.method private a(Lorg/acra/config/ACRAConfiguration;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 99
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/sender/ReportSenderFactory;

    .line 100
    invoke-virtual {p0}, Lorg/acra/sender/SenderService;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Lorg/acra/sender/ReportSenderFactory;->create(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Lorg/acra/sender/ReportSender;

    move-result-object v1

    .line 101
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/InstantiationException; {:try_start_15 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_26} :catch_43

    goto :goto_9

    .line 102
    :catch_27
    move-exception v1

    .line 103
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not construct ReportSender from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0, v1}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 104
    :catch_43
    move-exception v1

    .line 105
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not construct ReportSender from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0, v1}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 108
    :cond_5f
    return-object v2
.end method

.method private a()V
    .registers 10

    .prologue
    .line 115
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Mark all pending reports as approved."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lorg/acra/sender/SenderService;->b:Lorg/acra/b/e;

    invoke-virtual {v0}, Lorg/acra/b/e;->b()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_51

    aget-object v3, v1, v0

    .line 118
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/acra/sender/SenderService;->b:Lorg/acra/b/e;

    invoke-virtual {v5}, Lorg/acra/b/e;->c()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 120
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not rename approved report from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 123
    :cond_51
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 128
    iget v0, p0, Lorg/acra/sender/SenderService;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 132
    :cond_f
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 12
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "onlySendSilentReports"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 39
    const-string v0, "approveReportsFirst"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 42
    const-string v0, "reportSenderFactories"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 44
    const-string v1, "acraConfig"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/acra/config/ACRAConfiguration;

    .line 46
    const-string v5, "packageEnv"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/acra/sender/SenderService;->a:I

    .line 48
    iget v5, p0, Lorg/acra/sender/SenderService;->a:I

    invoke-static {v5}, Lorg/acra/ACRA;->a(I)V

    .line 50
    const-string v5, "cParam"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    sget-object v6, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v7, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v8, "About to start sending reports from SenderService"

    invoke-interface {v6, v7, v8}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_3a
    invoke-direct {p0, v1, v0}, Lorg/acra/sender/SenderService;->a(Lorg/acra/config/ACRAConfiguration;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 57
    if-eqz v4, :cond_43

    .line 58
    invoke-direct {p0}, Lorg/acra/sender/SenderService;->a()V

    .line 62
    :cond_43
    iget-object v4, p0, Lorg/acra/sender/SenderService;->b:Lorg/acra/b/e;

    invoke-virtual {v4}, Lorg/acra/b/e;->f()[Ljava/io/File;

    move-result-object v4

    .line 64
    new-instance v6, Lorg/acra/sender/b;

    invoke-direct {v6, p0, v1, v0}, Lorg/acra/sender/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Ljava/util/List;)V

    .line 68
    new-instance v7, Lorg/acra/b/b;

    invoke-direct {v7}, Lorg/acra/b/b;-><init>()V

    .line 73
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_56
    if-ge v1, v8, :cond_6c

    aget-object v2, v4, v1

    .line 74
    if-eqz v3, :cond_69

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/acra/b/b;->a(Ljava/lang/String;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_63} :catch_7e

    move-result v9

    if-nez v9, :cond_69

    .line 73
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 78
    :cond_69
    const/4 v9, 0x5

    if-lt v0, v9, :cond_76

    .line 89
    :cond_6c
    :goto_6c
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Finished sending reports from SenderService"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 82
    :cond_76
    :try_start_76
    iget v9, p0, Lorg/acra/sender/SenderService;->a:I

    invoke-virtual {v6, v2, v5, v9}, Lorg/acra/sender/b;->a(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7b} :catch_7e

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 85
    :catch_7e
    move-exception v0

    .line 86
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c
.end method
