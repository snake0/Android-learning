.class public final Lcom/mqunar/idscan/decode/CaptureActivityHandler;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/mqunar/idscan/activity/a;

.field private final c:Lcom/mqunar/idscan/decode/c;

.field private d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

.field private final e:Lcom/mqunar/idscan/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mqunar/idscan/activity/a;Lcom/mqunar/idscan/a/f;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->b:Lcom/mqunar/idscan/activity/a;

    new-instance v0, Lcom/mqunar/idscan/decode/c;

    invoke-direct {v0, p1}, Lcom/mqunar/idscan/decode/c;-><init>(Lcom/mqunar/idscan/activity/a;)V

    iput-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->c:Lcom/mqunar/idscan/decode/c;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->c:Lcom/mqunar/idscan/decode/c;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/c;->start()V

    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->b:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iput-object p2, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->e:Lcom/mqunar/idscan/a/f;

    invoke-virtual {p2}, Lcom/mqunar/idscan/a/f;->c()V

    invoke-direct {p0}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->b()V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    sget-object v1, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->b:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_1a

    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->a:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->e:Lcom/mqunar/idscan/a/f;

    iget-object v1, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->c:Lcom/mqunar/idscan/decode/c;

    invoke-virtual {v1}, Lcom/mqunar/idscan/decode/c;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/idscan/a/f;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->b:Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/a;->a()V

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->c:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->e:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/f;->d()V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->c:Lcom/mqunar/idscan/decode/c;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/c;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_18
    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->c:Lcom/mqunar/idscan/decode/c;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/idscan/decode/c;->join(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_2a

    :goto_1f
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->removeMessages(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->removeMessages(I)V

    return-void

    :catch_2a
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    :goto_6
    return-void

    :pswitch_7
    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->a:Ljava/lang/String;

    const-string v1, "Got restart preview message"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->b()V

    goto :goto_6

    :pswitch_14
    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->a:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->b:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iget-object v1, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->b:Lcom/mqunar/idscan/activity/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/idscan/model/ScanPassportResultData;

    invoke-virtual {v1, v0}, Lcom/mqunar/idscan/activity/a;->a(Lcom/mqunar/idscan/model/ScanPassportResultData;)V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->b:Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/a;->b()Lcom/mqunar/idscan/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mqunar/idscan/view/ViewfinderView;->setLineShouldMove(Z)V

    goto :goto_6

    :pswitch_50
    sget-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->a:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->d:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->e:Lcom/mqunar/idscan/a/f;

    iget-object v1, p0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->c:Lcom/mqunar/idscan/decode/c;

    invoke-virtual {v1}, Lcom/mqunar/idscan/decode/c;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/idscan/a/f;->a(Landroid/os/Handler;)V

    goto :goto_6

    :pswitch_data_60
    .packed-switch 0x8
        :pswitch_7
        :pswitch_14
        :pswitch_50
    .end packed-switch
.end method
