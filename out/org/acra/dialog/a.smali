.class public abstract Lorg/acra/dialog/a;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;

.field private b:Lorg/acra/config/ACRAConfiguration;

.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Lorg/acra/b/a;

    invoke-virtual {p0}, Lorg/acra/dialog/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v2}, Lorg/acra/b/a;->a(ZI)V

    .line 99
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 109
    new-instance v0, Lorg/acra/b/c;

    invoke-direct {v0}, Lorg/acra/b/c;-><init>()V

    .line 111
    :try_start_6
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add user comment to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/dialog/a;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lorg/acra/dialog/a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/acra/b/c;->a(Ljava/io/File;)Lorg/acra/collector/CrashReportData;

    move-result-object v1

    .line 113
    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    if-nez p1, :cond_2e

    const-string p1, ""

    :cond_2e
    invoke-virtual {v1, v2, p1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v2, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p2, :cond_37

    const-string p2, ""

    :cond_37
    invoke-virtual {v1, v2, p2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lorg/acra/dialog/a;->a:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lorg/acra/b/c;->a(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3f} :catch_5e

    .line 121
    :goto_3f
    new-instance v0, Lorg/acra/sender/c;

    invoke-virtual {p0}, Lorg/acra/dialog/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/dialog/a;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/c;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/acra/sender/c;->a(ZZ)V

    .line 125
    iget-object v0, p0, Lorg/acra/dialog/a;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogOkToast()I

    move-result v0

    .line 126
    if-eqz v0, :cond_5d

    .line 127
    invoke-virtual {p0}, Lorg/acra/dialog/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lorg/acra/util/k;->a(Landroid/content/Context;II)V

    .line 129
    :cond_5d
    return-void

    .line 116
    :catch_5e
    move-exception v0

    .line 117
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "User comment not added: "

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method protected final b()Lorg/acra/config/ACRAConfiguration;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/acra/dialog/a;->b:Lorg/acra/config/ACRAConfiguration;

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashReportDialog extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/acra/dialog/a;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lorg/acra/dialog/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/acra/dialog/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REPORT_FILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lorg/acra/dialog/a;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "REPORT_EXCEPTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lorg/acra/dialog/a;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FORCE_CANCEL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 68
    if-eqz v3, :cond_60

    .line 69
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Forced reports deletion."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lorg/acra/dialog/a;->a()V

    .line 71
    invoke-virtual {p0}, Lorg/acra/dialog/a;->finish()V

    .line 81
    :goto_5f
    return-void

    .line 72
    :cond_60
    instance-of v3, v0, Lorg/acra/config/ACRAConfiguration;

    if-eqz v3, :cond_80

    instance-of v3, v1, Ljava/io/File;

    if-eqz v3, :cond_80

    instance-of v3, v2, Ljava/lang/Throwable;

    if-nez v3, :cond_6e

    if-nez v2, :cond_80

    .line 73
    :cond_6e
    check-cast v0, Lorg/acra/config/ACRAConfiguration;

    iput-object v0, p0, Lorg/acra/dialog/a;->b:Lorg/acra/config/ACRAConfiguration;

    move-object v0, v1

    .line 74
    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/acra/dialog/a;->a:Ljava/io/File;

    move-object v0, v2

    .line 75
    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/acra/dialog/a;->c:Ljava/lang/Throwable;

    .line 76
    invoke-virtual {p0, p1}, Lorg/acra/dialog/a;->a(Landroid/os/Bundle;)V

    goto :goto_5f

    .line 78
    :cond_80
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Illegal or incomplete call of BaseCrashReportDialog."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lorg/acra/dialog/a;->finish()V

    goto :goto_5f
.end method
