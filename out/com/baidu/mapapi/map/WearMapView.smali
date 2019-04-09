.class public Lcom/baidu/mapapi/map/WearMapView;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field public static final BT_INVIEW:I = 0x1

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static final w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/baidu/mapsdkplatform/comapi/map/l;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

.field private e:Lcom/baidu/mapsdkplatform/comapi/map/j;

.field private f:Lcom/baidu/mapapi/map/BaiduMap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/graphics/Bitmap;

.field private i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

.field private j:Z

.field private k:Landroid/graphics/Point;

.field private l:Landroid/graphics/Point;

.field private m:Landroid/widget/RelativeLayout;

.field public mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

.field public mTimer:Ljava/util/Timer;

.field public mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

.field private n:Lcom/baidu/mapapi/map/SwipeDismissView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private u:Z

.field private v:Landroid/content/Context;

.field private x:Z

.field private y:Z

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x14

    const/4 v4, 0x5

    const/16 v3, 0xa

    const/4 v1, 0x0

    const-class v0, Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    sput v1, Lcom/baidu/mapapi/map/WearMapView;->d:I

    sput v1, Lcom/baidu/mapapi/map/WearMapView;->r:I

    sput v1, Lcom/baidu/mapapi/map/WearMapView;->s:I

    sput v3, Lcom/baidu/mapapi/map/WearMapView;->t:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const v2, 0x1e8480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const v2, 0xf4240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const v1, 0x7a120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const v2, 0x30d40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const v2, 0x186a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const v2, 0xc350

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const/16 v2, 0x61a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x11

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;F)F
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/map/WearMapView;->z:F

    return p1
.end method

.method private a(II)I
    .registers 9

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v0, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v2, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v0, p1, v0

    return v0
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/mapsdkplatform/comapi/map/j;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    packed-switch p1, :pswitch_data_1c

    goto :goto_4

    :pswitch_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->onPause()V

    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->b()V

    goto :goto_4

    :pswitch_12
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->onResume()V

    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->c()V

    goto :goto_4

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/baidu/mapapi/map/WearMapView;->r:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/baidu/mapapi/map/WearMapView;->s:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/baidu/mapapi/map/WearMapView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Landroid/content/Context;

    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/WearMapView$a;-><init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    :cond_25
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/i;->a()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/j;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/mapsdkplatform/comapi/map/e;->s(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/mapsdkplatform/comapi/map/e;->r(Z)V

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->d(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->b(Landroid/content/Context;)V

    if-eqz p2, :cond_6f

    iget-boolean v0, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0, v5}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->setVisibility(I)V

    :cond_6f
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->e(Landroid/content/Context;)V

    if-eqz p2, :cond_7d

    iget-boolean v0, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_7d
    if-eqz p2, :cond_87

    iget-object v0, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    if-eqz v0, :cond_87

    iget-object v0, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    :cond_87
    if-eqz p2, :cond_91

    iget-object v0, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    if-eqz v0, :cond_91

    iget-object v0, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    :cond_91
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;)V
    .registers 7

    if-nez p2, :cond_24

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/j;

    const/4 v1, 0x0

    sget v2, Lcom/baidu/mapapi/map/WearMapView;->d:I

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/j;-><init>(Landroid/content/Context;Lcom/baidu/mapsdkplatform/comapi/map/z;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    :goto_c
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/baidu/mapapi/map/u;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/u;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/l;)V

    return-void

    :cond_24
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;->a()Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v1

    sget v2, Lcom/baidu/mapapi/map/WearMapView;->d:I

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/j;-><init>(Landroid/content/Context;Lcom/baidu/mapsdkplatform/comapi/map/z;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    goto :goto_c
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_f
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_23

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_17
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1f
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_23
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_17

    :cond_28
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1f
.end method

.method private a(Landroid/view/View;Z)V
    .registers 12

    const-wide/16 v7, 0x4b0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_3a

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "TranslationY"

    new-array v2, v4, [F

    fill-array-data v2, :array_68

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_70

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/baidu/mapapi/map/x;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mapapi/map/x;-><init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_39
    return-void

    :cond_3a
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "TranslationY"

    new-array v2, v4, [F

    fill-array-data v2, :array_78

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_80

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_39

    :array_68
    .array-data 4
        0x0
        -0x3db80000    # -50.0f
    .end array-data

    :array_70
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_78
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/WearMapView;)F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->z:F

    return v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    goto :goto_4
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-direct {v0, p1, p0}, Lcom/baidu/mapapi/map/SwipeDismissView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42080000    # 34.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    sget v2, Lcom/baidu/mapapi/map/WearMapView;->s:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/SwipeDismissView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/SwipeDismissView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->u:Z

    goto :goto_4
.end method

.method private c(Landroid/content/Context;)V
    .registers 10

    const/16 v5, 0x1e0

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    const-string v0, "logo_h.png"

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v2

    const/16 v3, 0xb4

    if-ge v2, v3, :cond_14

    const-string v0, "logo_l.png"

    :cond_14
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-le v2, v5, :cond_49

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    :goto_31
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_48

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    :cond_48
    return-void

    :cond_49
    const/16 v3, 0x140

    if-le v2, v3, :cond_67

    if-gt v2, v5, :cond_67

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    goto :goto_31

    :cond_67
    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    goto :goto_31
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b()V

    goto :goto_4
.end method

.method private d(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ak;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ak;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->a()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    new-instance v1, Lcom/baidu/mapapi/map/v;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/v;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    new-instance v1, Lcom/baidu/mapapi/map/w;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/w;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    goto :goto_10
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->c()V

    goto :goto_4
.end method

.method private e(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x2

    const/high16 v6, 0x41300000    # 11.0f

    const/16 v5, 0xe

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "icon_scale.9.png"

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ak;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    return-object v0
.end method

.method public static setCustomMapStylePath(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "customMapStylePath String is illegal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please check whether the customMapStylePath file exits"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    sput-object p0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    return-void
.end method

.method public static setIconCustom(I)V
    .registers 1

    sput p0, Lcom/baidu/mapapi/map/WearMapView;->d:I

    return-void
.end method

.method public static setMapCustomEnable(Z)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/map/i;->a(Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    instance-of v0, p2, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v0, :cond_7

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public final getMap()Lcom/baidu/mapapi/map/BaiduMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/BaiduMap;->c:Lcom/baidu/mapapi/map/WearMapView;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public final getMapLevel()I
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    sget-object v1, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/util/SparseArray;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScaleControlViewHeight()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->F:I

    return v0
.end method

.method public getScaleControlViewWidth()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    :goto_a
    return-object p2

    :cond_b
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->RECTANGLE:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    goto :goto_a
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "customMapPath"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    if-nez p2, :cond_16

    new-instance v0, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    goto :goto_2

    :cond_16
    const-string v0, "mapstatus"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapStatus;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    if-eqz v1, :cond_2c

    const-string v1, "scalePosition"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    :cond_2c
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-eqz v1, :cond_3a

    const-string v1, "zoomPosition"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    :cond_3a
    const-string v1, "mZoomControlEnabled"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    const-string v1, "mScaleControlEnabled"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const-string v1, "paddingLeft"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paddingTop"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "paddingRight"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "paddingBottom"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/baidu/mapapi/map/WearMapView;->setPadding(IIII)V

    new-instance v1, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;->mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    goto :goto_2
.end method

.method public final onDestroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b(I)V

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/graphics/Bitmap;

    :cond_23
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->b()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/i;->b()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    :cond_37
    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Landroid/content/Context;

    return-void
.end method

.method public final onDismiss()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->removeAllViews()V

    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(I)V

    return-void
.end method

.method public onExitAmbient()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    :cond_8
    :goto_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_d
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    :cond_27
    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    :cond_42
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    :cond_4b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Z)V

    goto :goto_8

    :pswitch_50
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    :cond_64
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_8

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_d
        :pswitch_50
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .registers 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getChildCount()I

    move-result v5

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_77

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_77

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v2, v1

    move v1, v0

    :goto_58
    const/4 v0, 0x0

    move v4, v0

    :goto_5a
    if-ge v4, v5, :cond_257

    invoke-virtual {p0, v4}, Lcom/baidu/mapapi/map/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-ne v6, v0, :cond_86

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/baidu/mapsdkplatform/comapi/map/j;->layout(IIII)V

    :cond_73
    :goto_73
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5a

    :cond_77
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    move v2, v1

    move v1, v0

    goto :goto_58

    :cond_86
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    if-ne v6, v0, :cond_dd

    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    int-to-float v0, v0

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    float-to-int v6, v0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v8, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v7, v8, :cond_be

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    sget v0, Lcom/baidu/mapapi/map/WearMapView;->r:I

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    sget v7, Lcom/baidu/mapapi/map/WearMapView;->r:I

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v3, v0

    invoke-direct {p0, v3, v8}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v3

    sub-int v3, v7, v3

    sget v7, Lcom/baidu/mapapi/map/WearMapView;->t:I

    add-int/2addr v3, v7

    :cond_be
    sget v7, Lcom/baidu/mapapi/map/WearMapView;->s:I

    sub-int v0, v7, v0

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v0, v6

    sget v7, Lcom/baidu/mapapi/map/WearMapView;->r:I

    sub-int v3, v7, v3

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v8, v7, v6, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_73

    :cond_dd
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    if-ne v6, v0, :cond_158

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-nez v0, :cond_133

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v6, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v3, v6, :cond_109

    sget v0, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    :cond_109
    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v1

    iget v6, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    sget v3, Lcom/baidu/mapapi/map/WearMapView;->r:I

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v6}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v6}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v7}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v8, v3, v0, v6, v7}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->layout(IIII)V

    goto/16 :goto_73

    :cond_133
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v8}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v9}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->layout(IIII)V

    goto/16 :goto_73

    :cond_158
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    if-ne v6, v0, :cond_1f0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v7, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v6, v7, :cond_188

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    sget v0, Lcom/baidu/mapapi/map/WearMapView;->r:I

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    sget v6, Lcom/baidu/mapapi/map/WearMapView;->r:I

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v0

    invoke-direct {p0, v3, v7}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v3

    sub-int v3, v6, v3

    sget v6, Lcom/baidu/mapapi/map/WearMapView;->t:I

    add-int/2addr v3, v6

    :cond_188
    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    if-nez v6, :cond_1cb

    iget v6, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    int-to-float v6, v6

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v7

    iput v7, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/baidu/mapapi/map/WearMapView;->F:I

    iget v7, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    int-to-float v7, v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    int-to-float v3, v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    sget v7, Lcom/baidu/mapapi/map/WearMapView;->s:I

    sub-int v6, v7, v6

    sub-int v0, v6, v0

    iget v6, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v0, v7

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3, v7, v6, v0}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_73

    :cond_1cb
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_73

    :cond_1f0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    if-ne v6, v0, :cond_20a

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/SwipeDismissView;->getMeasuredWidth()I

    move-result v0

    sget v3, Lcom/baidu/mapapi/map/WearMapView;->s:I

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0, v3}, Lcom/baidu/mapapi/map/SwipeDismissView;->layout(IIII)V

    goto/16 :goto_73

    :cond_20a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v3, :cond_73

    check-cast v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    sget-object v7, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->absoluteMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    if-ne v3, v7, :cond_246

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    :goto_21c
    invoke-direct {p0, v6}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    iget v10, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    iget v11, v3, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    int-to-float v12, v7

    mul-float/2addr v9, v12

    sub-float v9, v11, v9

    float-to-int v9, v9

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v11, v8

    mul-float/2addr v10, v11

    sub-float/2addr v3, v10

    float-to-int v3, v3

    iget v0, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->f:I

    add-int/2addr v0, v3

    add-int v3, v9, v7

    add-int v7, v0, v8

    invoke-virtual {v6, v9, v0, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_73

    :cond_246
    iget-object v3, v0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v3

    iget-object v7, p0, Lcom/baidu/mapapi/map/WearMapView;->e:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v7}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;

    move-result-object v3

    goto :goto_21c

    :cond_257
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const-string v1, "mapstatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    if-eqz v0, :cond_1d

    const-string v0, "scalePosition"

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1d
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-eqz v0, :cond_28

    const-string v0, "zoomPosition"

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_28
    const-string v0, "mZoomControlEnabled"

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mScaleControlEnabled"

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "paddingLeft"

    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingTop"

    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingRight"

    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingBottom"

    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "customMapPath"

    sget-object v1, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public setOnDismissCallbackListener(Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/SwipeDismissView;->setCallback(Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;)V

    goto :goto_4
.end method

.method public setPadding(IIII)V
    .registers 5

    iput p1, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    iput p2, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    iput p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    return-void
.end method

.method public setScaleControlPosition(Landroid/graphics/Point;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->requestLayout()V

    goto :goto_2
.end method

.method public setShape(Lcom/baidu/mapapi/map/WearMapView$ScreenShape;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    return-void
.end method

.method public setViewAnimitionEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Z

    return-void
.end method

.method public setZoomControlsPosition(Landroid/graphics/Point;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->requestLayout()V

    goto :goto_2
.end method

.method public showScaleControl(Z)V
    .registers 4

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    return-void

    :cond_b
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public showZoomControls(Z)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ak;

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ak;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->x:Z

    :cond_12
    return-void

    :cond_13
    const/16 v0, 0x8

    goto :goto_d
.end method
