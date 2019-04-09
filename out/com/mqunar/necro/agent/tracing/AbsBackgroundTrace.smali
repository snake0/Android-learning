.class public abstract Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static mCurrentActivityName:Ljava/lang/String;


# instance fields
.field private isBackToDesktop:Z

.field private mFirstQavStartActivityName:Ljava/lang/String;

.field private mIsFirstActivityStart:Z

.field private mIsFirstActivityStop:Z

.field private mLifeCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    .line 15
    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->isBackToDesktop:Z

    .line 16
    iput-boolean v1, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStop:Z

    .line 17
    iput-boolean v1, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStart:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mFirstQavStartActivityName:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentActivityName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mCurrentActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    const-string v0, "Unknown"

    sput-object v0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mCurrentActivityName:Ljava/lang/String;

    .line 82
    :cond_c
    sget-object v0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mCurrentActivityName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 58
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 72
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 66
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mCurrentActivityName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 69
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStop:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStart:Z

    if-eqz v0, :cond_15

    .line 23
    iput-boolean v2, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStart:Z

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mFirstQavStartActivityName:Ljava/lang/String;

    .line 27
    :cond_15
    iget v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    .line 28
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->isBackToDesktop:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 29
    iput-boolean v2, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->isBackToDesktop:Z

    .line 31
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->onForegroundListener()V

    .line 33
    :cond_29
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStop:Z

    if-eqz v0, :cond_20

    .line 39
    iput-boolean v2, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mIsFirstActivityStop:Z

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mFirstQavStartActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 41
    iget v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    .line 43
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mFirstQavStartActivityName:Ljava/lang/String;

    .line 45
    :cond_20
    iget v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    .line 46
    iget v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    if-gez v0, :cond_2d

    .line 47
    iput v2, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    .line 55
    :cond_2c
    :goto_2c
    return-void

    .line 48
    :cond_2d
    iget v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->mLifeCount:I

    if-nez v0, :cond_2c

    .line 49
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->isBackToDesktop:Z

    if-nez v0, :cond_2c

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->isBackToDesktop:Z

    .line 52
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;->onBackgroundListener()V

    goto :goto_2c
.end method

.method protected abstract onBackgroundListener()V
.end method

.method protected abstract onForegroundListener()V
.end method
