.class public Lcom/mqunar/core/basectx/application/QApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static inStackName:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static stackCount:I

.field private static versionInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/mqunar/core/basectx/application/QApplication;->stackCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WTF! you must extends QApplication !!! "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_c
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInStackName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->inStackName:Ljava/lang/String;

    return-object v0
.end method

.method public static getStackCount()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/mqunar/core/basectx/application/QApplication;->stackCount:I

    return v0
.end method

.method public static getVersionInfo()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->versionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static setInStackName(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 49
    sput-object p0, Lcom/mqunar/core/basectx/application/QApplication;->inStackName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static setStackCount(I)V
    .registers 1

    .prologue
    .line 66
    sput p0, Lcom/mqunar/core/basectx/application/QApplication;->stackCount:I

    .line 67
    return-void
.end method

.method public static setVersionInfo(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 41
    sput-object p0, Lcom/mqunar/core/basectx/application/QApplication;->versionInfo:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 20
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 21
    sput-object p0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    .line 23
    :cond_9
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    if-ne v0, p0, :cond_d

    .line 35
    :cond_8
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/mqunar/core/basectx/application/QApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_c
.end method

.method public qRegisterActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V
    .registers 3

    .prologue
    .line 72
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->registerActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V

    .line 73
    return-void
.end method

.method public qUnregisterActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->unregisterActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V

    .line 77
    return-void
.end method
