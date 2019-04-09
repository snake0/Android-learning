.class public final Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

.field private e:I

.field private f:I

.field private g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v1, 0xf

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->f:I

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->g:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    return-object v0
.end method

.method public g()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->e:I

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->f:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->j:I

    return v0
.end method
