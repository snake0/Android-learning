.class public Lcom/baidu/techain/TechainActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static f:Ljava/lang/reflect/Field;

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Ljava/lang/reflect/Field;

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/reflect/Method;

.field public static k:Ljava/lang/reflect/Method;

.field public static l:Ljava/lang/reflect/Method;

.field public static m:Ljava/lang/reflect/Method;

.field public static n:Ljava/lang/reflect/Method;

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Ljava/lang/reflect/Method;


# instance fields
.field protected a:Z

.field protected b:Lcom/baidu/techain/TechainActivity$a;

.field protected c:Landroid/app/Activity;

.field protected d:Landroid/content/res/Configuration;

.field protected e:Landroid/content/pm/ActivityInfo;

.field private q:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/baidu/techain/TechainActivity;->f:Ljava/lang/reflect/Field;

    .line 66
    sput-object v0, Lcom/baidu/techain/TechainActivity;->g:Ljava/lang/reflect/Field;

    .line 67
    sput-object v0, Lcom/baidu/techain/TechainActivity;->h:Ljava/lang/reflect/Field;

    .line 71
    sput-object v0, Lcom/baidu/techain/TechainActivity;->i:Ljava/lang/reflect/Method;

    .line 72
    sput-object v0, Lcom/baidu/techain/TechainActivity;->j:Ljava/lang/reflect/Method;

    .line 73
    sput-object v0, Lcom/baidu/techain/TechainActivity;->k:Ljava/lang/reflect/Method;

    .line 74
    sput-object v0, Lcom/baidu/techain/TechainActivity;->l:Ljava/lang/reflect/Method;

    .line 75
    sput-object v0, Lcom/baidu/techain/TechainActivity;->m:Ljava/lang/reflect/Method;

    .line 76
    sput-object v0, Lcom/baidu/techain/TechainActivity;->n:Ljava/lang/reflect/Method;

    .line 77
    sput-object v0, Lcom/baidu/techain/TechainActivity;->o:Ljava/lang/reflect/Method;

    .line 78
    sput-object v0, Lcom/baidu/techain/TechainActivity;->p:Ljava/lang/reflect/Method;

    .line 82
    const-class v0, Landroid/app/Activity;

    .line 84
    const-string v1, "onCreate"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->i:Ljava/lang/reflect/Method;

    .line 86
    const-string v1, "onPostCreate"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->j:Ljava/lang/reflect/Method;

    .line 88
    const-string v1, "onStart"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->k:Ljava/lang/reflect/Method;

    .line 90
    const-string v1, "onResume"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->l:Ljava/lang/reflect/Method;

    .line 92
    const-string v1, "onPostResume"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->m:Ljava/lang/reflect/Method;

    .line 94
    const-string v1, "onPause"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->n:Ljava/lang/reflect/Method;

    .line 96
    const-string v1, "onStop"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->o:Ljava/lang/reflect/Method;

    .line 98
    const-string v1, "onDestroy"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->p:Ljava/lang/reflect/Method;

    .line 101
    const-string v1, "mCurrentConfig"

    invoke-static {v0, v1}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->f:Ljava/lang/reflect/Field;

    .line 103
    const-string v1, "mConfigChangeFlags"

    invoke-static {v0, v1}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/TechainActivity;->g:Ljava/lang/reflect/Field;

    .line 105
    const-string v1, "mCalled"

    invoke-static {v0, v1}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/baidu/techain/TechainActivity;->h:Ljava/lang/reflect/Field;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    .line 56
    new-instance v0, Lcom/baidu/techain/TechainActivity$a;

    invoke-direct {v0}, Lcom/baidu/techain/TechainActivity$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    .line 57
    iput-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    .line 62
    iput-object v1, p0, Lcom/baidu/techain/TechainActivity;->d:Landroid/content/res/Configuration;

    .line 63
    iput-object v1, p0, Lcom/baidu/techain/TechainActivity;->e:Landroid/content/pm/ActivityInfo;

    return-void
.end method

.method private a(Landroid/content/res/Configuration;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 405
    :try_start_1
    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->d:Landroid/content/res/Configuration;

    if-nez v1, :cond_6

    .line 420
    :cond_5
    :goto_5
    return v0

    .line 408
    :cond_6
    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->d:Landroid/content/res/Configuration;

    .line 409
    iget-object v2, p0, Lcom/baidu/techain/TechainActivity;->e:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 410
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_17

    move-result v1

    .line 411
    if-eqz v1, :cond_5

    .line 412
    and-int/2addr v1, v2

    if-nez v1, :cond_5

    .line 415
    const/4 v0, 0x1

    goto :goto_5

    .line 419
    :catch_17
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5
.end method

.method private static a(Lcom/baidu/techain/TechainActivity$a;Landroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    :try_start_2
    const-string v2, "from_plugin_package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "target_class"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1a
    move v0, v1

    .line 126
    :goto_1b
    return v0

    .line 119
    :cond_1c
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/techain/TechainActivity$a;->a:Z

    .line 120
    iput-object v2, p0, Lcom/baidu/techain/TechainActivity$a;->d:Ljava/lang/String;

    .line 121
    iput-object v3, p0, Lcom/baidu/techain/TechainActivity$a;->b:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/baidu/techain/TechainActivity$a;->e:Landroid/content/Intent;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_1b

    .line 125
    :catch_26
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v1

    .line 126
    goto :goto_1b
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 387
    :try_start_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    if-eqz v0, :cond_37

    .line 389
    invoke-direct {p0, p1}, Lcom/baidu/techain/TechainActivity;->a(Landroid/content/res/Configuration;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_10} :catch_6d

    move-result v0

    if-nez v0, :cond_2e

    .line 3431
    :try_start_13
    sget-object v0, Lcom/baidu/techain/TechainActivity;->h:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1b} :catch_38

    move v2, v1

    .line 3436
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_68

    .line 3439
    :try_start_21
    sget-object v0, Lcom/baidu/techain/TechainActivity;->h:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_28} :catch_41

    move-result v0

    move v1, v2

    .line 3444
    :goto_2a
    if-nez v1, :cond_4b

    if-nez v0, :cond_4b

    .line 394
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->d:Landroid/content/res/Configuration;

    if-eqz v0, :cond_37

    .line 395
    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->d:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_37} :catch_6d

    .line 401
    :cond_37
    :goto_37
    return-void

    .line 3433
    :catch_38
    move-exception v0

    :try_start_39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    move v2, v3

    .line 3434
    goto :goto_1c

    .line 3441
    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_48} :catch_68

    move v0, v1

    move v1, v3

    .line 3442
    goto :goto_2a

    .line 3451
    :cond_4b
    :try_start_4b
    sget-object v0, Lcom/baidu/techain/TechainActivity;->g:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_53} :catch_72

    .line 3456
    :goto_53
    :try_start_53
    sget-object v0, Lcom/baidu/techain/TechainActivity;->f:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3457
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5f} :catch_60

    goto :goto_2e

    .line 3459
    :catch_60
    move-exception v0

    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_67} :catch_68

    goto :goto_2e

    .line 3462
    :catch_68
    move-exception v0

    :try_start_69
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_2e

    .line 399
    :catch_6d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_37

    .line 3453
    :catch_72
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_79} :catch_68

    goto :goto_53
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 140
    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 141
    const-string v3, "t"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v5, "a"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 144
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1671
    invoke-static {}, Lcom/baidu/techain/b/r;->a()Lcom/baidu/techain/b/r;

    move-result-object v5

    new-instance v6, Lcom/baidu/techain/TechainActivity$1;

    invoke-direct {v6, v2, v3}, Lcom/baidu/techain/TechainActivity$1;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/baidu/techain/b/r;->a(Ljava/lang/Runnable;)V

    .line 147
    :cond_24
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v3

    .line 148
    if-nez v3, :cond_34

    .line 149
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->finish()V

    .line 265
    :goto_33
    return-void

    .line 155
    :cond_34
    iget-object v5, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    invoke-static {v5, v2}, Lcom/baidu/techain/TechainActivity;->a(Lcom/baidu/techain/TechainActivity$a;Landroid/content/Intent;)Z

    .line 157
    iget-object v2, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    invoke-virtual {v2}, Lcom/baidu/techain/TechainActivity$a;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 161
    iget-object v2, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    iget-object v2, v2, Lcom/baidu/techain/TechainActivity$a;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 162
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->finish()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_54} :catch_55

    goto :goto_33

    .line 263
    :catch_55
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_33

    .line 169
    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    iget-object v2, v2, Lcom/baidu/techain/TechainActivity$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v7

    .line 171
    if-eqz v7, :cond_68

    iget-object v2, v7, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_72

    .line 172
    :cond_68
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->finish()V

    goto :goto_33

    .line 180
    :cond_72
    iget-object v3, v7, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v3

    move v2, v1

    :goto_76
    if-ge v2, v5, :cond_2eb

    aget-object v1, v3, v2

    .line 181
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    iget-object v8, v8, Lcom/baidu/techain/TechainActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    move-object v6, v1

    .line 187
    :goto_87
    if-nez v6, :cond_97

    .line 188
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->finish()V

    goto :goto_33

    .line 180
    :cond_93
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_76

    .line 194
    :cond_97
    iput-object v6, p0, Lcom/baidu/techain/TechainActivity;->e:Landroid/content/pm/ActivityInfo;

    .line 196
    iget v1, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 197
    if-nez v1, :cond_9f

    iget v1, v7, Lcom/baidu/techain/core/ApkInfo;->applicationTheme:I

    .line 198
    :cond_9f
    if-nez v1, :cond_dd

    const v1, 0x1030005

    move v5, v1

    .line 199
    :goto_a5
    invoke-virtual {p0, v5}, Lcom/baidu/techain/TechainActivity;->setTheme(I)V

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/techain/TechainActivity;->a:Z
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_ab} :catch_55

    .line 219
    :try_start_ab
    iget-object v1, v7, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    iget-object v2, v2, Lcom/baidu/techain/TechainActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 222
    instance-of v1, v2, Landroid/app/Activity;

    if-nez v1, :cond_df

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 224
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->finish()V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_cf} :catch_d1

    goto/16 :goto_33

    .line 230
    :catch_d1
    move-exception v1

    :try_start_d2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 231
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->finish()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_db} :catch_55

    goto/16 :goto_33

    :cond_dd
    move v5, v1

    .line 198
    goto :goto_a5

    .line 227
    :cond_df
    :try_start_df
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    iput-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e5} :catch_d1

    .line 236
    :try_start_e5
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 237
    invoke-static {p0, v1}, Lcom/baidu/techain/f;->a(Landroid/app/Activity;Landroid/app/Activity;)Z
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_ec} :catch_55

    .line 2590
    :try_start_ec
    const-class v3, Landroid/view/ContextThemeWrapper;

    .line 2591
    const-string v8, "mInflater"

    invoke-static {v3, v8}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 2593
    const-string v9, "mTheme"

    invoke-static {v3, v9}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 2595
    const-string v10, "mResources"

    invoke-static {v3, v10}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ff} :catch_241

    move-result-object v3

    .line 2598
    if-eqz v8, :cond_106

    .line 2599
    const/4 v10, 0x0

    :try_start_103
    invoke-virtual {v8, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2601
    :cond_106
    if-eqz v9, :cond_10c

    .line 2602
    const/4 v8, 0x0

    invoke-virtual {v9, v1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2604
    :cond_10c
    if-eqz v3, :cond_171

    .line 2605
    invoke-virtual {p0}, Lcom/baidu/techain/TechainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2606
    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 2607
    iget-object v10, v7, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2609
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "p="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2611
    new-instance v10, Landroid/content/res/Resources;

    .line 2612
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v10, v9, v11, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v10, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    .line 2613
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "r="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", l="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2614
    iget v8, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-lez v8, :cond_16c

    .line 2615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    iget v10, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 2616
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2615
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2619
    :cond_16c
    iget-object v8, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_171} :catch_238

    .line 2625
    :cond_171
    :goto_171
    :try_start_171
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 2626
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2632
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2633
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2634
    const-string v8, "mLayoutInflater"

    invoke-static {v3, v8}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 2636
    if-eqz v8, :cond_1a8

    .line 2637
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_171 .. :try_end_19b} :catch_241

    .line 2639
    :try_start_19b
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2640
    invoke-virtual {v3, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2641
    invoke-virtual {v8, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a8
    .catch Ljava/lang/Throwable; {:try_start_19b .. :try_end_1a8} :catch_247

    .line 2653
    :cond_1a8
    :goto_1a8
    :try_start_1a8
    const-class v3, Landroid/view/Window;

    const-string v5, "mCallback"

    invoke-static {v3, v5}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_1a8 .. :try_end_1af} :catch_25e

    move-result-object v3

    .line 2654
    if-nez v3, :cond_250

    .line 2694
    :goto_1b2
    :try_start_1b2
    const-class v3, Landroid/app/Activity;

    const-string v5, "mActivityInfo"

    invoke-static {v3, v5}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1b2 .. :try_end_1b9} :catch_26d

    move-result-object v3

    .line 2696
    if-eqz v3, :cond_1bf

    .line 2698
    :try_start_1bc
    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_1bc .. :try_end_1bf} :catch_264

    .line 2704
    :cond_1bf
    :goto_1bf
    :try_start_1bf
    const-class v3, Landroid/app/Activity;

    const-string v5, "mComponent"

    invoke-static {v3, v5}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1c6
    .catch Ljava/lang/Throwable; {:try_start_1bf .. :try_end_1c6} :catch_26d

    move-result-object v3

    .line 2705
    if-eqz v3, :cond_1d5

    .line 2707
    :try_start_1c9
    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d5
    .catch Ljava/lang/Throwable; {:try_start_1c9 .. :try_end_1d5} :catch_273

    .line 2714
    :cond_1d5
    :goto_1d5
    :try_start_1d5
    const-class v3, Landroid/app/Activity;

    const-string v5, "mTitle"

    invoke-static {v3, v5}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 2715
    if-eqz v5, :cond_1ec

    .line 2718
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_27c

    .line 2719
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1e8
    .catch Ljava/lang/Throwable; {:try_start_1d5 .. :try_end_1e8} :catch_26d

    move-result-object v3

    .line 2733
    :goto_1e9
    :try_start_1e9
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1ec
    .catch Ljava/lang/Throwable; {:try_start_1e9 .. :try_end_1ec} :catch_2c4

    .line 2746
    :cond_1ec
    :goto_1ec
    :try_start_1ec
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2748
    sget-object v4, Landroid/R$styleable;->Window:[I

    .line 2749
    invoke-virtual {v1, v4}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2750
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2751
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mWindowStyle"

    .line 2750
    invoke-static {v5, v6}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_203
    .catch Ljava/lang/Throwable; {:try_start_1ec .. :try_end_203} :catch_2d6

    move-result-object v5

    .line 2752
    if-eqz v5, :cond_209

    .line 2754
    :try_start_206
    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_206 .. :try_end_209} :catch_2cd

    .line 246
    :cond_209
    :goto_209
    :try_start_209
    iget-object v3, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    iget-object v3, v3, Lcom/baidu/techain/TechainActivity$a;->e:Landroid/content/Intent;

    iget-object v4, v7, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 247
    iget-object v3, p0, Lcom/baidu/techain/TechainActivity;->b:Lcom/baidu/techain/TechainActivity$a;

    iget-object v3, v3, Lcom/baidu/techain/TechainActivity$a;->e:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 250
    iget-boolean v1, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v1, :cond_230

    sget-object v1, Lcom/baidu/techain/TechainActivity;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_230

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_223
    .catch Ljava/lang/Throwable; {:try_start_209 .. :try_end_223} :catch_55

    if-eqz v1, :cond_230

    .line 252
    :try_start_225
    sget-object v1, Lcom/baidu/techain/TechainActivity;->i:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_230
    .catch Ljava/lang/Throwable; {:try_start_225 .. :try_end_230} :catch_2dc

    .line 259
    :cond_230
    :goto_230
    :try_start_230
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_236
    .catch Ljava/lang/Throwable; {:try_start_230 .. :try_end_236} :catch_55

    goto/16 :goto_33

    .line 2622
    :catch_238
    move-exception v3

    :try_start_239
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_23f
    .catch Ljava/lang/Throwable; {:try_start_239 .. :try_end_23f} :catch_241

    goto/16 :goto_171

    .line 2647
    :catch_241
    move-exception v3

    :try_start_242
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_242 .. :try_end_245} :catch_55

    goto/16 :goto_1a8

    .line 2643
    :catch_247
    move-exception v3

    :try_start_248
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_24e
    .catch Ljava/lang/Throwable; {:try_start_248 .. :try_end_24e} :catch_241

    goto/16 :goto_1a8

    .line 2658
    :cond_250
    :try_start_250
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    :try_end_253
    .catch Ljava/lang/Throwable; {:try_start_250 .. :try_end_253} :catch_25e

    move-result-object v5

    .line 2660
    :try_start_254
    iget-object v8, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_259
    .catch Ljava/lang/IllegalArgumentException; {:try_start_254 .. :try_end_259} :catch_25b
    .catch Ljava/lang/IllegalAccessException; {:try_start_254 .. :try_end_259} :catch_2e5
    .catch Ljava/lang/Throwable; {:try_start_254 .. :try_end_259} :catch_25e

    goto/16 :goto_1b2

    .line 2663
    :catch_25b
    move-exception v3

    goto/16 :goto_1b2

    .line 2665
    :catch_25e
    move-exception v3

    :try_start_25f
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_262
    .catch Ljava/lang/Throwable; {:try_start_25f .. :try_end_262} :catch_55

    goto/16 :goto_1b2

    .line 2700
    :catch_264
    move-exception v3

    :try_start_265
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_26b
    .catch Ljava/lang/Throwable; {:try_start_265 .. :try_end_26b} :catch_26d

    goto/16 :goto_1bf

    .line 2739
    :catch_26d
    move-exception v3

    :try_start_26e
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_271
    .catch Ljava/lang/Throwable; {:try_start_26e .. :try_end_271} :catch_55

    goto/16 :goto_1ec

    .line 2710
    :catch_273
    move-exception v3

    :try_start_274
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto/16 :goto_1d5

    .line 2720
    :cond_27c
    iget v3, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v3, :cond_2b8

    .line 2721
    iget-object v3, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    if-eqz v3, :cond_2e8

    .line 2722
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2723
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "r="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2724
    iget-object v3, p0, Lcom/baidu/techain/TechainActivity;->q:Landroid/content/res/Resources;

    iget v4, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1e9

    .line 2726
    :cond_2b8
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_2c0

    .line 2727
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto/16 :goto_1e9

    .line 2729
    :cond_2c0
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_1e9

    .line 2735
    :catch_2c4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_2cb
    .catch Ljava/lang/Throwable; {:try_start_274 .. :try_end_2cb} :catch_26d

    goto/16 :goto_1ec

    .line 2756
    :catch_2cd
    move-exception v3

    :try_start_2ce
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_2d4
    .catch Ljava/lang/Throwable; {:try_start_2ce .. :try_end_2d4} :catch_2d6

    goto/16 :goto_209

    .line 2760
    :catch_2d6
    move-exception v3

    :try_start_2d7
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_209

    .line 254
    :catch_2dc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_2e3
    .catch Ljava/lang/Throwable; {:try_start_2d7 .. :try_end_2e3} :catch_55

    goto/16 :goto_230

    :catch_2e5
    move-exception v3

    goto/16 :goto_1b2

    :cond_2e8
    move-object v3, v4

    goto/16 :goto_1e9

    :cond_2eb
    move-object v6, v4

    goto/16 :goto_87
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 287
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 288
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/techain/TechainActivity;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_22

    if-eqz v0, :cond_19

    .line 290
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->p:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a

    .line 298
    :cond_19
    :goto_19
    return-void

    .line 292
    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_19

    .line 296
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 303
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 304
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/techain/TechainActivity;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_22

    if-eqz v0, :cond_19

    .line 306
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->n:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a

    .line 314
    :cond_19
    :goto_19
    return-void

    .line 308
    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_19

    .line 312
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 270
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 271
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/baidu/techain/TechainActivity;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_25

    if-eqz v0, :cond_1c

    .line 274
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->j:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_1d

    .line 282
    :cond_1c
    :goto_1c
    return-void

    .line 276
    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_1c

    .line 280
    :catch_25
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1c
.end method

.method protected onPostResume()V
    .registers 4

    .prologue
    .line 335
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 336
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/techain/TechainActivity;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_22

    if-eqz v0, :cond_19

    .line 339
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->m:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a

    .line 347
    :cond_19
    :goto_19
    return-void

    .line 341
    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_19

    .line 345
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 319
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 320
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/techain/TechainActivity;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_22

    if-eqz v0, :cond_19

    .line 322
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->l:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a

    .line 330
    :cond_19
    :goto_19
    return-void

    .line 324
    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_19

    .line 328
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 352
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 353
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/techain/TechainActivity;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_22

    if-eqz v0, :cond_19

    .line 355
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->k:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a

    .line 363
    :cond_19
    :goto_19
    return-void

    .line 357
    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_19

    .line 361
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 368
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 369
    iget-boolean v0, p0, Lcom/baidu/techain/TechainActivity;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/techain/TechainActivity;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_22

    if-eqz v0, :cond_19

    .line 371
    :try_start_f
    sget-object v0, Lcom/baidu/techain/TechainActivity;->o:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/baidu/techain/TechainActivity;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a

    .line 379
    :cond_19
    :goto_19
    return-void

    .line 373
    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_19

    .line 377
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method
