.class Lcom/baidu/location/a/k$d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;


# direct methods
.method private constructor <init>(Lcom/baidu/location/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/k$d;->a:Lcom/baidu/location/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k$d;-><init>(Lcom/baidu/location/a/k;)V

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/baidu/location/a/k$d;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/baidu/location/a/k$b;

    iget-object v1, p0, Lcom/baidu/location/a/k$d;->a:Lcom/baidu/location/a/k;

    invoke-direct {v0, v1, p1}, Lcom/baidu/location/a/k$b;-><init>(Lcom/baidu/location/a/k;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/a/k$b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/baidu/location/a/k$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestLoc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/baidu/location/a/k$d;->a:Lcom/baidu/location/a/k;

    invoke-static {v1}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/baidu/location/a/k$d;->a:Lcom/baidu/location/a/k;

    invoke-static {v1}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3b
    return-void
.end method

.method public showLog(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
