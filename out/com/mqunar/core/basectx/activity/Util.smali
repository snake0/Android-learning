.class public Lcom/mqunar/core/basectx/activity/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ACTIVITY_STATE_LOGGER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActivityStateLogger()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 36
    const-string v0, ""

    .line 42
    :goto_a
    return-object v0

    .line 38
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 42
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getInStackName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    .line 80
    :goto_3
    return-object v0

    .line 77
    :cond_4
    instance-of v0, p0, Lcom/mqunar/core/basectx/IStackName;

    if-eqz v0, :cond_f

    .line 78
    check-cast p0, Lcom/mqunar/core/basectx/IStackName;

    invoke-interface {p0}, Lcom/mqunar/core/basectx/IStackName;->getInStackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 80
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static getSpiderStartTime()J
    .registers 2

    .prologue
    .line 47
    :try_start_0
    const-string v0, "com.mqunar.core.QSpider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    const-string v1, "startTime"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-wide v0

    .line 53
    :goto_1b
    return-wide v0

    .line 52
    :catch_1c
    move-exception v0

    .line 53
    const-wide/16 v0, 0x0

    goto :goto_1b
.end method

.method static initWindowSetting(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->initWindowSettingForCustomImmersive(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method private static innerRestart(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_45

    move-result-object v0

    .line 149
    :goto_d
    if-nez v0, :cond_20

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.mqunar.splash.SplashActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_20
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 164
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 166
    return-void

    .line 146
    :catch_45
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_d
.end method

.method static onException(Landroid/content/Context;JLjava/lang/Exception;)V
    .registers 8

    .prologue
    .line 59
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v0

    .line 60
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_15

    cmp-long v0, v0, p1

    if-eqz v0, :cond_15

    .line 62
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->restart(Landroid/content/Context;)V

    .line 69
    return-void

    .line 67
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static restart(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->restart2(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static restart2(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 94
    new-instance v0, Lcom/mqunar/core/basectx/activity/Util$1;

    invoke-direct {v0, p0}, Lcom/mqunar/core/basectx/activity/Util$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/activity/Util$1;->quit()V

    .line 109
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_60

    .line 110
    const/4 v1, 0x0

    .line 112
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_61

    move-result-object v0

    .line 116
    :goto_21
    if-nez v0, :cond_34

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "com.mqunar.splash.SplashActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :cond_34
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 139
    :cond_60
    return-void

    .line 113
    :catch_61
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_21
.end method
