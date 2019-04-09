.class public Lqunar/sdk/mapapi/SDKInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static context:Landroid/app/Application;

.field private static singleInstance:Lqunar/sdk/mapapi/SDKInitializer;


# instance fields
.field private isbdMapInit:Z

.field private mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

.field private mapType:Lqunar/sdk/mapapi/QunarMapType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/mapapi/SDKInitializer;->isbdMapInit:Z

    .line 22
    iget-object v0, p0, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    if-nez v0, :cond_d

    .line 23
    invoke-virtual {p0, p1}, Lqunar/sdk/mapapi/SDKInitializer;->registerReceiver(Landroid/content/Context;)V

    .line 25
    :cond_d
    return-void
.end method

.method public static destroy()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 63
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    if-eqz v0, :cond_1e

    .line 64
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iget-object v0, v0, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    if-eqz v0, :cond_1c

    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->context:Landroid/app/Application;

    if-eqz v0, :cond_1c

    .line 66
    :try_start_f
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->context:Landroid/app/Application;

    sget-object v1, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iget-object v1, v1, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1f
    .catchall {:try_start_f .. :try_end_18} :catchall_28

    .line 70
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iput-object v2, v0, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    .line 73
    :cond_1c
    :goto_1c
    sput-object v2, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    .line 75
    :cond_1e
    return-void

    .line 67
    :catch_1f
    move-exception v0

    .line 68
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    .line 70
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iput-object v2, v0, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    goto :goto_1c

    :catchall_28
    move-exception v0

    sget-object v1, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iput-object v2, v1, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    throw v0
.end method

.method public static getSDKInitializer()Lqunar/sdk/mapapi/SDKInitializer;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;Lqunar/sdk/mapapi/QunarMapType;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    if-nez v0, :cond_b

    .line 108
    new-instance v0, Lqunar/sdk/mapapi/SDKInitializer;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/SDKInitializer;-><init>(Landroid/app/Application;)V

    sput-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    .line 110
    :cond_b
    sput-object p0, Lqunar/sdk/mapapi/SDKInitializer;->context:Landroid/app/Application;

    .line 111
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iget-object v0, v0, Lqunar/sdk/mapapi/SDKInitializer;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    if-ne v0, p1, :cond_14

    .line 126
    :goto_13
    :pswitch_13
    return-void

    .line 114
    :cond_14
    sput-object p1, Lqunar/sdk/mapapi/QunarMapFacade;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 115
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iput-object p1, v0, Lqunar/sdk/mapapi/SDKInitializer;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 116
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    goto :goto_13

    .line 118
    :pswitch_26
    invoke-static {p0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    goto :goto_13

    .line 116
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_13
    .end packed-switch
.end method

.method public static initialize(Landroid/app/Application;Lqunar/sdk/mapapi/QunarMapType;Z)V
    .registers 5

    .prologue
    .line 81
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lqunar/sdk/mapapi/SDKInitializer;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/SDKInitializer;-><init>(Landroid/app/Application;)V

    sput-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    .line 84
    :cond_b
    sput-object p0, Lqunar/sdk/mapapi/SDKInitializer;->context:Landroid/app/Application;

    .line 85
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iget-object v0, v0, Lqunar/sdk/mapapi/SDKInitializer;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    if-ne v0, p1, :cond_14

    .line 102
    :cond_13
    :goto_13
    :pswitch_13
    return-void

    .line 88
    :cond_14
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iput-object p1, v0, Lqunar/sdk/mapapi/SDKInitializer;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 89
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    goto :goto_13

    .line 91
    :pswitch_24
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iget-boolean v0, v0, Lqunar/sdk/mapapi/SDKInitializer;->isbdMapInit:Z

    if-nez v0, :cond_13

    .line 92
    invoke-static {p0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 93
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqunar/sdk/mapapi/SDKInitializer;->isbdMapInit:Z

    goto :goto_13

    .line 89
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public getInitMapType()Lqunar/sdk/mapapi/QunarMapType;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer;->singleInstance:Lqunar/sdk/mapapi/SDKInitializer;

    iget-object v0, v0, Lqunar/sdk/mapapi/SDKInitializer;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    return-object v0
.end method

.method protected registerReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    const-string v1, "permission check error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "network error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    invoke-direct {v1}, Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;-><init>()V

    iput-object v1, p0, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    .line 59
    iget-object v1, p0, Lqunar/sdk/mapapi/SDKInitializer;->mReceiver:Lqunar/sdk/mapapi/SDKInitializer$SDKReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method
