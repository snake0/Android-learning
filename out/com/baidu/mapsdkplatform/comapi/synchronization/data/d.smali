.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

.field private static d:Ljava/lang/Thread;

.field private static volatile e:Z

.field private static volatile g:J

.field private static h:J

.field private static volatile i:Z

.field private static j:I


# instance fields
.field private f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x1388

    const/4 v1, 0x0

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a:Ljava/lang/String;

    sput v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->e:Z

    sput-wide v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->g:J

    sput-wide v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->h:J

    sput-boolean v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->i:Z

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->g:J

    return-wide p0
.end method

.method static a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;
    .registers 1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$a;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->i:Z

    return p0
.end method

.method static synthetic c(I)I
    .registers 1

    sput p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j:I

    return p0
.end method

.method static synthetic e()Z
    .registers 1

    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->e:Z

    return v0
.end method

.method static synthetic f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    return-object v0
.end method

.method static synthetic g()I
    .registers 1

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b:I

    return v0
.end method

.method static synthetic h()Z
    .registers 1

    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->i:Z

    return v0
.end method

.method static synthetic i()J
    .registers 2

    sget-wide v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->g:J

    return-wide v0
.end method

.method static synthetic j()J
    .registers 2

    sget-wide v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->h:J

    return-wide v0
.end method

.method static synthetic k()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()V
    .registers 0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->p()V

    return-void
.end method

.method static synthetic m()V
    .registers 0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->q()V

    return-void
.end method

.method static synthetic n()I
    .registers 1

    sget v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j:I

    return v0
.end method

.method private o()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->e:Z

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    return-void
.end method

.method private static declared-synchronized p()V
    .registers 2

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->e:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized q()V
    .registers 4

    const-class v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->e:Z

    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    if-ne v0, v2, :cond_15

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_15
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    if-ne v0, v2, :cond_3b

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3d

    :cond_3b
    monitor-exit v1

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized a(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The order state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b:I

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

    if-nez v0, :cond_28

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a:Ljava/lang/String;

    const-string v1, "SyncDataRequestHandler is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_36

    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_36

    goto :goto_26

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    :cond_9
    return-void
.end method

.method a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 6

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b()V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    :cond_19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d:Ljava/lang/Thread;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

    return-void
.end method

.method a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->k:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->k:Z

    :goto_7
    return-void

    :cond_8
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->q()V

    goto :goto_7
.end method

.method b(I)V
    .registers 4

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->h:J

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->g:J

    return-void
.end method

.method b(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public c()V
    .registers 1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->p()V

    return-void
.end method

.method c(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->o()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->f:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sput v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b:I

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->h:J

    sput-boolean v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->i:Z

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->k:Z

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->h()V

    :cond_22
    return-void
.end method
