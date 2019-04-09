.class public Lcom/baidu/mapsdkvi/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkvi/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkvi/c;->b:I

    sget-object v0, Lcom/baidu/mapsdkvi/c$1;->a:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapsdkvi/c;->c:I

    :goto_21
    return-void

    :pswitch_22
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapsdkvi/c;->c:I

    goto :goto_21

    :pswitch_26
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapsdkvi/c;->c:I

    goto :goto_21

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method
