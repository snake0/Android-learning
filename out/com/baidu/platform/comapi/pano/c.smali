.class public Lcom/baidu/platform/comapi/pano/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/baidu/platform/comapi/pano/PanoStateError;

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/pano/c;->b:Lcom/baidu/platform/comapi/pano/PanoStateError;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/platform/comapi/pano/PanoStateError;
    .registers 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/pano/c;->b:Lcom/baidu/platform/comapi/pano/PanoStateError;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/platform/comapi/pano/c;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/platform/comapi/pano/c;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/pano/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/baidu/platform/comapi/pano/c;->c:I

    return v0
.end method
