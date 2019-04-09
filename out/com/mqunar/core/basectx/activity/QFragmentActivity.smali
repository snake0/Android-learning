.class public abstract Lcom/mqunar/core/basectx/activity/QFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private preStartTime:J

.field private stateLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 24
    return-void
.end method

.method private onException(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->preStartTime:J

    invoke-static {p0, v0, v1, p1}, Lcom/mqunar/core/basectx/activity/Util;->onException(Landroid/content/Context;JLjava/lang/Exception;)V

    .line 138
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
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->backToActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 262
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
    .line 257
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 258
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
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->backToFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 270
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
    .line 253
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 254
    return-void
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 119
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->finish(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 7

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 127
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

    .line 131
    :goto_2d
    return-object v0

    .line 128
    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_2d
.end method

.method protected needOnCreateSendBroadcast()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 142
    .line 144
    :try_start_3
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6} :catch_79

    move-object v0, v1

    .line 148
    :goto_7
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v2

    .line 149
    if-eqz p1, :cond_7d

    .line 150
    const-string v4, "_spider_starttime_"

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->preStartTime:J

    .line 152
    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->preStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7d

    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->preStartTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7d

    .line 153
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->restart2(Landroid/content/Context;)V

    .line 160
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
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

    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->preStartTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",sT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->stateLog:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    iget-object v2, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->stateLog:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6d} :catch_7b

    .line 165
    :goto_6d
    if-eqz v1, :cond_72

    .line 166
    throw v1

    .line 161
    :cond_70
    const/4 v0, 0x0

    goto :goto_46

    .line 168
    :cond_72
    invoke-static {p0, p1}, Lcom/mqunar/core/basectx/activity/Proxy;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 170
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->initWindowSetting(Landroid/app/Activity;)V

    .line 171
    return-void

    .line 145
    :catch_79
    move-exception v0

    goto :goto_7

    .line 163
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
    .line 88
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->stateLog:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    :try_start_7
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 91
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onDestroy(Landroid/app/Activity;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    .line 95
    :goto_d
    return-void

    .line 92
    :catch_e
    move-exception v0

    .line 93
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 60
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 61
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onPause(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 65
    :goto_6
    return-void

    .line 62
    :catch_7
    move-exception v0

    .line 63
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected onPostResume()V
    .registers 2

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 54
    :goto_3
    return-void

    .line 51
    :catch_4
    move-exception v0

    .line 52
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 80
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 84
    :goto_3
    return-void

    .line 81
    :catch_4
    move-exception v0

    .line 82
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-static {p0, v0}, Lcom/mqunar/core/basectx/activity/Proxy;->onResume(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 45
    :goto_d
    return-void

    .line 41
    :cond_e
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_a

    .line 42
    :catch_17
    move-exception v0

    .line 43
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v0

    .line 109
    const-string v2, "_spider_starttime_"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v2, "_spider_starttime_"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    invoke-static {p0, p1}, Lcom/mqunar/core/basectx/activity/Proxy;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 30
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 31
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onStart(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 35
    :goto_6
    return-void

    .line 32
    :catch_7
    move-exception v0

    .line 33
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 71
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onStop(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 75
    :goto_6
    return-void

    .line 72
    :catch_7
    move-exception v0

    .line 73
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public overridePendingTransition(II)V
    .registers 8

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x1

    .line 204
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 205
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 206
    if-eq v0, v3, :cond_19

    if-eq v0, v4, :cond_19

    if-eqz p1, :cond_19

    .line 207
    const-string v0, "anim"

    const-string v2, "spider_slide_in_right"

    invoke-static {v0, v2}, Lcom/mqunar/core/basectx/activity/SpiderR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 209
    :cond_19
    if-eq v1, v3, :cond_27

    if-eq v1, v4, :cond_27

    if-eqz p2, :cond_27

    .line 210
    const-string v0, "anim"

    const-string v1, "spider_slide_out_right"

    invoke-static {v0, v1}, Lcom/mqunar/core/basectx/activity/SpiderR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 212
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 213
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .prologue
    .line 100
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 104
    :goto_3
    return-void

    .line 101
    :catch_4
    move-exception v0

    .line 102
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/activity/Proxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 184
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 190
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/activity/Proxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6

    .prologue
    .line 196
    const-string v0, "_SPIDER_REQUESTCODE_"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v0, "_fragmentName_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 198
    const-string v0, "_fragmentName_key"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 201
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
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->startDialogFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 274
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
    .line 249
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 250
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
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->startDialogFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 242
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
    .line 245
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 246
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
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->startFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 266
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
    .line 224
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 225
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
    .line 286
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 287
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
    .line 282
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Z)V

    .line 283
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
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 221
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
    .line 294
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;IZ)V

    .line 295
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
    .line 216
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 217
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
    .line 290
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;IZ)V

    .line 291
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
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->startTransparentFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 278
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
    .line 237
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 238
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
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->startTransparentFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 229
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
    .line 232
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 233
    return-void
.end method
