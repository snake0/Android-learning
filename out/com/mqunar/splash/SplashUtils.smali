.class public Lcom/mqunar/splash/SplashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static crashTouchUrl:Ljava/lang/String;

.field private static volatile loadDone:Z

.field private static splashMonitor:Lcom/mqunar/splash/SplashMonitor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getCrashTouchUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/mqunar/splash/SplashUtils;->crashTouchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getSplashMonitor()Lcom/mqunar/splash/SplashMonitor;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/mqunar/splash/SplashUtils;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;

    return-object v0
.end method

.method public static isLoadDone()Z
    .registers 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/mqunar/splash/SplashUtils;->loadDone:Z

    return v0
.end method

.method public static setCrashTouchUrl(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 25
    sput-object p0, Lcom/mqunar/splash/SplashUtils;->crashTouchUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static setLoadDone(Z)V
    .registers 1

    .prologue
    .line 17
    sput-boolean p0, Lcom/mqunar/splash/SplashUtils;->loadDone:Z

    .line 18
    return-void
.end method

.method public static setSplashMonitor(Lcom/mqunar/splash/SplashMonitor;)V
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/mqunar/splash/SplashUtils;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;

    .line 34
    return-void
.end method
