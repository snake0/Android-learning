.class Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)V
    .registers 2

    .prologue
    .line 545
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 549
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 561
    :cond_8
    :goto_8
    return-void

    .line 551
    :pswitch_9
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$300(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 552
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    const/4 v1, 0x1

    # setter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$202(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Z)Z

    .line 553
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$100(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 554
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$100(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;
    invoke-static {v1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$700(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/QunarRouteType;

    move-result-object v1

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->cityName:Ljava/lang/String;
    invoke-static {v2}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$800(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRouteTimeOut(Lqunar/sdk/mapapi/QunarRouteType;Ljava/lang/String;)V

    goto :goto_8

    .line 549
    nop

    :pswitch_data_36
    .packed-switch 0x271a
        :pswitch_9
    .end packed-switch
.end method
