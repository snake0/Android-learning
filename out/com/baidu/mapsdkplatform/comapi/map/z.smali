.class public final Lcom/baidu/mapsdkplatform/comapi/map/z;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

.field b:Z

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->b:Z

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->c:I

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->d:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->e:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->f:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->c:I

    return-object p0
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    return-object p0
.end method

.method public a(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->e:Z

    return-object p0
.end method

.method public d(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->f:Z

    return-object p0
.end method

.method public e(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/z;->g:Z

    return-object p0
.end method
