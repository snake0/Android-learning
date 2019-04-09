.class public Lcom/qunar/avra/AVRARuntimeSwitch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAllSwitch()V
    .registers 0

    .prologue
    .line 41
    return-void
.end method

.method public static closeBlockSwitch()V
    .registers 0

    .prologue
    .line 33
    return-void
.end method

.method public static closeLeakSwitch()V
    .registers 0

    .prologue
    .line 19
    return-void
.end method

.method public static closeStrictModeSwitch()V
    .registers 0

    .prologue
    .line 26
    return-void
.end method

.method public static installBlock()V
    .registers 0

    .prologue
    .line 47
    return-void
.end method

.method public static installLeak(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public static installStrictMode()V
    .registers 0

    .prologue
    .line 50
    return-void
.end method

.method public static openAllSwitch()V
    .registers 0

    .prologue
    .line 38
    return-void
.end method

.method public static openBlockSwitch()V
    .registers 0

    .prologue
    .line 30
    return-void
.end method

.method public static openLeakSwitch()V
    .registers 0

    .prologue
    .line 16
    return-void
.end method

.method public static openStrictModeSwitch()V
    .registers 0

    .prologue
    .line 23
    return-void
.end method
