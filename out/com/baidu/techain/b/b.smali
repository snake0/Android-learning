.class public final Lcom/baidu/techain/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 138
    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.action.Techain.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    const-class v2, Lcom/baidu/techain/TechainService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "com.baidu.category.techain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "from_plugin_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "target_class"

    const-class v3, Lcom/baidu/techain/ac/U;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "target_method"

    const-string v3, "handleUploadPidChange"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/16 v2, 0x3ea

    const/high16 v3, 0x8000000

    .line 151
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_60

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 157
    :try_start_50
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_58

    .line 163
    :goto_53
    const/4 v4, 0x0

    :try_start_54
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_65

    .line 170
    :goto_57
    return-void

    .line 159
    :catch_58
    move-exception v4

    :try_start_59
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5f} :catch_60

    goto :goto_53

    .line 168
    :catch_60
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_57

    .line 165
    :catch_65
    move-exception v0

    :try_start_66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6c} :catch_60

    goto :goto_57
.end method

.method public static a(Landroid/content/Context;IZ)V
    .registers 10

    .prologue
    const-wide/32 v1, 0x927c0

    .line 79
    :try_start_3
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 81
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.baidu.action.Techain.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const-class v4, Lcom/baidu/techain/TechainService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v4, "com.baidu.category.techain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v4, "from_plugin_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v4, "target_class"

    const-class v5, Lcom/baidu/techain/ac/U;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v4, "target_method"

    const-string v5, "handleWork"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v4, "from"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const/16 v4, 0x3e9

    const/high16 v5, 0x8000000

    .line 93
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 96
    packed-switch p1, :pswitch_data_a0

    .line 114
    :goto_54
    :pswitch_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "n="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_74} :catch_8d

    .line 119
    :try_start_74
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_85

    .line 123
    :goto_77
    if-eqz p2, :cond_92

    .line 134
    :goto_79
    return-void

    .line 98
    :pswitch_7a
    const-wide/16 v1, 0x7530

    .line 99
    goto :goto_54

    .line 101
    :pswitch_7d
    const-wide/32 v1, 0x2bf20

    .line 102
    goto :goto_54

    .line 104
    :pswitch_81
    const-wide/32 v1, 0x493e0

    .line 105
    goto :goto_54

    .line 121
    :catch_85
    move-exception v4

    :try_start_86
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_8c} :catch_8d

    goto :goto_77

    .line 132
    :catch_8d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_79

    .line 127
    :cond_92
    const/4 v4, 0x0

    :try_start_93
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_79

    .line 129
    :catch_97
    move-exception v0

    :try_start_98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9e} :catch_8d

    goto :goto_79

    .line 96
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7d
        :pswitch_81
        :pswitch_54
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 13

    .prologue
    const-wide/32 v9, 0x5265c00

    const-wide/16 v7, 0x0

    .line 25
    :try_start_5
    new-instance v3, Lcom/baidu/techain/e;

    invoke-direct {v3, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.action.Techain.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    const-class v2, Lcom/baidu/techain/TechainService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v2, "com.baidu.category.techain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v2, "from_plugin_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "target_class"

    const-class v4, Lcom/baidu/techain/ac/U;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "target_method"

    const-string v4, "handleWork"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v2, "from"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const/16 v2, 0x3e8

    const/high16 v4, 0x8000000

    .line 43
    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 46
    if-eqz p1, :cond_9d

    .line 1075
    iget-object v1, v3, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v2, "npuct"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 48
    cmp-long v5, v1, v7

    if-gtz v5, :cond_70

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v9

    .line 50
    invoke-virtual {v3, v1, v2}, Lcom/baidu/techain/e;->a(J)V

    .line 58
    :cond_70
    :goto_70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "b="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", n="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", t=86400000, c="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_95} :catch_b6

    .line 62
    :try_start_95
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_bb

    .line 68
    :goto_98
    const/4 v3, 0x0

    :try_start_99
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_c3

    .line 75
    :goto_9c
    return-void

    .line 53
    :cond_9d
    :try_start_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v9

    const-wide/32 v5, 0x927c0

    sub-long/2addr v1, v5

    const-wide v5, 0x41324f8000000000L    # 1200000.0

    .line 54
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    add-long/2addr v1, v5

    .line 55
    invoke-virtual {v3, v1, v2}, Lcom/baidu/techain/e;->a(J)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_b5} :catch_b6

    goto :goto_70

    .line 73
    :catch_b6
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9c

    .line 64
    :catch_bb
    move-exception v3

    :try_start_bc
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_98

    .line 70
    :catch_c3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_ca} :catch_b6

    goto :goto_9c
.end method
