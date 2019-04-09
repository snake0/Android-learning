.class public Lorg/acra/dialog/CrashReportDialog;
.super Lorg/acra/dialog/a;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Lorg/acra/d/b;

.field private e:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/acra/dialog/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .registers 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 166
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 167
    if-eqz p1, :cond_e

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_e
    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 45
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->a:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    new-instance v0, Lorg/acra/d/b;

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->d:Lorg/acra/d/b;

    .line 48
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogTheme()I

    move-result v0

    .line 49
    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->setTheme(I)V

    .line 51
    :cond_29
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->b(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method protected b(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .registers 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 199
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 201
    if-eqz p1, :cond_13

    .line 202
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_12
    return-object v0

    .line 204
    :cond_13
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->d:Lorg/acra/d/b;

    invoke-virtual {v1}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    const-string v2, "acra.user.email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogTitle()I

    move-result v1

    .line 62
    if-eqz v1, :cond_12

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    :cond_12
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogIcon()I

    move-result v1

    .line 66
    if-eqz v1, :cond_1f

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 69
    :cond_1f
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->c(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->resDialogPositiveButtonText()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->resDialogNegativeButtonText()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->e:Landroid/app/AlertDialog;

    .line 74
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->e:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogText()I

    move-result v1

    .line 135
    if-eqz v1, :cond_16

    .line 136
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_16
    return-object v0
.end method

.method protected c(Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/16 v6, 0xa

    .line 80
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 82
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 84
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    .line 85
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->a(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->d()Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_52

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->a(Landroid/view/View;)V

    .line 95
    if-eqz p1, :cond_7e

    .line 96
    const-string v0, "comment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_47
    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->a(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->a(Landroid/view/View;)V

    .line 103
    :cond_52
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->e()Landroid/view/View;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_7d

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->a(Landroid/view/View;)V

    .line 108
    if-eqz p1, :cond_72

    .line 109
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_72
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->b(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->a(Landroid/view/View;)V

    .line 114
    :cond_7d
    return-object v2

    :cond_7e
    move-object v0, v1

    goto :goto_47
.end method

.method protected d()Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogCommentPrompt()I

    move-result v1

    .line 149
    if-eqz v1, :cond_17

    .line 150
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected e()Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->b()Lorg/acra/config/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogEmailPrompt()I

    move-result v1

    .line 181
    if-eqz v1, :cond_17

    .line 182
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 212
    const/4 v0, -0x1

    if-ne p2, v0, :cond_44

    .line 214
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_11
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->d:Lorg/acra/d/b;

    invoke-virtual {v1}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 219
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_3b

    .line 220
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 222
    const-string v3, "acra.user.email"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    :goto_31
    invoke-virtual {p0, v0, v1}, Lorg/acra/dialog/CrashReportDialog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_34
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->finish()V

    .line 233
    return-void

    .line 214
    :cond_38
    const-string v0, ""

    goto :goto_11

    .line 225
    :cond_3b
    const-string v1, "acra.user.email"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 229
    :cond_44
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->a()V

    goto :goto_34
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 243
    invoke-super {p0, p1}, Lorg/acra/dialog/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 245
    const-string v0, "comment"

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1e
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 248
    const-string v0, "email"

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_39
    return-void
.end method
