.class public Lcom/mqunar/core/basectx/fragment/QFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final EXTRA_FROM_ACTIVITY:Ljava/lang/String; = "__FROM_ACTIVITY__"

.field public static final EXTRA_TO_ACTIVITY:Ljava/lang/String; = "__TO_ACTIVITY__"

.field public static final key:Ljava/lang/String; = "_fragmentName_key"


# instance fields
.field private mCalledFragment:Landroid/support/v4/app/Fragment;

.field protected myBundle:Landroid/os/Bundle;

.field private pidOnDie:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private geLauncherFragmentActivityBase()Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;
    .registers 3

    .prologue
    .line 49
    :try_start_0
    const-class v0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 53
    :goto_16
    return-object v0

    .line 52
    :catch_17
    move-exception v0

    .line 53
    :cond_18
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 192
    if-nez p1, :cond_7

    .line 193
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 195
    :cond_7
    const-string v0, "_fragmentName_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 196
    const-string v0, "_fragmentName_key"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1c
    return-object p1
.end method

.method private startActivityFromChildFragment(Lcom/mqunar/core/basectx/fragment/QFragment;Landroid/content/Intent;I)V
    .registers 5

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->mCalledFragment:Landroid/support/v4/app/Fragment;

    .line 30
    const v0, 0xffff

    and-int/2addr v0, p3

    .line 31
    invoke-virtual {p0, p2, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 32
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
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->backToActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public final backToActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
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
    .line 272
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 273
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
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->backToFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method public final backToFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
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
    .line 268
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public isCanFlip()Z
    .registers 2

    .prologue
    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->geLauncherFragmentActivityBase()Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_c

    .line 41
    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isCanFlip()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 44
    :goto_a
    return v0

    .line 43
    :catch_b
    move-exception v0

    .line 44
    :cond_c
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isTouchOnHScroll()Z
    .registers 2

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->geLauncherFragmentActivityBase()Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_c

    .line 69
    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isTouchOnHScroll()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 72
    :goto_a
    return v0

    .line 71
    :catch_b
    move-exception v0

    .line 72
    :cond_c
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->mCalledFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->mCalledFragment:Landroid/support/v4/app/Fragment;

    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->mCalledFragment:Landroid/support/v4/app/Fragment;

    .line 155
    :goto_10
    return-void

    .line 153
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_10
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    if-nez p1, :cond_35

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->myBundle:Landroid/os/Bundle;

    .line 161
    iget-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->myBundle:Landroid/os/Bundle;

    if-nez v0, :cond_16

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->myBundle:Landroid/os/Bundle;

    .line 164
    :cond_16
    if-eqz p1, :cond_34

    .line 165
    const-string v0, "_spider_mypid_"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->pidOnDie:I

    .line 167
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 168
    iget v1, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->pidOnDie:I

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->pidOnDie:I

    if-eq v0, v1, :cond_34

    .line 169
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/basectx/activity/Util;->restart(Landroid/content/Context;)V

    .line 172
    :cond_34
    return-void

    :cond_35
    move-object v0, p1

    .line 160
    goto :goto_9
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 35
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->myBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lcom/mqunar/core/basectx/fragment/QFragment;->myBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 179
    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 180
    const-string v1, "_spider_mypid_"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v1, "_spider_mypid_"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method public setCanFlip(Z)V
    .registers 3

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->geLauncherFragmentActivityBase()Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_9

    .line 60
    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->setCanFlip(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 63
    :cond_9
    :goto_9
    return-void

    .line 62
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setTouchOnHScroll(Z)V
    .registers 3

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->geLauncherFragmentActivityBase()Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->setTouchOnHScroll(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 83
    :cond_9
    :goto_9
    return-void

    .line 81
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 6

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_25

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_25
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_41

    .line 93
    instance-of v1, v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v1, :cond_35

    .line 94
    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->startActivityFromChildFragment(Lcom/mqunar/core/basectx/fragment/QFragment;Landroid/content/Intent;I)V

    .line 101
    :goto_34
    return-void

    .line 96
    :cond_35
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_34

    .line 99
    :cond_41
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_34
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
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->startDialogFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public final startDialogFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
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
    .line 264
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startDialogFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 265
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
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->startDialogFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 237
    return-void
.end method

.method public final startDialogFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 8
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
    .line 240
    const-class v0, Lcom/mqunar/core/basectx/launcherfragment/DialogFragmentActivity;

    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 242
    if-eqz p2, :cond_c

    .line 243
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 245
    :cond_c
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_41

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_41
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_5d

    .line 253
    instance-of v2, v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v2, :cond_51

    .line 254
    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-direct {v0, p0, v1, p3}, Lcom/mqunar/core/basectx/fragment/QFragment;->startActivityFromChildFragment(Lcom/mqunar/core/basectx/fragment/QFragment;Landroid/content/Intent;I)V

    .line 261
    :goto_50
    return-void

    .line 256
    :cond_51
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_50

    .line 259
    :cond_5d
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_50
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
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->startFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
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
    .line 188
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .registers 6
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
    .line 300
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 301
    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Z)V
    .registers 5
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
    .line 296
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mqunar/core/basectx/fragment/QFragment;->setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 297
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
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 144
    return-void
.end method

.method public final startFragmentForResult(Ljava/lang/Class;IZ)V
    .registers 6
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
    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v1, "_key_isFlip"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 139
    return-void
.end method

.method public final startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 8
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
    .line 104
    invoke-static {p1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 106
    if-eqz p2, :cond_e

    .line 107
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    :cond_e
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_43

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_43
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_5f

    .line 117
    instance-of v2, v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v2, :cond_53

    .line 118
    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-direct {v0, p0, v1, p3}, Lcom/mqunar/core/basectx/fragment/QFragment;->startActivityFromChildFragment(Lcom/mqunar/core/basectx/fragment/QFragment;Landroid/content/Intent;I)V

    .line 125
    :goto_52
    return-void

    .line 120
    :cond_53
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_52

    .line 123
    :cond_5f
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_52
.end method

.method public final startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;IZ)V
    .registers 6
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
    .line 128
    if-nez p2, :cond_7

    .line 129
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 131
    :cond_7
    const-string v0, "_key_isFlip"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/fragment/QFragment;->startFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 133
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
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->setFragmentName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->startTransparentFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 293
    return-void
.end method

.method public final startTransparentFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
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
    .line 231
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startTransparentFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 232
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
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/fragment/QFragment;->startTransparentFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 203
    return-void
.end method

.method public final startTransparentFragmentForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 8
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
    .line 206
    const-class v0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivity;

    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    if-eqz p2, :cond_c

    .line 209
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    :cond_c
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_41

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_41
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_5d

    .line 219
    instance-of v2, v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v2, :cond_51

    .line 220
    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-direct {v0, p0, v1, p3}, Lcom/mqunar/core/basectx/fragment/QFragment;->startActivityFromChildFragment(Lcom/mqunar/core/basectx/fragment/QFragment;Landroid/content/Intent;I)V

    .line 227
    :goto_50
    return-void

    .line 222
    :cond_51
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_50

    .line 225
    :cond_5d
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/fragment/QFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_50
.end method
