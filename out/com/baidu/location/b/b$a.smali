.class Lcom/baidu/location/b/b$a;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/b;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/b/c;

    invoke-direct {v1, p0}, Lcom/baidu/location/b/c;-><init>(Lcom/baidu/location/b/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/a;->h:I

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v1, 0x63

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/a;->h:I

    goto :goto_20
.end method
