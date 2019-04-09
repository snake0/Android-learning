.class public abstract Lcom/mqunar/core/basectx/activity/QNativeActivity;
.super Landroid/app/NativeActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private preStartTime:J

.field private stateLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    return-void
.end method

.method private onException(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->preStartTime:J

    invoke-static {p0, v0, v1, p1}, Lcom/mqunar/core/basectx/activity/Util;->onException(Landroid/content/Context;JLjava/lang/Exception;)V

    .line 133
    return-void
.end method


# virtual methods
.method public final backToActivity(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->backToActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public final backToActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public final backToFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->backToFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method public final backToFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/NativeActivity;->finish()V

    .line 125
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->finish(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 7

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/NativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 26
    :try_start_4
    const-string v0, "com.mqunar.core.QunarApkLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "checkResources"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2d} :catch_2e

    .line 30
    :goto_2d
    return-object v0

    .line 27
    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_2d
.end method

.method protected needOnCreateSendBroadcast()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 137
    .line 139
    :try_start_3
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6} :catch_79

    move-object v0, v1

    .line 143
    :goto_7
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v2

    .line 144
    if-eqz p1, :cond_7d

    .line 145
    const-string v4, "_spider_starttime_"

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->preStartTime:J

    .line 147
    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->preStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7d

    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->preStartTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7d

    .line 148
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->restart2(Landroid/content/Context;)V

    .line 155
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",restore="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_70

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",pT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->preStartTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",sT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->stateLog:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    iget-object v2, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->stateLog:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6d} :catch_7b

    .line 160
    :goto_6d
    if-eqz v1, :cond_72

    .line 161
    throw v1

    .line 156
    :cond_70
    const/4 v0, 0x0

    goto :goto_46

    .line 163
    :cond_72
    invoke-static {p0, p1}, Lcom/mqunar/core/basectx/activity/Proxy;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 165
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->initWindowSetting(Landroid/app/Activity;)V

    .line 166
    return-void

    .line 140
    :catch_79
    move-exception v0

    goto :goto_7

    .line 158
    :catch_7b
    move-exception v0

    goto :goto_6d

    :cond_7d
    move-object v1, v0

    goto :goto_24
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 94
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/core/basectx/activity/QNativeActivity;->stateLog:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    :try_start_7
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 97
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onDestroy(Landroid/app/Activity;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    .line 101
    :goto_d
    return-void

    .line 98
    :catch_e
    move-exception v0

    .line 99
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 67
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onPause(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 71
    :goto_6
    return-void

    .line 68
    :catch_7
    move-exception v0

    .line 69
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected onPostResume()V
    .registers 2

    .prologue
    .line 56
    :try_start_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onPostResume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 60
    :goto_3
    return-void

    .line 57
    :catch_4
    move-exception v0

    .line 58
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 90
    :goto_3
    return-void

    .line 87
    :catch_4
    move-exception v0

    .line 88
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 46
    :try_start_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-static {p0, v0}, Lcom/mqunar/core/basectx/activity/Proxy;->onResume(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 51
    :goto_d
    return-void

    .line 47
    :cond_e
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_a

    .line 48
    :catch_17
    move-exception v0

    .line 49
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 114
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v0

    .line 115
    const-string v2, "_spider_starttime_"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string v2, "_spider_starttime_"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    invoke-static {p0, p1}, Lcom/mqunar/core/basectx/activity/Proxy;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 36
    :try_start_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 37
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onStart(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 41
    :goto_6
    return-void

    .line 38
    :catch_7
    move-exception v0

    .line 39
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 77
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onStop(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 81
    :goto_6
    return-void

    .line 78
    :catch_7
    move-exception v0

    .line 79
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public overridePendingTransition(II)V
    .registers 8

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x1

    .line 190
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 191
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 192
    if-eq v0, v3, :cond_19

    if-eq v0, v4, :cond_19

    if-eqz p1, :cond_19

    .line 193
    const-string v0, "anim"

    const-string v2, "spider_slide_in_right"

    invoke-static {v0, v2}, Lcom/mqunar/core/basectx/activity/SpiderR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 195
    :cond_19
    if-eq v1, v3, :cond_27

    if-eq v1, v4, :cond_27

    if-eqz p2, :cond_27

    .line 196
    const-string v0, "anim"

    const-string v1, "spider_slide_out_right"

    invoke-static {v0, v1}, Lcom/mqunar/core/basectx/activity/SpiderR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 198
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->overridePendingTransition(II)V

    .line 199
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->setContentView(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 110
    :goto_3
    return-void

    .line 107
    :catch_4
    move-exception v0

    .line 108
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    .prologue
    .line 178
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/activity/Proxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 179
    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/activity/Proxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public final startDialogFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->startDialogFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 259
    return-void
.end method

.method public final startDialogFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public final startDialogFragmentForResult(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->startDialogFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 227
    return-void
.end method

.method public final startDialogFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 231
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->startFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 272
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Z)V

    .line 268
    return-void
.end method

.method public final startFragmentForResult(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 206
    return-void
.end method

.method public final startFragmentForResult(Ljava/lang/Class;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;IZ)V

    .line 280
    return-void
.end method

.method public final startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 202
    return-void
.end method

.method public final startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;IZ)V

    .line 276
    return-void
.end method

.method public final startTransparentFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->startTransparentFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public final startTransparentFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public final startTransparentFragmentForResult(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QNativeActivity;->startTransparentFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 214
    return-void
.end method

.method public final startTransparentFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 218
    return-void
.end method
