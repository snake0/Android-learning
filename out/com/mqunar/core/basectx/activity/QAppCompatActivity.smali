.class public Lcom/mqunar/core/basectx/activity/QAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private preStartTime:J

.field private stateLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private onException(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->preStartTime:J

    invoke-static {p0, v0, v1, p1}, Lcom/mqunar/core/basectx/activity/Util;->onException(Landroid/content/Context;JLjava/lang/Exception;)V

    .line 124
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
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->backToActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 246
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
    .line 241
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 242
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
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->backToFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 254
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
    .line 237
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 238
    return-void
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 162
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->finish(Landroid/app/Activity;)V

    .line 163
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 7

    .prologue
    .line 21
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 24
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

    .line 28
    :goto_2d
    return-object v0

    .line 25
    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_2d
.end method

.method protected needOnCreateSendBroadcast()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 128
    .line 130
    :try_start_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6} :catch_79

    move-object v0, v1

    .line 134
    :goto_7
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v2

    .line 135
    if-eqz p1, :cond_7d

    .line 136
    const-string v4, "_spider_starttime_"

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->preStartTime:J

    .line 138
    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->preStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7d

    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->preStartTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7d

    .line 139
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->restart2(Landroid/content/Context;)V

    .line 146
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
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

    iget-wide v4, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->preStartTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",sT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->stateLog:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    iget-object v2, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->stateLog:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6d} :catch_7b

    .line 151
    :goto_6d
    if-eqz v1, :cond_72

    .line 152
    throw v1

    .line 147
    :cond_70
    const/4 v0, 0x0

    goto :goto_46

    .line 154
    :cond_72
    invoke-static {p0, p1}, Lcom/mqunar/core/basectx/activity/Proxy;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 156
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->initWindowSetting(Landroid/app/Activity;)V

    .line 157
    return-void

    .line 131
    :catch_79
    move-exception v0

    goto :goto_7

    .line 149
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
    .line 92
    sget-object v0, Lcom/mqunar/core/basectx/activity/Util;->ACTIVITY_STATE_LOGGER:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->stateLog:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    :try_start_7
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 95
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onDestroy(Landroid/app/Activity;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    .line 99
    :goto_d
    return-void

    .line 96
    :catch_e
    move-exception v0

    .line 97
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 64
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 65
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onPause(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 69
    :goto_6
    return-void

    .line 66
    :catch_7
    move-exception v0

    .line 67
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected onPostResume()V
    .registers 2

    .prologue
    .line 54
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 58
    :goto_3
    return-void

    .line 55
    :catch_4
    move-exception v0

    .line 56
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 84
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 88
    :goto_3
    return-void

    .line 85
    :catch_4
    move-exception v0

    .line 86
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 44
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-static {p0, v0}, Lcom/mqunar/core/basectx/activity/Proxy;->onResume(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 49
    :goto_d
    return-void

    .line 45
    :cond_e
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_a

    .line 46
    :catch_17
    move-exception v0

    .line 47
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 112
    invoke-static {}, Lcom/mqunar/core/basectx/activity/Util;->getSpiderStartTime()J

    move-result-wide v0

    .line 113
    const-string v2, "_spider_starttime_"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    const-string v2, "_spider_starttime_"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    invoke-static {p0, p1}, Lcom/mqunar/core/basectx/activity/Proxy;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 34
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 35
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onStart(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 39
    :goto_6
    return-void

    .line 36
    :catch_7
    move-exception v0

    .line 37
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 74
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 75
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Proxy;->onStop(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 79
    :goto_6
    return-void

    .line 76
    :catch_7
    move-exception v0

    .line 77
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public overridePendingTransition(II)V
    .registers 8

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x1

    .line 188
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 189
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 190
    if-eq v0, v3, :cond_19

    if-eq v0, v4, :cond_19

    if-eqz p1, :cond_19

    .line 191
    const-string v0, "anim"

    const-string v2, "spider_slide_in_right"

    invoke-static {v0, v2}, Lcom/mqunar/core/basectx/activity/SpiderR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 193
    :cond_19
    if-eq v1, v3, :cond_27

    if-eq v1, v4, :cond_27

    if-eqz p2, :cond_27

    .line 194
    const-string v0, "anim"

    const-string v1, "spider_slide_out_right"

    invoke-static {v0, v1}, Lcom/mqunar/core/basectx/activity/SpiderR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 196
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 197
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .prologue
    .line 104
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 108
    :goto_3
    return-void

    .line 105
    :catch_4
    move-exception v0

    .line 106
    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->onException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/activity/Proxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 177
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/activity/Proxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 185
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
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->startDialogFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 258
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
    .line 233
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 234
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
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->startDialogFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 226
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
    .line 229
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 230
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
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->startFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 250
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
    .line 208
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 209
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
    .line 270
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 271
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
    .line 266
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Z)V

    .line 267
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
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 205
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
    .line 278
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;IZ)V

    .line 279
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
    .line 200
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 201
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
    .line 274
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;IZ)V

    .line 275
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
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->startTransparentFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 262
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
    .line 221
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 222
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
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/activity/QAppCompatActivity;->startTransparentFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 213
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
    .line 216
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 217
    return-void
.end method
