.class Lcom/baidu/location/LocationClient$a;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/baidu/location/LocationClient;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/LocationClient;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_150

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_c

    :sswitch_16
    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_c

    :sswitch_1a
    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->b(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_c

    :sswitch_1e
    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->c(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_c

    :sswitch_22
    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->d(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_c

    :sswitch_26
    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->e(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_c

    :sswitch_2a
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->p(Lcom/baidu/location/LocationClient;)V

    goto :goto_c

    :sswitch_2e
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->q(Lcom/baidu/location/LocationClient;)V

    goto :goto_c

    :sswitch_32
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->r(Lcom/baidu/location/LocationClient;)V

    goto :goto_c

    :sswitch_36
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->f(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz v1, :cond_c

    invoke-static {v0, v3}, Lcom/baidu/location/LocationClient;->c(Lcom/baidu/location/LocationClient;Z)Z

    goto :goto_c

    :sswitch_42
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->f(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz v1, :cond_c

    invoke-static {v0, v2}, Lcom/baidu/location/LocationClient;->c(Lcom/baidu/location/LocationClient;Z)Z

    goto :goto_c

    :sswitch_4e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "locStr"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/BDLocation;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->s(Lcom/baidu/location/LocationClient;)Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->t(Lcom/baidu/location/LocationClient;)Z

    move-result v2

    if-ne v2, v3, :cond_77

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_c

    :cond_77
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->s(Lcom/baidu/location/LocationClient;)Z

    move-result v1

    if-nez v1, :cond_87

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->t(Lcom/baidu/location/LocationClient;)Z

    move-result v1

    if-ne v1, v3, :cond_87

    invoke-static {v0, v3}, Lcom/baidu/location/LocationClient;->d(Lcom/baidu/location/LocationClient;Z)Z

    goto :goto_c

    :cond_87
    invoke-static {v0}, Lcom/baidu/location/LocationClient;->s(Lcom/baidu/location/LocationClient;)Z

    move-result v1

    if-nez v1, :cond_90

    invoke-static {v0, v3}, Lcom/baidu/location/LocationClient;->d(Lcom/baidu/location/LocationClient;Z)Z

    :cond_90
    const/16 v1, 0x15

    invoke-static {v0, p1, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V

    goto/16 :goto_c

    :sswitch_97
    :try_start_97
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "mac"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_ab

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_ab
    const-string v3, "hotspot"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->m(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->m(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDAbstractLocationListener;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDAbstractLocationListener;->onConnectHotSpotMessage(Ljava/lang/String;I)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_cf} :catch_d0

    goto :goto_c0

    :catch_d0
    move-exception v0

    goto/16 :goto_c

    :sswitch_d3
    :try_start_d3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "loctype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "diagtype"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "diagmessage"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-lez v2, :cond_c

    if-lez v3, :cond_c

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->m(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->m(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDAbstractLocationListener;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v3, v5}, Lcom/baidu/location/BDAbstractLocationListener;->onLocDiagnosticMessage(IILjava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_113} :catch_114

    goto :goto_fd

    :catch_114
    move-exception v0

    goto/16 :goto_c

    :sswitch_117
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/location/BDLocation;

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Lcom/baidu/location/BDLocation;)V

    goto/16 :goto_c

    :sswitch_120
    :try_start_120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_c

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    invoke-static {v0, v2, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;ILandroid/app/Notification;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_138} :catch_13a

    goto/16 :goto_c

    :catch_13a
    move-exception v0

    goto/16 :goto_c

    :sswitch_13d
    :try_start_13d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "removenotify"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->e(Lcom/baidu/location/LocationClient;Z)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_14a} :catch_14c

    goto/16 :goto_c

    :catch_14c
    move-exception v0

    goto/16 :goto_c

    nop

    :sswitch_data_150
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_16
        0x4 -> :sswitch_32
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_1e
        0x15 -> :sswitch_4e
        0x36 -> :sswitch_36
        0x37 -> :sswitch_42
        0x12f -> :sswitch_d3
        0x196 -> :sswitch_97
        0x2bd -> :sswitch_117
        0x2bf -> :sswitch_120
        0x2c0 -> :sswitch_13d
        0x514 -> :sswitch_22
        0x578 -> :sswitch_26
    .end sparse-switch
.end method
