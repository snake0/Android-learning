.class public abstract Lcom/mqunar/core/basectx/service/QIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 24
    :try_start_3
    const-string v0, "com.mqunar.core.QunarApkLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadResource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_21} :catch_22

    .line 27
    :goto_21
    return-void

    .line 25
    :catch_22
    move-exception v0

    goto :goto_21
.end method