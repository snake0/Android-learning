.class final Lcom/baidu/techain/push/TechainPushConnService$2;
.super Lcom/baidu/techain/ac/Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/push/TechainPushConnService;


# direct methods
.method constructor <init>(Lcom/baidu/techain/push/TechainPushConnService;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/techain/push/TechainPushConnService$2;->a:Lcom/baidu/techain/push/TechainPushConnService;

    invoke-direct {p0}, Lcom/baidu/techain/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onError([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 149
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    packed-switch v0, :pswitch_data_20

    .line 163
    :goto_c
    const/4 v0, 0x0

    return-object v0

    .line 152
    :pswitch_e
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$2;->a:Lcom/baidu/techain/push/TechainPushConnService;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/techain/push/TechainPushConnService;->reportKillSelf(I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/techain/push/TechainPushConnService$2;->a:Lcom/baidu/techain/push/TechainPushConnService;

    invoke-virtual {v0}, Lcom/baidu/techain/push/TechainPushConnService;->stopSelf()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_c

    .line 161
    :catch_1a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c

    .line 150
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch
.end method

.method public final varargs onProgress1([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method
