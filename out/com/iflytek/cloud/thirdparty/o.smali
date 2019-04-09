.class public Lcom/iflytek/cloud/thirdparty/o;
.super Ljava/lang/Object;


# static fields
.field public static a:[B


# instance fields
.field private b:Lcom/iflytek/cloud/thirdparty/ah;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ah;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/o;->b:Lcom/iflytek/cloud/thirdparty/ah;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "idle"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "idle"

    goto :goto_5

    :pswitch_9
    const-string v0, "ready"

    goto :goto_5

    :pswitch_c
    const-string v0, "working"

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p4, "null"

    :cond_8
    const-string v0, "event"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    const-string v2, "stream_id"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "last_state"

    invoke-virtual {v0, v1, p3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operation"

    invoke-virtual {v0, v1, p4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-virtual {v0, v1, p7}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scene"

    const-string v2, "global"

    const-string v3, "scene"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "userparams"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_85

    const-string p6, "null"

    const-string v1, "event_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array p5, v1, [B

    const-string v1, "data_type"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    const-string v1, "audio"

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Lcom/iflytek/cloud/thirdparty/ce;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    :goto_6b
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/o;->b:Lcom/iflytek/cloud/thirdparty/ah;

    if-eqz v1, :cond_84

    const-string v1, "dts"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/o;->b:Lcom/iflytek/cloud/thirdparty/ah;

    array-length v3, p5

    invoke-virtual {v2, v1, v0, p5, v3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;[BI)V

    :cond_84
    return-void

    :cond_85
    const-string v1, "event_only"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_type"

    invoke-virtual {v0, v1, p6}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_92
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/i;->a:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    goto :goto_6b
.end method
