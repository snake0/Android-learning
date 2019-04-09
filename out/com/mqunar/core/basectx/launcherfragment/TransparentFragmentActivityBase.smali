.class public abstract Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;
.super Lcom/mqunar/core/basectx/activity/QFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/core/basectx/IStackName;


# instance fields
.field protected _fragmentName:Ljava/lang/String;

.field private fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

.field protected myBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;-><init>()V

    return-void
.end method

.method private getFragmentTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getInStackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-nez v0, :cond_d

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_c
    return-object v0

    .line 108
    :cond_d
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    instance-of v0, v0, Lcom/mqunar/core/basectx/IStackName;

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    check-cast v0, Lcom/mqunar/core/basectx/IStackName;

    invoke-interface {v0}, Lcom/mqunar/core/basectx/IStackName;->getInStackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 111
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/fragment/QFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 78
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->tryDoBack()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 79
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->finish()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    .line 87
    :cond_18
    :goto_18
    return-void

    .line 82
    :cond_19
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-nez v0, :cond_18

    .line 83
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->tryDoBack()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 84
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->finish()V

    goto :goto_18
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->setContentView(Landroid/view/View;)V

    .line 39
    if-nez p1, :cond_5d

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    .line 40
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    if-nez v0, :cond_28

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    .line 44
    :cond_28
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_fragmentName_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 45
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    const-string v1, "_fragmentName_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    .line 48
    :cond_3c
    if-nez p1, :cond_5f

    .line 49
    :try_start_3e
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    .line 51
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mqunar/core/basectx/fragment/QFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-direct {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 60
    :goto_5c
    return-void

    :cond_5d
    move-object v0, p1

    .line 39
    goto :goto_1b

    .line 54
    :cond_5f
    invoke-direct {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->findFragmentByTag(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/fragment/QFragment;

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6b} :catch_6c

    goto :goto_5c

    .line 56
    :catch_6c
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 21
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    if-eqz v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/fragment/QFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 24
    :cond_c
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->myBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    :cond_9
    const-string v0, "_fragmentName_key"

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->_fragmentName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public setQFragment(Lcom/mqunar/core/basectx/fragment/QFragment;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->fragment:Lcom/mqunar/core/basectx/fragment/QFragment;

    .line 28
    return-void
.end method

.method public tryDoBack()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 91
    .line 93
    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 96
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_e} :catch_14

    move-result v1

    if-nez v1, :cond_12

    .line 100
    :cond_11
    :goto_11
    return v0

    .line 96
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 98
    :catch_14
    move-exception v1

    goto :goto_11
.end method
