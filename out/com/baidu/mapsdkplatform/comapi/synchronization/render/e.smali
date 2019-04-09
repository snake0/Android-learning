.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Landroid/os/HandlerThread;


# instance fields
.field private b:I

.field private c:I

.field private e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

.field private f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

.field private g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->b:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;-><init>()V

    return-void
.end method

.method static a()Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;
    .registers 1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e$b;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->i()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->b:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->h()V

    return-void
.end method

.method private e(I)V
    .registers 5

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The order state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_38

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined order state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void

    :pswitch_34
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f(I)V

    goto :goto_33

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method private f(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-nez v0, :cond_c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v1, "SyncRenderHandler is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method private h()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e()Lcom/baidu/mapapi/synchronization/RoleOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f()Lcom/baidu/mapapi/synchronization/DisplayOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-nez v2, :cond_18

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v1, "SyncRenderHandler is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->c:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;I)V

    goto :goto_17
.end method

.method private i()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e()Lcom/baidu/mapapi/synchronization/RoleOptions;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f()Lcom/baidu/mapapi/synchronization/DisplayOptions;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->g()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_19} :catch_25

    :goto_19
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-nez v1, :cond_2f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v1, "SyncRenderHandler is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :catch_25
    move-exception v0

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v5, "Get result when InterruptedException happened."

    invoke-static {v4, v5, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_19

    :cond_2f
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->c:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;I)V

    goto :goto_24
.end method


# virtual methods
.method a(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->b:I

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->b:I

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e(I)V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 5

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e$1;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SynchronizationRenderStrategy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d:Landroid/os/HandlerThread;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e()Lcom/baidu/mapapi/synchronization/RoleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f()Lcom/baidu/mapapi/synchronization/DisplayOptions;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    return-void
.end method

.method a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/c;)V

    :cond_9
    return-void
.end method

.method b()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v1, "SyncRenderHandler created failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method b(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(I)V

    :cond_9
    return-void
.end method

.method c()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v1, "SyncRenderHandler created failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method c(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->b(I)V

    :cond_9
    return-void
.end method

.method d()Lcom/baidu/mapapi/map/Marker;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->a:Ljava/lang/String;

    const-string v1, "SyncRenderHandler created failed"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->c()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    goto :goto_c
.end method

.method d(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->c:I

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->d()V

    :cond_9
    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->e()V

    :cond_9
    return-void
.end method

.method public g()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    if-eqz v0, :cond_c

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->h()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    :cond_17
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->f()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    :cond_27
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/e;->d:Landroid/os/HandlerThread;

    :cond_32
    return-void
.end method
