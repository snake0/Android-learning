.class public final Lorg/acra/config/ACRAConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final additionalDropBoxTags:Lorg/acra/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final additionalSharedPreferences:Lorg/acra/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final alsoReportToAndroidFramework:Z

.field private final applicationLogFile:Ljava/lang/String;

.field private final applicationLogFileLines:I

.field private final buildConfigClass:Ljava/lang/Class;

.field private final certificatePath:Ljava/lang/String;

.field private final certificateType:Ljava/lang/String;

.field private final connectionTimeout:I

.field private final deleteOldUnsentReportsOnApplicationStart:Z

.field private final deleteUnapprovedReportsOnApplicationStart:Z

.field private final dropboxCollectionMinutes:I

.field private final endingPrimerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/builder/EndingPrimer;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeMatchingSettingsKeys:Lorg/acra/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeMatchingSharedPreferencesKeys:Lorg/acra/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final formUri:Ljava/lang/String;

.field private final formUriBasicAuthLogin:Ljava/lang/String;

.field private final formUriBasicAuthPassword:Ljava/lang/String;

.field private final httpHeaders:Lorg/acra/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/c",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpMethod:Lorg/acra/sender/HttpSender$Method;

.field private final includeDropBoxSystemTags:Z

.field private final keyStoreFactoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/security/c;",
            ">;"
        }
    .end annotation
.end field

.field private final logcatArguments:Lorg/acra/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logcatFilterByPid:Z

.field private final mailTo:Ljava/lang/String;

.field private final monitorANR:Z

.field private final monitorAllProcess:Z

.field private final monitorNativeCrash:Z

.field private final monitorProcess:[Ljava/lang/String;

.field private final reportContent:Lorg/acra/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/d",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

.field private final reportDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/dialog/a;",
            ">;"
        }
    .end annotation
.end field

.field private final reportPrimerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/builder/ReportPrimer;",
            ">;"
        }
    .end annotation
.end field

.field private final reportSenderFactoryClasses:Lorg/acra/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final reportType:Lorg/acra/sender/HttpSender$Type;

.field private final reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

.field private final resCertificate:I
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation
.end field

.field private final resDialogCommentPrompt:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resDialogEmailPrompt:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resDialogIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final resDialogNegativeButtonText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resDialogOkToast:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resDialogPositiveButtonText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resDialogText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resDialogTheme:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private final resDialogTitle:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resNotifIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final resNotifText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resNotifTickerText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resNotifTitle:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final resToastText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final retryPolicyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/config/d;",
            ">;"
        }
    .end annotation
.end field

.field private final sendFailedDump:Z

.field private final sendReportsInDevMode:Z

.field private final sharedPreferencesMode:I

.field private final sharedPreferencesName:Ljava/lang/String;

.field private final socketTimeout:I


# direct methods
.method constructor <init>(Lorg/acra/config/b;)V
    .registers 4
    .param p1    # Lorg/acra/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lorg/acra/a/d;

    invoke-virtual {p1}, Lorg/acra/config/b;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalDropBoxTags:Lorg/acra/a/d;

    .line 134
    new-instance v0, Lorg/acra/a/d;

    invoke-virtual {p1}, Lorg/acra/config/b;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalSharedPreferences:Lorg/acra/a/d;

    .line 135
    invoke-virtual {p1}, Lorg/acra/config/b;->d()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->connectionTimeout:I

    .line 136
    new-instance v0, Lorg/acra/a/d;

    invoke-virtual {p1}, Lorg/acra/config/b;->e()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportContent:Lorg/acra/a/d;

    .line 137
    invoke-virtual {p1}, Lorg/acra/config/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    .line 138
    invoke-virtual {p1}, Lorg/acra/config/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart:Z

    .line 139
    invoke-virtual {p1}, Lorg/acra/config/b;->h()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->dropboxCollectionMinutes:I

    .line 140
    invoke-virtual {p1}, Lorg/acra/config/b;->i()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->alsoReportToAndroidFramework:Z

    .line 141
    invoke-virtual {p1}, Lorg/acra/config/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUri:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lorg/acra/config/b;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lorg/acra/config/b;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lorg/acra/config/b;->k()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->sendFailedDump:Z

    .line 147
    invoke-virtual {p1}, Lorg/acra/config/b;->l()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorNativeCrash:Z

    .line 148
    invoke-virtual {p1}, Lorg/acra/config/b;->m()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorANR:Z

    .line 150
    invoke-virtual {p1}, Lorg/acra/config/b;->n()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorAllProcess:Z

    .line 151
    invoke-virtual {p1}, Lorg/acra/config/b;->o()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorProcess:[Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lorg/acra/config/b;->r()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->includeDropBoxSystemTags:Z

    .line 154
    new-instance v0, Lorg/acra/a/b;

    invoke-virtual {p1}, Lorg/acra/config/b;->s()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/b;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatArguments:Lorg/acra/a/b;

    .line 155
    invoke-virtual {p1}, Lorg/acra/config/b;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->mailTo:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lorg/acra/config/b;->u()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    .line 157
    invoke-virtual {p1}, Lorg/acra/config/b;->z()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogIcon:I

    .line 158
    invoke-virtual {p1}, Lorg/acra/config/b;->v()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogPositiveButtonText:I

    .line 159
    invoke-virtual {p1}, Lorg/acra/config/b;->w()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogNegativeButtonText:I

    .line 160
    invoke-virtual {p1}, Lorg/acra/config/b;->x()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogCommentPrompt:I

    .line 161
    invoke-virtual {p1}, Lorg/acra/config/b;->y()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogEmailPrompt:I

    .line 162
    invoke-virtual {p1}, Lorg/acra/config/b;->A()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogOkToast:I

    .line 163
    invoke-virtual {p1}, Lorg/acra/config/b;->B()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogText:I

    .line 164
    invoke-virtual {p1}, Lorg/acra/config/b;->C()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTitle:I

    .line 165
    invoke-virtual {p1}, Lorg/acra/config/b;->D()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTheme:I

    .line 166
    invoke-virtual {p1}, Lorg/acra/config/b;->E()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifIcon:I

    .line 167
    invoke-virtual {p1}, Lorg/acra/config/b;->F()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifText:I

    .line 168
    invoke-virtual {p1}, Lorg/acra/config/b;->G()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTickerText:I

    .line 169
    invoke-virtual {p1}, Lorg/acra/config/b;->H()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTitle:I

    .line 170
    invoke-virtual {p1}, Lorg/acra/config/b;->I()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resToastText:I

    .line 171
    invoke-virtual {p1}, Lorg/acra/config/b;->J()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesMode:I

    .line 172
    invoke-virtual {p1}, Lorg/acra/config/b;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lorg/acra/config/b;->L()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->socketTimeout:I

    .line 174
    invoke-virtual {p1}, Lorg/acra/config/b;->M()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatFilterByPid:Z

    .line 175
    invoke-virtual {p1}, Lorg/acra/config/b;->N()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->sendReportsInDevMode:Z

    .line 176
    new-instance v0, Lorg/acra/a/d;

    invoke-virtual {p1}, Lorg/acra/config/b;->O()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSharedPreferencesKeys:Lorg/acra/a/d;

    .line 177
    new-instance v0, Lorg/acra/a/d;

    invoke-virtual {p1}, Lorg/acra/config/b;->P()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSettingsKeys:Lorg/acra/a/d;

    .line 178
    invoke-virtual {p1}, Lorg/acra/config/b;->Q()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->buildConfigClass:Ljava/lang/Class;

    .line 179
    invoke-virtual {p1}, Lorg/acra/config/b;->R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFile:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lorg/acra/config/b;->S()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFileLines:I

    .line 181
    invoke-virtual {p1}, Lorg/acra/config/b;->T()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportDialogClass:Ljava/lang/Class;

    .line 182
    invoke-virtual {p1}, Lorg/acra/config/b;->U()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass:Ljava/lang/Class;

    .line 183
    invoke-virtual {p1}, Lorg/acra/config/b;->V()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->endingPrimerClass:Ljava/lang/Class;

    .line 185
    invoke-virtual {p1}, Lorg/acra/config/b;->W()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 186
    new-instance v0, Lorg/acra/a/c;

    invoke-virtual {p1}, Lorg/acra/config/b;->ad()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpHeaders:Lorg/acra/a/c;

    .line 187
    invoke-virtual {p1}, Lorg/acra/config/b;->X()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportType:Lorg/acra/sender/HttpSender$Type;

    .line 188
    new-instance v0, Lorg/acra/a/d;

    invoke-virtual {p1}, Lorg/acra/config/b;->Y()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportSenderFactoryClasses:Lorg/acra/a/d;

    .line 189
    invoke-virtual {p1}, Lorg/acra/config/b;->Z()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->keyStoreFactoryClass:Ljava/lang/Class;

    .line 190
    invoke-virtual {p1}, Lorg/acra/config/b;->aa()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resCertificate:I

    .line 191
    invoke-virtual {p1}, Lorg/acra/config/b;->ab()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificatePath:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lorg/acra/config/b;->ac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificateType:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lorg/acra/config/b;->ae()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->retryPolicyClass:Ljava/lang/Class;

    .line 194
    return-void
.end method


# virtual methods
.method public additionalDropBoxTags()Lorg/acra/a/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalDropBoxTags:Lorg/acra/a/d;

    return-object v0
.end method

.method public additionalSharedPreferences()Lorg/acra/a/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalSharedPreferences:Lorg/acra/a/d;

    return-object v0
.end method

.method public alsoReportToAndroidFramework()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->alsoReportToAndroidFramework:Z

    return v0
.end method

.method public applicationLogFile()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFile:Ljava/lang/String;

    return-object v0
.end method

.method public applicationLogFileLines()I
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFileLines:I

    return v0
.end method

.method public buildConfigClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->buildConfigClass:Ljava/lang/Class;

    return-object v0
.end method

.method public certificatePath()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificatePath:Ljava/lang/String;

    return-object v0
.end method

.method public certificateType()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificateType:Ljava/lang/String;

    return-object v0
.end method

.method public connectionTimeout()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->connectionTimeout:I

    return v0
.end method

.method public deleteOldUnsentReportsOnApplicationStart()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart:Z

    return v0
.end method

.method public deleteUnapprovedReportsOnApplicationStart()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    return v0
.end method

.method public dropboxCollectionMinutes()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->dropboxCollectionMinutes:I

    return v0
.end method

.method public endingPrimerClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/builder/EndingPrimer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->endingPrimerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public excludeMatchingSettingsKeys()Lorg/acra/a/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSettingsKeys:Lorg/acra/a/d;

    return-object v0
.end method

.method public excludeMatchingSharedPreferencesKeys()Lorg/acra/a/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSharedPreferencesKeys:Lorg/acra/a/d;

    return-object v0
.end method

.method public formUri()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUri:Ljava/lang/String;

    return-object v0
.end method

.method public formUriBasicAuthLogin()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin:Ljava/lang/String;

    return-object v0
.end method

.method public formUriBasicAuthPassword()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaders()Lorg/acra/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/c",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpHeaders:Lorg/acra/a/c;

    return-object v0
.end method

.method public getReportFields()Lorg/acra/a/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportContent:Lorg/acra/a/d;

    return-object v0
.end method

.method public httpMethod()Lorg/acra/sender/HttpSender$Method;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    return-object v0
.end method

.method public includeDropBoxSystemTags()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->includeDropBoxSystemTags:Z

    return v0
.end method

.method public keyStoreFactoryClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/security/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->keyStoreFactoryClass:Ljava/lang/Class;

    return-object v0
.end method

.method public logcatArguments()Lorg/acra/a/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatArguments:Lorg/acra/a/b;

    return-object v0
.end method

.method public logcatFilterByPid()Z
    .registers 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatFilterByPid:Z

    return v0
.end method

.method public mailTo()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->mailTo:Ljava/lang/String;

    return-object v0
.end method

.method public mode()Lorg/acra/ReportingInteractionMode;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    return-object v0
.end method

.method public monitorANR()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorANR:Z

    return v0
.end method

.method public monitorAllProcess()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorAllProcess:Z

    return v0
.end method

.method public monitorNativeCrash()Z
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorNativeCrash:Z

    return v0
.end method

.method public monitorProcess()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->monitorProcess:[Ljava/lang/String;

    return-object v0
.end method

.method public reportDialogClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/dialog/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportDialogClass:Ljava/lang/Class;

    return-object v0
.end method

.method public reportPrimerClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/builder/ReportPrimer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public reportSenderFactoryClasses()Lorg/acra/a/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportSenderFactoryClasses:Lorg/acra/a/d;

    return-object v0
.end method

.method public reportType()Lorg/acra/sender/HttpSender$Type;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportType:Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method

.method public resCertificate()I
    .registers 2
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation

    .prologue
    .line 458
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resCertificate:I

    return v0
.end method

.method public resDialogCommentPrompt()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 312
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogCommentPrompt:I

    return v0
.end method

.method public resDialogEmailPrompt()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 317
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogEmailPrompt:I

    return v0
.end method

.method public resDialogIcon()I
    .registers 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 322
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogIcon:I

    return v0
.end method

.method public resDialogNegativeButtonText()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 307
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogNegativeButtonText:I

    return v0
.end method

.method public resDialogOkToast()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 327
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogOkToast:I

    return v0
.end method

.method public resDialogPositiveButtonText()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogPositiveButtonText:I

    return v0
.end method

.method public resDialogText()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 332
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogText:I

    return v0
.end method

.method public resDialogTheme()I
    .registers 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 342
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTheme:I

    return v0
.end method

.method public resDialogTitle()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 337
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTitle:I

    return v0
.end method

.method public resNotifIcon()I
    .registers 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 347
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifIcon:I

    return v0
.end method

.method public resNotifText()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 352
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifText:I

    return v0
.end method

.method public resNotifTickerText()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 357
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTickerText:I

    return v0
.end method

.method public resNotifTitle()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 362
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTitle:I

    return v0
.end method

.method public resToastText()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 367
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resToastText:I

    return v0
.end method

.method public retryPolicyClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/config/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->retryPolicyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public sendFailedDump()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->sendFailedDump:Z

    return v0
.end method

.method public sendReportsInDevMode()Z
    .registers 2

    .prologue
    .line 388
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->sendReportsInDevMode:Z

    return v0
.end method

.method public sharedPreferencesMode()I
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesMode:I

    return v0
.end method

.method public sharedPreferencesName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public socketTimeout()I
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->socketTimeout:I

    return v0
.end method
