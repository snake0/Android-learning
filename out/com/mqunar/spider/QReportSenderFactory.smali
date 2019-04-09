.class public Lcom/mqunar/spider/QReportSenderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/sender/ReportSenderFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Lorg/acra/sender/ReportSender;
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 24
    new-instance v0, Lorg/acra/sender/NullSender;

    invoke-direct {v0}, Lorg/acra/sender/NullSender;-><init>()V

    .line 29
    :goto_12
    return-object v0

    .line 26
    :cond_13
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_23

    .line 27
    new-instance v0, Lcom/mqunar/spider/QAcraBetaSender;

    invoke-direct {v0}, Lcom/mqunar/spider/QAcraBetaSender;-><init>()V

    goto :goto_12

    .line 29
    :cond_23
    new-instance v0, Lcom/mqunar/spider/QAcraReleaseSender;

    invoke-direct {v0}, Lcom/mqunar/spider/QAcraReleaseSender;-><init>()V

    goto :goto_12
.end method
