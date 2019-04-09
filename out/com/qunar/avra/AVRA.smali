.class public Lcom/qunar/avra/AVRA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    return-void
.end method

.method public static isBlockInitialised()Z
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public static isInAnalyzerProcess(Landroid/content/Context;)Z
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public static isLeakInitialised()Z
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static isStrictModeInitialised()Z
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static watchAllProcess()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/qunar/avra/AVRAInstallBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/qunar/avra/AVRAInstallBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static watchLeak(Ljava/lang/Object;)V
    .registers 1

    .prologue
    .line 16
    return-void
.end method

.method public static watchMainProcess()Lcom/qunar/avra/AVRAInstallBuilder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/qunar/avra/AVRAInstallBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qunar/avra/AVRAInstallBuilder;-><init>(Z)V

    return-object v0
.end method
