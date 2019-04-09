.class public final Lorg/acra/config/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private B:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private C:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private D:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private E:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private F:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private G:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private H:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private I:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private J:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private K:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private L:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private M:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private N:Ljava/lang/Integer;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/Integer;

.field private Q:Ljava/lang/Boolean;

.field private R:Ljava/lang/Boolean;

.field private S:[Ljava/lang/String;

.field private T:[Ljava/lang/String;

.field private U:Ljava/lang/Class;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/Integer;

.field private X:Lorg/acra/sender/HttpSender$Method;

.field private Y:Lorg/acra/sender/HttpSender$Type;

.field private final Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/security/c;",
            ">;"
        }
    .end annotation
.end field

.field private ab:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation
.end field

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/config/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:[Lorg/acra/ReportField;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/Boolean;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lorg/acra/ReportingInteractionMode;

.field private w:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/dialog/a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/builder/ReportPrimer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/builder/EndingPrimer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 4
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/acra/ReportField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/acra/config/b;->f:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/config/b;->Z:Ljava/util/Map;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    .line 185
    if-eqz v0, :cond_1ea

    .line 186
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->annotationType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->a:Ljava/lang/Class;

    .line 188
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->b:[Ljava/lang/String;

    .line 189
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->c:[Ljava/lang/String;

    .line 190
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->connectionTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->d:Ljava/lang/Integer;

    .line 191
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->e:[Lorg/acra/ReportField;

    .line 192
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->g:Ljava/lang/Boolean;

    .line 193
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->h:Ljava/lang/Boolean;

    .line 194
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->i:Ljava/lang/Integer;

    .line 195
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->alsoReportToAndroidFramework()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->j:Ljava/lang/Boolean;

    .line 196
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->k:Ljava/lang/String;

    .line 197
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->l:Ljava/lang/String;

    .line 198
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->m:Ljava/lang/String;

    .line 199
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->n:Ljava/lang/Boolean;

    .line 200
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->t:[Ljava/lang/String;

    .line 201
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->u:Ljava/lang/String;

    .line 202
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->v:Lorg/acra/ReportingInteractionMode;

    .line 203
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->D:Ljava/lang/Integer;

    .line 204
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogPositiveButtonText()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->z:Ljava/lang/Integer;

    .line 205
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogNegativeButtonText()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->A:Ljava/lang/Integer;

    .line 206
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->B:Ljava/lang/Integer;

    .line 207
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->C:Ljava/lang/Integer;

    .line 208
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->E:Ljava/lang/Integer;

    .line 209
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->F:Ljava/lang/Integer;

    .line 210
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->G:Ljava/lang/Integer;

    .line 211
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogTheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->H:Ljava/lang/Integer;

    .line 212
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->I:Ljava/lang/Integer;

    .line 213
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->J:Ljava/lang/Integer;

    .line 214
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->K:Ljava/lang/Integer;

    .line 215
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->L:Ljava/lang/Integer;

    .line 216
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->M:Ljava/lang/Integer;

    .line 217
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->N:Ljava/lang/Integer;

    .line 218
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->O:Ljava/lang/String;

    .line 219
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->P:Ljava/lang/Integer;

    .line 220
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatFilterByPid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->Q:Ljava/lang/Boolean;

    .line 221
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsInDevMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->R:Ljava/lang/Boolean;

    .line 222
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->S:[Ljava/lang/String;

    .line 223
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->T:[Ljava/lang/String;

    .line 224
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->U:Ljava/lang/Class;

    .line 225
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->V:Ljava/lang/String;

    .line 226
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileLines()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->W:Ljava/lang/Integer;

    .line 227
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->w:Ljava/lang/Class;

    .line 228
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->x:Ljava/lang/Class;

    .line 229
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->endingPrimerClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->y:Ljava/lang/Class;

    .line 230
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->X:Lorg/acra/sender/HttpSender$Method;

    .line 231
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->Y:Lorg/acra/sender/HttpSender$Type;

    .line 232
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportSenderFactoryClasses()[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->ab:[Ljava/lang/Class;

    .line 233
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->keyStoreFactoryClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->aa:Ljava/lang/Class;

    .line 234
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resCertificate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->ac:Ljava/lang/Integer;

    .line 235
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->certificatePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->ad:Ljava/lang/String;

    .line 236
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->certificateType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->ae:Ljava/lang/String;

    .line 237
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->retryPolicyClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->af:Ljava/lang/Class;

    .line 239
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendFailedDump()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->o:Ljava/lang/Boolean;

    .line 241
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->monitorNativeCrash()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->p:Ljava/lang/Boolean;

    .line 242
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->monitorANR()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->q:Ljava/lang/Boolean;

    .line 243
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->monitorAllProcess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/config/b;->r:Ljava/lang/Boolean;

    .line 244
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->monitorProcess()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/b;->s:[Ljava/lang/String;

    .line 248
    :goto_1e9
    return-void

    .line 246
    :cond_1ea
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/config/b;->a:Ljava/lang/Class;

    goto :goto_1e9
.end method


# virtual methods
.method A()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/acra/config/b;->E:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1084
    iget-object v0, p0, Lorg/acra/config/b;->E:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1086
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method B()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/acra/config/b;->F:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1092
    iget-object v0, p0, Lorg/acra/config/b;->F:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1094
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method C()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/acra/config/b;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1100
    iget-object v0, p0, Lorg/acra/config/b;->G:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1102
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method D()I
    .registers 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/acra/config/b;->H:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1108
    iget-object v0, p0, Lorg/acra/config/b;->H:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1110
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method E()I
    .registers 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lorg/acra/config/b;->I:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1116
    iget-object v0, p0, Lorg/acra/config/b;->I:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1118
    :goto_a
    return v0

    :cond_b
    const v0, 0x1080078

    goto :goto_a
.end method

.method F()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/acra/config/b;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1124
    iget-object v0, p0, Lorg/acra/config/b;->J:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1126
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method G()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lorg/acra/config/b;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1132
    iget-object v0, p0, Lorg/acra/config/b;->K:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1134
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method H()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/acra/config/b;->L:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1140
    iget-object v0, p0, Lorg/acra/config/b;->L:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1142
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method I()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/acra/config/b;->M:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1148
    iget-object v0, p0, Lorg/acra/config/b;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1150
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method J()I
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/acra/config/b;->N:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1155
    iget-object v0, p0, Lorg/acra/config/b;->N:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1157
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method K()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1162
    iget-object v0, p0, Lorg/acra/config/b;->O:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1163
    iget-object v0, p0, Lorg/acra/config/b;->O:Ljava/lang/String;

    .line 1166
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method L()I
    .registers 2

    .prologue
    .line 1170
    iget-object v0, p0, Lorg/acra/config/b;->P:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1171
    iget-object v0, p0, Lorg/acra/config/b;->P:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1173
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x4e20

    goto :goto_a
.end method

.method M()Z
    .registers 2

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/acra/config/b;->Q:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1178
    iget-object v0, p0, Lorg/acra/config/b;->Q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1180
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method N()Z
    .registers 2

    .prologue
    .line 1184
    iget-object v0, p0, Lorg/acra/config/b;->R:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1185
    iget-object v0, p0, Lorg/acra/config/b;->R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1187
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method O()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1192
    iget-object v0, p0, Lorg/acra/config/b;->S:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1193
    iget-object v0, p0, Lorg/acra/config/b;->S:[Ljava/lang/String;

    .line 1195
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method P()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1200
    iget-object v0, p0, Lorg/acra/config/b;->T:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1201
    iget-object v0, p0, Lorg/acra/config/b;->T:[Ljava/lang/String;

    .line 1203
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method Q()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/acra/config/b;->U:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1213
    iget-object v0, p0, Lorg/acra/config/b;->U:Ljava/lang/Class;

    .line 1215
    :goto_6
    return-object v0

    :cond_7
    const-class v0, Ljava/lang/Object;

    goto :goto_6
.end method

.method R()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1220
    iget-object v0, p0, Lorg/acra/config/b;->V:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1221
    iget-object v0, p0, Lorg/acra/config/b;->V:Ljava/lang/String;

    .line 1223
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method S()I
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lorg/acra/config/b;->W:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1228
    iget-object v0, p0, Lorg/acra/config/b;->W:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1230
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x64

    goto :goto_a
.end method

.method T()Ljava/lang/Class;
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
    .line 1235
    iget-object v0, p0, Lorg/acra/config/b;->w:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1236
    iget-object v0, p0, Lorg/acra/config/b;->w:Ljava/lang/Class;

    .line 1238
    :goto_6
    return-object v0

    :cond_7
    const-class v0, Lorg/acra/dialog/CrashReportDialog;

    goto :goto_6
.end method

.method U()Ljava/lang/Class;
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
    .line 1243
    iget-object v0, p0, Lorg/acra/config/b;->x:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1244
    iget-object v0, p0, Lorg/acra/config/b;->x:Ljava/lang/Class;

    .line 1246
    :goto_6
    return-object v0

    :cond_7
    const-class v0, Lorg/acra/builder/b;

    goto :goto_6
.end method

.method V()Ljava/lang/Class;
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
    .line 1251
    iget-object v0, p0, Lorg/acra/config/b;->y:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1252
    iget-object v0, p0, Lorg/acra/config/b;->y:Ljava/lang/Class;

    .line 1254
    :goto_6
    return-object v0

    :cond_7
    const-class v0, Lorg/acra/builder/a;

    goto :goto_6
.end method

.method W()Lorg/acra/sender/HttpSender$Method;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/acra/config/b;->X:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_7

    .line 1263
    iget-object v0, p0, Lorg/acra/config/b;->X:Lorg/acra/sender/HttpSender$Method;

    .line 1265
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    goto :goto_6
.end method

.method X()Lorg/acra/sender/HttpSender$Type;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1270
    iget-object v0, p0, Lorg/acra/config/b;->Y:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_7

    .line 1271
    iget-object v0, p0, Lorg/acra/config/b;->Y:Lorg/acra/sender/HttpSender$Type;

    .line 1273
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    goto :goto_6
.end method

.method Y()[Ljava/lang/Class;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1278
    iget-object v0, p0, Lorg/acra/config/b;->ab:[Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1279
    iget-object v0, p0, Lorg/acra/config/b;->ab:[Ljava/lang/Class;

    .line 1282
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/acra/sender/DefaultReportSenderFactory;

    aput-object v2, v0, v1

    goto :goto_6
.end method

.method Z()Ljava/lang/Class;
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
    .line 1287
    iget-object v0, p0, Lorg/acra/config/b;->aa:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1288
    iget-object v0, p0, Lorg/acra/config/b;->aa:Ljava/lang/Class;

    .line 1290
    :goto_6
    return-object v0

    :cond_7
    const-class v0, Lorg/acra/security/e;

    goto :goto_6
.end method

.method public a()Lorg/acra/config/ACRAConfiguration;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lorg/acra/config/b$1;->a:[I

    invoke-virtual {p0}, Lorg/acra/config/b;->u()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

    .line 286
    :cond_f
    new-instance v0, Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, p0}, Lorg/acra/config/ACRAConfiguration;-><init>(Lorg/acra/config/b;)V

    return-object v0

    .line 265
    :pswitch_15
    invoke-virtual {p0}, Lorg/acra/config/b;->I()I

    move-result v0

    if-nez v0, :cond_f

    .line 266
    new-instance v0, Lorg/acra/config/a;

    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_23
    invoke-virtual {p0}, Lorg/acra/config/b;->G()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lorg/acra/config/b;->H()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lorg/acra/config/b;->F()I

    move-result v0

    if-nez v0, :cond_3d

    .line 271
    :cond_35
    new-instance v0, Lorg/acra/config/a;

    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_3d
    const-class v0, Lorg/acra/dialog/CrashReportDialog;

    invoke-virtual {p0}, Lorg/acra/config/b;->T()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/acra/config/b;->B()I

    move-result v0

    if-nez v0, :cond_f

    .line 274
    new-instance v0, Lorg/acra/config/a;

    const-string v1, "NOTIFICATION mode: using the (default) CrashReportDialog requires you have to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_57
    const-class v0, Lorg/acra/dialog/CrashReportDialog;

    invoke-virtual {p0}, Lorg/acra/config/b;->T()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/acra/config/b;->B()I

    move-result v0

    if-nez v0, :cond_f

    .line 279
    new-instance v0, Lorg/acra/config/a;

    const-string v1, "DIALOG mode: using the (default) CrashReportDialog requires you to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_15
        :pswitch_23
        :pswitch_57
    .end packed-switch
.end method

.method aa()I
    .registers 2
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lorg/acra/config/b;->ac:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1296
    iget-object v0, p0, Lorg/acra/config/b;->ac:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1298
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method ab()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1303
    iget-object v0, p0, Lorg/acra/config/b;->ad:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1304
    iget-object v0, p0, Lorg/acra/config/b;->ad:Ljava/lang/String;

    .line 1306
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method ac()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1311
    iget-object v0, p0, Lorg/acra/config/b;->ae:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1312
    iget-object v0, p0, Lorg/acra/config/b;->ae:Ljava/lang/String;

    .line 1314
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "X.509"

    goto :goto_6
.end method

.method ad()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v0, p0, Lorg/acra/config/b;->Z:Ljava/util/Map;

    return-object v0
.end method

.method ae()Ljava/lang/Class;
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
    .line 1324
    iget-object v0, p0, Lorg/acra/config/b;->af:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1325
    iget-object v0, p0, Lorg/acra/config/b;->af:Ljava/lang/Class;

    .line 1327
    :goto_6
    return-object v0

    :cond_7
    const-class v0, Lorg/acra/config/c;

    goto :goto_6
.end method

.method b()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lorg/acra/config/b;->b:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 871
    iget-object v0, p0, Lorg/acra/config/b;->b:[Ljava/lang/String;

    .line 873
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method c()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lorg/acra/config/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 879
    iget-object v0, p0, Lorg/acra/config/b;->c:[Ljava/lang/String;

    .line 881
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method d()I
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lorg/acra/config/b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 894
    iget-object v0, p0, Lorg/acra/config/b;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 896
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x1388

    goto :goto_a
.end method

.method e()Ljava/util/Set;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 902
    iget-object v0, p0, Lorg/acra/config/b;->e:[Lorg/acra/ReportField;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/acra/config/b;->e:[Lorg/acra/ReportField;

    array-length v0, v0

    if-eqz v0, :cond_4a

    .line 903
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "Using custom Report Fields"

    invoke-interface {v0, v1, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lorg/acra/config/b;->e:[Lorg/acra/ReportField;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 914
    :goto_20
    iget-object v0, p0, Lorg/acra/config/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 915
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 916
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 905
    :cond_4a
    iget-object v0, p0, Lorg/acra/config/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_58

    const-string v0, ""

    iget-object v1, p0, Lorg/acra/config/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 906
    :cond_58
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "Using default Report Fields"

    invoke-interface {v0, v1, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget-object v0, Lorg/acra/a;->c:[Lorg/acra/ReportField;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 909
    :cond_6b
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "Using default Mail Report Fields"

    invoke-interface {v0, v1, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v0, Lorg/acra/a;->b:[Lorg/acra/ReportField;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 918
    :cond_7e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 921
    :cond_86
    return-object v2
.end method

.method f()Z
    .registers 2

    .prologue
    .line 925
    iget-object v0, p0, Lorg/acra/config/b;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 926
    iget-object v0, p0, Lorg/acra/config/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 928
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method g()Z
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lorg/acra/config/b;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 933
    iget-object v0, p0, Lorg/acra/config/b;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 935
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method h()I
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lorg/acra/config/b;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 940
    iget-object v0, p0, Lorg/acra/config/b;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 942
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x5

    goto :goto_a
.end method

.method i()Z
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lorg/acra/config/b;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 947
    iget-object v0, p0, Lorg/acra/config/b;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 949
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method j()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lorg/acra/config/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 955
    iget-object v0, p0, Lorg/acra/config/b;->k:Ljava/lang/String;

    .line 957
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method k()Z
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lorg/acra/config/b;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 962
    iget-object v0, p0, Lorg/acra/config/b;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 964
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method l()Z
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lorg/acra/config/b;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 969
    iget-object v0, p0, Lorg/acra/config/b;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 971
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method m()Z
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lorg/acra/config/b;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 976
    iget-object v0, p0, Lorg/acra/config/b;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 978
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method n()Z
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Lorg/acra/config/b;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 983
    iget-object v0, p0, Lorg/acra/config/b;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 985
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method o()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 989
    iget-object v0, p0, Lorg/acra/config/b;->s:[Ljava/lang/String;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Lorg/acra/config/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 997
    iget-object v0, p0, Lorg/acra/config/b;->l:Ljava/lang/String;

    .line 999
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_6
.end method

.method q()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/acra/config/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1005
    iget-object v0, p0, Lorg/acra/config/b;->m:Ljava/lang/String;

    .line 1007
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_6
.end method

.method r()Z
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Lorg/acra/config/b;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1012
    iget-object v0, p0, Lorg/acra/config/b;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1014
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method s()[Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lorg/acra/config/b;->t:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1020
    iget-object v0, p0, Lorg/acra/config/b;->t:[Ljava/lang/String;

    .line 1022
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    goto :goto_6
.end method

.method t()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/config/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1028
    iget-object v0, p0, Lorg/acra/config/b;->u:Ljava/lang/String;

    .line 1030
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method u()Lorg/acra/ReportingInteractionMode;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/acra/config/b;->v:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_7

    .line 1036
    iget-object v0, p0, Lorg/acra/config/b;->v:Lorg/acra/ReportingInteractionMode;

    .line 1038
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    goto :goto_6
.end method

.method public v()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lorg/acra/config/b;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1044
    iget-object v0, p0, Lorg/acra/config/b;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1046
    :goto_a
    return v0

    :cond_b
    const v0, 0x104000a

    goto :goto_a
.end method

.method w()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/acra/config/b;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1052
    iget-object v0, p0, Lorg/acra/config/b;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1054
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x1040000

    goto :goto_a
.end method

.method x()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1059
    iget-object v0, p0, Lorg/acra/config/b;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1060
    iget-object v0, p0, Lorg/acra/config/b;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1062
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method y()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/acra/config/b;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1068
    iget-object v0, p0, Lorg/acra/config/b;->C:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1070
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method z()I
    .registers 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 1075
    iget-object v0, p0, Lorg/acra/config/b;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1076
    iget-object v0, p0, Lorg/acra/config/b;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1078
    :goto_a
    return v0

    :cond_b
    const v0, 0x1080027

    goto :goto_a
.end method
