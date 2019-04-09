.class public Lctrip/android/oauth/CtripAPIFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ENV_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Ctrip.OAuth.SDK.CtripAPIFactory"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Lctrip/android/oauth/CtripAPIFactory;->ENV_CODE:I

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lctrip/android/oauth/utils/LogUtils;->sIsLogEnable:Z

    .line 16
    const-string v0, "CtripAPIFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsLogEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lctrip/android/oauth/utils/LogUtils;->sIsLogEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not be instantiated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCtripAPI(Landroid/content/Context;Ljava/lang/String;)Lctrip/android/oauth/ICtripAPI;
    .registers 3

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lctrip/android/oauth/CtripAPIFactory;->createCtripAPI(Landroid/content/Context;Ljava/lang/String;Z)Lctrip/android/oauth/ICtripAPI;

    move-result-object v0

    return-object v0
.end method

.method public static createCtripAPI(Landroid/content/Context;Ljava/lang/String;Z)Lctrip/android/oauth/ICtripAPI;
    .registers 6

    .prologue
    .line 24
    const-string v0, "Ctrip.OAuth.SDK.CtripAPIFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCtripAPI, appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checkSignature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lctrip/android/oauth/CtripApiImplV1;

    invoke-direct {v0, p0, p1, p2}, Lctrip/android/oauth/CtripApiImplV1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
