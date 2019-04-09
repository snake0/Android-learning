.class public Lcom/baidu/techain/TechainService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private volatile a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/techain/TechainService;->a:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/techain/TechainService;)V
    .registers 2

    .prologue
    .line 1085
    :try_start_0
    iget v0, p0, Lcom/baidu/techain/TechainService;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/techain/TechainService;->a:I

    .line 1086
    iget v0, p0, Lcom/baidu/techain/TechainService;->a:I

    if-gtz v0, :cond_13

    .line 1087
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/techain/TechainService;->a:I

    .line 1088
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1089
    invoke-virtual {p0}, Lcom/baidu/techain/TechainService;->stopSelf()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 1093
    :cond_13
    :goto_13
    return-void

    .line 1092
    :catch_14
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_13
.end method

.method static synthetic a(Lcom/baidu/techain/TechainService;Ljava/lang/ClassLoader;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 1099
    :try_start_0
    const-string v0, "target_class"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1101
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1104
    const-string v0, "target_method"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1106
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1108
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/techain/TechainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_55} :catch_56

    .line 1111
    :goto_55
    return-void

    .line 1110
    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_55
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    .prologue
    .line 24
    if-nez p1, :cond_7

    .line 25
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 79
    :goto_6
    return v0

    .line 27
    :cond_7
    iget v0, p0, Lcom/baidu/techain/TechainService;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/techain/TechainService;->a:I

    .line 28
    const-string v0, "from_plugin_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 31
    invoke-static {}, Lcom/baidu/techain/b/r;->a()Lcom/baidu/techain/b/r;

    move-result-object v1

    new-instance v2, Lcom/baidu/techain/TechainService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/techain/TechainService$1;-><init>(Lcom/baidu/techain/TechainService;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/baidu/techain/b/r;->a(Ljava/lang/Runnable;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_3d

    .line 79
    :goto_38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_6

    .line 77
    :catch_3d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_38
.end method
