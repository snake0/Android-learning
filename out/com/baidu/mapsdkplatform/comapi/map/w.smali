.class Lcom/baidu/mapsdkplatform/comapi/map/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comapi/map/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xff09

    if-eq v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1c

    goto :goto_7

    :sswitch_e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/v;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/v;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/v;->a(II)V

    goto :goto_7

    :sswitch_data_1c
    .sparse-switch
        -0x1 -> :sswitch_e
        0x0 -> :sswitch_e
        0x1 -> :sswitch_e
        0x2 -> :sswitch_e
        0x3 -> :sswitch_e
        0x4 -> :sswitch_e
        0x5 -> :sswitch_e
        0x6 -> :sswitch_e
        0x7 -> :sswitch_e
        0x8 -> :sswitch_e
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0x65 -> :sswitch_e
        0x66 -> :sswitch_e
    .end sparse-switch
.end method

.method a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/v;

    return-void
.end method

.method b(Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/v;

    return-void
.end method
