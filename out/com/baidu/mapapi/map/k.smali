.class Lcom/baidu/mapapi/map/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/MapView;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/k;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapapi/map/k;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapsdkplatform/comapi/map/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    iget-object v1, p0, Lcom/baidu/mapapi/map/k;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapsdkplatform/comapi/map/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v1

    iget v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    iget v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3f

    :goto_27
    iput v0, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    sget v0, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/k;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapsdkplatform/comapi/map/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;I)V

    return-void

    :cond_3f
    iget v0, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    goto :goto_27
.end method
