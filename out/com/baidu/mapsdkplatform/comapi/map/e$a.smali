.class public Lcom/baidu/mapsdkplatform/comapi/map/e$a;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(JIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->a:J

    iput p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->b:I

    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->c:I

    iput p5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->e:Landroid/os/Bundle;

    return-void
.end method
