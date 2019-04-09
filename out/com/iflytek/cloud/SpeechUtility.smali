.class public Lcom/iflytek/cloud/SpeechUtility;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field public static final DEF_ENGINE_MODE:Lcom/iflytek/cloud/thirdparty/bh$a;

.field public static final TAG_RESOURCE_CONTENT:Ljava/lang/String; = "tag_rescontent"

.field public static final TAG_RESOURCE_RESULT:Ljava/lang/String; = "result"

.field public static final TAG_RESOURCE_RET:Ljava/lang/String; = "ret"

.field private static d:Lcom/iflytek/cloud/SpeechUtility;


# instance fields
.field protected a:Lcom/iflytek/cloud/thirdparty/bh$a;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/SpeechComponent;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Lcom/iflytek/cloud/SpeechUtility$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    sput-object v0, Lcom/iflytek/cloud/SpeechUtility;->DEF_ENGINE_MODE:Lcom/iflytek/cloud/thirdparty/bh$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->e:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/iflytek/cloud/SpeechUtility;->f:I

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/iflytek/cloud/SpeechUtility;->h:Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->i:Lcom/iflytek/cloud/SpeechUtility$a;

    sget-object v1, Lcom/iflytek/cloud/SpeechUtility;->DEF_ENGINE_MODE:Lcom/iflytek/cloud/thirdparty/bh$a;

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    const-string v1, "params"

    invoke-super {p0, v1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "lib_name"

    const-string v3, "msc"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/MSC;->loadLibrary(Ljava/lang/String;)Z

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->c()V

    const-string v1, "params"

    invoke-virtual {p0, v1, p2}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    invoke-direct {p0}, Lcom/iflytek/cloud/SpeechUtility;->b()I

    move-result v1

    if-eqz v1, :cond_49

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_49
    invoke-direct {p0}, Lcom/iflytek/cloud/SpeechUtility;->d()V

    invoke-direct {p0}, Lcom/iflytek/cloud/SpeechUtility;->e()V

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/cd;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cd;->a()V

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cd;->b()V

    :try_start_59
    const-string v1, "appid"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "appid"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/iflytek/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iflytek/common/a;->a(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/common/a;->a(Z)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6d} :catch_a2

    :goto_6d
    const-string v1, "lxy_tp_dc"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    :goto_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC init enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/iflytek/cloud/thirdparty/cq;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :catch_a2
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_6d

    :cond_a7
    move v0, v1

    goto :goto_82
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.iflytek.vflynote"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/iflytek/cloud/SpeechUtility;->b(Ljava/lang/String;)Lcom/iflytek/speech/SpeechComponent;

    move-result-object v2

    if-eqz v2, :cond_29

    :try_start_3f
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "enginetype"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_51
    if-ge v0, v4, :cond_29

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Lcom/iflytek/speech/SpeechComponent;->addEngine(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_5b

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :catch_5b
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is own process"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_74} :catch_76

    const/4 v0, 0x1

    :goto_75
    return v0

    :catch_76
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :cond_7a
    move v0, v1

    goto :goto_75
.end method

.method private b()I
    .registers 5

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x520a

    :goto_8
    return v0

    :cond_9
    const-string v0, "SpeechUtility start login"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bk;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bk;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "usr"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "pwd"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bk;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechError;

    move-result-object v0

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    goto :goto_8

    :cond_2f
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    goto :goto_8
.end method

.method private b(Ljava/lang/String;)Lcom/iflytek/speech/SpeechComponent;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/SpeechComponent;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_26
    if-nez v0, :cond_34

    new-instance v0, Lcom/iflytek/speech/SpeechComponent;

    invoke-direct {v0, p1}, Lcom/iflytek/speech/SpeechComponent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_32
    move-object v1, v0

    goto :goto_7

    :cond_34
    move-object v0, v1

    goto :goto_32

    :cond_36
    move v0, v2

    goto :goto_26
.end method

.method private c()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/bj;->a()Z

    move-result v0

    :cond_b
    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.iflytek.vflynote"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static declared-synchronized createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;
    .registers 7

    const-class v1, Lcom/iflytek/cloud/SpeechUtility;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/SpeechUtility;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_47

    :try_start_6
    sget-object v0, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;)V

    const-string v3, "force_login"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUtility;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "init failed, please call this method in your main process!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;

    :cond_2d
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_44

    :try_start_2e
    sget-object v0, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_47

    monitor-exit v1

    return-object v0

    :cond_32
    :try_start_32
    new-instance v0, Lcom/iflytek/cloud/SpeechUtility;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechUtility;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;
    :try_end_39
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_32 .. :try_end_39} :catch_3a
    .catchall {:try_start_32 .. :try_end_39} :catchall_44

    goto :goto_2d

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v3, "init failed"

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_2d

    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechUtility;->checkServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "com.iflytek.vflynote.recognize"

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->a(Ljava/lang/String;)V

    const-string v0, "com.iflytek.vflynote.synthesize"

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->a(Ljava/lang/String;)V

    const-string v0, "com.iflytek.vflynote.speechunderstand"

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->a(Ljava/lang/String;)V

    const-string v0, "com.iflytek.vflynote.textunderstand"

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->a(Ljava/lang/String;)V

    const-string v0, "com.iflytek.vflynote.wakeup"

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->a(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Lcom/iflytek/cloud/SpeechUtility$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechUtility$a;-><init>(Lcom/iflytek/cloud/SpeechUtility;Lcom/iflytek/cloud/SpeechUtility$1;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->i:Lcom/iflytek/cloud/SpeechUtility$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->i:Lcom/iflytek/cloud/SpeechUtility$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static declared-synchronized getUtility()Lcom/iflytek/cloud/SpeechUtility;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/SpeechUtility;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.iflytek.vflynote"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_12

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    :goto_11
    return v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public checkServiceInstalled()Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.iflytek.vflynote"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_14} :catch_5f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_5d

    :cond_14
    :goto_14
    iget-boolean v2, p0, Lcom/iflytek/cloud/SpeechUtility;->h:Z

    if-ne v1, v2, :cond_1c

    iget v2, p0, Lcom/iflytek/cloud/SpeechUtility;->f:I

    if-eq v2, v0, :cond_5c

    :cond_1c
    iput-boolean v1, p0, Lcom/iflytek/cloud/SpeechUtility;->h:Z

    iput v0, p0, Lcom/iflytek/cloud/SpeechUtility;->f:I

    invoke-static {}, Lcom/iflytek/cloud/SpeechRecognizer;->getRecognizer()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/iflytek/cloud/SpeechRecognizer;->getRecognizer()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->a(Landroid/content/Context;)V

    :cond_2f
    invoke-static {}, Lcom/iflytek/cloud/SpeechSynthesizer;->getSynthesizer()Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/iflytek/cloud/SpeechSynthesizer;->getSynthesizer()Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->a(Landroid/content/Context;)V

    :cond_3e
    invoke-static {}, Lcom/iflytek/cloud/SpeechUnderstander;->getUnderstander()Lcom/iflytek/cloud/SpeechUnderstander;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/iflytek/cloud/SpeechUnderstander;->getUnderstander()Lcom/iflytek/cloud/SpeechUnderstander;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/SpeechUnderstander;->a(Landroid/content/Context;)V

    :cond_4d
    invoke-static {}, Lcom/iflytek/cloud/TextUnderstander;->getTextUnderstander()Lcom/iflytek/cloud/TextUnderstander;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-static {}, Lcom/iflytek/cloud/TextUnderstander;->getTextUnderstander()Lcom/iflytek/cloud/TextUnderstander;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/TextUnderstander;->a(Landroid/content/Context;)V

    :cond_5c
    return v1

    :catch_5d
    move-exception v2

    goto :goto_14

    :catch_5f
    move-exception v2

    goto :goto_14
.end method

.method public destroy()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;

    if-eqz v1, :cond_d

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    invoke-direct {p0}, Lcom/iflytek/cloud/SpeechUtility;->c()Z

    move-result v0

    :cond_d
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->i:Lcom/iflytek/cloud/SpeechUtility$a;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_18
    iput-object v3, p0, Lcom/iflytek/cloud/SpeechUtility;->i:Lcom/iflytek/cloud/SpeechUtility$a;

    const-string v1, "SpeechUtility destory success"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cq;->a()V

    sget-object v1, Lcom/iflytek/cloud/SpeechUtility;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_26
    sput-object v2, Lcom/iflytek/cloud/SpeechUtility;->d:Lcom/iflytek/cloud/SpeechUtility;

    monitor-exit v1

    :cond_29
    return v0

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public getComponentUrl()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "http://iss.openspeech.cn/v?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/speech/UtilityConfig;->getComponentUrlParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-static {v0, v2, v1}, Lcom/iflytek/speech/UtilityConfig;->appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "2.0"

    invoke-static {v0, v1, v2}, Lcom/iflytek/speech/UtilityConfig;->appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEngineMode()Lcom/iflytek/cloud/thirdparty/bh$a;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_15
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_1b
    const-string v1, "ver_msc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "ver_asr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "ver_tts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "ver_ivw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_3b
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v3}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/msc/MSC;->QMSPGetVersion([BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    const-string v4, "utf-8"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget v2, v3, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v2, :cond_7

    move-object v0, v1

    goto :goto_7

    :cond_57
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v2}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    invoke-static {v1, v2}, Lcom/iflytek/msc/MSC;->QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/String;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_71} :catch_73
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1b .. :try_end_71} :catch_78

    move-object v0, v1

    goto :goto_7

    :catch_73
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_78
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public getPlusLocalInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v6, ""

    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechUtility;->checkServiceInstalled()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ret"

    const/16 v1, 0x5209

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechUtility;->getServiceVersion()I

    move-result v0

    const/16 v1, 0x61

    if-ge v0, v1, :cond_2e

    const-string v0, "ret"

    const/16 v1, 0x4e32

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_2e
    const/16 v0, 0x2710

    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechUtility;->getServiceVersion()I

    move-result v1

    if-gt v0, v1, :cond_4a

    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechUtility;->getServiceVersion()I

    move-result v0

    const/16 v1, 0x2af8

    if-gt v0, v1, :cond_4a

    const-string v0, "ret"

    const/16 v1, 0x4e34

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_4a
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.iflytek.vflynote.providers.LocalResourceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "tag_rescontent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_a1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpeechUtility"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    if-eqz v1, :cond_79

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    const-string v0, "ret"

    const/16 v1, 0x4e24

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_8b
    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "result"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    :cond_a1
    move-object v0, v6

    goto :goto_74
.end method

.method public getServiceVersion()I
    .registers 4

    iget v0, p0, Lcom/iflytek/cloud/SpeechUtility;->f:I

    if-gez v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.iflytek.vflynote"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/iflytek/cloud/SpeechUtility;->f:I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_17} :catch_1a

    :cond_17
    :goto_17
    iget v0, p0, Lcom/iflytek/cloud/SpeechUtility;->f:I

    return v0

    :catch_1a
    move-exception v0

    goto :goto_17
.end method

.method public openEngineSettings(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.iflytek.vflynote"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.iflytek.vflynote"

    const-string v2, "tts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "com.iflytek.vflynote.activity.speaker.SpeakerSetting"

    invoke-direct {p0, v2}, Lcom/iflytek/cloud/SpeechUtility;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v0, "com.iflytek.vflynote.activity.speaker.SpeakerSetting"

    :cond_1e
    :goto_1e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    const-string v2, "asr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "com.iflytek.vflynote.settings.asr"

    invoke-direct {p0, v2}, Lcom/iflytek/cloud/SpeechUtility;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v0, "com.iflytek.vflynote.settings.asr"

    goto :goto_1e

    :cond_40
    const-string v2, "com.iflytek.vflynote.settings.main"

    invoke-direct {p0, v2}, Lcom/iflytek/cloud/SpeechUtility;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v0, "com.iflytek.vflynote.settings.main"
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_1e

    :catch_4b
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x520a

    goto :goto_2c
.end method

.method public queryAvailableEngines()[Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/iflytek/cloud/SpeechUtility;->d()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/SpeechComponent;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechComponent;->getEngines()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_41
    return-object v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "params"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :try_start_21
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/msc/MSC;->QMSPSetParam([B[B)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_35
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_30} :catch_3b

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    goto :goto_f

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    :goto_39
    move v0, v1

    goto :goto_f

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_39
.end method
