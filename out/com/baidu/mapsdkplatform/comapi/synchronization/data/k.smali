.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b()V

    :cond_9
    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(I)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c()V

    :cond_9
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b(I)V

    :cond_9
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->b(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->d()V

    :cond_9
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/k;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c(Landroid/view/View;)V

    :cond_9
    return-void
.end method
