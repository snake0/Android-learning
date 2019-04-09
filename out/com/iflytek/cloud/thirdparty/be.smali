.class public abstract Lcom/iflytek/cloud/thirdparty/be;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/cq$a;


# static fields
.field protected static final y:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/cloud/thirdparty/be;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/ce;

.field private volatile b:Lcom/iflytek/cloud/thirdparty/be$b;

.field private c:Landroid/os/HandlerThread;

.field protected r:I

.field public s:I

.field protected t:Landroid/content/Context;

.field protected volatile u:Z

.field protected v:J

.field protected w:I

.field protected final x:Lcom/iflytek/cloud/thirdparty/cq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/be;->y:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->r:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/be;->u:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->a:Lcom/iflytek/cloud/thirdparty/be$b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/be;->v:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->w:I

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cq;->a(Lcom/iflytek/cloud/thirdparty/cq$a;)Lcom/iflytek/cloud/thirdparty/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->x:Lcom/iflytek/cloud/thirdparty/cq;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/be;->u:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->r:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/be;->u:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->a:Lcom/iflytek/cloud/thirdparty/be$b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/be;->v:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->w:I

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cq;->a(Lcom/iflytek/cloud/thirdparty/cq$a;)Lcom/iflytek/cloud/thirdparty/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->x:Lcom/iflytek/cloud/thirdparty/cq;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/be;->c:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/be;->u:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->y()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_20
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/be;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_2c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "quit current Msc Handler thread"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :cond_36
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/be;->c:Landroid/os/HandlerThread;

    :cond_38
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3e
    move-object v0, v1

    goto :goto_20
.end method

.method public static u()Z
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be;->y:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 4

    const-string v0, "cloud"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "engine_type"

    const-string v2, "cloud"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .registers 3

    const-string v0, "local"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->e()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public C()V
    .registers 3

    const-string v0, "startBluetooth enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void
.end method

.method public D()V
    .registers 3

    const-string v0, "stopBluetooth enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_16} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_1c

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method protected a(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/iflytek/cloud/thirdparty/be;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void
.end method

.method protected a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/be;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method protected a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V
    .registers 7

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->f:Lcom/iflytek/cloud/thirdparty/be$b;

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->e:Lcom/iflytek/cloud/thirdparty/be$b;

    if-ne v0, v1, :cond_2b

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send msg failed while status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :goto_2a
    return-void

    :cond_2b
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_58

    :goto_30
    if-eqz p3, :cond_37

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->removeMessages(I)V

    :cond_37
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    if-ne p2, v0, :cond_53

    if-gtz p4, :cond_53

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2a

    :sswitch_41
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    goto :goto_30

    :sswitch_47
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->d:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    goto :goto_30

    :sswitch_4d
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->e:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    goto :goto_30

    :cond_53
    int-to-long v0, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/cloud/thirdparty/be;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_41
        0x3 -> :sswitch_47
        0x15 -> :sswitch_4d
    .end sparse-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->f:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->y()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cd;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cd;->b()V

    return-void
.end method

.method protected declared-synchronized a(Lcom/iflytek/cloud/thirdparty/be$b;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",setStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->f:Lcom/iflytek/cloud/thirdparty/be$b;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_54

    if-ne v0, v1, :cond_2b

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->e:Lcom/iflytek/cloud/thirdparty/be$b;

    if-ne v0, v1, :cond_35

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->f:Lcom/iflytek/cloud/thirdparty/be$b;

    if-ne p1, v0, :cond_29

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/be;->v:J
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_54

    goto :goto_29

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 3

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->c()V

    return-void
.end method

.method protected a_()V
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->x:Lcom/iflytek/cloud/thirdparty/cq;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cq;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_c

    :goto_6
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/iflytek/cloud/thirdparty/be;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void

    :catch_c
    move-exception v0

    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method protected declared-synchronized b(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->y()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->x:Lcom/iflytek/cloud/thirdparty/cq;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/cq;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_16
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    :goto_b
    const/16 v0, 0x15

    :try_start_d
    invoke-virtual {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/be;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->d(Landroid/os/Message;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_20

    monitor-exit p0

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_b

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/be;->u:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->y()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected c()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/be;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->w:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "sample_rate"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/be;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/be;->s:I

    return-void
.end method

.method protected d(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/iflytek/cloud/thirdparty/be;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_184

    const/4 v1, 0x0

    :try_start_6
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18a

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_95

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_95

    const-string v0, "SDK is not init while session begin"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2f

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_23
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_6 .. :try_end_23} :catch_69
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_c0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_23} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_23} :catch_126
    .catchall {:try_start_6 .. :try_end_23} :catchall_15a

    :catch_23
    move-exception v0

    :try_start_24
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2a

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_15a

    if-eqz v0, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_55
    :goto_55
    return-void

    :pswitch_56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/SpeechError;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/be;->a()V

    goto :goto_55

    :pswitch_61
    :try_start_61
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e22

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_23
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_61 .. :try_end_69} :catch_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_c0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_61 .. :try_end_69} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_69} :catch_126
    .catchall {:try_start_61 .. :try_end_69} :catchall_15a

    :catch_69
    move-exception v0

    :try_start_6a
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_15a

    if-eqz v0, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_55

    :cond_95
    :try_start_95
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Landroid/os/Message;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_23
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_95 .. :try_end_98} :catch_69
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_c0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_95 .. :try_end_98} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_126
    .catchall {:try_start_95 .. :try_end_98} :catchall_15a

    if-eqz v1, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " occur Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_55

    :catch_c0
    move-exception v0

    :try_start_c1
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V
    :try_end_c9
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_15a

    if-eqz v2, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occur Error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_55

    :catch_f2
    move-exception v0

    :try_start_f3
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e35

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_fd
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_15a

    if-eqz v0, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_55

    :catch_126
    move-exception v0

    :try_start_127
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_131
    .catchall {:try_start_127 .. :try_end_131} :catchall_15a

    if-eqz v0, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_55

    :catchall_15a
    move-exception v0

    if-eqz v1, :cond_182

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/be;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_182
    throw v0

    nop

    :pswitch_data_184
    .packed-switch 0x15
        :pswitch_56
    .end packed-switch

    :pswitch_data_18a
    .packed-switch 0x8
        :pswitch_61
    .end packed-switch
.end method

.method public m()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected p()V
    .registers 5

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/be;->removeMessages(I)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/be;->w:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/be;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "pte"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "text_encoding"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "rse"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/be;->s:I

    return v0
.end method

.method public v()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->f:Lcom/iflytek/cloud/thirdparty/be$b;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->e:Lcom/iflytek/cloud/thirdparty/be$b;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->a:Lcom/iflytek/cloud/thirdparty/be$b;

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method protected declared-synchronized w()Lcom/iflytek/cloud/thirdparty/be$b;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->b:Lcom/iflytek/cloud/thirdparty/be$b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Lcom/iflytek/cloud/thirdparty/ce;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/be;->a:Lcom/iflytek/cloud/thirdparty/ce;

    return-object v0
.end method

.method protected y()V
    .registers 3

    const-string v0, "clear all message"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x14

    if-ge v0, v1, :cond_10

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/be;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method protected z()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
