.class public Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backToActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    if-eqz p2, :cond_a

    .line 114
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    :cond_a
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static backToFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getFreeLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    if-eqz p2, :cond_e

    .line 96
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    :cond_e
    if-nez v0, :cond_24

    .line 100
    invoke-static {p1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    :goto_14
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void

    .line 103
    :cond_24
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    const-string v2, "_flag_clear_top"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_14
.end method

.method public static startDialogFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    if-eqz p2, :cond_a

    .line 84
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 86
    :cond_a
    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/DialogFragmentActivity;

    .line 87
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public static startDialogFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lcom/mqunar/core/basectx/launcherfragment/DialogFragmentActivity;

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    if-eqz p2, :cond_c

    .line 73
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    :cond_c
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method

.method public static startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    if-eqz p2, :cond_a

    .line 32
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    :cond_a
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x24000000

    if-ne v1, v2, :cond_16

    .line 35
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->backToFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 42
    :goto_15
    return-void

    .line 37
    :cond_16
    invoke-static {p1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method

.method public static startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 129
    if-nez p2, :cond_7

    .line 130
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 132
    :cond_7
    const-string v0, "_key_isFlip"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-static {p0, p1, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public static startFragment(Landroid/app/Activity;Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v1, "_key_isFlip"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    invoke-static {p0, p1, v0}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public static startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v1, "_key_isFlip"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-static {p0, p1, v0, p2}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 150
    return-void
.end method

.method public static startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 20
    if-eqz p2, :cond_e

    .line 21
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    :cond_e
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    return-void
.end method

.method public static startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 139
    if-nez p2, :cond_7

    .line 140
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 142
    :cond_7
    const-string v0, "_key_isFlip"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentUtils;->startFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 144
    return-void
.end method

.method public static startTransparentFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    if-eqz p2, :cond_a

    .line 60
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    :cond_a
    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivity;

    .line 63
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static startTransparentFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/fragment/QFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Lcom/mqunar/core/basectx/launcherfragment/TransparentFragmentActivity;

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    if-eqz p2, :cond_c

    .line 49
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    :cond_c
    const-string v2, "_fragmentName_key"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method
