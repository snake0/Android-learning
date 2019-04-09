.class public Lcom/mqunar/internal/SpiderPlatfromInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSERT_CONFIG:Ljava/lang/String; = "config"

.field private static final ASSERT_SWITCH:Ljava/lang/String; = "switch"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 16
    const-string v1, "com.mqunar.atomenv.PlatformSetting"

    .line 17
    const-string v0, "config"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->openAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz v2, :cond_27

    .line 20
    new-instance v3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-string v2, "setConfig"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    new-array v5, v7, [Ljava/lang/String;

    aput-object v3, v5, v6

    invoke-static {v0, v2, v4, v5}, Lcom/mqunar/core/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_27
    const-string v2, "switch"

    invoke-static {p0, v2}, Lcom/mqunar/storage/Storage;->openAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 27
    if-eqz v2, :cond_4b

    .line 28
    if-eqz v0, :cond_35

    .line 29
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    :cond_35
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 33
    const-string v2, "setSwitch"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v0, v2, v3, v4}, Lcom/mqunar/core/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_4b
    return-void
.end method
