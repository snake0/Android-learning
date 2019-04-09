.class Lcom/iflytek/cloud/thirdparty/da$a;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/da;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/da;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/da$a;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const-string v0, "iFly_ContactManager"

    const-string v1, "ContactObserver_Contact| onChange"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/da$a;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/da;->b(Lcom/iflytek/cloud/thirdparty/da;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    const-string v0, "iFly_ContactManager"

    const-string v1, "onChange too much"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da$a;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/da;->a(Lcom/iflytek/cloud/thirdparty/da;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da$a;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/da;->a(Lcom/iflytek/cloud/thirdparty/da;)V

    goto :goto_1f
.end method
