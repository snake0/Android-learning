.class Lcom/baidu/location/a/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/l;


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/a/l$a;->a:Lcom/baidu/location/a/l;

    invoke-static {v0}, Lcom/baidu/location/a/l;->c(Lcom/baidu/location/a/l;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/baidu/location/a/l$a;->a:Lcom/baidu/location/a/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/l;->c(Lcom/baidu/location/a/l;Z)Z

    iget-object v0, p0, Lcom/baidu/location/a/l$a;->a:Lcom/baidu/location/a/l;

    invoke-static {v0}, Lcom/baidu/location/a/l;->d(Lcom/baidu/location/a/l;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_17
    return-void
.end method
