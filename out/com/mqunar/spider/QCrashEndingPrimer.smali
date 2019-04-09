.class public Lcom/mqunar/spider/QCrashEndingPrimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/builder/EndingPrimer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public primeEnding(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mqunar/spider/QunarApp;

    invoke-virtual {v0}, Lcom/mqunar/spider/QunarApp;->clearStack()V

    .line 20
    return-void
.end method
