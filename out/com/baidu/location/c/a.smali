.class public Lcom/baidu/location/c/a;
.super Landroid/app/Service;

# interfaces
.implements Lcom/baidu/location/LLSInterface;


# static fields
.field static a:Lcom/baidu/location/c/a$a;

.field private static f:J


# instance fields
.field b:Landroid/os/Messenger;

.field private c:Landroid/os/Looper;

.field private d:Landroid/os/HandlerThread;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/c/a;->f:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/a;->b:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/a;->e:Z

    return-void
.end method

.method private a()V
    .registers 3

    invoke-static {}, Lcom/baidu/location/a/j;->a()Lcom/baidu/location/a/j;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->b()V

    invoke-static {}, Lcom/baidu/location/a/h;->a()Lcom/baidu/location/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/h;->b()V

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->b()V

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->b()V

    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    invoke-static {}, Lcom/baidu/location/a/l;->c()Lcom/baidu/location/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/l;->d()V

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->c()V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 4

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service register ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/o;->b()Lcom/baidu/location/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/o;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/c/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b()V
    .registers 3

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->d()V

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->e()V

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->c()V

    invoke-static {}, Lcom/baidu/location/a/l;->c()Lcom/baidu/location/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/l;->e()V

    invoke-static {}, Lcom/baidu/location/a/h;->a()Lcom/baidu/location/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/h;->c()V

    invoke-static {}, Lcom/baidu/location/a/v;->e()V

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->b()V

    invoke-static {}, Lcom/baidu/location/a/d;->a()Lcom/baidu/location/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/d;->b()V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->c()V

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service has stoped ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/location/c/a;->e:Z

    if-nez v0, :cond_4d

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_4d
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .registers 3

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/c/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/a;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .registers 3

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->c(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/c/a;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a;->c(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getVersion()D
    .registers 3

    const-wide v0, 0x401e147ae0000000L    # 7.519999980926514

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_25

    const-string v0, "key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/d/b;->g:Ljava/lang/String;

    const-string v0, "sign"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/d/b;->f:Ljava/lang/String;

    const-string v0, "kill_process"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/c/a;->e:Z

    const-string v0, "cache_exception"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_25
    if-nez v0, :cond_27

    :cond_27
    iget-object v0, p0, Lcom/baidu/location/c/a;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/c/a;->f:J

    invoke-static {}, Lcom/baidu/location/a/u;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/a;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/c/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/a;->c:Landroid/os/Looper;

    iget-object v0, p0, Lcom/baidu/location/c/a;->c:Landroid/os/Looper;

    if-nez v0, :cond_4f

    new-instance v0, Lcom/baidu/location/c/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/baidu/location/c/a$a;-><init>(Landroid/os/Looper;Lcom/baidu/location/c/a;)V

    sput-object v0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    :goto_23
    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/c/a;->b:Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu location service start1 ...20171027..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    new-instance v0, Lcom/baidu/location/c/a$a;

    iget-object v1, p0, Lcom/baidu/location/c/a;->c:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/baidu/location/c/a$a;-><init>(Landroid/os/Looper;Lcom/baidu/location/c/a;)V

    sput-object v0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    goto :goto_23
.end method

.method public onDestroy()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a$a;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_e

    :goto_6
    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_e
    move-exception v0

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop exception..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/baidu/location/c/a;->b()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_6
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service remove task..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnBind(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
