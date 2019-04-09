.class public Lcom/qunar/avra/AVRAInstallBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public buildAndInstall(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    return-void
.end method

.method public detectBlock(II)Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    return-object p0
.end method

.method public detectCleartextNetwork()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    return-object p0
.end method

.method public detectFileUriExposure()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    return-object p0
.end method

.method public detectLeakedActivity()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    return-object p0
.end method

.method public detectLeakedClosableObjects()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    return-object p0
.end method

.method public detectLeakedRegistrationObjects()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    return-object p0
.end method

.method public detectLeakedSqlLiteObjects()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    return-object p0
.end method

.method public detectResourceMismatch()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    return-object p0
.end method

.method public registerBeforeHandleViolationCallbackClass(Ljava/lang/Class;)Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/qunar/avra/handler/BeforeHandleViolationCallback;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/qunar/avra/AVRAInstallBuilder;"
        }
    .end annotation

    .prologue
    .line 91
    return-object p0
.end method

.method public setSenderClass(Ljava/lang/Class;)Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/qunar/avra/sender/ReportSender;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/qunar/avra/AVRAInstallBuilder;"
        }
    .end annotation

    .prologue
    .line 83
    return-object p0
.end method
