.class Lcom/baidu/location/a/k$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;


# direct methods
.method private constructor <init>(Lcom/baidu/location/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/k$f;->a:Lcom/baidu/location/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k$f;-><init>(Lcom/baidu/location/a/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/a/k$f;->a:Lcom/baidu/location/a/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Z)Z

    iget-object v0, p0, Lcom/baidu/location/a/k$f;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
