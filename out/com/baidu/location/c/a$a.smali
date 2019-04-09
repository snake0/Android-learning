.class public Lcom/baidu/location/c/a$a;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/location/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/baidu/location/c/a;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/location/c/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    sget-boolean v1, Lcom/baidu/location/f;->isServing:Z

    if-ne v1, v3, :cond_15

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_66

    :cond_15
    :goto_15
    :sswitch_15
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_1c

    invoke-static {v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)V

    :cond_1c
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_23

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)V

    :cond_23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_b

    :sswitch_27
    invoke-static {v0, p1}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Landroid/os/Message;)V

    goto :goto_15

    :sswitch_2b
    invoke-static {v0, p1}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;Landroid/os/Message;)V

    goto :goto_15

    :sswitch_2f
    invoke-static {v0, p1}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;Landroid/os/Message;)V

    goto :goto_15

    :sswitch_33
    invoke-static {}, Lcom/baidu/location/a/l;->c()Lcom/baidu/location/a/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/location/a/l;->b(Landroid/os/Message;)V

    goto :goto_15

    :sswitch_3b
    invoke-static {}, Lcom/baidu/location/a/l;->c()Lcom/baidu/location/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/l;->h()V

    goto :goto_15

    :sswitch_43
    :try_start_43
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_15

    :catch_47
    move-exception v1

    goto :goto_15

    :sswitch_49
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_15

    array-length v2, v1

    if-lez v2, :cond_15

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_15

    :sswitch_5e
    invoke-static {}, Lcom/baidu/location/a/h;->a()Lcom/baidu/location/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/h;->e()V

    goto :goto_15

    :sswitch_data_66
    .sparse-switch
        0xb -> :sswitch_27
        0xc -> :sswitch_2b
        0xf -> :sswitch_2f
        0x16 -> :sswitch_33
        0x1c -> :sswitch_15
        0x29 -> :sswitch_3b
        0x6e -> :sswitch_15
        0x6f -> :sswitch_15
        0x70 -> :sswitch_15
        0x12e -> :sswitch_15
        0x191 -> :sswitch_43
        0x192 -> :sswitch_15
        0x193 -> :sswitch_15
        0x195 -> :sswitch_49
        0x196 -> :sswitch_5e
        0x197 -> :sswitch_15
    .end sparse-switch
.end method
