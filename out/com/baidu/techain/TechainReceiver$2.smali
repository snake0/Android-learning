.class final Lcom/baidu/techain/TechainReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/baidu/techain/TechainReceiver$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 62
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    iget-object v2, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 66
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->d(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;Z)V

    .line 68
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/techain/rp/Report;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/techain/rp/Report;->r(Z)V

    .line 70
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/baidu/techain/core/d;->a(I)V

    .line 71
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v1

    new-instance v2, Lcom/baidu/techain/TechainReceiver$2$1;

    invoke-direct {v2, p0}, Lcom/baidu/techain/TechainReceiver$2$1;-><init>(Lcom/baidu/techain/TechainReceiver$2;)V

    .line 72
    invoke-virtual {v1, v2}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/ac/Callback;)V

    .line 208
    :cond_55
    :goto_55
    return-void

    .line 116
    :cond_56
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a9

    iget-object v3, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    .line 117
    invoke-static {v3}, Lcom/baidu/techain/b/e;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1a9

    sget-boolean v3, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-eqz v3, :cond_1a9

    .line 120
    new-instance v3, Lcom/baidu/techain/ac/U;

    iget-object v4, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/techain/ac/U;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3}, Lcom/baidu/techain/ac/U;->start()V

    .line 123
    :goto_7a
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    sget-boolean v3, Lcom/baidu/techain/b/e;->a:Z

    if-eqz v3, :cond_a0

    if-nez v1, :cond_a0

    .line 126
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 127
    new-instance v1, Lcom/baidu/techain/ac/U;

    iget-object v3, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/baidu/techain/ac/U;-><init>(Landroid/content/Context;IZ)V

    .line 128
    invoke-virtual {v1}, Lcom/baidu/techain/ac/U;->start()V

    .line 132
    :cond_a0
    iget-boolean v1, p0, Lcom/baidu/techain/TechainReceiver$2;->c:Z

    if-nez v1, :cond_55

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b9

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 138
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 140
    :cond_b9
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    const-string v2, "from_plugin_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 143
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_55

    .line 148
    invoke-virtual {v1}, Lcom/baidu/techain/core/g;->b()Ljava/util/List;

    move-result-object v13

    .line 150
    if-eqz v13, :cond_16c

    move v12, v11

    .line 151
    :goto_d4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_16c

    .line 152
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    move-object v8, v0

    .line 153
    iget-object v1, v8, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e4} :catch_171

    if-eqz v1, :cond_167

    move v10, v11

    .line 155
    :goto_e7
    :try_start_e7
    iget-object v1, v8, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_167

    .line 156
    iget-object v1, v8, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 157
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/baidu/techain/core/h;

    move-object v9, v0

    .line 158
    iget-object v1, v9, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    .line 159
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    .line 160
    invoke-virtual {v4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    .line 161
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v7, "PIF"

    .line 158
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 162
    if-ltz v1, :cond_15f

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 165
    iget-object v1, v8, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, v9, Lcom/baidu/techain/core/h;->b:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 168
    iget-object v3, v9, Lcom/baidu/techain/core/h;->c:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    .line 169
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    .line 174
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    aput-object v5, v3, v4

    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_15f} :catch_163

    .line 155
    :cond_15f
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_e7

    .line 179
    :catch_163
    move-exception v1

    :try_start_164
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 151
    :cond_167
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_d4

    .line 184
    :cond_16c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_16f
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_16f} :catch_171

    goto/16 :goto_55

    .line 205
    :catch_171
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_55

    .line 188
    :cond_177
    :try_start_177
    iget-object v2, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 190
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/techain/TechainReceiver;->a(Ljava/lang/ClassLoader;Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_55

    .line 194
    :cond_192
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_55

    .line 199
    invoke-virtual {v2, v1}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_55

    .line 203
    iget-object v1, v1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/techain/TechainReceiver;->a(Ljava/lang/ClassLoader;Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_1a7
    .catch Ljava/lang/Throwable; {:try_start_177 .. :try_end_1a7} :catch_171

    goto/16 :goto_55

    :cond_1a9
    move v1, v11

    goto/16 :goto_7a
.end method
