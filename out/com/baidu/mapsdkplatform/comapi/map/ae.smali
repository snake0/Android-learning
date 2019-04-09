.class public Lcom/baidu/mapsdkplatform/comapi/map/ae;
.super Lcom/baidu/mapsdkplatform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ae;->c:I

    const-string v0, "mappoi"

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ae;->b:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ae;->d:I

    return-void
.end method
