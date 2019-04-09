.class public Lcom/mqunar/qutui/QutuiLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:J

.field private static h:Lcom/mqunar/qutui/QutuiLog;

.field private static i:Lcom/mqunar/qutui/k;

.field private static j:J

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "http://miniclient.qunar.com/pitcher-proxy"

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->e:Ljava/lang/String;

    .line 44
    const-string v0, "http://mwhale.corp.qunar.com/alive"

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->f:Ljava/lang/String;

    .line 45
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/mqunar/qutui/QutuiLog;->g:J

    .line 49
    :try_start_d
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_24

    .line 50
    const-string v0, "http://front.pitcher.beta.qunar.com/pitcher-proxy"

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->e:Ljava/lang/String;

    .line 51
    const-string v0, "http://l-client4.wap.beta.cn0.qunar.com:9088/alive"

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->f:Ljava/lang/String;

    .line 52
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/mqunar/qutui/QutuiLog;->g:J
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_33

    .line 63
    :cond_24
    :goto_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->a:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->l:Ljava/util/Map;

    return-void

    .line 54
    :catch_33
    move-exception v0

    goto :goto_24
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    if-nez v0, :cond_d

    .line 85
    invoke-static {p1}, Lcom/mqunar/qutui/k;->a(Landroid/content/Context;)Lcom/mqunar/qutui/k;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    .line 87
    :cond_d
    invoke-static {p1}, Lcom/mqunar/qutui/QutuiLog;->getSafeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    .line 89
    :try_start_13
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mqunar/qutui/QutuiLog;->setIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_2f

    .line 93
    :goto_2e
    return-void

    .line 90
    :catch_2f
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method static synthetic a(J)J
    .registers 2

    .prologue
    .line 41
    sput-wide p0, Lcom/mqunar/qutui/QutuiLog;->j:J

    return-wide p0
.end method

.method static synthetic a(Lcom/mqunar/qutui/QutuiLog;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mqunar/qutui/QutuiLog;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/qutui/QutuiLog;Ljava/lang/String;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mqunar/qutui/QutuiLog;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;)",
            "Lqunar/lego/utils/Pitcher;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 242
    const-string v1, "X-ClientEncoding"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "qrid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v1, Lqunar/lego/utils/Pitcher;

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 245
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lqunar/lego/utils/Pitcher;->setProxyUrl(Ljava/lang/String;)Lqunar/lego/utils/Pitcher;

    .line 246
    return-object v1
.end method

.method static synthetic a(Lcom/mqunar/qutui/QutuiLog;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mqunar/qutui/QutuiLog;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/qutui/model/Caf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    :goto_6
    return-void

    .line 306
    :cond_7
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->l:Ljava/util/Map;

    if-eqz v0, :cond_48

    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 307
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 308
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 309
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    iget-object v1, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 311
    if-eqz v1, :cond_3e

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 314
    :cond_3e
    sget-object v1, Lcom/mqunar/qutui/QutuiLog;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 317
    :cond_48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 319
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/model/Caf;

    .line 320
    iget-object v3, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    iget-object v4, v0, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mqunar/qutui/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_8a

    .line 322
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_8a
    iget-object v4, v0, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_97

    const/4 v0, 0x1

    :goto_8f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_97
    const/4 v0, 0x0

    goto :goto_8f

    .line 327
    :cond_99
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qutui/i;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 328
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 329
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v0

    :goto_a9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1eb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/mqunar/qutui/model/Caf;

    .line 330
    iget-object v0, v7, Lcom/mqunar/qutui/model/Caf;->blackBrand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e4

    iget-object v0, v7, Lcom/mqunar/qutui/model/Caf;->blackBrand:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore board: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a9

    .line 335
    :cond_e4
    :try_start_e4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1db

    iget-object v0, v7, Lcom/mqunar/qutui/model/Caf;->processName:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const/4 v9, 0x1

    .line 336
    :goto_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effectiveWakeUp0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    new-instance v1, Landroid/content/Intent;

    iget-object v0, v7, Lcom/mqunar/qutui/model/Caf;->actionName:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v0, v7, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v0, "source"

    iget-object v2, v7, Lcom/mqunar/qutui/model/Caf;->source:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-boolean v0, v7, Lcom/mqunar/qutui/model/Caf;->startNow:Z

    if-eqz v0, :cond_15c

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to startService: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/mqunar/qutui/model/Caf;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/mqunar/qutui/model/Caf;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_157
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_157} :catch_1e4

    .line 343
    :try_start_157
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15c
    .catch Ljava/lang/IllegalStateException; {:try_start_157 .. :try_end_15c} :catch_1de
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_15c} :catch_1e4

    .line 348
    :cond_15c
    :goto_15c
    :try_start_15c
    iget v0, v7, Lcom/mqunar/qutui/model/Caf;->intervalTime:I

    if-lez v0, :cond_18a

    .line 349
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 350
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 351
    if-eqz v0, :cond_183

    .line 352
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v7, Lcom/mqunar/qutui/model/Caf;->intervalTime:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, v7, Lcom/mqunar/qutui/model/Caf;->intervalTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 354
    :cond_183
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->l:Ljava/util/Map;

    iget-object v1, v7, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_18a
    iget-boolean v0, v7, Lcom/mqunar/qutui/model/Caf;->startNow:Z

    if-eqz v0, :cond_1d7

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effectiveWakeUp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    if-eqz v9, :cond_1f6

    .line 359
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qutui/i;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 360
    iget-object v0, v7, Lcom/mqunar/qutui/model/Caf;->processName:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectiveWakeUp2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :goto_1ce
    iget-object v1, v7, Lcom/mqunar/qutui/model/Caf;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d7
    move-object v0, v8

    :goto_1d8
    move-object v8, v0

    .line 368
    goto/16 :goto_a9

    .line 335
    :cond_1db
    const/4 v9, 0x0

    goto/16 :goto_f4

    .line 344
    :catch_1de
    move-exception v0

    .line 345
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_1e2
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_1e2} :catch_1e4

    goto/16 :goto_15c

    .line 365
    :catch_1e4
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 366
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d8

    .line 369
    :cond_1eb
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qutui/QutuiLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qutui/QutuiLog;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/mqunar/qutui/QutuiLog;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_6

    :cond_1f6
    move v0, v9

    goto :goto_1ce
.end method

.method static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    if-eqz p0, :cond_21

    .line 128
    :try_start_3
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 130
    if-eqz v0, :cond_21

    .line 131
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_1d

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 138
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 132
    goto :goto_1a

    .line 134
    :catch_1d
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    :cond_21
    move v0, v1

    .line 138
    goto :goto_1a
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 142
    const-string v0, "com.mqunar.libtask.HotdogConductor"

    const-string v1, "cp"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/cock/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_4e

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_4e

    .line 144
    check-cast v0, Ljava/util/HashMap;

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 147
    :try_start_23
    const-string v2, "vid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 148
    const-string v0, "vid"

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_32
    const-string v0, "ke"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v0, "v"

    invoke-static {}, Lqunar/lego/utils/Goblin;->version()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_49

    .line 155
    :goto_44
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_48
    return-object v0

    .line 152
    :catch_49
    move-exception v0

    .line 153
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_44

    .line 157
    :cond_4e
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pid \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_5e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    :try_start_63
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 164
    const-string v3, "vid"

    iget-object v4, p0, Lcom/mqunar/qutui/QutuiLog;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v3, "vname"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 167
    const-string v2, "cid"

    iget-object v3, p0, Lcom/mqunar/qutui/QutuiLog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_91
    const-string v2, "uid"

    iget-object v3, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/mqunar/cock/utils/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "osVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v2, "pkg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v0, "pid"

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v0, "ma"

    invoke-static {}, Lcom/mqunar/cock/utils/AndroidUtils;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "adid"

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/cock/utils/AndroidUtils;->getADID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "nt"

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/cock/utils/AndroidUtils;->getApnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v0, "mno"

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/cock/utils/AndroidUtils;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v0, "tsv"

    iget-object v2, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v0, "ke"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_117} :catch_11d

    .line 184
    :goto_117
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_48

    .line 180
    :catch_11d
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_117
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mqunar/qutui/QutuiLog;
    .registers 3

    .prologue
    .line 112
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->h:Lcom/mqunar/qutui/QutuiLog;

    if-nez v0, :cond_13

    .line 113
    const-class v1, Lcom/mqunar/qutui/QutuiLog;

    monitor-enter v1

    .line 114
    :try_start_7
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->h:Lcom/mqunar/qutui/QutuiLog;

    if-nez v0, :cond_12

    .line 115
    new-instance v0, Lcom/mqunar/qutui/QutuiLog;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/QutuiLog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mqunar/qutui/QutuiLog;->h:Lcom/mqunar/qutui/QutuiLog;

    .line 117
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 119
    :cond_13
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->h:Lcom/mqunar/qutui/QutuiLog;

    return-object v0

    .line 117
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getSafeContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 96
    if-nez p0, :cond_a

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is empty!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_a
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_f

    .line 106
    :cond_e
    :goto_e
    return-object p0

    .line 102
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_e

    move-object p0, v0

    .line 104
    goto :goto_e
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mqunar/qutui/QutuiLog;->j:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/mqunar/qutui/QutuiLog;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mqunar/qutui/j;

    invoke-direct {v1, p0}, Lcom/mqunar/qutui/j;-><init>(Lcom/mqunar/qutui/QutuiLog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 300
    :cond_1a
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 379
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/qutui/k;->a(Ljava/lang/String;Z)V

    .line 380
    return-void
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/qutui/k;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 387
    return-void
.end method

.method public sendLog(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 189
    iget-object v0, p0, Lcom/mqunar/qutui/QutuiLog;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qutui/QutuiLog;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 238
    :cond_f
    :goto_f
    return-void

    .line 192
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_26

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Count sendLog on Main Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_26
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 197
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-direct {p0}, Lcom/mqunar/qutui/QutuiLog;->c()Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v2, Lqunar/lego/utils/FormPart;

    const-string v3, "c"

    invoke-direct {v2, v3, v1}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "X-ClientEncoding"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lqunar/lego/utils/FormPart;

    const-string v3, "log"

    invoke-direct {v2, v3, p1}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "X-ClientEncoding"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mqunar/qutui/QutuiLog;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/uploadLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cparam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mqunar/qutui/QutuiLog;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/uploadLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/mqunar/qutui/QutuiLog;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;

    move-result-object v0

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v2

    .line 211
    iget-object v0, v2, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_e9

    .line 213
    iget-object v0, v2, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send error, response.respcode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget-object v1, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    const-class v0, Lcom/mqunar/qutui/model/LogModel;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/model/LogModel;

    iget-wide v2, v0, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/mqunar/qutui/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_e2
    sget-object v0, Lcom/mqunar/qutui/QutuiLog;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 215
    :cond_e9
    iget v0, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_11d

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send fail, response.respcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    sget-object v1, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    const-class v0, Lcom/mqunar/qutui/model/LogModel;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/model/LogModel;

    iget-wide v2, v0, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/mqunar/qutui/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    .line 220
    :cond_11d
    const/4 v0, 0x0

    .line 221
    iget-object v1, v2, Lqunar/lego/utils/PitcherResponse;->content:[B

    if-eqz v1, :cond_153

    .line 223
    :try_start_122
    new-instance v1, Ljava/lang/String;

    iget-object v3, v2, Lqunar/lego/utils/PitcherResponse;->content:[B

    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12b} :catch_191

    .line 224
    :try_start_12b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_152

    .line 227
    sget-object v3, Lcom/mqunar/qutui/QutuiLog;->i:Lcom/mqunar/qutui/k;

    const-class v0, Lcom/mqunar/qutui/model/LogModel;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/model/LogModel;

    iget-wide v4, v0, Lcom/mqunar/qutui/model/LogModel;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/mqunar/qutui/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_152} :catch_196

    :cond_152
    move-object v0, v1

    .line 234
    :cond_153
    :goto_153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mqunar/qutui/QutuiLog;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/uploadLog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", respcode = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], response = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e2

    .line 230
    :catch_191
    move-exception v1

    .line 231
    :goto_192
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_153

    .line 230
    :catch_196
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_192
.end method

.method public setIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mqunar/qutui/QutuiLog;->b:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/mqunar/qutui/QutuiLog;->c:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/mqunar/qutui/QutuiLog;->d:Ljava/lang/String;

    .line 81
    return-void
.end method
