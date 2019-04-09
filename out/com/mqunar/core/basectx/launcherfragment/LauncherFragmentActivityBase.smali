.class public abstract Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;
.super Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/core/basectx/IStackName;


# instance fields
.field protected _fragmentName:Ljava/lang/String;

.field protected _id:I

.field private fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

.field protected isFlip:Z

.field protected isPause:Z

.field public mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

.field protected myBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;-><init>()V

    .line 15
    new-instance v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-direct {v0, p0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;-><init>(Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;)V

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isPause:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isFlip:Z

    return-void
.end method

.method private getFragmentTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->finish()V

    .line 32
    return-void
.end method

.method public getInStackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-nez v0, :cond_d

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_c
    return-object v0

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    instance-of v0, v0, Lcom/mqunar/core/basectx/IStackName;

    if-eqz v0, :cond_1c

    .line 187
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    check-cast v0, Lcom/mqunar/core/basectx/IStackName;

    invoke-interface {v0}, Lcom/mqunar/core/basectx/IStackName;->getInStackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 189
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public isCanFlip()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->isCanFlip()Z

    move-result v0

    return v0
.end method

.method public isTouchOnHScroll()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->isTouchOnHScroll()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 146
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->tryDoBack()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 147
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->finish()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    .line 149
    iget-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isFlip:Z

    if-eqz v0, :cond_28

    .line 150
    const-string v0, "anim"

    const-string v1, "spider_slide_out_right"

    invoke-direct {p0, v0, v1}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v2, v0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->overridePendingTransition(II)V

    .line 161
    :cond_28
    :goto_28
    return-void

    .line 153
    :cond_29
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-nez v0, :cond_28

    .line 154
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->tryDoBack()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 155
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->finish()V

    .line 156
    iget-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isFlip:Z

    if-eqz v0, :cond_28

    .line 157
    const-string v0, "anim"

    const-string v1, "spider_slide_out_right"

    invoke-direct {p0, v0, v1}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v2, v0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->overridePendingTransition(II)V

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->setContentView(Landroid/view/View;)V

    .line 50
    if-nez p1, :cond_aa

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    .line 51
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    if-nez v0, :cond_28

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    .line 55
    :cond_28
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 56
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    .line 61
    :goto_3c
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_key_isFlip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 62
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_key_isFlip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isFlip:Z

    .line 64
    :cond_50
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    iget-boolean v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isFlip:Z

    invoke-virtual {v0, v1}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->setCanFlip(Z)V

    .line 67
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_fragmentName_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 68
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_fragmentName_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    .line 71
    :cond_72
    if-nez p1, :cond_b4

    .line 72
    :try_start_74
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v2, "_flag_clear_top"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v2, "_flag_clear_top"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 75
    invoke-static {p0, v0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->addSingleTopFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;Ljava/lang/Class;)V

    .line 77
    :cond_91
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    .line 78
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mqunar/core/basectx/fragment/QFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-direct {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_a9} :catch_d8

    .line 90
    :cond_a9
    :goto_a9
    return-void

    :cond_aa
    move-object v0, p1

    .line 50
    goto/16 :goto_1b

    .line 58
    :cond_ad
    invoke-static {}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getId()I

    move-result v0

    iput v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    goto :goto_3c

    .line 81
    :cond_b4
    :try_start_b4
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_isPause"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_isPause"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 82
    invoke-static {p0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->onResumeLauncherFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;)V

    .line 83
    invoke-direct {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->findFragmentByTag(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d7} :catch_d8

    goto :goto_a9

    .line 86
    :catch_d8
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a9
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->onDestroy()V

    .line 114
    iget-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isPause:Z

    if-eqz v0, :cond_b

    .line 115
    invoke-static {p0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->onPauseLauncherFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;)V

    .line 119
    :goto_a
    return-void

    .line 117
    :cond_b
    invoke-static {p0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->finishLauncherFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;)V

    goto :goto_a
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 26
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/fragment/QFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->onResume()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isPause:Z

    .line 38
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 102
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isPause:Z

    .line 103
    const-string v0, "_isPause"

    iget-boolean v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isPause:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v0, "_key_isFlip"

    iget-boolean v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->isFlip:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v0, "_id"

    iget v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v0, "_fragmentName_key"

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public setCanFlip(Z)V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->setCanFlip(Z)V

    .line 127
    return-void
.end method

.method public setTouchOnHScroll(Z)V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->mFlipHelper:Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->setTouchOnHScroll(Z)V

    .line 135
    return-void
.end method

.method public tryDoBack()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 169
    .line 171
    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 174
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_e} :catch_14

    move-result v1

    if-nez v1, :cond_12

    .line 178
    :cond_11
    :goto_11
    return v0

    .line 174
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 176
    :catch_14
    move-exception v1

    goto :goto_11
.end method
