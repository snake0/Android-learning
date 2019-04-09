.class Lcom/baidu/location/b/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/e;Lcom/baidu/location/b/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/e$c;-><init>(Lcom/baidu/location/b/e;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;J)J

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Z)V

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-static {v0, p1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Z)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_2c

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-static {v0, v3}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Z)V

    goto :goto_4

    :pswitch_11
    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;J)J

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-static {v0, v3}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Z)V

    goto :goto_4

    :pswitch_26
    iget-object v0, p0, Lcom/baidu/location/b/e$c;->a:Lcom/baidu/location/b/e;

    invoke-static {v0, v3}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Z)Z

    goto :goto_4

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_11
        :pswitch_26
    .end packed-switch
.end method
